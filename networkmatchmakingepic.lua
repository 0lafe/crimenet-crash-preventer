Hooks:PreHook(NetworkMatchMakingEPIC, "is_server_ok", "prevent_crimenet_crash",
  function(self, friends_only, room, attributes_list, is_invite)
    -- Invalid level requirement
    if attributes_list.numbers[7] == nil then
      attributes_list.numbers[7] = 0
      _G.CrimenetCrashPreventer.found_issue = true
    end

    -- Invalid difficulty index
    if attributes_list.numbers[2] == nil then
      attributes_list.numbers[2] = 0
      _G.CrimenetCrashPreventer.found_issue = true
    end
  end
)
