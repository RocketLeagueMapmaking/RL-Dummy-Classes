/*******************************************************************************
 * GFxData_LocalPlayer_TA generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib © 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GFxData_LocalPlayer_TA extends GFxDataSingleton_X;

enum ESplitScreenPosition
{
    SSP_Center,
    SSP_Left,
    SSP_Right,
    SSP_Top,
    SSP_Bottom,
    SSP_TopLeft,
    SSP_TopRight,
    SSP_BottomLeft,
    SSP_BottomRight,
    SSP_MAX
};

/** Set to notify when a player is in a shared UI state. Once all players clear SharedUIState, System.SharedUIState gets cleared.var databinding bool                                              bInSharedUIState; True if we have opened the start screen already */
var databinding bool bOpenedStartMenu;
/** True if save data loaded successfully */
var databinding bool bSaveDataLoaded;
/** Is a spectator */
var databinding bool bSpectator;
/** True if our connection is bad right now */
var databinding bool bBadConnection;
/** Currently using ballcam */
var databinding bool bBallcam;
/** We want to show the ballcam indicator on the hud when in ballcam */
var databinding bool bUseBallCamIndicator;
/** Whether to use metric or standard units for distance */
var databinding bool bMetric;
/** We are the primary splitscreen player */
var databinding bool bPrimaryPlayer;
/** Is Party Leader */
var databinding bool bPartyLeader;
/** Is in party */
var databinding bool bIsInParty;
/** Is this a demo build? */
var databinding bool bDemoBuild;
/** We are forcing the world to draw full screen but the UI split screen */
var databinding bool bForceSplitScreenUI;
/** Has authority over match settings at end of game */
var databinding bool bPrivateMatchGameOwner;
/** This player is age-restricted */
var databinding bool bAgeRestricted;
/** Localized error received if savedata was unable to load */
var databinding string SaveDataError;
/** Localized error received if something went wrong during the signin process */
var databinding string OnlineError;
/** Name of player */
var databinding string PlayerName;
/** Player avatar texture */
var databinding Texture PlayerAvatarTexture;
/** Player's XP Level */
var databinding int XpLevel;
/** Player's XP Title */
var databinding string XPTitle;
/** Player's Total XP */
var databinding int XPTotal;
/** Current XP in level */
var databinding int XPProgressInCurrentLevel;
/** XP required for next level */
var databinding int XPRequiredForNextLevel;
/** Player team */
var databinding int Team;
/** Worldspace camera yaw (degrees, range -180...180) */
var databinding float CameraYaw;
/** Player's Splitscreen position */
var databinding int SplitScreenPosition;
/** Controller id of this player */
var databinding int ControllerId;
/** Index in the local players array. May not be the same as ControllerId */
var databinding int LocalPlayerIndex;
/** Store Last match type here for UI use on return to menu */
var databinding name LastMatchType;
/** Controls how far from the edge of the screen essential UI is allowed to display */
var databinding float SafeZoneRatio;
var byte bPsyNetWasConnected;
var byte bPlatformWasConnected;
var privatewrite transient LocalPlayer_TA Player;

/**
protected event OnShellSet()
{
    local GameViewportClient_TA GameViewport;
    local PlayerController_X PC;

    super(GFxDataRow_X).OnShellSet();
    Player = LocalPlayer_TA(Shell.Player);
    bPrimaryPlayer = Player.Actor.IsPrimaryPlayer();
    ControllerId = Player.ControllerId;
    UnknownLocal_503775513
    @NULL
    // Failed to decompile this line:
         // Failed to decompile this Function's code.
          at position 0 
 Message: Index was out of range. Must be non-negative and less than the size of the collection.
        Parameter name: index 

 StackTrace:    at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
           at UELib.Core.UStruct.UByteCodeDecompiler.FormatTokens(Int32 beginIndex, Int32 endIndex) in E:\Development\Unreal-Library\src\ByteCodeDecompiler.cs:line 1544
           at UELib.Core.UStruct.UByteCodeDecompiler.Decompile() in E:\Development\Unreal-Library\src\ByteCodeDecompiler.cs:line 1492
}

protected event OnRemoved()
{
    UnknownLocal_404365330
    @NULL
    self
    @NULL
    self
    @NULL
    @NULL
    @NULL
    ) != return;
}

protected function HandleSaveDataLoaded(SaveGameManager_TA Manager, SaveData_TA SaveData, Error_X Error)
{
    // End:0x11
    if(Error != none)
    {
        return;
    }
    SafeZoneRatio = SaveData.SafeZoneRatio;
    // End:0x70
    if(Player.Profile != none)
    {
        HandleProfileSet(Player);
    }
    //return;    
}

protected function UpdateName()
{
    // End:0x11
    if(Player == none)
    {
        return;
    }
    PlayerName = Player.OnlinePlayer.GetLocalName();
    // End:0xC3
    if((Len(PlayerName) == 0) && Player.Profile != none)
    {
        PlayerName = Player.Profile.ProfileName;
    }
    //return;    
}

private final function HandleDrawWorldFullScreenChanged(GameViewportClient_TA GVC)
{
    bForceSplitScreenUI = GVC.bDrawWorldFullScreen;
    //return;    
}

private final function HandleProfileSet(LocalPlayer_TA InLocalPlayer)
{

__EventExploded__Delegate_2558976:

__EventExploded__Delegate_2558976:
    // End:0x54
    if((InLocalPlayer != Shell.Player) || InLocalPlayer.Profile == none)
    {
        return;
    }
    UnknownLocal_838867225
    0.0    
    @NULL
    rot(419430430, 506593305, 589824)    
    Profile == @NULL
    @NULL
    @NULL
    // Failed to decompile this line:
       
    // Index was out of range. Must be non-negative and less than the size of the collection.
    Parameter name: index
}

private final function HandleLoginStatusChanged(OnlinePlayer_X OnlinePlayer)
{
    UpdateName();
    // End:0x9A
    if(class'Online_X'.static.UniqueNetIDIsValid(OnlinePlayer.PlayerID))
    {
        GetOnlineGame().GetPlayerAvatar(OnlinePlayer.PlayerID, HandleGetAvatar);
    }
    //return;    
}

private final function HandleReceivedController(Player PlayerRef)
{
    GetOnlineGame().GetPlayerAvatar(LocalPlayer_TA(PlayerRef).OnlinePlayer.PlayerID, HandleGetAvatar);
    //return;    
}

private final function HandleGetAvatar(UniqueNetId InPlayerID, Texture Avatar)
{
    PlayerAvatarTexture = Avatar;
    //return;    
}

final function OnlineGame_X GetOnlineGame()
{
    return class'OnlineGame_X'.static.GetInstance();
    //return ReturnValue;    
}

function HandleSplitScreenPositionChanged(LocalPlayer_TA LocalPlayer)
{
    SplitScreenPosition = LocalPlayer.SplitScreenPosition;
    switch(SplitScreenPosition)
    {
        // End:0x83
        case 0:
            class'AkDevice'.static.SetListenerSpatialization(Shell.Player, 0);
            // End:0x131
            break;
        // End:0x88
        case 3:
        // End:0x8C
        case 1:
        // End:0x91
        case 5:
        // End:0xD8
        case 7:
            class'AkDevice'.static.SetListenerSpatialization(Shell.Player, 1);
            // End:0x131
            break;
        // End:0xDD
        case 4:
        // End:0xE2
        case 2:
        // End:0xE7
        case 6:
        // End:0x12E
        case 8:
            class'AkDevice'.static.SetListenerSpatialization(Shell.Player, 2);
            // End:0x131
            break;
        // End:0xFFFF
        default:
            //return;
    }    
}

private final function HandleXPUpdated(Profile_TA Profile)
{
    UpdateXP();
    //return;    
}

private final function UpdateXP()
{
    // End:0x85
    if(Player.Profile != none)
    {
        Player.Profile.GetXPInfo(XPTotal, XpLevel, XPTitle, XPProgressInCurrentLevel, XPRequiredForNextLevel);
    }
    //return;    
}

k2override function SetOpenedStartMenu(bool bHasBeenOpened)
{
    // End:0xEB
    if(!bOpenedStartMenu && bHasBeenOpened)
    {
        Shell.Player.OnlinePlayer.OnlineSub.SystemInterface.HandleBootMessage();
        // End:0xEB
        if(class'EngineShare_TA'.static.GetInstance().FeaturesFilter.bEnablePrivacyNotice)
        {
            ShowPrivacyModal(none);
        }
    }
    bOpenedStartMenu = bHasBeenOpened;
    //return;    
}

final function ShowPrivacyModal(GFxModal_X Modal)
{
    GFxShell_TA(Shell).CreateModal().SetTitle("Privacy Notice").SetBody("Welcome to the Rocket League VIP Beta Test on PlayStation�4! By participating in this Beta, you agree and consent NOT to share, broadcast, or publicize any information or media related to it. In other words, you have to keep a secret. Do you agree?").AddButton("I do NOT agree", HandleCancelPrivacy).AddButton("I agree", HandlePrivacyAccept);
    //return;    
}

final function HandleCancelPrivacy(GFxModal_X Modal)
{
    GFxShell_TA(Shell).CreateModal().SetTitle("").SetBody("You have chosen NOT to participate in the Rocket League VIP Beta. No hard feelings, though!").AddButton("OK", ShowPrivacyModal);
    //return;    
}

final function HandlePrivacyAccept(GFxModal_X Modal)
{
    OnlineGameParty_TA(class'OnlineGame_X'.static.GetInstance().Party).OnPrivacyAgreed();
    //return;    
}

private final function bool ShowNetTrialLoginFailedMessage(string NetType)
{
    local GFxModal_X Modal;

    Modal = GFxShell_TA(Shell).CreateModal();
    // End:0x10C
    if(Modal != none)
    {
        Modal.SetTitle(Localize(NetType, "Title", "TAGame"));
        Modal.SetBody(Localize(NetType, "Body", "TAGame"));
        Modal.AddButton(Localize("UIStrings_TA", "OK", "TAGame"));
        return true;
    }
    return false;
    //return ReturnValue;    
}

protected function PRI_TA GetPRI()
{
    // End:0x64
    if(Player.Actor != none)
    {
        return PRI_TA(Player.Actor.PlayerReplicationInfo);
    }
    // End:0x66
    else
    {
        return none;
    }
    //return ReturnValue;    
}

k2override function ChangeTeam(int TeamIndex)
{
    // End:0x39
    if((GetPRI()) != none)
    {
        GetPRI().ServerChangeTeam(TeamIndex);
    }
    //return;    
}

k2override function Spectate()
{
    // End:0x30
    if((GetPRI()) != none)
    {
        GetPRI().ServerSpectate();
    }
    //return;    
}

private final function HandleReceivedPRI(PlayerController_X PC)
{
    local PRI_TA PRI;

    PRI = PRI_TA(PC.PlayerReplicationInfo);
    // End:0xFA
    if(PRI != none)
    {
        // End:0xBF
        if(GameEvent_SoccarPrivate_TA(PRI.GameEvent) != none)
        {
            bPrivateMatchGameOwner = GameEvent_SoccarPrivate_TA(PRI.GameEvent).GameOwner == PRI;
        }
        UnknownLocal_508559385
        @NULL
        @NULL.Insert(@NULL.Insert(@NULL, @NULL@NULL, @NULL@NULL;
    }
}

private final function HandleSpectatorChanged(PRI_TA PRI)
{
    bSpectator = PRI.bIsSpectator;
    //return;    
}

private final function HandlePrivateMatchGameOwnerUpdated(GameEvent_SoccarPrivate_TA GameEvent, PRI_TA NewGameOwner)
{
    bPrivateMatchGameOwner = Player.Actor.PlayerReplicationInfo == NewGameOwner;
    //return;    
}

protected function HandleLocalPlayerChanged(LocalPlayer NewPlayer)
{
    LocalPlayerIndex = class'Engine'.static.GetEngine().GamePlayers.Find(Shell.Player);
    //return;    
}

protected function HandleCanPlayOnlineChanged(OnlinePlayer_X P)
{
    bAgeRestricted = P.CanPlayOnline() == 1;
    //return;    
}
**/