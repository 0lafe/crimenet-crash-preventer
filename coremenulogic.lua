core:module("CoreMenuLogic")

Hooks:PreHook(Logic, "_navigate_back", "reset_crimenet_blocker", function(self, ...)
  local node = self._node_stack[#self._node_stack]
  if (node and node._parameters and node._parameters.name and node._parameters.name == "crimenet") then
    _G.CrimenetCrashPreventer:reset()
  end
end)
