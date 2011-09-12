%% -*- erlang-indent-level: 4;indent-tabs-mode: nil -*-
%% ex: ts=4 sw=4 et
%% @author {{author}} <{{author_email}}>
%% @copyright {{copyright_year}} {{copyright_holder}}

-module({{name}}_sup).

-behaviour(supervisor).

-export([start_link/0]).

-export([init/1]).

-define(WORKER(Name, Args, Restart, Shutdown), {Name, {Name, start_link, Args},
                                                Restart, Shutdown, Type, [Name]}).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init([]) ->
    RestartStrategy = one_for_one,
    MaxRestarts = 10,
    MaxSecondsBetweenRestarts = 60,

    SupFlags = {RestartStrategy, MaxRestarts, MaxSecondsBetweenRestarts},

    {ok, {SupFlags, []}}.
