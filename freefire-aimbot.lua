--I write this shit 2years ago when I was drunk

function starts(String,Start)

   return string.sub(String,1,string.len(Start))==Start

end



local headSize = 25



local workspace = game:GetService("Workspace")





while wait(1) do

    local workspaceChildren = workspace:GetChildren();

    for i = 1, #workspaceChildren do

        local child = workspaceChildren[i]

        if(starts(child.Name, "PseudoCharacter")) then

            if(child:FindFirstChild("Hitboxes")) then

	        local hitbox_mouse = child.Hitboxes.Mouse:GetChildren();

            local hitbox_touch = child.Hitboxes.Touch:GetChildren();

	        for i, child in ipairs(hitbox_mouse) do

	            if child.Name == "Head" then

	                local s = child.Size

	                local f = headSize

	                child.Size = Vector3.new(f, f, f)

	            end

	        end

	        for i, child in ipairs(hitbox_touch) do

	            if child.Name == "Head" then

                    local s = child.Size

                    local f = headSize

                    child.Size = Vector3.new(f, f, f)

	        end

	        end

	    end

	    end

end

end

