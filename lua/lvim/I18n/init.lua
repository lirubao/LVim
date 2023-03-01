local I18n = { locales = {} }

local defaultLocale = "zh"

-- @newLocale
function I18n.setup(newLocale)
  defaultLocale = defaultLocale or newLocale
end

local function translate(...)
  for i, v in ipairs{...} do
    if type(I18n.locales[defaultLocale][v]) ~= "table" then
      return I18n.locales[defaultLocale][v]
      else
        if type(select(i+1,...)) ~= "table" then
          return I18n.locales[defaultLocale][id][select(i+1,...)]
        end
    end
    
  end
end

I18n.translate = translate

setmetatable(I18n, {
  __call = function(_, ...)
    return translate(...)
  end,
})

return I18n
