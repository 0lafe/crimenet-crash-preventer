if _G.CrimenetCrashPreventer then
  return
end

_G.CrimenetCrashPreventer = _G.CrimenetCrashPreventer or {}
_G.CrimenetCrashPreventer.found_issue = false

function _G.CrimenetCrashPreventer:reset()
  self.found_issue = false
end
