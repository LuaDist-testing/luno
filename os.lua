-- *****************************************************************************
-- Luno
-- Copyright (c) 2011-2013 Eric Chiesse de Souza (www.echiesse.com.br)
-- Read "License.txt" for the license terms
-- *****************************************************************************

require"luno.base"
require"luno.util"


luno.os = {}


function luno.os.exposeAll()
    expose(luno.os)
end


function luno.os.useAlias()
    los = luno.os
end


--[[
function luno.os.exposeSome()
end
]]

--##############################################################################

---
--
--
function luno.os.copy(from, to)
    -- Obter conteúdo do arquivo de origem:
    local hfrom = io.open(from, "rb")
    local contents = hfrom:read("*a")
    hfrom:close()

    -- Gravar o arquivo de saída:
    local hto = io.open(to, "wb")
    hto:write(contents)
    hto:close()
end


return luno.os
