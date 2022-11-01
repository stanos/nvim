local colors = {
	red = '#ca1243',
	grey = '#a0a1a7',
	black = '#383a42',
	white = '#f3f3f3',
	light_green = '#83a598',
	orange = '#fe8019',
	green = '#8ec07c',
	turqoise = '#206160',
	pink = '#FF65A0',
	purple_blue = '#4e5ebc',
	purple = '#8c6bbd',
	dark_purple = '#601f4e',
	grey_2 = '#9b9b9b',
}

local empty = require('lualine.component'):extend()
function empty:draw(default_highlight)
	self.status = ''
	self.applied_separator = ''
	self:apply_highlights(default_highlight)
	self:apply_section_separators()
	return self.status
end

local function process_sections(sections)
	for name, section in pairs(sections) do
		local left = name:sub(9, 10) < 'x'
		for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
			table.insert(section, pos * 2, { empty, color = { fg = colors.white, bg = colors.grey_2 } })
		end
		for id, comp in ipairs(section) do
			if type(comp) ~= 'table' then
				comp = { comp }
				section[id] = comp
			end
			comp.separator = left and { right = '' } or { left = '' }
		end
	end
	return sections
end

local theme = {
	normal = {
		a = { fg = colors.black, bg = colors.green },
		b = { fg = colors.white, bg = colors.light_green },
		c = { fg = colors.white, bg = colors.purple_blue },
		x = { fg = colors.white, bg = colors.turqoise },
		y = { fg = colors.white, bg = colors.turqoise },
		z = { fg = colors.white, bg = colors.black },
	},
	insert = { a = { fg = colors.black, bg = colors.pink } },
	visual = { a = { fg = colors.black, bg = colors.orange } },
	replace = { a = { fg = colors.black, bg = colors.green } },
}

require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = theme,
		section_separators = { left = '', right = '' },
		component_separators = {},
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = process_sections {
		lualine_a = { 'mode' },
		lualine_b = { 'branch', 'diff', 'diagnostics' },
		lualine_c = { 'filename' },
		lualine_x = { 'encoding', 'fileformat', 'filetype' },
		lualine_y = { 'progress' },
		lualine_z = { 'location' }
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { 'filename' },
		lualine_x = { 'location' },
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {}
}
