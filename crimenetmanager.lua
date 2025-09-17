function CrimeNetManager:find_online_games(friends_only)
  if _G.CrimenetCrashPreventer and not _G.CrimenetCrashPreventer.found_issue then
    self:_find_online_games(friends_only)
  end
end

Hooks:PreHook(CrimeNetGui, "add_server_job", "prevent_mutator_crash", function(self, data)
  if data.mutators and type(data.mutators) == "table" and table.empty(data.mutators) then
    data.mutators = false
  end
end)
