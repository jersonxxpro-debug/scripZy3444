-- XENO v6.1 - HACKER RED + JELLY ANIMATIONS + KEYBINDS + FIX
local P=game:GetService("Players")local R=game:GetService("RunService")local U=game:GetService("UserInputService")local T=game:GetService("TweenService")local C=game:GetService("CoreGui")local L=P.LocalPlayer local Cam=workspace.CurrentCamera
local espE,headE,invisE,speedE,jumpE,flyE=false,false,false,false,false,false
local spd,fs=50,60
local kb={ESP=Enum.KeyCode.F1,NoHead=Enum.KeyCode.F2,Invisible=Enum.KeyCode.F3,Speed=Enum.KeyCode.F4,InfJump=Enum.KeyCode.F5,Fly=Enum.KeyCode.F6,Menu=Enum.KeyCode.P}
local kn={ESP="ESP",NoHead="Head",Invisible="Invis",Speed="Speed",InfJump="Jump",Fly="Fly",Menu="Menu"}
local ED,EC={},{}
local RED=Color3.fromRGB(255,20,40)local RD=Color3.fromRGB(80,0,10)local RG=Color3.fromRGB(255,60,80)local BG=Color3.fromRGB(10,5,8)local BG2=Color3.fromRGB(20,8,12)local BON=Color3.fromRGB(60,5,15)
local function tQ(o,t,p)TweenService:Create(o,TweenInfo.new(t,Enum.EasingStyle.Quad),p):Play()end
local function tE(o,t,p)TweenService:Create(o,TweenInfo.new(t,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out),p):Play()end
local function jelly(o,a)a=a or 0.12 local s=o.Size local sh=UDim2.new(s.X.Scale*(1-a),s.X.Offset*(1-a),s.Y.Scale*(1-a),s.Y.Offset*(1-a))tQ(o,0.08,{Size=sh})task.wait(0.08)tE(o,0.45,{Size=s})end
local S=Instance.new("ScreenGui")S.Name="X"..math.random(9999)S.ResetOnSpawn=false S.IgnoreGuiInset=true S.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
if gethui then S.Parent=gethui()elseif syn and syn.protect_gui then syn.protect_gui(S)S.Parent=C else pcall(function()S.Parent=C end)if not S.Parent then S.Parent=L:WaitForChild("PlayerGui")end end
local Con=Instance.new("Frame")Con.Size=UDim2.new(0,340,0,540)Con.Position=UDim2.new(0.5,-170,0.5,-270)Con.BackgroundTransparency=1 Con.Visible=false Con.Parent=S
local M=Instance.new("Frame")M.Size=UDim2.new(1,0,1,0)M.BackgroundColor3=BG M.BorderSizePixel=0 M.Active=true M.Draggable=true M.Parent=Con
Instance.new("UICorner",M).CornerRadius=UDim.new(0,6)
local MS=Instance.new("UIStroke",M)MS.Color=RED MS.Thickness=2
local BS=UDim2.new(0,340,0,540)local BP=UDim2.new(0.5,-170,0.5,-270)
local TB=Instance.new("Frame")TB.Size=UDim2.new(1,0,0,40)TB.BackgroundColor3=BG2 TB.BorderSizePixel=0 TB.Parent=M
Instance.new("UICorner",TB).CornerRadius=UDim.new(0,6)
local Ti=Instance.new("TextLabel")Ti.Size=UDim2.new(1,-80,1,0)Ti.Position=UDim2.new(0,8,0,0)Ti.BackgroundTransparency=1 Ti.Text="▌ XENO HACKER v6 ▌"Ti.TextColor3=RED Ti.Font=Enum.Font.Code Ti.TextSize=18 Ti.TextXAlignment=Enum.TextXAlignment.Left Ti.TextStrokeTransparency=0 Ti.TextStrokeColor3=RD Ti.Parent=TB
task.spawn(function()local gc={"▓","▒","░","▌","█"}while S.Parent do task.wait(math.random(15,45)/10)if Con.Visible then local o="▌ XENO HACKER v6 ▌"local g=o for _=1,3 do local i=math.random(1,#g)g=g:sub(1,i-1)..gc[math.random(1,#gc)]..g:sub(i+1)end Ti.Text=g Ti.TextColor3=RG task.wait(0.06)Ti.Text=o Ti.TextColor3=RED end end end)
local CB=Instance.new("TextButton")CB.Size=UDim2.new(0,26,0,26)CB.Position=UDim2.new(1,-32,0,7)CB.BackgroundColor3=RD CB.Text="X"CB.TextColor3=RG CB.Font=Enum.Font.Code CB.TextSize=14 CB.BorderSizePixel=0 CB.Parent=TB
Instance.new("UICorner",CB).CornerRadius=UDim.new(0,4)
CB.MouseEnter:Connect(function()tQ(CB,0.15,{BackgroundColor3=RED})end)CB.MouseLeave:Connect(function()tQ(CB,0.15,{BackgroundColor3=RD})end)
local Ln=Instance.new("Frame")Ln.Size=UDim2.new(1,-20,0,1)Ln.Position=UDim2.new(0,10,0,40)Ln.BackgroundColor3=RED Ln.BorderSizePixel=0 Ln.Parent=M
task.spawn(function()while S.Parent do tQ(Ln,1.2,{BackgroundColor3=RG})task.wait(1.2)tQ(Ln,1.2,{BackgroundColor3=RED})task.wait(1.2)end end)
local Tb=Instance.new("Frame")Tb.Size=UDim2.new(1,-20,0,28)Tb.Position=UDim2.new(0,10,0,46)Tb.BackgroundTransparency=1 Tb.Parent=M
local TL=Instance.new("UIListLayout",Tb)TL.FillDirection=Enum.FillDirection.Horizontal TL.Padding=UDim.new(0,4)TL.SortOrder=Enum.SortOrder.LayoutOrder
local Pg,Ts={},{}
local function mT(n,o)local t=Instance.new("TextButton")t.Size=UDim2.new(0.5,-2,1,0)t.BackgroundColor3=BG2 t.BorderSizePixel=0 t.Text=n t.TextColor3=Color3.fromRGB(200,200,200)t.Font=Enum.Font.Code t.TextSize=13 t.LayoutOrder=o t.Parent=Tb
Instance.new("UICorner",t).CornerRadius=UDim.new(0,4)local st=Instance.new("UIStroke",t)st.Color=RD st.Thickness=1
local p=Instance.new("ScrollingFrame")p.Size=UDim2.new(1,-10,1,-130)p.Position=UDim2.new(0,5,0,80)p.BackgroundTransparency=1 p.BorderSizePixel=0 p.ScrollBarThickness=3 p.ScrollBarImageColor3=RED p.CanvasSize=UDim2.new(0,0,0,0)p.AutomaticCanvasSize=Enum.AutomaticSize.Y p.Visible=false p.Parent=M
local l=Instance.new("UIListLayout",p)l.Padding=UDim.new(0,6)l.SortOrder=Enum.SortOrder.LayoutOrder
Pg[n]=p Ts[n]={b=t,s=st}
t.MouseEnter:Connect(function()if not Pg[n].Visible then tQ(t,0.15,{BackgroundColor3=Color3.fromRGB(35,10,15)})end end)
t.MouseLeave:Connect(function()if not Pg[n].Visible then tQ(t,0.15,{BackgroundColor3=BG2})end end)
t.MouseButton1Click:Connect(function()jelly(t,0.1)for nn,d in pairs(Ts)do tQ(d.b,0.2,{BackgroundColor3=BG2,TextColor3=Color3.fromRGB(200,200,200)})tQ(d.s,0.2,{Color=RD})Pg[nn].Visible=false end tQ(t,0.2,{BackgroundColor3=BON,TextColor3=RG})tQ(st,0.2,{Color=RED})p.Visible=true p.ScrollPosition=Vector2.zero end)
return p,l end
local function mB(pg,tx,o)local b=Instance.new("TextButton")b.Size=UDim2.new(1,-10,0,40)b.BackgroundColor3=BG2 b.BorderSizePixel=0 b.Text="  [ OFF ]  "..tx b.TextColor3=Color3.fromRGB(200,200,200)b.Font=Enum.Font.Code b.TextSize=14 b.TextXAlignment=Enum.TextXAlignment.Left b.LayoutOrder=o b.Parent=pg
Instance.new("UICorner",b).CornerRadius=UDim.new(0,4)local st=Instance.new("UIStroke",b)st.Color=RD st.Thickness=1
b.MouseEnter:Connect(function()if b.TextColor3~=RG then tQ(b,0.15,{BackgroundColor3=Color3.fromRGB(35,10,15)})tQ(st,0.15,{Color=RED})end end)
b.MouseLeave:Connect(function()if b.TextColor3~=RG then tQ(b,0.15,{BackgroundColor3=BG2})tQ(st,0.15,{Color=RD})end end)
return b,st end
local function mS(pg,n,mn,mx,df,o,cb)local f=Instance.new("Frame")f.Size=UDim2.new(1,-10,0,55)f.BackgroundColor3=BG2 f.BorderSizePixel=0 f.LayoutOrder=o f.Parent=pg
Instance.new("UICorner",f).CornerRadius=UDim.new(0,4)local st=Instance.new("UIStroke",f)st.Color=RD st.Thickness=1
local lb=Instance.new("TextLabel")lb.Size=UDim2.new(1,-10,0,20)lb.Position=UDim2.new(0,5,0,3)lb.BackgroundTransparency=1 lb.Text=n..": "..df lb.TextColor3=RG lb.Font=Enum.Font.Code lb.TextSize=13 lb.TextXAlignment=Enum.TextXAlignment.Left lb.Parent=f
local bb=Instance.new("Frame")bb.Size=UDim2.new(1,-20,0,8)bb.Position=UDim2.new(0,10,0,32)bb.BackgroundColor3=Color3.fromRGB(40,10,15)bb.BorderSizePixel=0 bb.Parent=f
Instance.new("UICorner",bb).CornerRadius=UDim.new(1,0)
local fl=Instance.new("Frame")fl.Size=UDim2.new((df-mn)/(mx-mn),0,1,0)fl.BackgroundColor3=RED fl.BorderSizePixel=0 fl.Parent=bb
Instance.new("UICorner",fl).CornerRadius=UDim.new(1,0)
local dr=false local function up(x)local rx=math.clamp((x-bb.AbsolutePosition.X)/bb.AbsoluteSize.X,0,1)local v=math.floor(mn+(mx-mn)*rx)fl.Size=UDim2.new(rx,0,1,0)lb.Text=n..": "..v cb(v)end
bb.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dr=true up(i.Position.X)end end)
U.InputChanged:Connect(function(i)if dr and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch)then up(i.Position.X)end end)
U.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dr=false end end)
return f end
local function mK(pg,k,o)local f=Instance.new("Frame")f.Size=UDim2.new(1,-10,0,42)f.BackgroundColor3=BG2 f.BorderSizePixel=0 f.LayoutOrder=o f.Parent=pg
Instance.new("UICorner",f).CornerRadius=UDim.new(0,4)local st=Instance.new("UIStroke",f)st.Color=RD st.Thickness=1
local nl=Instance.new("TextLabel")nl.Size=UDim2.new(0.5,0,1,0)nl.Position=UDim2.new(0,8,0,0)nl.BackgroundTransparency=1 nl.Text="▸ "..kn[k]nl.TextColor3=Color3.fromRGB(220,220,220)nl.Font=Enum.Font.Code nl.TextSize=14 nl.TextXAlignment=Enum.TextXAlignment.Left nl.Parent=f
local kb2=Instance.new("TextButton")kb2.Size=UDim2.new(0.25,0,0,28)kb2.Position=UDim2.new(0.5,0,0,7)kb2.BackgroundColor3=Color3.fromRGB(40,10,15)kb2.Text=kb[k].Name kb2.TextColor3=RG kb2.Font=Enum.Font.Code kb2.TextSize=13 kb2.BorderSizePixel=0 kb2.Parent=f
Instance.new("UICorner",kb2).CornerRadius=UDim.new(0,4)local ks=Instance.new("UIStroke",kb2)ks.Color=RED ks.Thickness=1
local ab=Instance.new("TextButton")ab.Size=UDim2.new(0.22,0,0,28)ab.Position=UDim2.new(0.77,0,0,7)ab.BackgroundColor3=RD ab.Text="SET"ab.TextColor3=RG ab.Font=Enum.Font.Code ab.TextSize=12 ab.BorderSizePixel=0 ab.Parent=f
Instance.new("UICorner",ab).CornerRadius=UDim.new(0,4)
ab.MouseEnter:Connect(function()tQ(ab,0.15,{BackgroundColor3=RED})end)ab.MouseLeave:Connect(function()tQ(ab,0.15,{BackgroundColor3=RD})end)
local wt=false local wc ab.MouseButton1Click:Connect(function()jelly(ab,0.15)if wt then wt=false ab.Text="SET"kb2.Text=kb[k].Name kb2.TextColor3=RG if wc then wc:Disconnect()wc=nil end return end wt=true ab.Text="..."kb2.Text="[?]"kb2.TextColor3=Color3.fromRGB(255,255,100)
wc=U.InputBegan:Connect(function(i,gp)if gp then return end if i.UserInputType==Enum.UserInputType.Keyboard then kb[k]=i.KeyCode wt=false ab.Text="SET"kb2.Text=i.KeyCode.Name kb2.TextColor3=RG if wc then wc:Disconnect()wc=nil end end end)end)end
local isO,isA=false,false
local function open()
    if isA or isO then return end
    isA=true
    Con.Visible=true
    Con.Size=UDim2.new(0,10,0,10)
    Con.Position=UDim2.new(0.5,-5,0.5,-5)
    M.BackgroundTransparency=1
    MS.Transparency=1
    TweenService:Create(Con,TweenInfo.new(0.7,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out),{Size=BS,Position=BP}):Play()
    TweenService:Create(M,TweenInfo.new(0.3),{BackgroundTransparency=0}):Play()
    TweenService:Create(MS,TweenInfo.new(0.3),{Transparency=0}):Play()
    task.wait(0.75)
    Con.Size=BS
    Con.Position=BP
    M.BackgroundTransparency=0
    MS.Transparency=0
    isO=true
    isA=false
end
local function close()
    if isA or not isO then return end
    isA=true
    TweenService:Create(Con,TweenInfo.new(0.35,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size=UDim2.new(0,10,0,10),Position=UDim2.new(0.5,-5,0.5,-5)}):Play()
    TweenService:Create(M,TweenInfo.new(0.35),{BackgroundTransparency=1}):Play()
    TweenService:Create(MS,TweenInfo.new(0.35),{Transparency=1}):Play()
    task.wait(0.35)
    Con.Visible=false
    isO=false
    isA=false
end
local function tm()if isO then close()else open()end end
CB.MouseButton1Click:Connect(function()jelly(CB,0.2)task.wait(0.12)close()end)
mT("FEATURES",1)mT("KEYBINDS",2)
local FP=Pg["FEATURES"]local KP=Pg["KEYBINDS"]
Ts["FEATURES"].b.BackgroundColor3=BON Ts["FEATURES"].b.TextColor3=RG Ts["FEATURES"].s.Color=RED FP.Visible=true
local function gC()return L.Character end
local function gH()local c=gC()return c and c:FindFirstChildOfClass("Humanoid")end
local function gR()local c=gC()return c and c:FindFirstChild("HumanoidRootPart")end
local function crE(pl)if pl==L or ED[pl]then return end
local bx=Drawing.new("Square")bx.Thickness=1.5 bx.Color=RED bx.Filled=false bx.Transparency=1 bx.Visible=false
local ol=Drawing.new("Square")ol.Thickness=1 ol.Color=Color3.fromRGB(0,0,0)ol.Filled=false ol.Transparency=1 ol.Visible=false
local nm=Drawing.new("Text")nm.Size=14 nm.Center=true nm.Outline=true nm.OutlineColor=Color3.fromRGB(0,0,0)nm.Color=RG nm.Font=2 nm.Visible=false
local dt=Drawing.new("Text")dt.Size=13 dt.Center=true dt.Outline=true dt.OutlineColor=Color3.fromRGB(0,0,0)dt.Color=RED dt.Font=2 dt.Visible=false
local tr=Drawing.new("Line")tr.Thickness=1 tr.Color=RED tr.Transparency=0.7 tr.Visible=false
ED[pl]={bx=bx,ol=ol,nm=nm,dt=dt,tr=tr}end
local function rmE(pl)local d=ED[pl]if d then for _,o in pairs(d)do pcall(function()o:Remove()end)end ED[pl]=nil end end
local function upE()for _,pl in ipairs(P:GetPlayers())do if pl~=L then local d=ED[pl]if not d then crE(pl)d=ED[pl]end
local ch=pl.Character local hr=ch and ch:FindFirstChild("HumanoidRootPart")local hd=ch and ch:FindFirstChild("Head")local hm=ch and ch:FindFirstChildOfClass("Humanoid")
if hr and hd and hm and hm.Health>0 then local rp,hp=hr.Position,hd.Position local ty,by=hp.Y+1,rp.Y-2.5 local w,dp=3.5,2
local tw=Vector3.new(rp.X,ty,rp.Z)local bw=Vector3.new(rp.X,by,rp.Z)
local cs={tw+Vector3.new(-w/2,0,-dp/2),tw+Vector3.new(w/2,0,-dp/2),tw+Vector3.new(w/2,0,dp/2),tw+Vector3.new(-w/2,0,dp/2),bw+Vector3.new(-w/2,0,-dp/2),bw+Vector3.new(w/2,0,-dp/2),bw+Vector3.new(w/2,0,dp/2),bw+Vector3.new(-w/2,0,dp/2)}
local mnX,mnY,mxX,mxY=math.huge,math.huge,-math.huge,-math.huge local vis=false
for _,c in ipairs(cs)do local sp=Cam:WorldToViewportPoint(c)if sp.Z>0 then vis=true mnX=math.min(mnX,sp.X)mxX=math.max(mxX,sp.X)mnY=math.min(mnY,sp.Y)mxY=math.max(mxY,sp.Y)end end
if vis and mxX>mnX and mxY>mnY then local bwd,bht=mxX-mnX,mxY-mnY
d.bx.Size=Vector2.new(bwd,bht)d.bx.Position=Vector2.new(mnX,mnY)d.bx.Visible=true
d.ol.Size=Vector2.new(bwd+2,bht+2)d.ol.Position=Vector2.new(mnX-1,mnY-1)d.ol.Visible=true
d.nm.Text=pl.Name d.nm.Position=Vector2.new(mnX+bwd/2,mnY-16)d.nm.Visible=true
local ds=(Cam.CFrame.Position-rp).Magnitude d.dt.Text=string.format("[%d m]",math.floor(ds))d.dt.Position=Vector2.new(mnX+bwd/2,mxY+3)d.dt.Visible=true
local vp=Cam.ViewportSize d.tr.From=Vector2.new(vp.X/2,vp.Y)d.tr.To=Vector2.new(mnX+bwd/2,mxY)d.tr.Visible=true
else for _,o in pairs(d)do o.Visible=false end end
elseif d then for _,o in pairs(d)do o.Visible=false end end end end end
local eL
local function stE()for _,p in ipairs(P:GetPlayers())do crE(p)end
if not EC.pa then EC.pa=P.PlayerAdded:Connect(function(p)task.wait(1)if espE then crE(p)end end)EC.pr=P.PlayerRemoving:Connect(function(p)rmE(p)end)end
if not eL then eL=R.RenderStepped:Connect(function()if espE then pcall(upE)end end)end end
local function spE()if eL then eL:Disconnect()eL=nil end for p,_ in pairs(ED)do rmE(p)end end
local nhL,nhC
local function rhC(c)if not c then return end local h=c:FindFirstChild("Head")if h then h.Transparency=1 h.CanCollide=false for _,a in ipairs(h:GetChildren())do if a:IsA("Accessory")or a:IsA("BasePart")or a:IsA("Decal")then pcall(function()a.Transparency=1 end)end end end
for _,ac in ipairs(c:GetChildren())do if ac:IsA("Accessory")then local h=ac:FindFirstChild("Handle")if h then h.Transparency=1 end end end end
local function enNH()rhC(gC())nhC=L.CharacterAdded:Connect(function(c)if headE then task.wait(0.3)rhC(c)end end)
nhL=R.Heartbeat:Connect(function()if headE then local c=gC()if c then local h=c:FindFirstChild("Head")if h and h.Transparency~=1 then h.Transparency=1 end end end end)end
local function dsNH()local c=gC()if c then local h=c:FindFirstChild("Head")if h then h.Transparency=0 end end
if nhC then nhC:Disconnect()nhC=nil end if nhL then nhL:Disconnect()nhL=nil end end
local inL,inC local io2={}
local function apI(c)if not c then return end for _,pt in ipairs(c:GetDescendants())do if pt:IsA("BasePart")or pt:IsA("Decal")then if not io2[pt]then io2[pt]=pt.Transparency end pcall(function()pt.Transparency=1 end)end end end
local function rsI(c)if not c then return end for _,pt in ipairs(c:GetDescendants())do if(pt:IsA("BasePart")or pt:IsA("Decal"))and io2[pt]~=nil then pcall(function()pt.Transparency=io2[pt]end)end end io2={}end
local function enI()apI(gC())inC=L.CharacterAdded:Connect(function(c)if invisE then task.wait(0.3)apI(c)end end)
inL=R.Heartbeat:Connect(function()if invisE then local c=gC()if c then for _,p in ipairs(c:GetDescendants())do if(p:IsA("BasePart")or p:IsA("Decal"))and p.Transparency~=1 then p.Transparency=1 end end end end end)end
local function dsI()if inC then inC:Disconnect()inC=nil end if inL then inL:Disconnect()inL=nil end rsI(gC())end
local spL
local function enS()if spL then return end spL=R.Heartbeat:Connect(function()if speedE then local h=gH()if h then h.WalkSpeed=spd end end end)end
local function dsS()if spL then spL:Disconnect()spL=nil end local h=gH()if h then h.WalkSpeed=16 end end
local ijC
local function enIJ()if ijC then ijC:Disconnect()end ijC=U.JumpRequest:Connect(function()if jumpE then local h=gH()if h then h:ChangeState(Enum.HumanoidStateType.Jumping)end end end)end
local function dsIJ()if ijC then ijC:Disconnect()ijC=nil end end
local flL,fbv,fgy,fc1,fc2
local fk={W=false,A=false,S=false,D=false,Space=false,LCtrl=false}
local function enF()local c=gC()if not c then return end local hr=c:FindFirstChild("HumanoidRootPart")local hm=c:FindFirstChildOfClass("Humanoid")if not hr or not hm then return end
hr.CustomPhysicalProperties=PhysicalProperties.new(0.01,0.3,0.5,1,1)
fbv=Instance.new("BodyVelocity")fbv.MaxForce=Vector3.new(math.huge,math.huge,math.huge)fbv.Velocity=Vector3.zero fbv.Parent=hr
fgy=Instance.new("BodyGyro")fgy.P=9e4 fgy.MaxTorque=Vector3.new(9e9,9e9,9e9)fgy.CFrame=hr.CFrame fgy.Parent=hr
hm.PlatformStand=true
fc1=U.InputBegan:Connect(function(i,gp)if gp then return end
if i.KeyCode==Enum.KeyCode.W then fk.W=true end if i.KeyCode==Enum.KeyCode.A then fk.A=true end if i.KeyCode==Enum.KeyCode.S then fk.S=true end if i.KeyCode==Enum.KeyCode.D then fk.D=true end if i.KeyCode==Enum.KeyCode.Space then fk.Space=true end if i.KeyCode==Enum.KeyCode.LeftControl then fk.LCtrl=true end end)
fc2=U.InputEnded:Connect(function(i)if i.KeyCode==Enum.KeyCode.W then fk.W=false end if i.KeyCode==Enum.KeyCode.A then fk.A=false end if i.KeyCode==Enum.KeyCode.S then fk.S=false end if i.KeyCode==Enum.KeyCode.D then fk.D=false end if i.KeyCode==Enum.KeyCode.Space then fk.Space=false end if i.KeyCode==Enum.KeyCode.LeftControl then fk.LCtrl=false end end)
flL=R.RenderStepped:Connect(function()if not flyE then return end local c=gC()if not c then return end local rt=c:FindFirstChild("HumanoidRootPart")if not rt then return end
local cm=Cam.CFrame local mv=Vector3.zero
if fk.W then mv=mv+cm.LookVector end if fk.S then mv=mv-cm.LookVector end if fk.D then mv=mv+cm.RightVector end if fk.A then mv=mv-cm.RightVector end if fk.Space then mv=mv+Vector3.new(0,1,0)end if fk.LCtrl then mv=mv-Vector3.new(0,1,0)end
if mv.Magnitude>0 then fbv.Velocity=mv.Unit*fs else fbv.Velocity=Vector3.zero end
fgy.CFrame=CFrame.new(rt.Position,rt.Position+cm.LookVector)end)end
local function dsF()if flL then flL:Disconnect()flL=nil end if fc1 then fc1:Disconnect()fc1=nil end if fc2 then fc2:Disconnect()fc2=nil end
if fbv then fbv:Destroy()fbv=nil end if fgy then fgy:Destroy()fgy=nil end
local h=gH()if h then h.PlatformStand=false end for k,_ in pairs(fk)do fk[k]=false end end
local EB,ES=mB(FP,"ESP Estirada",1)local HB,HS=mB(FP,"Quitar Cabeza",2)local IB,IS=mB(FP,"Invisible",3)local SpB,SpS=mB(FP,"Speed Boost",4)local JB,JS=mB(FP,"Infinite Jump",5)local FB,FS=mB(FP,"Fly",6)
mS(FP,"Speed Value",16,300,50,7,function(v)spd=v end)mS(FP,"Fly Speed",20,300,60,8,function(v)fs=v end)
local function sBS(b,s,e,t1,t2)if e then b.Text="  [ ON  ]  "..t1 b.TextColor3=RG s.Color=RED b.BackgroundColor3=BON else b.Text="  [ OFF ]  "..t2 b.TextColor3=Color3.fromRGB(200,200,200)s.Color=RD b.BackgroundColor3=BG2 end end
local function tESP()espE=not espE if espE then stE()else spE()end sBS(EB,ES,espE,"ESP Estirada","ESP Estirada")end
local function tNH()headE=not headE if headE then enNH()else dsNH()end sBS(HB,HS,headE,"Quitar Cabeza","Quitar Cabeza")end
local function tIN()invisE=not invisE if invisE then enI()else dsI()end sBS(IB,IS,invisE,"Invisible","Invisible")end
local function tSP()speedE=not speedE if speedE then enS()else dsS()end sBS(SpB,SpS,speedE,"Speed Boost","Speed Boost")end
local function tIJ()jumpE=not jumpE if jumpE then enIJ()else dsIJ()end sBS(JB,JS,jumpE,"Infinite Jump","Infinite Jump")end
local function tFL()flyE=not flyE if flyE then enF()else dsF()end sBS(FB,FS,flyE,"Fly","Fly")end
EB.MouseButton1Click:Connect(function()jelly(EB,0.1)tESP()end)HB.MouseButton1Click:Connect(function()jelly(HB,0.1)tNH()end)IB.MouseButton1Click:Connect(function()jelly(IB,0.1)tIN()end)SpB.MouseButton1Click:Connect(function()jelly(SpB,0.1)tSP()end)JB.MouseButton1Click:Connect(function()jelly(JB,0.1)tIJ()end)FB.MouseButton1Click:Connect(function()jelly(FB,0.1)tFL()end)
mK(KP,"ESP",1)mK(KP,"NoHead",2)mK(KP,"Invisible",3)mK(KP,"Speed",4)mK(KP,"InfJump",5)mK(KP,"Fly",6)mK(KP,"Menu",7)
local tf={ESP=tESP,NoHead=tNH,Invisible=tIN,Speed=tSP,InfJump=tIJ,Fly=tFL,Menu=tm}
U.InputBegan:Connect(function(i,gp)if gp then return end if i.UserInputType~=Enum.UserInputType.Keyboard then return end for k,cd in pairs(kb)do if i.KeyCode==cd then local f=tf[k]if f then f()end break end end end)
L.CharacterAdded:Connect(function()task.wait(1)if speedE then enS()end if jumpE then enIJ()end if invisE then task.wait(0.2)apI(gC())end if headE then task.wait(0.2)rhC(gC())end end)
game:BindToClose(function()spE()dsNH()dsI()dsS()dsIJ()dsF()end)
print("[XENO v6.1] OK")
