Hooks:PreHook(MenuManager, "open_menu", "reset_crimenet_blocker_2", function(self, menu_name, ...)
  if menu_name and menu_name == "menu_main" then
    _G.CrimenetCrashPreventer:reset()
  end
end)
