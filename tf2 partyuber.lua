--Random shit made by RedParaCoder ;)
local s32 = steam.GetSteamID();
local sx86 = string.sub( s32, 6, #s32 - 1 );
local s64 = sx86 + 76561197960265728;

local sTime = nil;

local function reds_uberme( event )
    if (event:GetName() == "party_chat") then
        
        local msg = event:GetString( 'text' );
        local msgr = tonumber( event:GetString( 'steamid' ) );
        if (msgr ~= s64) then
            if msg == "uber" or msg == "uber " or msg == "UBER" or msg == "UBER " then
                if entities.GetLocalPlayer():GetPropInt( "m_iClass" ) == 5 then
                    sTime = globals.RealTime();
                end
            end
        end
    end
end
callbacks.Register( "FireGameEvent", "reds_uberme", reds_uberme );

function domehard()
    if sTime ~= nil then
        client.Command( "+attack2", true )
        if (sTime + 0.001) < globals.RealTime() then
            client.Command( "say_party UBERED!", true )
            sTime = nil;
            client.Command( "-attack2", true )
        end
    end
end
callbacks.Register( "Draw", "domeharder", domehard )