local I18n = { locales = {} }

local defaultLocale = "zh"

-- @newLocale
function I18n.setup(newLocale)
  defaultLocale = newLocale
end

local function translate(id)
  return I18n.locales[defaultLocale][id]
end

I18n.translate = translate

setmetatable(I18n, {
  __call = function(_, ...)
    return translate(id)
  end,
})

return I18n
