-- found by using TF2 base on line 658 "https://github.com/NicknineTheEagle/TF2-Base/blob/master/src/game/client/cdll_client_int.cpp"

local function chat(msg)
    
    local MessageID = msg:GetID() -- message id
    local MessageDestination = msg:ReadString(256) -- Destination can check for team or all chat by "TF_Chat_Team", or "TF_Chat_All"
    local MessageSender = msg:ReadString(256) -- Senders name displayed in chat
    local MessageText = msg:ReadString(256) -- what the message is
    
    print("Message id: \"" .. MessageID .. "\" Destination: \"" .. MessageDestination .. "\" Sender's name: \"" .. MessageSender .. "\" Message Text: \"" .. MessageText .. "\"")

end

callbacks.Register( "DispatchUserMessage", chat  ) -- dispatch user message