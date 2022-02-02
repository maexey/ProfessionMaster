--[[

@author Esperanza - Everlook/EU-Alliance
@copyright ©2022 The Profession Master Authors. All Rights Reserved.

Licensed under the GNU General Public License, Version 3.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.gnu.org/licenses/gpl-3.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS-IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

--]]
local addon = _G.professionMaster;

-- define service
ChatService = {};
ChatService.__index = ChatService;

--- Initialize service.
function ChatService:Initialize()
end

--- Write message.
function ChatService:Write(locale, ...)
    self:WriteBare(addon:GetService("locale"):Get(locale, ...));
end

--- Write bare message.
function ChatService:WriteBare(message)
    DEFAULT_CHAT_FRAME:AddMessage("|cffDA8CFF[PM]|cffffffff " .. message);
end

-- register service
addon:RegisterService(ChatService, "chat");
