Collection of rebar templates for common uses:

* library - Generates skeleton of a library OTP application (no supervision tree). rebar.config and Makefile included.
* supapp  - Generates skeleton of an OTP application w/supervision tree. rebar.config and Makefile included.
* gen_server - Creates a gen_server skeleton. Can be used instead of erlang-mode's gen_server skeleton.
* mod - Creates a simple Erlang module.

All source files start with editor commands to configure Emacs and vi for proper modes and indentation. Each source file is prefixed with author and copyright annotations as well.

These templates also require using my experimental branch of rebar, available at https://github.com/kevsmith/rebar/tree/experimental. My branch has tweaks to improve the runtime performance of templates and also supports configuring global settings from the filesystem.

To get these templates working w/experimental rebar:

1. Clone, build, and install experimental rebar.
1. Clone rebar-templates into $HOME/.rebar/templates
1. Create $HOME/.rebar/global
1. Edit $HOME/.rebar/global to include the line:

```erlang
{template_vars, "/Path/To/Your/HomeDir/.rebar/template_vars"}.
```
1. Create template vars with the following entries:

```erlang
{author,           "Your Name"}.
{author_email,     "email@yourcompany.com"}.
{copyright_holder, "Your Company Name"}.
{copyright_year,   "Current Year"}
```
    
_Note: Replace example values for each entry with your own data :-)_

Use rebar's standard syntax for invoking these templates, e.g. `rebar create template=supapp name=my_test`