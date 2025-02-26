loadstring(game:HttpGet(`https://raw.githubusercontent.com/Endpoint-Node/Better_Spy/master/src/Kernel/SimpleSpy.lua`))()


_G.INTERNAL_HOOK_INTERFACE.TrackRemote:Fire("Pets_LocalPetsUnequipped")
_G.INTERNAL_HOOK_INTERFACE.TrackRemote:Fire("Pets_LocalUnequipAll")
_G.INTERNAL_HOOK_INTERFACE.TrackRemote:Fire("Pets_GetEquipped")
_G.INTERNAL_HOOK_INTERFACE.TrackRemote:Fire("Pets_ReplicateEquip")

_G.INTERNAL_HOOK_INTERFACE.PerformCallAndGenerateLog:Fire(function(network)
    print("funciton called")
    local save = require(game:GetService("ReplicatedStorage").Library.Client.Save)
    local result = save.Get(game:GetService("Players").LocalPlayer, true)
    print("the curret result is: ", result)
    return result
end)


