signature USER_HOOKS = sig
  type open_project_hook_t = string -> unit;

  val didOpenProjectHook : unit -> open_project_hook_t option;
  val setDidOpenProjectHook : open_project_hook_t option -> unit;
end
