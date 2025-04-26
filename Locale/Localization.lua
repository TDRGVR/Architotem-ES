local LOCALE = GetLocale()
ArchiTotemLocale = setmetatable({}, {
    __index = function(t, k)
        local v = tostring(k)
        rawset(t, k, v)
		DEFAULT_CHAT_FRAME:AddMessage(string.format("|cFF33FF99[Debug]|r Solicitud de traducción: %q", v))
		
        if (LOCALE ~= "enUS") and (LOCALE ~= "enGB") then
            DEFAULT_CHAT_FRAME:AddMessage(string.format("[ArchiTotem] Texto no traducido: %q (Idioma: %s)", v, LOCALE))
        end
        return v
    end
})