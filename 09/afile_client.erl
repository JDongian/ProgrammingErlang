-module(afile_client).
-export([ls/1, get_file/2, put_file/3]).

-spec get_file(pid(), string()) -> any().

ls(Server) ->
    Server ! {self(), list_dir},
    receive
        {Server, FileList} ->
            FileList
    end.

get_file(Server, File) ->
    Server ! {self(), {get_file, File}},
    receive
        {Server, Content} ->
            Content
    end.

put_file(Server, Filename, Data) ->
    Server ! {self(), {put_file, Filename, Data}},
    receive
        {Server, Status} ->
            Status
    end.
