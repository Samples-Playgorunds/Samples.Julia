# Julia


## Variables

*   scope

    *   local

        ```julia
        data = open(file_path, "r") do f
            filecontent_as_string_local = read(f,String)
            print(filecontent_as_string_local)
        end
        # following line would crash
        # error:
        # ERROR: LoadError: UndefVarError: filecontent_as_string_local not defined
        print(filecontent_as_string_local)
        ```

    *   global

        ```julia
        data = open(file_path, "r") do f
        global filecontent_as_string_global = read(f,String)
        end
        # no error, because filecontent_as_string_global is global variable (`global` keyword)
        print(filecontent_as_string_global)
        ```
