/*******************************************************************************
* SeqAct_SetMeshMaterialScalarParameter_TA generated by MVN.RLLib using UE Explorer.
* MVN.RLLib ? 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class SeqAct_SetMeshMaterialScalarParameter_TA extends SequenceAction
    forcescriptorder(true)
    hidecategories(Object);

var() private array<private Object> MeshList;
var() private string ParamName;
var() private float ScalarValue;

defaultproperties
{
    VariableLinks(0)=(ExpectedType=Class'Engine.SeqVar_ObjectList',LinkDesc="Meshes",LinkVar=None,PropertyName=MeshList,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(1)=(ExpectedType=Class'Engine.SeqVar_Float',LinkDesc="ScalarValue",LinkVar=None,PropertyName=ScalarValue,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    VariableLinks(2)=(ExpectedType=Class'Engine.SeqVar_String',LinkDesc="ParamName",LinkVar=None,PropertyName=ParamName,bWriteable=false,bSequenceNeverReadsOnlyWritesToThisVar=false,bModifiesLinkedObject=false,bHidden=false,MinVars=1,MaxVars=255,DrawX=0,CachedProperty=none,bAllowAnyType=false,bMoving=false,bClampedMax=false,bClampedMin=false,OverrideDelta=0)
    ObjName="Set Scalar Parameter on Static Meshes"
	ObjCategory="TAGame_decrypted"
}
event Activated()
{  /*Function decompiling is disabled */ }

private final function __SeqAct_SetMeshMaterialScalarParameter_TA__Activated_73DB3E6943F50B6A959069BFA5274788(Object Mesh)
{  /*Function decompiling is disabled */ }
