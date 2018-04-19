require "user_hooks";
functor UserHooks() : USER_HOOKS = struct
  type open_project_hook_t = string -> unit;

  val hookRef_ = ref NONE : (open_project_hook_t option) ref;

  fun didOpenProjectHook () = !hookRef_;
  fun setDidOpenProjectHook(hookOpt) = hookRef_ := hookOpt
end
