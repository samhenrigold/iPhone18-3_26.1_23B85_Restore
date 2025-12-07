uint64_t MLS.Group.Group.ChangeRCSGroupNameInput.newName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameInput.init(newName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void MLS.Group.Group.ChangeRCSGroupNameOutput.newGroupInfo.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  sub_26BE00608(v2, v3);
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameOutput.nextEpochAuthenticator.getter()
{
  v1 = *(v0 + 32);
  sub_26BE00608(v1, *(v0 + 40));
  return v1;
}

void MLS.Group.Group.ChangeRCSGroupNameOutput.nextEpochAuthenticator.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void MLS.Group.Group.ChangeRCSGroupNameOutput.privateMessage.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  sub_26BE00608(v2, v3);
}

void MLS.Group.Group.ChangeRCSGroupNameOutput.privateMessage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26BE00258(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameOutput.encryptedGroupName.getter()
{
  v1 = *(v0 + 64);
  sub_26BE00608(v1, *(v0 + 72));
  return v1;
}

void MLS.Group.Group.ChangeRCSGroupNameOutput.encryptedGroupName.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void MLS.Group.Group.DecryptNameKeysInput.privateMessage.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_26BE00608(v2, v3);
}

void MLS.Group.Group.DecryptNameKeysInput.privateMessage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26BE00258(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

__n128 MLS.Group.Group.DecryptNameKeysInput.init(privateMessage:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t MLS.Group.Group.DecryptNameInput.init(encryptedName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.Group.Group.DecryptNameOutput.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MLS.Group.Group.DecryptNameOutput.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26BE40028(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26BE40048, 0, 0);
}

uint64_t MLS.Group.Group.CreateNewEraInput.packages.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 MLS.Group.Group.CreateNewEraOutput.commitOutput.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE415F8(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t MLS.Group.Group.PriorGroupMembershipInput.init(era:epochID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t MLS.Group.Group.PriorGroupMembershipOutput.members.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MLS.Group.Group.ParticipantKeyRolledInput.telURI.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MLS.Group.Group.ParticipantKeyRolledInput.telURI.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLS.Group.Group.ParticipantKeyRolledInput.init(era:epochID:telURI:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

double MLS.Group.Group.MessageMetadataOutput.retrieveField(field:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = a1 == 0x63656C6665527369 && a2 == 0xEC0000006E6F6974;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v5;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t MLS.Group.Group.__deallocating_deinit()
{

  sub_26BE00258(v0[4], v0[5]);

  sub_26BE0489C(v0[7], v0[8]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t sub_26BE40448()
{
  v1 = *(*v0 + 48);
  swift_beginAccess();
  return *(v1 + 320);
}

uint64_t sub_26BE4048C@<X0>(uint64_t a1@<X8>)
{
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  v3 = __swift_project_value_buffer(v2, qword_280478EE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MLS.Group.GroupInfo.rawRepresentation.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Group.GroupInfo.init(fromRaw:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void MLS.Group.CommitOutput.commitMessage.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_26BE00608(v2, v3);
}

void MLS.Group.CommitOutput.commitMessage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26BE00258(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

void MLS.Group.CommitOutput.welcomeMessage.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  sub_26BE2BAE8(v2, v3);
}

uint64_t sub_26BE4062C(uint64_t *a1, uint64_t (*a2)(void, void))
{
  v3 = *a1;
  v4 = a1[1];
  result = a2(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  return result;
}

void MLS.Group.CommitOutput.nextGroupInfo.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  sub_26BE2BAE8(v2, v3);
}

void MLS.Group.CommitOutput.nextGroupInfo.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26BE132D4(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t MLS.Group.CommitOutput.nextEpochAuthenticator.getter()
{
  v1 = *(v0 + 48);
  sub_26BE2BAE8(v1, *(v0 + 56));
  return v1;
}

void MLS.Group.CommitOutput.nextEpochAuthenticator.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE132D4(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t MLS.Group.CommitOutput.nextRatchetTree.getter()
{
  v1 = *(v0 + 64);
  sub_26BE2BAE8(v1, *(v0 + 72));
  return v1;
}

void MLS.Group.CommitOutput.nextRatchetTree.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE132D4(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void MLS.Group.Message.rawRepresentation.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.Group.IncomingApplicationMessageDetails.data.getter()
{
  v1 = *(v0 + 56);
  sub_26BE00608(v1, *(v0 + 64));
  return v1;
}

void MLS.Group.IncomingApplicationMessageDetails.data.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t MLS.Group.IncomingApplicationMessageDetails.messageID.getter()
{
  v1 = *(v0 + 72);
  sub_26BE00608(v1, *(v0 + 80));
  return v1;
}

void MLS.Group.IncomingApplicationMessageDetails.messageID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t MLS.Group.IncomingApplicationMessageDetails.originalMessageID.getter()
{
  v1 = *(v0 + 88);
  sub_26BE00608(v1, *(v0 + 96));
  return v1;
}

void MLS.Group.IncomingApplicationMessageDetails.originalMessageID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t MLS.Group.IncomingApplicationMessageDetails.era.setter(uint64_t result)
{
  *(v1 + 108) = result;
  *(v1 + 112) = BYTE4(result) & 1;
  return result;
}

uint64_t MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.getter()
{
  v1 = *(v0 + 56);
  sub_26BE00608(v1, *(v0 + 64));
  return v1;
}

void MLS.Group.IncomingSignedMessage.verifiableDerivedContentData.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t MLS.Group.StateUpdate.rosterUpdate.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

__n128 MLS.Group.StateUpdate.rosterUpdate.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  return result;
}

__n128 MLS.Group.StateUpdate.init(rosterUpdate:active:epochID:committerWasSelf:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = *a1;
  v6 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  return result;
}

uint64_t MLS.Group.RosterUpdate.added.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MLS.Group.RosterUpdate.removed.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MLS.Group.RosterUpdate.serverRemoved.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MLS.Group.RosterUpdate.updated.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t MLS.Group.RosterUpdate.init(added:removed:serverRemoved:updated:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 MLS.Group.MemberUpdate.init(prior:new:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  v4 = *(a2 + 16);
  *(a3 + 56) = *a2;
  *(a3 + 48) = *(a1 + 48);
  *(a3 + 72) = v4;
  result = *(a2 + 32);
  *(a3 + 88) = result;
  *(a3 + 104) = *(a2 + 48);
  return result;
}

uint64_t static MLS.Group.MemberUpdate.== infix(_:_:)(unint64_t *a1, uint64_t *a2)
{
  if ((_s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  return _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(a1 + 7, a2 + 7);
}

uint64_t sub_26BE40F50(unint64_t *a1, uint64_t *a2)
{
  if ((_s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  return _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(a1 + 7, a2 + 7);
}

uint64_t _s8SwiftMLS0B0O5GroupO11StateUpdateV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v15 = *(a1 + 32);
  v16 = a1[5];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = *(a2 + 32);
  v11 = a2[5];

  if (sub_26BFB03C0(v2, v6) & 1) != 0 && (sub_26BFB03C0(v3, v7) & 1) != 0 && (sub_26BFB03C0(v4, v8))
  {
    sub_26BFB0958(v5, v9);
    v14 = v12;

    return v14 & ~(v15 ^ v10) & (v16 == v11);
  }

  else
  {

    return 0;
  }
}

void _s8SwiftMLS0B0O5GroupO12RosterUpdateV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if (sub_26BFB03C0(*a1, *a2) & 1) != 0 && (sub_26BFB03C0(v2, v5) & 1) != 0 && (sub_26BFB03C0(v4, v7))
  {

    sub_26BFB0958(v3, v6);
  }
}

uint64_t sub_26BE411D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26C00A5AC();

    return sub_26C00A66C();
  }

  return result;
}

uint64_t sub_26BE4126C()
{
  if (!os_variant_allows_internal_security_policies())
  {
    return 1;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26C00A45C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = sub_26C00A45C();
  v5 = [v3 integerForKey_];

  if (v5 < 1)
  {
    return 1;
  }

  if (HIDWORD(v5))
  {
    __break(1u);
    return 1;
  }

  return v5;
}

uint64_t sub_26BE41358(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE40028(a1, v1);
}

uint64_t sub_26BE41518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E698, &unk_26C0204F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE41588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E698, &unk_26C0204F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of MLS.Group.Group.epochID.getter()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE417BC;

  return v4();
}

uint64_t sub_26BE417BC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.groupID.getter()
{
  v4 = (*(*v0 + 240) + **(*v0 + 240));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE45BC8;

  return v4();
}

uint64_t dispatch thunk of MLS.Group.Group.epochAuthenticator.getter()
{
  v4 = (*(*v0 + 264) + **(*v0 + 264));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE41AE0;

  return v4();
}

uint64_t sub_26BE41AE0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.ratchetTree.getter()
{
  v4 = (*(*v0 + 272) + **(*v0 + 272));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE3B910;

  return v4();
}

uint64_t dispatch thunk of MLS.Group.Group.credential.getter(uint64_t a1)
{
  v6 = (*(*v1 + 304) + **(*v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE28F58;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.signingIdentity.getter(uint64_t a1)
{
  v6 = (*(*v1 + 320) + **(*v1 + 320));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.memberIdentity.getter(uint64_t a1)
{
  v6 = (*(*v1 + 328) + **(*v1 + 328));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.members.getter()
{
  v4 = (*(*v0 + 368) + **(*v0 + 368));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE2E3E0;

  return v4();
}

uint64_t dispatch thunk of MLS.Group.Group.hasEndMLS.getter()
{
  v4 = (*(*v0 + 376) + **(*v0 + 376));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE2E3E0;

  return v4();
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingMessage(message:readdedWelcome:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 408) + **(*v3 + 408));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingMessage(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 416) + **(*v2 + 416));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingHandshakeMessage(message:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 424) + **(*v2 + 424));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingApplicationMessage(message:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 432) + **(*v2 + 432));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingCommit(message:readdedWelcome:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 440) + **(*v3 + 440));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingCommitList(message:)(uint64_t a1)
{
  v6 = (*(*v1 + 448) + **(*v1 + 448));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3E0;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingCommitList(message:readdedWelcome:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 456) + **(*v2 + 456));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2CD5C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.processIncomingProposalList(message:)(uint64_t a1)
{
  v6 = (*(*v1 + 464) + **(*v1 + 464));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3E0;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.addMembers(packages:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 472) + **(*v2 + 472));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.removeMembers(signingIdentities:isServerRemove:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 480) + **(*v3 + 480));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Group.Group.proposeRemoveSelf()(uint64_t a1)
{
  v6 = (*(*v1 + 488) + **(*v1 + 488));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.selfUpdate(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 496) + **(*v2 + 496));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.encryptApplicationMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 504) + **(*v3 + 504));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Group.Group.commit()(uint64_t a1)
{
  v6 = (*(*v1 + 512) + **(*v1 + 512));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.generateGroupInfo()(uint64_t a1)
{
  v6 = (*(*v1 + 528) + **(*v1 + 528));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.delete()()
{
  v4 = (*(*v0 + 536) + **(*v0 + 536));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE2E3F4;

  return v4();
}

uint64_t dispatch thunk of MLS.Group.Group.encryptApplicationMessageWithAAD(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 544) + **(*v2 + 544));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.signPublicApplicationMessage(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 552) + **(*v2 + 552));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.encryptWrappedApplicationMessage(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 560) + **(*v2 + 560));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.decryptWrappedApplicationMessage(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 568) + **(*v1 + 568));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE45BF4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.replaceExpiredCredential(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 576) + **(*v2 + 576));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.performDowngradeToUnencrypted()(uint64_t a1)
{
  v6 = (*(*v1 + 584) + **(*v1 + 584));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Group.Group.performResurrection(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 592) + **(*v2 + 592));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.changeRCSGroupName(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 600) + **(*v2 + 600));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.decryptNameKeys(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 608) + **(*v2 + 608));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.decryptName(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 616) + **(*v2 + 616));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.hasGroupNameKey.getter()
{
  v4 = (*(*v0 + 624) + **(*v0 + 624));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE2CD5C;

  return v4();
}

uint64_t dispatch thunk of MLS.Group.Group.currentEra.getter()
{
  v4 = (*(*v0 + 656) + **(*v0 + 656));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE4445C;

  return v4();
}

uint64_t sub_26BE4445C(unint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1 | ((HIDWORD(a1) & 1) << 32));
}

uint64_t dispatch thunk of MLS.Group.Group.createNewEra(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 664) + **(*v2 + 664));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.priorGroupMembership(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 672) + **(*v2 + 672));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE28F58;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.participantKeyRolled(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 680) + **(*v2 + 680));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Group.Group.mustUpdateLeafKey.getter()
{
  v4 = (*(*v0 + 688) + **(*v0 + 688));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE2E3E0;

  return v4();
}

uint64_t dispatch thunk of MLS.Group.Group.mustUpdateLeafCredential.getter()
{
  v4 = (*(*v0 + 696) + **(*v0 + 696));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE2E3E0;

  return v4();
}

uint64_t dispatch thunk of MLS.Group.Group.mustUpdateOtherMember.getter()
{
  v4 = (*(*v0 + 704) + **(*v0 + 704));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE2E3E0;

  return v4();
}

uint64_t dispatch thunk of MLS.Group.Group.messageMetadata(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 712) + **(*v2 + 712));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O5GroupO7MessageVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26BE44DE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE44E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26BE44EB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE44F00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE44F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE44FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26BE450A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE450EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O8IdentityO07SigningC0VSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BE45198(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26BE451F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26BE45268(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE452B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE4531C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26BE45378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26BE4540C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26BE454CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE45514(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE45570(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE455C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O5GroupO11StateUpdateVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O5GroupO15ReceivedMessageO(uint64_t a1)
{
  if ((*(a1 + 113) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 113) & 7;
  }
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26BE456A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 114))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 113);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BE456E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 113) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BE4573C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 113) = a2;
  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26BE457AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26BE45808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_26BE4588C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26BE458E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26BE45978(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE459C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE45A20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE45A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_26BE45ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE45B24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MLS.TreeKEMPublicKey.hashes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MLS.TreeKEMPublicKey.ratchetTree.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

unint64_t MLS.TreeKEMPublicKey.init(ciphersuiteID:)@<X0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  v3 = MEMORY[0x277D84F90];
  *(a2 + 24) = MEMORY[0x277D84F90];
  result = sub_26C004AC0(v3);
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

void MLS.TreeKEMPublicKey.init(ciphersuiteID:serializedData:)(__int16 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  v79 = *MEMORY[0x277D85DE8];
  v50 = *a1;
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v8 = *(a2 + 16);
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    v8 = a2;
LABEL_6:
    sub_26BE00608(a2, a3);
  }

  v76 = a2;
  v77 = a3;
  v78 = v8;
  sub_26BE00608(a2, a3);
  sub_26BE00608(a2, a3);
  sub_26BF30764(&v76, &__dst);
  if (v4)
  {
    sub_26BE00258(v76, v77);
    v76 = a2;
    v77 = a3;
    v78 = v8;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (BYTE8(__dst))
  {
    sub_26BE00258(v76, v77);
    v10 = a3;
    v11 = a2;
LABEL_13:
    sub_26BE00258(v11, v10);
    v76 = a2;
    v77 = a3;
    v78 = v8;
    sub_26BE01600();
    swift_allocError();
    *v12 = 1;
    goto LABEL_14;
  }

  v15 = __dst;
  sub_26BE00258(a2, a3);
  if (v15 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v16 = 5;
    goto LABEL_9;
  }

  v17 = sub_26BF2A44C(v15);
  if (v18 >> 60 == 15)
  {
    v11 = v76;
    v10 = v77;
    goto LABEL_13;
  }

  v73 = v17;
  v74 = v18;
  v75 = v19;
  v20 = MEMORY[0x277D84F90];
  v49 = v8;
  while (1)
  {
    v21 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v22 = *(v17 + 24);
      }

      else
      {
        v22 = 0;
      }
    }

    else if (v21)
    {
      v22 = v17 >> 32;
    }

    else
    {
      v22 = BYTE6(v18);
    }

    v23 = __OFSUB__(v22, v19);
    v24 = v22 - v19;
    if (v23)
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v24 < 1)
    {
      break;
    }

    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_70;
    }

    if (v21 <= 1)
    {
      if (v21)
      {
        v26 = v17 >> 32;
      }

      else
      {
        v26 = BYTE6(v18);
      }

LABEL_36:
      if (v26 < v25)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (v21 == 2)
    {
      v26 = *(v17 + 24);
      goto LABEL_36;
    }

    if (v25 > 0)
    {
LABEL_49:
      sub_26BE01600();
      swift_allocError();
      *v37 = 1;
      swift_willThrow();

      sub_26BE00258(v73, v74);
      goto LABEL_10;
    }

LABEL_39:
    *&v55 = v17;
    *(&v55 + 1) = v18;
    if (v25 < v19)
    {
      goto LABEL_71;
    }

    *&v53[0] = v19;
    *(&v53[0] + 1) = v19 + 1;
    sub_26BE00608(v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v55, *(&v55 + 1));
    v75 = v25;
    sub_26BE2E2B8(&v55);
    v70 = v61;
    v71 = v62;
    v72 = v63;
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v69 = v60;
    __dst = v55;
    v65 = v56;
    v8 = v49;
    sub_26BE2E1F0(&v55, v53, &qword_28045E4C8, &unk_26C0112A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_26BEEB900(0, v20[2] + 1, 1, v20);
    }

    v28 = v20[2];
    v27 = v20[3];
    if (v28 >= v27 >> 1)
    {
      v20 = sub_26BEEB900((v27 > 1), v28 + 1, 1, v20);
    }

    v53[6] = v70;
    v53[7] = v71;
    v54 = v72;
    v53[2] = v66;
    v53[3] = v67;
    v53[4] = v68;
    v53[5] = v69;
    v53[0] = __dst;
    v53[1] = v65;
    sub_26BE2E258(v53, &qword_28045E4C8, &unk_26C0112A0);
    v20[2] = v28 + 1;
    v29 = &v20[17 * v28];
    *(v29 + 2) = v55;
    v30 = v59;
    v32 = v56;
    v31 = v57;
    *(v29 + 5) = v58;
    *(v29 + 6) = v30;
    *(v29 + 3) = v32;
    *(v29 + 4) = v31;
    v34 = v61;
    v33 = v62;
    v35 = v60;
    v29[20] = v63;
    *(v29 + 8) = v34;
    *(v29 + 9) = v33;
    *(v29 + 7) = v35;
    v17 = v73;
    v18 = v74;
    v19 = v75;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v36 = *(v17 + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  else if (v21)
  {
    v36 = v17 >> 32;
  }

  else
  {
    v36 = BYTE6(v18);
  }

  if (__OFSUB__(v36, v19))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v36 == v19)
  {
    sub_26BE00258(v17, v18);
    sub_26BE00258(a2, a3);
    sub_26BE00258(v76, v77);
    v38 = v20[2];
    if (v38)
    {
      memmove(&__dst, &v20[17 * v38 - 13], 0x88uLL);
      if (sub_26BE58C10(&__dst) == 1)
      {
        sub_26BE01654();
        swift_allocError();
        *v39 = 35;
        *(v39 + 8) = 0u;
        *(v39 + 24) = 0u;
        *(v39 + 40) = 0u;
        *(v39 + 56) = 0u;
        *(v39 + 72) = 0u;
        *(v39 + 88) = 0u;
        *(v39 + 104) = 0;
        *(v39 + 112) = 23;
        swift_willThrow();
        sub_26BE00258(a2, a3);

        return;
      }

      v52 = 0;
      *&v55 = v20;
      MLS.RatchetTree.leafCount.getter(v53);
      v41 = v53[0];
      if (LODWORD(v53[0]))
      {
        v41 = 1;
        v52 = 1;
        v42 = v20[2];
        if (v42 >= 2)
        {
          v43 = 1;
          do
          {
            if (v43 < 0)
            {
              goto LABEL_72;
            }

            v41 = 2 * v43;
            v44 = (4 * v43 - 1);
            v43 *= 2;
          }

          while (v42 > v44);
          v52 = v41;
        }
      }

      v45 = v41 != 0;
      v46 = v41 - 1;
      if (v45)
      {
        if ((v46 & 0x80000000) == 0)
        {
          sub_26BECA280((2 * v46) | 1);
          v51 = sub_26C004AC0(MEMORY[0x277D84F90]);
          LODWORD(v53[0]) = v52;
          MLS.NodeIndex.init(forRoot:)(v53, &v55);
          sub_26BE4BE9C(&v55);
          sub_26BE00258(v47, v48);
          sub_26BE00258(a2, a3);
          *a4 = v50;
          *(a4 + 8) = v51;
          *(a4 + 16) = v52;
          *(a4 + 24) = v20;
          return;
        }

LABEL_76:
        __break(1u);
      }

LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  sub_26BE01654();
  swift_allocError();
  *v40 = 0;
  v40[112] = 1;
  swift_willThrow();

  sub_26BE00258(v73, v74);
LABEL_10:
  sub_26BE00258(v76, v77);
  v76 = a2;
  v77 = a3;
  v78 = v8;
LABEL_14:
  swift_willThrow();
  *&__dst = &type metadata for MLS.RatchetTree;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C0, &unk_26C011290);
  v13 = sub_26C00A4FC();
  sub_26BE826C4(v13, v14, a2, a3);

  swift_willThrow();
  sub_26BE00258(a2, a3);
  sub_26BE00258(v76, v77);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLS.TreeKEMPublicKey.hashTree()()
{
  v5 = *(v0 + 16);
  MLS.NodeIndex.init(forRoot:)(&v5, &v6);
  if (!v1)
  {
    v4 = v6;
    sub_26BE4BE9C(&v4);
    sub_26BE00258(v2, v3);
  }
}

void MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(__int16 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v15 = xmmword_26C00BBD0;
  v16 = 0;
  v18 = v6;
  sub_26BE7D80C(&v18);

  if (v3)
  {
    sub_26BE00258(0, 0xC000000000000000);
    return;
  }

  v7 = *(&v15 + 1) >> 62;
  if ((*(&v15 + 1) >> 62) <= 1)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = v15 >> 32;
LABEL_9:
    if (v8 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(v15 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v9 = sub_26C00909C();
  v11 = v10;
  sub_26BE00258(0, 0xC000000000000000);
  LOWORD(v18) = v5;
  MLS.TreeKEMPublicKey.init(ciphersuiteID:serializedData:)(&v18, v9, v11, &v15);
  v12 = *(&v15 + 1);
  v13 = v16;
  v14 = v17;
  *a3 = v15;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
}

void sub_26BE46704(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (v5 != 0x80000000)
    {
      if (v3 - 1 < 0)
      {
        goto LABEL_18;
      }

      if (v4 > 2 * (v3 - 1))
      {
        sub_26BE01654();
        swift_allocError();
        *v8 = 30;
        *(v8 + 8) = 0u;
        *(v8 + 24) = 0u;
        *(v8 + 40) = 0u;
        *(v8 + 56) = 0u;
        *(v8 + 72) = 0u;
        *(v8 + 88) = 0u;
        *(v8 + 104) = 0;
        *(v8 + 112) = 23;
        swift_willThrow();
        return;
      }

      v6 = *(v1 + 24);
      if (*(v6 + 16) <= v4 || (memmove(__dst, (v6 + 136 * v4 + 32), 0x88uLL), sub_26BE58C10(__dst) == 1))
      {
        *a1 = v5;
        return;
      }

      ++v5;
      v4 += 2;
      if (v3 == v5)
      {
        if ((v3 & 0x80000000) == 0)
        {
          *(v1 + 16) = 2 * v3;
          v7 = 2 * v3 - 1;
          if (v7 >= 0)
          {
            goto LABEL_13;
          }

          __break(1u);
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_12:
  v7 = 0;
  *(v1 + 16) = 1;
LABEL_13:
  sub_26BECA280((2 * v7) | 1);
  *a1 = v3;
}

unsigned int *MLS.TreeKEMPublicKey.blankAt(index:)(unsigned int *result)
{
  v2 = *(v1 + 16);
  v3 = v2 - 1;
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = *result;
  if (v4 <= 2 * v3)
  {
    v6 = *(v1 + 24);
    if (*(v6 + 16) <= v4)
    {
      sub_26BE2E2B8(v23);
    }

    else
    {
      v7 = v6 + 136 * v4;
      v14 = *(v7 + 32);
      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      v10 = *(v7 + 96);
      v17 = *(v7 + 80);
      v18 = v10;
      v15 = v8;
      v16 = v9;
      v11 = *(v7 + 112);
      v12 = *(v7 + 128);
      v13 = *(v7 + 144);
      v22 = *(v7 + 160);
      v20 = v12;
      v21 = v13;
      v19 = v11;
      sub_26BE2E1F0(&v14, v23, &qword_28045E4C8, &unk_26C0112A0);
      v23[6] = v20;
      v23[7] = v21;
      v24 = v22;
      v23[2] = v16;
      v23[3] = v17;
      v23[4] = v18;
      v23[5] = v19;
      v23[0] = v14;
      v23[1] = v15;
    }

    LOBYTE(v1) = sub_26BE58C10(v23) != 0;
    sub_26BE2E258(v23, &qword_28045E4C8, &unk_26C0112A0);
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v5 = 30;
    *(v5 + 8) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 104) = 0;
    *(v5 + 112) = 23;
    swift_willThrow();
  }

  return (v1 & 1);
}

void MLS.TreeKEMPublicKey.addLeaf(_:)(__int128 *a1@<X0>, unsigned int *a2@<X8>)
{
  v6 = a1[7];
  v152[6] = a1[6];
  v152[7] = v6;
  v153 = *(a1 + 16);
  v7 = a1[3];
  v152[2] = a1[2];
  v152[3] = v7;
  v8 = a1[5];
  v152[4] = a1[4];
  v152[5] = v8;
  v9 = a1[1];
  v152[0] = *a1;
  v152[1] = v9;
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  LOWORD(v133) = *v2;
  *(&v133 + 1) = v10;
  LODWORD(v134) = v11;
  *(&v134 + 1) = v12;
  sub_26BE00758(v152, &v143);

  sub_26BE59564(&v133, v152);
  if (v3)
  {
    sub_26BE00854(v152);
LABEL_3:

    return;
  }

  v14 = v13;
  sub_26BE00854(v152);

  if (v14)
  {
    sub_26BE01654();
    swift_allocError();
    v16 = 26;
LABEL_6:
    *v15 = v16;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    *(v15 + 104) = 0;
    *(v15 + 112) = 23;
    swift_willThrow();
    return;
  }

  v17 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  LOWORD(v133) = *v2;
  *(&v133 + 1) = v17;
  LODWORD(v134) = v18;
  *(&v134 + 1) = v19;
  sub_26BE00758(v152, &v143);

  sub_26BE58C50(&v133, v152);
  LOBYTE(v17) = v20;
  sub_26BE00854(v152);

  if (v17)
  {
    sub_26BE01654();
    swift_allocError();
    v16 = 27;
    goto LABEL_6;
  }

  v154 = v2;
  sub_26BE46704(&v142);
  v21 = v142;
  if ((v142 & 0x80000000) == 0)
  {
    v132 = 2 * v142;
    v22 = a1[7];
    v139 = a1[6];
    v140 = v22;
    v141 = *(a1 + 16);
    v23 = a1[3];
    v135 = a1[2];
    v136 = v23;
    v24 = a1[4];
    v138 = a1[5];
    v137 = v24;
    v25 = *a1;
    v134 = a1[1];
    v133 = v25;
    sub_26BE140D0(&v133);
    v149 = v139;
    v150 = v140;
    v151 = v141;
    v145 = v135;
    v146 = v136;
    v148 = v138;
    v147 = v137;
    v144 = v134;
    v143 = v133;
    nullsub_1();
    v129 = v149;
    v130 = v150;
    v131 = v151;
    v125 = v145;
    v126 = v146;
    v128 = v148;
    v127 = v147;
    v124 = v144;
    v123 = v143;
    sub_26BE00758(v152, v121);
    v26 = v154;
    sub_26BE473C8(&v132, &v123);
    v121[7] = v130;
    v122 = v131;
    v121[2] = v125;
    v121[3] = v126;
    v121[5] = v128;
    v121[6] = v129;
    v121[4] = v127;
    v121[0] = v123;
    v121[1] = v124;
    sub_26BE2E258(v121, &qword_28045E4C8, &unk_26C0112A0);
    LODWORD(__dst) = 2 * v21;
    LODWORD(v110[0]) = *(v26 + 16);
    v27 = sub_26BE7B518(v110);
    v28 = v27;
    v83 = v21;
    v29 = *(v27 + 2);
    v30 = v154;
    if (!v29)
    {
LABEL_47:

      LODWORD(__dst) = v83;
      sub_26BE476A8(&__dst);
      *a2 = v83;
      return;
    }

    v31 = 0;
    v32 = v27 + 32;
    v79 = *(v27 + 2);
    v80 = v27;
    v78 = v27 + 32;
    while (v31 < *(v28 + 2))
    {
      v33 = *(v30 + 16);
      v34 = v33 != 0;
      v35 = v33 - 1;
      if (!v34)
      {
        goto LABEL_51;
      }

      if (v35 < 0)
      {
        goto LABEL_52;
      }

      v36 = *&v32[4 * v31];
      v37 = *(v30 + 24);
      if (v36 > 2 * v35)
      {

        sub_26BE01654();
        swift_allocError();
        *v75 = 30;
        *(v75 + 8) = 0u;
        *(v75 + 24) = 0u;
        *(v75 + 40) = 0u;
        *(v75 + 56) = 0u;
        *(v75 + 72) = 0u;
        *(v75 + 88) = 0u;
        *(v75 + 104) = 0;
        *(v75 + 112) = 23;
        swift_willThrow();
        goto LABEL_3;
      }

      if (v37[2] > v36)
      {
        v38 = &v37[17 * v36];
        v110[0] = *(v38 + 2);
        v39 = *(v38 + 3);
        v40 = *(v38 + 4);
        v41 = *(v38 + 6);
        v110[3] = *(v38 + 5);
        v110[4] = v41;
        v110[1] = v39;
        v110[2] = v40;
        v42 = *(v38 + 7);
        v43 = *(v38 + 8);
        v44 = *(v38 + 9);
        v111 = v38[20];
        v110[6] = v43;
        v110[7] = v44;
        v110[5] = v42;
        memmove(&__dst, v38 + 4, 0x88uLL);
        if (sub_26BE58C10(&__dst) != 1)
        {
          v108[6] = v118;
          v108[7] = v119;
          v109 = v120;
          v108[2] = v114;
          v108[3] = v115;
          v108[4] = v116;
          v108[5] = v117;
          v108[0] = __dst;
          v108[1] = v113;
          if (sub_26BE592C4(v108) != 1)
          {
            sub_26BE13A3C(v108);
            v105 = v118;
            v106 = v119;
            v107 = v120;
            v101 = v114;
            v102 = v115;
            v103 = v116;
            v104 = v117;
            v99 = __dst;
            v100 = v113;
            v76 = sub_26BE13A3C(&v99);
            sub_26BE00758(v76, &v90);

            sub_26BE01654();
            swift_allocError();
            *v77 = 28;
            *(v77 + 8) = 0u;
            *(v77 + 24) = 0u;
            *(v77 + 40) = 0u;
            *(v77 + 56) = 0u;
            *(v77 + 72) = 0u;
            *(v77 + 88) = 0u;
            *(v77 + 104) = 0;
            *(v77 + 112) = 23;
            swift_willThrow();
            sub_26BE2E258(v110, &qword_28045E4C8, &unk_26C0112A0);
            return;
          }

          v45 = sub_26BE13A3C(v108);
          v46 = *v45;
          v81 = v45[3];
          v47 = v45[4];
          v48 = *(v47 + 2);
          v85 = v45[2];
          v86 = *v45;
          v84 = v45[1];
          if (v48)
          {
            for (i = 0; i != v48; ++i)
            {
              if (v83 < *&v47[4 * i + 32])
              {
                sub_26BE2E1F0(v110, &v99, &qword_28045E4C8, &unk_26C0112A0);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v89 = v47;
                if (!isUniquelyReferenced_nonNull_native || v48 >= *(v47 + 3) >> 1)
                {
                  v47 = sub_26BEEBEAC(isUniquelyReferenced_nonNull_native, v48 + 1, 1, v47);
                  v89 = v47;
                }

                v57 = v81;
                sub_26BE58910(i, i, 1, v83);
                v54 = v86;
                goto LABEL_39;
              }
            }

            sub_26BE2E1F0(v110, &v99, &qword_28045E4C8, &unk_26C0112A0);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_26BEEBEAC(0, v48 + 1, 1, v47);
            }

            v51 = *(v47 + 2);
            v50 = *(v47 + 3);
            v52 = v51 + 1;
            v53 = v83;
            v54 = v86;
            if (v51 >= v50 >> 1)
            {
              v55 = sub_26BEEBEAC((v50 > 1), v51 + 1, 1, v47);
              v54 = v86;
              goto LABEL_46;
            }
          }

          else
          {
            sub_26BE2E1F0(v110, &v99, &qword_28045E4C8, &unk_26C0112A0);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_26BEEBEAC(0, 1, 1, v47);
            }

            v51 = *(v47 + 2);
            v56 = *(v47 + 3);
            v52 = v51 + 1;
            v53 = v83;
            if (v51 >= v56 >> 1)
            {
              v55 = sub_26BEEBEAC((v56 > 1), v51 + 1, 1, v47);
              v54 = v46;
LABEL_46:
              v53 = v83;
              v47 = v55;
            }

            else
            {
              v54 = v46;
            }
          }

          *(v47 + 2) = v52;
          *&v47[4 * v51 + 32] = v53;
          v57 = v81;
LABEL_39:
          *&v90 = v54;
          *(&v90 + 1) = v84;
          *&v91 = v85;
          *(&v91 + 1) = v57;
          *&v92 = v47;
          sub_26BE1408C(&v90);
          v105 = v96;
          v106 = v97;
          v107 = v98;
          v101 = v92;
          v102 = v93;
          v103 = v94;
          v104 = v95;
          v99 = v90;
          v100 = v91;
          nullsub_1();
          v59 = v57;
          v60 = v37;
          v82 = v37[2];
          sub_26BE00608(v86, v84);
          sub_26BE00608(v85, v59);

          if (v82 <= v36)
          {
            sub_26BE2E258(v110, &qword_28045E4C8, &unk_26C0112A0);
            sub_26BE00258(v86, v84);
            sub_26BE00258(v85, v59);
            swift_bridgeObjectRelease_n();
            v29 = v79;
            v28 = v80;
            v32 = v78;
            v30 = v154;
          }

          else
          {
            v61 = swift_isUniquelyReferenced_nonNull_native();
            v30 = v154;
            *(v154 + 24) = v37;
            if (v61)
            {
              sub_26BE2E258(v110, &qword_28045E4C8, &unk_26C0112A0);
            }

            else
            {
              v60 = sub_26BE58820(v37);
              sub_26BE2E258(v110, &qword_28045E4C8, &unk_26C0112A0);
              *(v30 + 24) = v60;
            }

            if (v60[2] <= v36)
            {
              goto LABEL_54;
            }

            v62 = &v60[17 * v36];
            v87[0] = *(v62 + 2);
            v63 = *(v62 + 3);
            v64 = *(v62 + 4);
            v65 = *(v62 + 6);
            v87[3] = *(v62 + 5);
            v87[4] = v65;
            v87[1] = v63;
            v87[2] = v64;
            v66 = *(v62 + 7);
            v67 = *(v62 + 8);
            v68 = *(v62 + 9);
            v88 = v62[20];
            v87[6] = v67;
            v87[7] = v68;
            v87[5] = v66;
            *(v62 + 2) = v99;
            v69 = v100;
            v70 = v101;
            v71 = v103;
            *(v62 + 5) = v102;
            *(v62 + 6) = v71;
            *(v62 + 3) = v69;
            *(v62 + 4) = v70;
            v72 = v104;
            v73 = v105;
            v74 = v106;
            v62[20] = v107;
            *(v62 + 8) = v73;
            *(v62 + 9) = v74;
            *(v62 + 7) = v72;
            sub_26BE2E258(v87, &qword_28045E4C8, &unk_26C0112A0);

            *(v30 + 24) = v60;
            v29 = v79;
            v28 = v80;
            v32 = v78;
          }
        }
      }

      if (++v31 == v29)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_26BE473C8(uint64_t result, __int128 *a2)
{
  v4 = *result;
  v5 = a2[7];
  v33 = a2[6];
  v34 = v5;
  v35 = *(a2 + 16);
  v6 = a2[3];
  v29 = a2[2];
  v30 = v6;
  v7 = a2[5];
  v31 = a2[4];
  v32 = v7;
  v8 = a2[1];
  v27 = *a2;
  v28 = v8;
  v9 = *(v3 + 16);
  v10 = v9 != 0;
  v11 = v9 - 1;
  if (!v10)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    result = sub_26BE58820(v2);
    v2 = result;
    *(v3 + 24) = result;
LABEL_7:
    if (v2[2] <= v4)
    {
      __break(1u);
    }

    else
    {
      v12 = &v2[17 * v4];
      v25[0] = *(v12 + 2);
      v13 = *(v12 + 3);
      v14 = *(v12 + 4);
      v15 = *(v12 + 6);
      v25[3] = *(v12 + 5);
      v25[4] = v15;
      v25[1] = v13;
      v25[2] = v14;
      v16 = *(v12 + 7);
      v17 = *(v12 + 8);
      v18 = *(v12 + 9);
      v26 = v12[20];
      v25[6] = v17;
      v25[7] = v18;
      v25[5] = v16;
      *(v12 + 2) = v27;
      v19 = v28;
      v20 = v29;
      v21 = v31;
      *(v12 + 5) = v30;
      *(v12 + 6) = v21;
      *(v12 + 3) = v19;
      *(v12 + 4) = v20;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v12[20] = v35;
      *(v12 + 8) = v23;
      *(v12 + 9) = v24;
      *(v12 + 7) = v22;
      result = sub_26BE2E258(v25, &qword_28045E4C8, &unk_26C0112A0);
      *(v3 + 24) = v2;
    }

    return result;
  }

  if (v11 < 0)
  {
    goto LABEL_10;
  }

  if (v4 <= 2 * v11)
  {
    v2 = *(v3 + 24);
    if (v2[2] > v4)
    {
      sub_26BE2E1F0(&v27, v25, &qword_28045E4C8, &unk_26C0112A0);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v2;
      if (result)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  return result;
}

void MLS.TreeKEMPublicKey.nodeAt(index:)(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = v3 - 1;
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = *a1;
  if (v5 <= 2 * v4)
  {
    v7 = *(v2 + 24);
    if (*(v7 + 16) <= v5)
    {
      sub_26BE2E2B8(&v25);
      v20 = v32;
      *(a2 + 96) = v31;
      *(a2 + 112) = v20;
      *(a2 + 128) = v33;
      v21 = v28;
      *(a2 + 32) = v27;
      *(a2 + 48) = v21;
      v22 = v30;
      *(a2 + 64) = v29;
      *(a2 + 80) = v22;
      v23 = v26;
      *a2 = v25;
      *(a2 + 16) = v23;
    }

    else
    {
      v8 = v7 + 136 * v5;
      v25 = *(v8 + 32);
      v9 = *(v8 + 48);
      v10 = *(v8 + 64);
      v11 = *(v8 + 96);
      v28 = *(v8 + 80);
      v29 = v11;
      v26 = v9;
      v27 = v10;
      v12 = *(v8 + 112);
      v13 = *(v8 + 128);
      v14 = *(v8 + 144);
      v33 = *(v8 + 160);
      v31 = v13;
      v32 = v14;
      v30 = v12;
      v15 = *(v8 + 144);
      *(a2 + 96) = *(v8 + 128);
      *(a2 + 112) = v15;
      *(a2 + 128) = *(v8 + 160);
      v16 = *(v8 + 80);
      *(a2 + 32) = *(v8 + 64);
      *(a2 + 48) = v16;
      v17 = *(v8 + 112);
      *(a2 + 64) = *(v8 + 96);
      *(a2 + 80) = v17;
      v18 = *(v8 + 48);
      *a2 = *(v8 + 32);
      *(a2 + 16) = v18;
      sub_26BE2E1F0(&v25, v24, &qword_28045E4C8, &unk_26C0112A0);
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v6 = 30;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0;
    *(v6 + 112) = 23;
    swift_willThrow();
  }
}

char *sub_26BE476A8(char *result)
{
  if ((*result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v1;
    v4 = (2 * *result);
    sub_26BF9277C(v4, &v13);
    sub_26BE136AC(v13, *(&v13 + 1));
    LODWORD(v13) = v4;
    v14 = *(v1 + 16);
    result = sub_26BE7B518(&v14);
    if (!v2)
    {
      v5 = *(result + 2);
      if (v5)
      {
        v6 = (result + 32);
        do
        {
          v7 = *v6++;
          v8 = sub_26BEBB414(v7);
          if (v9)
          {
            v10 = v8;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v12 = *(v3 + 8);
            *&v13 = v12;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_26BE6DC08();
              v12 = v13;
            }

            sub_26BE00258(*(*(v12 + 56) + 16 * v10), *(*(v12 + 56) + 16 * v10 + 8));
            sub_26C000898(v10, v12);
            *(v3 + 8) = v12;
          }

          --v5;
        }

        while (v5);
      }
    }
  }

  return result;
}

char *MLS.TreeKEMPublicKey.updateLeaf(index:leafNode:)(unsigned int *a1, __int128 *a2)
{
  v131 = *MEMORY[0x277D85DE8];
  v4 = a2[5];
  v5 = a2[7];
  v119 = a2[6];
  v120 = v5;
  v6 = a2[1];
  v7 = a2[3];
  v115 = a2[2];
  v116 = v7;
  v8 = a2[3];
  v9 = a2[5];
  v117 = a2[4];
  v118 = v9;
  v10 = a2[1];
  v113 = *a2;
  v114 = v10;
  v11 = a2[7];
  v128 = v119;
  v129 = v11;
  v124 = v115;
  v125 = v8;
  v126 = v117;
  v127 = v4;
  v12 = *a1;
  v121 = *(a2 + 16);
  v130 = *(a2 + 16);
  v122 = v113;
  v123 = v6;
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  LOWORD(v95) = *v2;
  *(&v95 + 1) = v13;
  LODWORD(v96) = v14;
  *(&v96 + 1) = v15;
  sub_26BE00758(&v113, &__dst);

  sub_26BE59564(&v95, &v113);
  if (v3)
  {
    sub_26BE00854(&v113);
  }

  v18 = v16;
  sub_26BE00854(&v113);

  if (v18)
  {
    sub_26BE01654();
    swift_allocError();
    v20 = 26;
LABEL_6:
    *v19 = v20;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 88) = 0u;
    *(v19 + 104) = 0;
    *(v19 + 112) = 23;
    return swift_willThrow();
  }

  v21 = *(v2 + 16);
  v22 = *(v2 + 24);

  if (!v21)
  {
LABEL_66:

    LODWORD(v68) = v12;
    MLS.TreeKEMPublicKey.blankPath(index:)(&v68);
    if ((v12 & 0x80000000) == 0)
    {
      LODWORD(v67[0]) = 2 * v12;
      v101 = v128;
      v102 = v129;
      v103 = v130;
      v97 = v124;
      v98 = v125;
      v99 = v126;
      v100 = v127;
      v95 = v122;
      v96 = v123;
      sub_26BE140D0(&v95);
      v110 = v101;
      v111 = v102;
      v112 = v103;
      v106 = v97;
      v107 = v98;
      v108 = v99;
      v109 = v100;
      __dst = v95;
      v105 = v96;
      nullsub_1();
      v92 = v110;
      v93 = v111;
      v94 = v112;
      v88 = v106;
      v89 = v107;
      v90 = v108;
      v91 = v109;
      v86 = __dst;
      v87 = v105;
      sub_26BE00758(&v113, &v77);
      sub_26BE473C8(v67, &v86);
      v83 = v92;
      v84 = v93;
      v85 = v94;
      v79 = v88;
      v80 = v89;
      v81 = v90;
      v82 = v91;
      v77 = v86;
      v78 = v87;
      sub_26BE2E258(&v77, &qword_28045E4C8, &unk_26C0112A0);
      LODWORD(v66[0]) = v12;
      return sub_26BE476A8(v66);
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
  }

  v23 = 0;
  while (1)
  {
    if (v23 == 0x100000000)
    {
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v21 - 1 < 0)
    {
      goto LABEL_72;
    }

    if (v23 > 2 * (v21 - 1))
    {
LABEL_68:
      sub_26BE01654();
      swift_allocError();
      v56 = 30;
      goto LABEL_69;
    }

    if (*(v22 + 16) <= v23)
    {
      goto LABEL_10;
    }

    v24 = (v22 + 32 + 136 * v23);
    memmove(&__dst, v24, 0x88uLL);
    if (sub_26BE58C10(&__dst) == 1)
    {
      goto LABEL_10;
    }

    v86 = *v24;
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[4];
    v89 = v24[3];
    v90 = v27;
    v87 = v25;
    v88 = v26;
    v28 = v24[5];
    v29 = v24[6];
    v30 = v24[7];
    v94 = *(v24 + 16);
    v92 = v29;
    v93 = v30;
    v91 = v28;
    memmove(&v95, v24, 0x88uLL);
    if (sub_26BE58C10(&v95) == 1)
    {
      goto LABEL_68;
    }

    v83 = v101;
    v84 = v102;
    v85 = v103;
    v79 = v97;
    v80 = v98;
    v81 = v99;
    v82 = v100;
    v77 = v95;
    v78 = v96;
    v31 = sub_26BE592C4(&v77);
    v32 = sub_26BE13A3C(&v77);
    if (v31 == 1)
    {
      break;
    }

    if (2 * v12 == v23)
    {
      goto LABEL_10;
    }

    v33 = *(v32 + 16);
    v34 = *(v32 + 24);
    v35 = *(&v114 + 1);
    v36 = v34 >> 62;
    v37 = *(&v114 + 1) >> 62;
    if (v34 >> 62 == 3)
    {
      v38 = 0;
      if (!v33 && v34 == 0xC000000000000000 && *(&v114 + 1) >> 62 == 3)
      {
        v38 = 0;
        if (v114 == __PAIR128__(0xC000000000000000, 0))
        {
LABEL_65:

          sub_26BE01654();
          swift_allocError();
          v20 = 27;
          goto LABEL_6;
        }
      }

LABEL_35:
      if (v37 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    if (v36 <= 1)
    {
      if (!v36)
      {
        v38 = BYTE6(v34);
        if (v37 > 1)
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      LODWORD(v38) = HIDWORD(v33) - v33;
      if (__OFSUB__(HIDWORD(v33), v33))
      {
        goto LABEL_77;
      }

      v38 = v38;
      goto LABEL_35;
    }

    if (v36 == 2)
    {
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      v41 = __OFSUB__(v39, v40);
      v38 = v39 - v40;
      if (v41)
      {
        goto LABEL_76;
      }

      goto LABEL_35;
    }

    v38 = 0;
    if (v37 > 1)
    {
LABEL_41:
      if (v37 != 2)
      {
        if (!v38)
        {
          goto LABEL_65;
        }

        goto LABEL_10;
      }

      v44 = *(v114 + 16);
      v43 = *(v114 + 24);
      v41 = __OFSUB__(v43, v44);
      v42 = v43 - v44;
      if (v41)
      {
        goto LABEL_74;
      }

      goto LABEL_43;
    }

LABEL_36:
    if (v37)
    {
      LODWORD(v42) = DWORD1(v114) - v114;
      if (__OFSUB__(DWORD1(v114), v114))
      {
        goto LABEL_75;
      }

      v42 = v42;
    }

    else
    {
      v42 = BYTE14(v114);
    }

LABEL_43:
    if (v38 != v42)
    {
      goto LABEL_10;
    }

    if (v38 < 1)
    {
      goto LABEL_65;
    }

    if (v36 > 1)
    {
      v64 = v114;
      if (v36 != 2)
      {
        memset(v66, 0, 14);
        v74 = v92;
        v75 = v93;
        v76 = v94;
        v70 = v88;
        v71 = v89;
        v72 = v90;
        v73 = v91;
        v68 = v86;
        v69 = v87;
        sub_26BE59BD8(&v68, v67);
        v47 = v64;
        v46 = v35;
LABEL_57:
        sub_26BE567B0(v66, v47, v46, v67);
        sub_26BE2E258(&v86, &qword_28045E4C8, &unk_26C0112A0);
        if (v67[0])
        {
          goto LABEL_65;
        }

        goto LABEL_10;
      }

      v65 = *(&v114 + 1);
      v62 = *(v33 + 16);
      v63 = v2;
      v60 = *(v33 + 24);
      v74 = v92;
      v75 = v93;
      v76 = v94;
      v68 = v86;
      v69 = v87;
      v70 = v88;
      v71 = v89;
      v72 = v90;
      v73 = v91;
      sub_26BE59BD8(&v68, v67);
      v48 = sub_26C008E9C();
      if (v48)
      {
        v57 = v48;
        v49 = sub_26C008ECC();
        v50 = v62;
        if (__OFSUB__(v62, v49))
        {
          goto LABEL_80;
        }

        v58 = v62 - v49 + v57;
      }

      else
      {
        v58 = 0;
        v50 = v62;
      }

      if (__OFSUB__(v60, v50))
      {
        goto LABEL_79;
      }

      sub_26C008EBC();
      v54 = v58;
    }

    else
    {
      v65 = *(&v114 + 1);
      if (!v36)
      {
        v66[0] = *(v32 + 16);
        LOWORD(v66[1]) = v34;
        BYTE2(v66[1]) = BYTE2(v34);
        BYTE3(v66[1]) = BYTE3(v34);
        BYTE4(v66[1]) = BYTE4(v34);
        BYTE5(v66[1]) = BYTE5(v34);
        v70 = v88;
        v71 = v89;
        v68 = v86;
        v69 = v87;
        v76 = v94;
        v74 = v92;
        v75 = v93;
        v72 = v90;
        v73 = v91;
        v45 = v114;
        sub_26BE59BD8(&v68, v67);
        v46 = v65;
        v47 = v45;
        goto LABEL_57;
      }

      v64 = v114;
      v61 = v33;
      v63 = v2;
      if (v33 >> 32 < v33)
      {
        goto LABEL_78;
      }

      v74 = v92;
      v75 = v93;
      v76 = v94;
      v70 = v88;
      v71 = v89;
      v72 = v90;
      v73 = v91;
      v68 = v86;
      v69 = v87;
      sub_26BE59BD8(&v68, v67);
      v51 = sub_26C008E9C();
      if (v51)
      {
        v59 = v51;
        v52 = sub_26C008ECC();
        if (__OFSUB__(v61, v52))
        {
          goto LABEL_81;
        }

        v53 = v61 - v52 + v59;
      }

      else
      {
        v53 = 0;
      }

      sub_26C008EBC();
      v54 = v53;
    }

    sub_26BE567B0(v54, v64, v65, v67);
    sub_26BE2E258(&v86, &qword_28045E4C8, &unk_26C0112A0);
    v2 = v63;
    if (v67[0])
    {
      goto LABEL_65;
    }

LABEL_10:
    v23 += 2;
    if (2 * v21 == v23)
    {
      goto LABEL_66;
    }
  }

  sub_26BE01654();
  swift_allocError();
  v56 = 28;
LABEL_69:
  *v55 = v56;
  *(v55 + 8) = 0u;
  *(v55 + 24) = 0u;
  *(v55 + 40) = 0u;
  *(v55 + 56) = 0u;
  *(v55 + 72) = 0u;
  *(v55 + 88) = 0u;
  *(v55 + 104) = 0;
  *(v55 + 112) = 23;
  swift_willThrow();
}

uint64_t MLS.TreeKEMPublicKey.blankPath(index:)(uint64_t result)
{
  if (*(*(v1 + 24) + 16))
  {
    v3 = *result;
    if ((*result & 0x80000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v4 = v1;
    v35 = 2 * v3;
    sub_26BE2E2B8(&v36);
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v26 = v36;
    v27 = v37;
    result = sub_26BE473C8(&v35, &v26);
    if (!v2)
    {
      LODWORD(v26) = 2 * v3;
      v5 = *(v1 + 16);
      v35 = v5;
      result = sub_26BE7B518(&v35);
      v45 = result;
      v6 = *(result + 16);
      if (v6)
      {
        v7 = v5 - 1;
        if (v5)
        {
          if ((v7 & 0x80000000) == 0)
          {
            v8 = 2 * v7;
            v9 = (v45 + 32);
            while (1)
            {
              v24 = *v9++;
              v23 = v24;
              if (v24 <= v8)
              {
                v25 = *(v4 + 24);
                if (v25[2] > v23)
                {
                  result = swift_isUniquelyReferenced_nonNull_native();
                  *(v4 + 24) = v25;
                  if ((result & 1) == 0)
                  {
                    result = sub_26BE58820(v25);
                    v25 = result;
                    *(v4 + 24) = result;
                  }

                  if (v25[2] <= v23)
                  {
                    goto LABEL_19;
                  }

                  v10 = &v25[17 * v23];
                  v26 = *(v10 + 2);
                  v11 = *(v10 + 3);
                  v12 = *(v10 + 4);
                  v13 = *(v10 + 6);
                  v29 = *(v10 + 5);
                  v30 = v13;
                  v27 = v11;
                  v28 = v12;
                  v14 = *(v10 + 7);
                  v15 = *(v10 + 8);
                  v16 = *(v10 + 9);
                  v34 = v10[20];
                  v32 = v15;
                  v33 = v16;
                  v31 = v14;
                  *(v10 + 2) = v36;
                  v17 = v37;
                  v18 = v38;
                  v19 = v40;
                  *(v10 + 5) = v39;
                  *(v10 + 6) = v19;
                  *(v10 + 3) = v17;
                  *(v10 + 4) = v18;
                  v20 = v41;
                  v21 = v42;
                  v22 = v43;
                  v10[20] = v44;
                  *(v10 + 8) = v21;
                  *(v10 + 9) = v22;
                  *(v10 + 7) = v20;
                  sub_26BE2E258(&v26, &qword_28045E4C8, &unk_26C0112A0);
                  *(v4 + 24) = v25;
                }
              }

              if (!--v6)
              {
                goto LABEL_16;
              }
            }
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

LABEL_16:

      LODWORD(v26) = v3;
      return sub_26BE476A8(&v26);
    }
  }

  return result;
}

uint64_t MLS.TreeKEMPublicKey.update(from:leafSecret:groupID:signaturePrivateKey:leafNodeOptions:)@<X0>(int *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = v8;
  v144 = a6;
  v145 = a4;
  v17 = type metadata accessor for MLS.TreeKEMPrivateKey(0);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v22 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v264 = v129 - v20;
    v140 = a8;
    v141 = a5;
    v149 = v19;
    v150 = a2;
    v151 = v21;
    v152 = a3;
    v23 = *a7;
    v146 = a7[1];
    *&v147 = v23;
    v24 = a7[3];
    *(&v147 + 1) = a7[2];
    v25 = a7[5];
    v142 = a7[4];
    v143 = v24;
    v27 = a7[6];
    v26 = a7[7];
    v28 = *(v10 + 1);
    LODWORD(v23) = *(v10 + 4);
    v29 = *(v10 + 3);
    v251 = *v10;
    v252 = v28;
    v253 = v23;
    v254 = v29;
    v250 = v22;
    v30 = v22;

    MLS.TreeKEMPublicKey.find(leafIndex:)(&v250, &v255);
    if (v9)
    {
    }

    v148 = 0;
    *(&v135 + 1) = v26;
    v136 = v27;
    v137 = v25;
    v138 = v30;
    v139 = v10;

    v240[6] = v261;
    v240[7] = v262;
    v240[2] = v257;
    v240[3] = v258;
    v240[4] = v259;
    v240[5] = v260;
    v240[0] = v255;
    v240[1] = v256;
    v247 = v261;
    v248 = v262;
    v243 = v257;
    v244 = v258;
    v245 = v259;
    v246 = v260;
    v241 = v263;
    v249 = v263;
    v242[0] = v255;
    v242[1] = v256;
    if (sub_26BE59C80(v242) == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v32 = 28;
      *(v32 + 8) = 0u;
      *(v32 + 24) = 0u;
      *(v32 + 40) = 0u;
      *(v32 + 56) = 0u;
      *(v32 + 72) = 0u;
      *(v32 + 88) = 0u;
      *(v32 + 104) = 0;
      *(v32 + 112) = 23;
      return swift_willThrow();
    }

    v33 = v138;
    v34 = 2 * v138;
    v35 = v139;
    v36 = *v139;
    v37 = *(v139 + 1);
    v38 = *(v139 + 4);
    v39 = *(v139 + 3);
    v40 = v151;
    *v151 = *v139;
    *(v40 + 4) = v33;
    v134 = xmmword_26C00BBD0;
    v206 = xmmword_26C00BBD0;
    sub_26C009C5C();
    v41 = MEMORY[0x277D84F90];
    *(v40 + 8) = sub_26C004AC0(MEMORY[0x277D84F90]);
    *(v40 + 16) = sub_26C004BCC(v41);
    LOWORD(v206) = v36;
    *(&v206 + 1) = v37;
    LODWORD(v207) = v38;
    *(&v207 + 1) = v39;
    LODWORD(v198) = v34;
    v42 = v148;
    sub_26BE528E8(&v206, &v198, v150, v152);
    if (v42)
    {
      sub_26BE59C98(v40);
      return sub_26BE2E258(v240, &qword_28045E6A0, &unk_26C016520);
    }

    v43 = v40;
    v44 = v264;
    sub_26BE5B2E0(v43, v264, type metadata accessor for MLS.TreeKEMPrivateKey);
    v45 = *(v35 + 1);
    v46 = *(v35 + 4);
    v47 = *(v35 + 3);
    LOWORD(v206) = *v35;
    *(&v206 + 1) = v45;
    LODWORD(v207) = v46;
    *(&v207 + 1) = v47;
    LODWORD(v169) = v34;

    MLS.TreeKEMPublicKey.filteredDirectPath(index:)(&v169, &v198);
    v48 = 0;
    DWORD2(v133) = v34;
    v148 = 0;

    v49 = v198;
    v50 = *(v198 + 16);

    v10 = MEMORY[0x277D84F90];
    v149 = v50;
    if (v50)
    {
      v51 = 0;
      v52 = v49 + 40;
      *&v135 = v49;
      while (1)
      {
        if (v51 >= *(v49 + 16))
        {
          __break(1u);
          goto LABEL_44;
        }

        LODWORD(v198) = *(v52 - 8);

        v53 = v148;
        MLS.TreeKEMPrivateKey.getPrivateKey(nodeIndex:)(&v198, &v206);
        v148 = v53;
        if (v53)
        {

          sub_26BE2E258(v240, &qword_28045E6A0, &unk_26C016520);

          sub_26BE59C98(v44);
        }

        v152 = v51;
        v54 = v10;
        result = sub_26BE2E1F0(&v206, &v198, &qword_28045E6A8, &qword_26C0112B0);
        if (!*(&v199 + 1))
        {
          break;
        }

        v55 = *(&v199 + 1);
        v56 = v200;
        __swift_project_boxed_opaque_existential_1(&v198, *(&v199 + 1));
        v57 = *(v56 + 8);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v150 = v129;
        v59 = *(AssociatedTypeWitness - 8);
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v61 = v129 - v60;
        (*(v57 + 32))(v55, v57);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v63 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
        v65 = v64;
        (*(v59 + 8))(v61, AssociatedTypeWitness);
        __swift_destroy_boxed_opaque_existential_1(&v198);
        v10 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v10 = sub_26BEECC88(0, *(v54 + 2) + 1, 1, v54);
        }

        v34 = MEMORY[0x277D84F90];
        v68 = *(v10 + 2);
        v67 = *(v10 + 3);
        v48 = v264;
        if (v68 >= v67 >> 1)
        {
          v10 = sub_26BEECC88((v67 > 1), v68 + 1, 1, v10);
        }

        v51 = (v152 + 1);
        sub_26BE2E258(&v206, &qword_28045E6A8, &qword_26C0112B0);
        *(v10 + 2) = v68 + 1;
        v69 = &v10[24 * v68];
        v70 = v151;
        *(v69 + 4) = v63;
        *(v69 + 5) = v70;
        *(v69 + 6) = v34;
        v52 += 16;
        v49 = v135;
        v44 = v48;
        if (v149 == v51)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_18:

    v71 = *(v139 + 1);
    v72 = *(v139 + 4);
    v73 = *(v139 + 3);
    v227 = *v139;
    v228 = v71;
    v229 = v72;
    v230 = v73;
    v226 = *(v44 + 4);

    v74 = v148;
    MLS.TreeKEMPublicKey.find(leafIndex:)(&v226, &v231);
    if (v74)
    {
      sub_26BE2E258(v240, &qword_28045E6A0, &unk_26C016520);

      sub_26BE59C98(v44);
    }

    v152 = v10;

    v215[6] = v237;
    v215[7] = v238;
    v215[2] = v233;
    v215[3] = v234;
    v215[4] = v235;
    v215[5] = v236;
    v215[0] = v231;
    v215[1] = v232;
    v223 = v237;
    v224 = v238;
    v219 = v233;
    v220 = v234;
    v221 = v235;
    v222 = v236;
    v216 = v239;
    v225 = v239;
    v217 = v231;
    v218 = v232;
    result = sub_26BE59C80(&v217);
    if (result == 1)
    {
      goto LABEL_57;
    }

    v10 = &v178;
    v212 = v223;
    v213 = v224;
    v208 = v219;
    v209 = v220;
    v210 = v221;
    v211 = v222;
    v206 = v217;
    v207 = v218;
    *&v214 = v225;
    *(&v214 + 1) = v152;
    LODWORD(v153) = v138;
    *&v178 = v49;
    v204 = v223;
    v205[0] = v224;
    v205[1] = v214;
    v200 = v219;
    v201 = v220;
    v202 = v221;
    v203 = v222;
    v198 = v217;
    v199 = v218;
    sub_26BE2E1F0(v215, &v169, &qword_28045E6A0, &unk_26C016520);

    v75 = MLS.TreeKEMPublicKey.parentHashes(from:filteredDirectPath:path:)(&v153, &v178, &v198);
    if (*(v75 + 2))
    {
      v77 = *(v75 + 4);
      v76 = *(v75 + 5);
      sub_26BE00608(v77, v76);
    }

    else
    {
      v77 = 0;
      v76 = 0xC000000000000000;
    }

    LODWORD(v198) = DWORD2(v133);
    MLS.TreeKEMPrivateKey.getPrivateKey(nodeIndex:)(&v198, v197);
    v150 = v76;
    v148 = 0;
    result = sub_26BE2E1F0(v197, &v198, &qword_28045E6A8, &qword_26C0112B0);
    if (!*(&v199 + 1))
    {
      goto LABEL_58;
    }

    v151 = v77;

    v78 = *(&v199 + 1);
    v79 = v200;
    __swift_project_boxed_opaque_existential_1(&v198, *(&v199 + 1));
    v80 = *(v79 + 8);
    v81 = *(v80 + 32);
    v195 = swift_getAssociatedTypeWitness();
    v196 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v194);
    v81(v78, v80);
    result = __swift_destroy_boxed_opaque_existential_1(&v198);
    v82 = *v139;
    if ((v82 - 3) < 0xFFFFFFFE)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return result;
    }

    LOBYTE(v169) = v82 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v129[0] = v200;
    v83 = v144[3];
    v84 = v144[4];
    __swift_project_boxed_opaque_existential_1(v144, v83);
    v85 = *(v84 + 40);
    a2 = swift_getAssociatedTypeWitness();
    v193[3] = a2;
    v130 = swift_getAssociatedConformanceWitness();
    v193[4] = v130;
    v129[1] = __swift_allocate_boxed_opaque_existential_1(v193);
    v85(v83, v84);
    v86 = v147;
    v87 = v146;
    if ((~v146 & 0x3000000000000000) == 0)
    {
      v87 = *(&v243 + 1);
      v86 = v243;
      sub_26BE04890(v243, *(&v243 + 1));
    }

    *&v131 = v86;
    *(&v131 + 1) = v87;
    if (*(&v147 + 1))
    {
      v88 = v136;
      v89 = v137;
      v90 = v142;
      v91 = v143;
      *&v133 = *(&v147 + 1);
      goto LABEL_33;
    }
  }

  v91 = *(&v244 + 1);
  v89 = *(&v245 + 1);
  v90 = v245;
  v88 = v246;
  *&v133 = v244;

LABEL_33:
  v92 = *(&v135 + 1);
  if (*(&v135 + 1))
  {
    *(&v133 + 1) = v91;
    *&v135 = v90;
    *(&v135 + 1) = v89;
    v149 = v88;
    v132 = v92;
  }

  else
  {
    *(&v133 + 1) = v91;
    *&v135 = v90;
    *(&v135 + 1) = v89;
    v149 = v88;
    v132 = v248;
  }

  v93 = v195;
  v94 = v196;
  __swift_project_boxed_opaque_existential_1(v194, v195);
  v95 = *(v94 + 8);
  v96 = *(v95 + 16);
  sub_26BE2958C(v147, v146);
  sub_26BE59D48(*(&v147 + 1), v143, v142, v137, v136);

  v97 = v96(v93, v95);
  v99 = v98;
  v100 = (*(*(v130 + 8) + 16))(a2);
  v102 = v101;
  v178 = v134;
  v179 = 0;
  *&v147 = v97;
  *(&v147 + 1) = v99;
  *&v198 = v97;
  *(&v198 + 1) = v99;
  *&v199 = v100;
  *(&v199 + 1) = v101;
  v103 = *(&v131 + 1);
  v44 = v131;
  v200 = v131;
  v201 = v133;
  v202 = v135;
  *&v203 = v149;
  *(&v203 + 1) = v151;
  *&v204 = v150;
  BYTE8(v204) = 1;
  *(&v204 + 9) = *(v10 + 145);
  HIDWORD(v204) = *(v10 + 37);
  *&v205[0] = v132;
  *(v205 + 8) = v134;
  v104 = v145;
  v105 = v141;
  v153 = v145;
  v154 = v141;
  LODWORD(v155) = v138;
  sub_26BE00608(v145, v141);
  sub_26BE00608(v104, v105);
  v106 = v148;
  sub_26BFF6CA4(&v198, &v153);
  v148 = v106;
  if (v106)
  {

    sub_26BE59CF4(&v206);
    sub_26BE00258(v104, v105);
    sub_26BE2E258(v240, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v215, &qword_28045E6A0, &unk_26C016520);
    sub_26BE132D4(v153, v154);
    sub_26BE2E258(v197, &qword_28045E6A8, &qword_26C0112B0);
    sub_26BE59C98(v264);
    sub_26BE00258(v178, *(&v178 + 1));

    v169 = v147;
    *&v170 = v100;
    *(&v170 + 1) = v102;
    v171 = __PAIR128__(v103, v44);
    v172 = v133;
    v173 = v135;
    *&v174 = v149;
    *(&v174 + 1) = v151;
    *&v175 = v150;
    BYTE8(v175) = 1;
    *(&v175 + 9) = *(v10 + 145);
    HIDWORD(v175) = *(v10 + 37);
    *&v176[0] = v132;
    *(v176 + 8) = v134;
    v107 = &v169;
LABEL_50:
    sub_26BE00854(v107);
    __swift_destroy_boxed_opaque_existential_1(v193);
    return __swift_destroy_boxed_opaque_existential_1(v194);
  }

  v143 = v100;
  v146 = v102;
  sub_26BE132D4(v153, v154);
  v34 = *(&v178 + 1);
  v48 = v178;
  v108 = *(&v178 + 1) >> 62;
  if ((*(&v178 + 1) >> 62) > 1)
  {
    v51 = v148;
    if (v108 != 2)
    {
      goto LABEL_47;
    }

    v109 = *(v178 + 24);
  }

  else
  {
    v51 = v148;
    if (!v108)
    {
      goto LABEL_47;
    }

LABEL_44:
    v109 = v48 >> 32;
  }

  v110 = v151;
  if ((v109 & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

  __break(1u);
LABEL_47:
  v110 = v151;
LABEL_48:
  v111 = sub_26C00909C();
  v113 = v112;
  v114 = v34;
  v115 = v113;
  sub_26BE00258(v48, v114);
  v116 = v144[3];
  v117 = v144[4];
  __swift_project_boxed_opaque_existential_1(v144, v116);
  v118 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v111, v115, v116, v117);
  v148 = v51;
  if (v51)
  {

    sub_26BE59CF4(&v206);
    sub_26BE00258(v111, v115);
    sub_26BE00258(v145, v141);
    sub_26BE2E258(v240, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v215, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v197, &qword_28045E6A8, &qword_26C0112B0);
    sub_26BE59C98(v264);

    v198 = v147;
    *&v199 = v143;
    *(&v199 + 1) = v146;
    *&v200 = v44;
    *(&v200 + 1) = *(&v131 + 1);
    v201 = v133;
    v202 = v135;
    *&v203 = v149;
    *(&v203 + 1) = v110;
    *&v204 = v150;
    BYTE8(v204) = 1;
    *(&v204 + 9) = *(v10 + 145);
    HIDWORD(v204) = *(v10 + 37);
    *&v205[0] = v132;
    *(v205 + 8) = v134;
    v107 = &v198;
    goto LABEL_50;
  }

  v120 = v118;
  v121 = v119;
  v137 = v111;
  v142 = v115;
  sub_26BE00258(0, 0xC000000000000000);
  v122 = v147;
  v178 = v147;
  v179 = v143;
  v180 = v146;
  v181 = v44;
  v123 = *(&v131 + 1);
  v182 = *(&v131 + 1);
  v183 = v133;
  v184 = v135;
  v185 = v149;
  v186 = v110;
  v187 = v150;
  v188 = 1;
  *(v10 + 105) = *(v10 + 145);
  v189 = *(v10 + 37);
  v190 = v132;
  v144 = v120;
  v191 = v120;
  v192 = v121;
  v124 = *(v10 + 3);
  v200 = *(v10 + 2);
  v201 = v124;
  v125 = *(v10 + 5);
  v202 = *(v10 + 4);
  v203 = v125;
  v126 = *(v10 + 1);
  v198 = *v10;
  v199 = v126;
  v127 = *(v10 + 7);
  v204 = *(v10 + 6);
  v205[0] = v127;
  *&v205[1] = v121;
  *(&v205[1] + 1) = v152;
  v177 = v138;
  v175 = v204;
  v176[0] = v127;
  v176[1] = v205[1];
  v171 = v200;
  v172 = v124;
  v173 = v202;
  v174 = v203;
  v169 = v198;
  v170 = v199;
  sub_26BE00758(&v178, &v153);
  v128 = v148;
  MLS.TreeKEMPublicKey.merge(from:path:)(&v177, &v169);
  if (v128)
  {

    sub_26BE59CF4(&v206);
    sub_26BE00258(v137, v142);
    sub_26BE00258(v145, v141);
    sub_26BE2E258(v240, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v215, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v197, &qword_28045E6A8, &qword_26C0112B0);
    sub_26BE59C98(v264);
    sub_26BE59CF4(&v198);
  }

  else
  {
    sub_26BE2E258(v197, &qword_28045E6A8, &qword_26C0112B0);
    sub_26BE2E258(v215, &qword_28045E6A0, &unk_26C016520);
    sub_26BE2E258(v240, &qword_28045E6A0, &unk_26C016520);
    sub_26BE00258(v145, v141);
    sub_26BE00258(v137, v142);

    sub_26BE59CF4(&v206);
    sub_26BE59CF4(&v198);
    sub_26BE5B2E0(v264, v140, type metadata accessor for MLS.TreeKEMPrivateKey);
  }

  v153 = v122;
  v154 = *(&v147 + 1);
  v155 = v143;
  v156 = v146;
  v157 = v44;
  v158 = v123;
  v159 = v133;
  v160 = v135;
  v161 = v149;
  v162 = v151;
  v163 = v150;
  v164 = 1;
  *v165 = *(v10 + 145);
  *&v165[3] = *(v10 + 37);
  v166 = v132;
  v167 = v144;
  v168 = v121;
  sub_26BE00854(&v153);
  __swift_destroy_boxed_opaque_existential_1(v193);
  return __swift_destroy_boxed_opaque_existential_1(v194);
}

void MLS.TreeKEMPublicKey.find(leafIndex:)(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *v2;
    v7 = *(v2 + 1);
    v8 = *(v2 + 4);
    v9 = *(v2 + 3);
    v10 = 2 * v5;
    LOWORD(v36) = *v2;
    *(&v36 + 1) = v7;
    LODWORD(v37) = v8;
    *(&v37 + 1) = v9;
    LODWORD(v29[0]) = 2 * v5;
    v11 = MLS.TreeKEMPublicKey.blankAt(index:)(v29);
    if (!v3)
    {
      if (v11)
      {
        sub_26BE59DB4(&v36);
        v12 = v43;
        *(a2 + 96) = v42;
        *(a2 + 112) = v12;
        *(a2 + 128) = v44;
        v13 = v39;
        *(a2 + 32) = v38;
        *(a2 + 48) = v13;
        v14 = v41;
        *(a2 + 64) = v40;
        *(a2 + 80) = v14;
        v15 = v37;
        *a2 = v36;
        *(a2 + 16) = v15;
      }

      else
      {
        v32 = v6;
        v33 = v7;
        v34 = v8;
        v35 = v9;
        v31 = v10;
        MLS.TreeKEMPublicKey.expectNodeAt(index:)(&v31, &v36);
        v27[6] = v42;
        v27[7] = v43;
        v27[2] = v38;
        v27[3] = v39;
        v27[4] = v40;
        v27[5] = v41;
        v27[0] = v36;
        v27[1] = v37;
        v29[6] = v42;
        v29[7] = v43;
        v29[2] = v38;
        v29[3] = v39;
        v29[4] = v40;
        v29[5] = v41;
        v28 = v44;
        v30 = v44;
        v29[0] = v36;
        v29[1] = v37;
        if (sub_26BE592C4(v29) == 1)
        {
          sub_26BE13A3C(v29);
          sub_26BE01654();
          swift_allocError();
          *v16 = 28;
          *(v16 + 8) = 0u;
          *(v16 + 24) = 0u;
          *(v16 + 40) = 0u;
          *(v16 + 56) = 0u;
          *(v16 + 72) = 0u;
          *(v16 + 88) = 0u;
          *(v16 + 104) = 0;
          *(v16 + 112) = 23;
          swift_willThrow();
          sub_26BE13854(v27);
        }

        else
        {
          v17 = sub_26BE13A3C(v29);
          v18 = *v17;
          v21 = *(v17 + 48);
          v22 = *(v17 + 64);
          v19 = *(v17 + 16);
          v20 = *(v17 + 32);
          v26 = *(v17 + 128);
          v24 = *(v17 + 96);
          v25 = *(v17 + 112);
          v23 = *(v17 + 80);
          nullsub_1();
          *(a2 + 96) = v24;
          *(a2 + 112) = v25;
          *(a2 + 128) = v26;
          *(a2 + 32) = v20;
          *(a2 + 48) = v21;
          *(a2 + 64) = v22;
          *(a2 + 80) = v23;
          *a2 = v18;
          *(a2 + 16) = v19;
        }
      }
    }
  }
}

void MLS.TreeKEMPublicKey.filteredDirectPath(index:)(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = *(v2 + 4);
  v8 = *(v2 + 3);
  v31 = *a1;
  v37 = v7;
  v9 = sub_26BE7B7A4(&v37);
  if (!v3)
  {
    v10 = v9;
    v22 = a2;
    v30 = v9[2];
    if (v30)
    {
      v24 = v8;
      v26 = v6;
      v11 = 0;
      v25 = v7;
      v29 = v7 == 0;
      v27 = v5;
      v28 = v7 - 1;
      v23 = (2 * (v7 - 1)) | 1;
      v12 = v9 + 36;
      v13 = MEMORY[0x277D84F90];
      while (v11 < v10[2])
      {
        if (*v12)
        {
          goto LABEL_23;
        }

        v14 = *(v12 - 1);
        v37 = v14;
        if (v29)
        {
          goto LABEL_21;
        }

        if (v28 < 0)
        {
          goto LABEL_22;
        }

        v36 = v23;
        MLS.NodeIndex.parent(forNodeCount:)(&v36, &v31);
        v15 = v31;
        v16 = v32;
        LOWORD(v31) = v27;
        v33 = v26;
        v34 = v25;
        v35 = v24;
        v37 = v14;
        sub_26BE4B650(&v37);
        v18 = v17;
        if (*(v17 + 16))
        {
          if (v16)
          {
            goto LABEL_24;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_26BEEC6D8(0, v13[2] + 1, 1, v13);
          }

          v20 = v13[2];
          v19 = v13[3];
          if (v20 >= v19 >> 1)
          {
            v13 = sub_26BEEC6D8((v19 > 1), v20 + 1, 1, v13);
          }

          v13[2] = v20 + 1;
          v21 = &v13[2 * v20];
          *(v21 + 8) = v15;
          v21[5] = v18;
        }

        else
        {
        }

        ++v11;
        v12 += 8;
        if (v30 == v11)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
LABEL_18:

      *v22 = v13;
    }
  }
}

unint64_t MLS.TreeKEMPrivateKey.getPrivateKey(nodeIndex:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_26C009C8C();
  v41 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v25 - v12;
  v14 = *a1;
  v15 = *(v4 + 2);
  if (*(v15 + 16))
  {
    result = sub_26BEBB414(v14);
    if (v16)
    {
      sub_26BE038A8(*(v15 + 56) + 40 * result, &v33);
      sub_26BE03890(&v33, &v37);
      return sub_26BE03890(&v37, a2);
    }
  }

  v17 = *(v4 + 1);
  if (*(v17 + 16) && (result = sub_26BEBB414(v14), (v18 & 1) != 0))
  {
    v31 = v3;
    v19 = *v4;
    if ((v19 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v20 = (*(v17 + 56) + 16 * result);
      v21 = *v20;
      v22 = v20[1];
      LOBYTE(v33) = v19 != 1;
      sub_26BE00608(v21, v22);
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
      v27 = v37;
      v29 = v38;
      v30 = *(&v37 + 1);
      v28 = v39;
      v32 = v40;
      *&v33 = v21;
      *(&v33 + 1) = v22;
      sub_26BE00608(v21, v22);
      sub_26C009C5C();
      v23 = v31;
      MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(v10, 1701080942, 0xE400000000000000, v13);
      if (!v23)
      {
        v31 = v21;
        v26 = v22;
        v24 = *(v41 + 8);
        v24(v10, v7);
        LOBYTE(v33) = v27;
        *(&v33 + 1) = v30;
        v34 = v29;
        v35 = v28;
        v36 = v32;
        MLS.Cryptography.Ciphersuite.deriveHPKEPrivateKey(_:)(v13, &v37);
        sub_26BE038A8(&v37, &v33);
        sub_26BE4D0C0(&v33, v14);

        sub_26BE00258(v31, v26);
        v24(v13, v7);
        return sub_26BE03890(&v37, a2);
      }

      (*(v41 + 8))(v10, v7);
      sub_26BE00258(v21, v22);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unsigned int *MLS.TreeKEMPublicKey.parentHashes(from:filteredDirectPath:path:)(int *a1, unsigned int **a2, uint64_t a3)
{
  result = *a2;
  if (!*(*a2 + 2))
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *a1;
  if (*a1 < 0)
  {
    goto LABEL_26;
  }

  v8 = v3;
  v9 = *(a3 + 136);
  v43 = *a2;

  MLS.FilteredDirectPath.pop()(v38);
  if (v4)
  {
  }

  v10 = 2 * v7;

  v11 = v43;
  v12 = *(v43 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v12 >= *(v11 + 3) >> 1)
  {
    v11 = sub_26BEEC6D8(isUniquelyReferenced_nonNull_native, v12 + 1, 1, v11);
    v43 = v11;
  }

  sub_26BE59DD0(0, 0, 1, v10, MEMORY[0x277D84F90]);
  v43 = v11;
  if (*(v11 + 2) != *(v9 + 16))
  {
    sub_26BE01654();
    swift_allocError();
    *v14 = 25;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 88) = 0u;
    *(v14 + 104) = 0;
    *(v14 + 112) = 23;
    swift_willThrow();
  }

  LODWORD(v38[0]) = *(v8 + 16);
  MLS.NodeIndex.init(forRoot:)(v38, &v42);
  v15 = *(v11 + 2);
  v16 = MEMORY[0x277D84F90];
  v33 = v11;
  if (v15)
  {
    v17 = 0;
    v18 = v42;
    v19 = (v9 + 24 * v15 + 16);
    v20 = &v11[4 * v15 + 4];
    v37 = 0xC000000000000000;
    v34 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v15 > *(v33 + 2))
      {
        __break(1u);
        goto LABEL_23;
      }

      v36 = v17;
      v21 = *v20;
      v40 = *v20;
      v39 = v18;
      result = sub_26BE7BBA8(&v39, v38);
      if (v15 > *(v9 + 16))
      {
        break;
      }

      v35 = v21;
      v22 = v38[0];
      v23 = BYTE4(v38[0]);
      v24 = v16;
      v26 = *(v19 - 1);
      v25 = *v19;
      v38[0] = v26;
      v38[1] = v25;
      v38[2] = v36;
      v38[3] = v37;
      v38[4] = v24;
      if (v23)
      {
        goto LABEL_27;
      }

      v40 = v22;
      sub_26BE00608(v26, v25);
      sub_26BE00608(v36, v37);
      sub_26BE4BA44(v38, &v40);
      v28 = v27;
      v30 = v29;
      v31 = *(v34 + 2);
      sub_26BE00608(v27, v29);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v34;
      if (!v32 || v31 >= *(v34 + 3) >> 1)
      {
        v34 = sub_26BEECB7C(v32, v31 + 1, 1, v34);
        v41 = v34;
      }

      --v15;
      sub_26BE59FA4(0, 0, 1, v28, v30);
      sub_26BE00258(v28, v30);
      sub_26BE00258(v36, v37);
      sub_26BE00258(v26, v25);
      sub_26BE00258(v36, v37);
      v16 = MEMORY[0x277D84F90];

      v19 -= 3;
      v20 -= 4;
      v37 = v30;
      v17 = v28;
      v18 = v35;
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

LABEL_23:
  v28 = 0;
  v30 = 0xC000000000000000;
  v34 = v16;
LABEL_24:
  sub_26BE00258(v28, v30);

  return v34;
}

void MLS.TreeKEMPublicKey.merge(from:path:)(unsigned int *a1, __int128 *a2)
{
  v4 = v2;
  v6 = *a1;
  v7 = a2[7];
  v96 = a2[6];
  v97 = v7;
  v98 = a2[8];
  v8 = a2[3];
  v92 = a2[2];
  v93 = v8;
  v9 = a2[5];
  v94 = a2[4];
  v95 = v9;
  v10 = a2[1];
  v90 = *a2;
  v91 = v10;
  v89 = v6;
  sub_26BE00758(&v90, &v78);
  MLS.TreeKEMPublicKey.updateLeaf(index:leafNode:)(&v89, a2);
  if (v3)
  {
    v11 = a2[7];
    v84 = a2[6];
    v85 = v11;
    *&v86 = *(a2 + 16);
    v12 = a2[3];
    v80 = a2[2];
    v81 = v12;
    v13 = a2[5];
    v82 = a2[4];
    v83 = v13;
    v14 = a2[1];
    v78 = *a2;
    v79 = v14;
    sub_26BE00854(&v78);
    return;
  }

  v15 = a2[7];
  v87[6] = a2[6];
  v87[7] = v15;
  v88 = *(a2 + 16);
  v16 = a2[3];
  v87[2] = a2[2];
  v87[3] = v16;
  v17 = a2[5];
  v87[4] = a2[4];
  v87[5] = v17;
  v18 = a2[1];
  v87[0] = *a2;
  v87[1] = v18;
  sub_26BE00854(v87);
  if ((v6 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v19 = *(v2 + 8);
  v20 = *(v2 + 16);
  v21 = *(v2 + 24);
  LOWORD(v78) = *v2;
  *(&v78 + 1) = v19;
  LODWORD(v79) = v20;
  *(&v79 + 1) = v21;
  LODWORD(v67[0]) = 2 * v6;

  MLS.TreeKEMPublicKey.filteredDirectPath(index:)(v67, &v69);

  v22 = v69;
  v23 = *(&v98 + 1);
  if (*(v69 + 16) != *(*(&v98 + 1) + 16))
  {

    sub_26BE01654();
    swift_allocError();
    *v26 = 25;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
    *(v26 + 72) = 0u;
    *(v26 + 88) = 0u;
    *(v26 + 104) = 0;
    *(v26 + 112) = 23;
    swift_willThrow();
    return;
  }

  LODWORD(v67[0]) = v6;
  v84 = v96;
  v85 = v97;
  v86 = v98;
  v80 = v92;
  v81 = v93;
  v82 = v94;
  v83 = v95;
  v78 = v90;
  v79 = v91;
  v24 = MLS.TreeKEMPublicKey.parentHashes(from:filteredDirectPath:path:)(v67, &v69, &v78);
  v25 = v22;
  v27 = *(v22 + 16);
  if (!v27)
  {
LABEL_28:

    LODWORD(v69) = *(v4 + 16);
    MLS.NodeIndex.init(forRoot:)(&v69, &v78);
    sub_26BE4BE9C(&v78);
    sub_26BE00258(v58, v59);
    return;
  }

  v28 = *(v2 + 16);
  v29 = v28 != 0;
  v30 = v28 - 1;
  if (!v29)
  {
    goto LABEL_32;
  }

  v61 = v24;
  if ((v30 & 0x80000000) == 0)
  {
    if (v27 <= *(v23 + 16))
    {
      v31 = 0;
      v63 = 2 * v30;
      v64 = v27 - 1;
      v32 = (v23 + 40);
      v33 = 1;
      v62 = v27;
      v60 = v25;
      while (1)
      {
        v34 = *(v25 + v31 + 32);
        v99 = v31;
        v66 = v33;
        if ((v33 - 1) < v64)
        {
          if (v33 >= *(v61 + 2))
          {
            goto LABEL_30;
          }

          v35 = v25;
          v36 = *(v61 + v31 + 48);
          v37 = *(v61 + v31 + 56);
          sub_26BE00608(v36, v37);
        }

        else
        {
          v35 = v25;
          v36 = 0;
          v37 = 0xC000000000000000;
        }

        v65 = v32;
        v39 = *(v32 - 1);
        v38 = *v32;
        *&v69 = v39;
        *(&v69 + 1) = v38;
        *&v70 = v36;
        *(&v70 + 1) = v37;
        *&v71 = MEMORY[0x277D84F90];
        sub_26BE1408C(&v69);
        v84 = v75;
        v85 = v76;
        *&v86 = v77;
        v80 = v71;
        v81 = v72;
        v82 = v73;
        v83 = v74;
        v78 = v69;
        v79 = v70;
        nullsub_1();
        if (v34 <= v63)
        {
          v41 = *(v4 + 24);
          v42 = v4;
          v43 = v41[2];
          sub_26BE00608(v39, v38);
          if (v43 <= v34)
          {
            sub_26BE00258(v39, v38);
            sub_26BE00258(v36, v37);

            v4 = v42;
            v25 = v60;
            v40 = v65;
          }

          else
          {
            sub_26BE00608(v36, v37);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v42 + 24) = v41;
            v4 = v42;
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_26BE00258(v36, v37);
            }

            else
            {
              v41 = sub_26BE58820(v41);
              sub_26BE00258(v36, v37);
              *(v42 + 24) = v41;
            }

            v40 = v65;
            if (v41[2] <= v34)
            {
              goto LABEL_31;
            }

            v45 = &v41[17 * v34];
            v67[0] = *(v45 + 2);
            v46 = *(v45 + 3);
            v47 = *(v45 + 4);
            v48 = *(v45 + 6);
            v67[3] = *(v45 + 5);
            v67[4] = v48;
            v67[1] = v46;
            v67[2] = v47;
            v49 = *(v45 + 7);
            v50 = *(v45 + 8);
            v51 = *(v45 + 9);
            v68 = v45[20];
            v67[6] = v50;
            v67[7] = v51;
            v67[5] = v49;
            *(v45 + 2) = v78;
            v52 = v79;
            v53 = v80;
            v54 = v82;
            *(v45 + 5) = v81;
            *(v45 + 6) = v54;
            *(v45 + 3) = v52;
            *(v45 + 4) = v53;
            v55 = v83;
            v56 = v84;
            v57 = v85;
            v45[20] = v86;
            *(v45 + 8) = v56;
            *(v45 + 9) = v57;
            *(v45 + 7) = v55;
            sub_26BE2E258(v67, &qword_28045E4C8, &unk_26C0112A0);
            *(v42 + 24) = v41;
            v25 = v60;
          }
        }

        else
        {
          sub_26BE00608(v39, v38);
          sub_26BE00258(v39, v38);
          sub_26BE00258(v36, v37);

          v40 = v65;
          v25 = v35;
        }

        if (v62 == v66)
        {
          goto LABEL_28;
        }

        v33 = v66 + 1;
        v31 = v99 + 16;
        v32 = v40 + 3;
      }
    }

    goto LABEL_34;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void MLS.TreeKEMPublicKey.encap(privateKey:context:exceptLeaves:)(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(result + 4);
  if (v8 < 0)
  {
    goto LABEL_53;
  }

  v10 = result;
  v11 = *v5;
  v12 = *(v5 + 1);
  v13 = *(v5 + 4);
  v14 = *(v5 + 3);
  LOWORD(__dst) = *v5;
  *(&__dst + 1) = v12;
  LODWORD(v136) = v13;
  *(&v136 + 1) = v14;
  LODWORD(v117) = 2 * v8;
  MLS.TreeKEMPublicKey.filteredDirectPath(index:)(&v117, &v126);
  if (v6)
  {
    return;
  }

  v82 = a5;
  v15 = *(v126 + 16);

  v83 = v11;
  if (v15)
  {
    v17 = 0;
    v18 = v16 + 32;
    v85 = v11 != 1;
    v86 = v11 - 3;
    v96 = v13 - 1;
    v97 = v13 == 0;
    v95 = 2 * (v13 - 1);
    v93 = v14 + 32;
    v19 = MEMORY[0x277D84F90];
    v80 = v13;
    v78 = v16 + 32;
    v79 = a4;
    v87 = v16;
    v81 = v10;
    v98 = v14;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
        goto LABEL_54;
      }

      v20 = (v18 + 16 * v17);
      v21 = *v20;
      v22 = *(v20 + 1);
      swift_bridgeObjectRetain_n();
      v101 = sub_26BE5A08C(v22, a4);
      v84 = v17;

      v23 = *(v10 + 8);
      if (*(v23 + 16) && (v24 = sub_26BEBB414(v21), (v25 & 1) != 0))
      {
        v26 = (*(v23 + 56) + 16 * v24);
        v27 = *v26;
        v99 = v26[1];
        sub_26BE00608(*v26, v99);
      }

      else
      {
        v27 = 0;
        v99 = 0xF000000000000000;
      }

      LODWORD(__dst) = v21;
      MLS.TreeKEMPrivateKey.getPrivateKey(nodeIndex:)(&__dst, v148);
      v88 = v19;
      sub_26BE2E1F0(v148, &__dst, &qword_28045E6A8, &qword_26C0112B0);
      v28 = *(&v136 + 1);
      if (!*(&v136 + 1))
      {
        goto LABEL_57;
      }

      v29 = v137;
      __swift_project_boxed_opaque_existential_1(&__dst, *(&v136 + 1));
      v30 = *(v29 + 8);
      v31 = *(v30 + 32);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(v145);
      v31(v28, v30);
      __swift_destroy_boxed_opaque_existential_1(&__dst);
      if (v86 < 0xFFFFFFFE)
      {
        goto LABEL_55;
      }

      LOBYTE(v126) = v85;
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
      v100 = v137;
      v32 = v101;
      v14 = v98;
      v94 = v101[2];
      if (v94)
      {
        break;
      }

      v149 = MEMORY[0x277D84F90];
LABEL_37:

      v63 = AssociatedTypeWitness;
      v62 = AssociatedConformanceWitness;
      __swift_project_boxed_opaque_existential_1(v145, AssociatedTypeWitness);
      v64 = (*(*(v62 + 8) + 16))(v63);
      v65 = v88;
      v102 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_26BEECC88(0, *(v88 + 2) + 1, 1, v88);
      }

      v68 = *(v65 + 2);
      v67 = *(v65 + 3);
      v69 = v65;
      v70 = v64;
      if (v68 >= v67 >> 1)
      {
        v69 = sub_26BEECC88((v67 > 1), v68 + 1, 1, v65);
      }

      v17 = v84 + 1;

      sub_26BE136AC(v27, v99);
      sub_26BE2E258(v148, &qword_28045E6A8, &qword_26C0112B0);
      *(v69 + 2) = v68 + 1;
      v19 = v69;
      v71 = &v69[24 * v68];
      *(v71 + 4) = v70;
      *(v71 + 5) = v102;
      *(v71 + 6) = v149;
      __swift_destroy_boxed_opaque_existential_1(v145);
      v16 = v87;
      v10 = v81;
      v13 = v80;
      v18 = v78;
      a4 = v79;
      if (v84 + 1 == v15)
      {
        goto LABEL_44;
      }
    }

    v33 = 0;
    v92 = __dst;
    v90 = v136;
    v91 = *(&__dst + 1);
    v149 = MEMORY[0x277D84F90];
    v89 = *(&v136 + 1);
    v105 = v27;
    while (1)
    {
      if (v33 >= v32[2])
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        return;
      }

      if (v97)
      {
        goto LABEL_51;
      }

      if (v96 < 0)
      {
        goto LABEL_52;
      }

      v34 = *(v32 + v33 + 8);
      if (v34 > v95 || *(v14 + 16) <= v34 || (v35 = (v93 + 136 * v34), v126 = *v35, v36 = v35[1], v37 = v35[2], v38 = v35[4], v129 = v35[3], v130 = v38, v127 = v36, v128 = v37, v39 = v35[5], v40 = v35[6], v41 = v35[7], v134 = *(v35 + 16), v132 = v40, v133 = v41, v131 = v39, memmove(&__dst, v35, 0x88uLL), sub_26BE58C10(&__dst) == 1))
      {

        sub_26BE01654();
        swift_allocError();
        *v77 = 30;
        *(v77 + 8) = 0u;
        *(v77 + 24) = 0u;
        *(v77 + 40) = 0u;
        *(v77 + 56) = 0u;
        *(v77 + 72) = 0u;
        *(v77 + 88) = 0u;
        *(v77 + 104) = 0;
        *(v77 + 112) = 23;
        swift_willThrow();

        sub_26BE136AC(v27, v99);
        sub_26BE2E258(v148, &qword_28045E6A8, &qword_26C0112B0);

        __swift_destroy_boxed_opaque_existential_1(v145);
        return;
      }

      v123 = v141;
      v124 = v142;
      v125 = v143;
      v119 = v137;
      v120 = v138;
      v121 = v139;
      v122 = v140;
      v117 = __dst;
      v118 = v136;
      v42 = sub_26BE592C4(&v117);
      v43 = sub_26BE13A3C(&v117);
      if (v42 == 1)
      {
        v44 = *v43;
        v45 = v43[1];
        if ((v92 & 1) == 0)
        {
          v109[0] = 0;
          v110 = v91;
          v111 = v90;
          v112 = v89;
          v113 = v100;
          v115 = type metadata accessor for Curve25519EncryptionPublicKey(0);
          v116 = sub_26BE5A294(&qword_28045E2D8, type metadata accessor for Curve25519EncryptionPublicKey, &protocol conformance descriptor for Curve25519EncryptionPublicKey);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
          sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
          sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);

          sub_26BE00608(v44, v45);
LABEL_28:
          Curve25519EncryptionPublicKey.init(data:ciphersuite:)(v44, v45, v109, boxed_opaque_existential_1);
          goto LABEL_29;
        }

        v109[0] = 1;
        v110 = v91;
        v111 = v90;
        v112 = v89;
        v113 = v100;
        v115 = type metadata accessor for P256EncryptionPublicKey(0);
        v116 = sub_26BE5A294(&qword_28045E3C0, type metadata accessor for P256EncryptionPublicKey, &protocol conformance descriptor for P256EncryptionPublicKey);
        v46 = __swift_allocate_boxed_opaque_existential_1(&v114);
        sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
        sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);

        sub_26BE00608(v44, v45);
      }

      else
      {
        v44 = *v43;
        v45 = v43[1];
        if ((v92 & 1) == 0)
        {
          v109[0] = 0;
          v110 = v91;
          v111 = v90;
          v112 = v89;
          v113 = v100;
          v115 = type metadata accessor for Curve25519EncryptionPublicKey(0);
          v116 = sub_26BE5A294(&qword_28045E2D8, type metadata accessor for Curve25519EncryptionPublicKey, &protocol conformance descriptor for Curve25519EncryptionPublicKey);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
          sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
          sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
          sub_26BE00608(v44, v45);

          goto LABEL_28;
        }

        v109[0] = 1;
        v110 = v91;
        v111 = v90;
        v112 = v89;
        v113 = v100;
        v115 = type metadata accessor for P256EncryptionPublicKey(0);
        v116 = sub_26BE5A294(&qword_28045E3C0, type metadata accessor for P256EncryptionPublicKey, &protocol conformance descriptor for P256EncryptionPublicKey);
        v46 = __swift_allocate_boxed_opaque_existential_1(&v114);
        sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
        sub_26BE2E1F0(&v126, v106, &qword_28045E4C8, &unk_26C0112A0);
        sub_26BE00608(v44, v45);
      }

      P256EncryptionPublicKey.init(data:ciphersuite:)(v44, v45, v109, v46);
LABEL_29:
      sub_26BE2E258(&v126, &qword_28045E4C8, &unk_26C0112A0);
      sub_26BE03890(&v114, v144);
      sub_26BE038A8(v144, v106);
      v48 = v107;
      v49 = v108;
      __swift_project_boxed_opaque_existential_1(v106, v107);
      if (v99 >> 60 == 15)
      {
        goto LABEL_56;
      }

      v50 = *(v49 + 16);
      sub_26BE00608(v105, v99);
      v51 = v50(0x6150657461647055, 0xEE0065646F4E6874, a2, a3, v105, v99, v48, v49);
      v53 = v52;
      v55 = v54;
      v57 = v56;
      sub_26BE136AC(v105, v99);
      __swift_destroy_boxed_opaque_existential_1(v106);
      sub_26BE00608(v55, v57);
      sub_26BE00608(v51, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = sub_26BEECDA8(0, *(v149 + 2) + 1, 1, v149);
      }

      v59 = *(v149 + 2);
      v58 = *(v149 + 3);
      if (v59 >= v58 >> 1)
      {
        v149 = sub_26BEECDA8((v58 > 1), v59 + 1, 1, v149);
      }

      ++v33;
      sub_26BE00258(v51, v53);
      sub_26BE00258(v55, v57);
      sub_26BE2E258(&v126, &qword_28045E4C8, &unk_26C0112A0);
      __swift_destroy_boxed_opaque_existential_1(v144);
      v60 = v149;
      *(v149 + 2) = v59 + 1;
      v61 = &v60[32 * v59];
      *(v61 + 4) = v55;
      *(v61 + 5) = v57;
      *(v61 + 6) = v51;
      *(v61 + 7) = v53;
      v27 = v105;
      v14 = v98;
      v32 = v101;
      if (v94 == v33)
      {
        goto LABEL_37;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_44:

  LOWORD(v117) = v83;
  *(&v117 + 1) = v12;
  LODWORD(v118) = v13;
  *(&v118 + 1) = v14;
  LODWORD(v106[0]) = *(v10 + 4);
  MLS.TreeKEMPublicKey.find(leafIndex:)(v106, &__dst);
  v132 = v141;
  v133 = v142;
  v134 = v143;
  v128 = v137;
  v129 = v138;
  v130 = v139;
  v131 = v140;
  v126 = __dst;
  v127 = v136;
  if (sub_26BE59C80(&v126) == 1)
  {
    goto LABEL_58;
  }

  v72 = v133;
  *(v82 + 96) = v132;
  *(v82 + 112) = v72;
  v73 = v134;
  v74 = v129;
  *(v82 + 32) = v128;
  *(v82 + 48) = v74;
  v75 = v131;
  *(v82 + 64) = v130;
  *(v82 + 80) = v75;
  v76 = v127;
  *v82 = v126;
  *(v82 + 16) = v76;
  *(v82 + 128) = v73;
  *(v82 + 136) = v19;
}

unsigned int *MLS.TreeKEMPublicKey.expectNodeAt(index:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = v3 - 1;
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = *result;
  if (v5 > 2 * v4 || (v6 = *(v2 + 24), *(v6 + 16) <= v5) || (v8 = v6 + 136 * v5, v9 = *(v8 + 144), v27 = *(v8 + 128), v28 = v9, v29 = *(v8 + 160), v10 = *(v8 + 80), v23 = *(v8 + 64), v24 = v10, v11 = *(v8 + 112), v25 = *(v8 + 96), v26 = v11, v12 = *(v8 + 48), v21 = *(v8 + 32), v22 = v12, memmove(__dst, (v8 + 32), 0x88uLL), sub_26BE58C10(__dst) == 1))
  {
    sub_26BE01654();
    swift_allocError();
    *v13 = 30;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0;
    *(v13 + 112) = 23;
    return swift_willThrow();
  }

  else
  {
    v14 = __dst[7];
    *(a2 + 96) = __dst[6];
    *(a2 + 112) = v14;
    *(a2 + 128) = v31;
    v15 = __dst[3];
    *(a2 + 32) = __dst[2];
    *(a2 + 48) = v15;
    v16 = __dst[5];
    *(a2 + 64) = __dst[4];
    *(a2 + 80) = v16;
    v17 = __dst[1];
    *a2 = __dst[0];
    *(a2 + 16) = v17;
    v19[6] = v27;
    v19[7] = v28;
    v20 = v29;
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v19[5] = v26;
    v19[0] = v21;
    v19[1] = v22;
    return sub_26BE59BD8(v19, v18);
  }
}

void sub_26BE4B650(unsigned int *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = *(v1 + 1);
  v6 = *(v1 + 4);
  v7 = *(v1 + 3);
  LOWORD(v33) = *v1;
  *(&v33 + 1) = v5;
  LODWORD(v34) = v6;
  *(&v34 + 1) = v7;
  LODWORD(v26[0]) = v3;
  v8 = MLS.TreeKEMPublicKey.blankAt(index:)(v26);
  if (!v2)
  {
    if (v8)
    {
      if ((v3 & 1) == 0)
      {
        return;
      }

      LOWORD(v33) = v4;
      *(&v33 + 1) = v5;
      LODWORD(v34) = v6;
      *(&v34 + 1) = v7;
      LODWORD(v23[0]) = v3;
      MLS.NodeIndex.left.getter(v24);
      if ((BYTE4(v24[0]) & 1) == 0)
      {
        v29 = v24[0];
        v10 = sub_26BE4B650(&v29);
        *&v26[0] = v10;
        LOWORD(v33) = v4;
        *(&v33 + 1) = v5;
        LODWORD(v34) = v6;
        *(&v34 + 1) = v7;
        LODWORD(v23[0]) = v3;
        MLS.NodeIndex.right.getter(v24);
        if ((BYTE4(v24[0]) & 1) == 0)
        {
          v29 = v24[0];
          v11 = sub_26BE4B650(&v29);
          sub_26BE59490(*(v10 + 16), *(v10 + 16), v11);

          return;
        }

        goto LABEL_23;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if ((v3 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E580, &qword_26C00E4E0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_26C011280;
      *(v9 + 32) = v3;
      return;
    }

    LOWORD(v29) = v4;
    v30 = v5;
    v31 = v6;
    v32 = v7;
    v28 = v3;
    MLS.TreeKEMPublicKey.expectNodeAt(index:)(&v28, &v33);
    v42 = 0;
    v24[6] = v39;
    v24[7] = v40;
    v24[2] = v35;
    v24[3] = v36;
    v24[4] = v37;
    v24[5] = v38;
    v24[0] = v33;
    v24[1] = v34;
    v26[6] = v39;
    v26[7] = v40;
    v26[2] = v35;
    v26[3] = v36;
    v26[4] = v37;
    v26[5] = v38;
    v25 = v41;
    v27 = v41;
    v26[0] = v33;
    v26[1] = v34;
    v12 = sub_26BE592C4(v26);
    v13 = sub_26BE13A3C(v26);
    if (v12 != 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v21 = 28;
      *(v21 + 8) = 0u;
      *(v21 + 24) = 0u;
      *(v21 + 40) = 0u;
      *(v21 + 56) = 0u;
      *(v21 + 72) = 0u;
      *(v21 + 88) = 0u;
      *(v21 + 104) = 0;
      *(v21 + 112) = 23;
      swift_willThrow();
      sub_26BE13854(v24);
      return;
    }

    v14 = *(v13 + 32);
    v15 = *(v14 + 16);
    if (v15)
    {
      sub_26BE59BD8(v24, v23);
      v23[0] = MEMORY[0x277D84F90];

      sub_26BECB954(0, v15, 0);
      v16 = 32;
      v17 = v23[0];
      while (1)
      {
        v18 = *(v14 + v16);
        if (v18 < 0)
        {
          break;
        }

        v23[0] = v17;
        v20 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_26BECB954((v19 > 1), v20 + 1, 1);
          v17 = v23[0];
        }

        *(v17 + 16) = v20 + 1;
        *(v17 + 4 * v20 + 32) = 2 * v18;
        v16 += 4;
        if (!--v15)
        {

          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    sub_26BE59BD8(v24, v23);
    v17 = MEMORY[0x277D84F90];
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E580, &qword_26C00E4E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26C011280;
    *(v22 + 32) = v3;
    v23[0] = v22;
    sub_26BF9E914(v17);
    sub_26BE13854(v24);
    sub_26BE13854(v24);
  }
}

void sub_26BE4BA44(uint64_t *a1, _DWORD *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  LODWORD(v31[0]) = *a2;
  sub_26BE4BE9C(v31);
  if (v3)
  {
    return;
  }

  v10 = v8;
  v11 = v9;
  v35 = xmmword_26C00BBD0;
  v36 = 0;
  v31[0] = v5;
  v31[1] = v4;
  v31[2] = v7;
  v32 = v6;
  v33 = v8;
  v34 = v9;
  sub_26BE00608(v5, v4);
  sub_26BE00608(v7, v6);
  sub_26BE00608(v10, v11);
  sub_26BFEA76C(v31);
  v12 = v35;
  v13 = *(&v35 + 1) >> 62;
  v29 = 0;
  if ((*(&v35 + 1) >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_12;
    }

    v14 = *(v35 + 24);
LABEL_10:
    if (v14 < 0)
    {
      __break(1u);
    }

    goto LABEL_12;
  }

  if (v13)
  {
    v14 = v35 >> 32;
    goto LABEL_10;
  }

LABEL_12:
  v37 = sub_26C00909C();
  v30 = v15;
  sub_26BE00258(v12, *(&v12 + 1));
  v16 = *v2;
  if ((v16 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v35) = v16 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v17 = *(v33 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash);
    v27 = v7;
    v28 = v6;
    v25[2] = v33;
    v26 = v4;
    if (v17)
    {
      v32 = sub_26C00A33C();
      v33 = sub_26BE5A294(&qword_28045E368, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
      __swift_allocate_boxed_opaque_existential_1(v31);
      sub_26C00A32C();
    }

    else
    {
      v32 = sub_26C00A30C();
      v33 = sub_26BE5A294(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      __swift_allocate_boxed_opaque_existential_1(v31);
      sub_26C00A2FC();
    }

    *&v35 = v37;
    *(&v35 + 1) = v30;
    __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    sub_26BE016A8();
    sub_26C009BEC();
    __swift_project_boxed_opaque_existential_1(v31, v32);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v25[1] = v25;
    v19 = *(AssociatedTypeWitness - 1);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v21 = v25 - v20;
    sub_26C009BDC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = sub_26BE0B280(sub_26BE1367C, 0, AssociatedTypeWitness, MEMORY[0x277D84B78], MEMORY[0x277D84A98], *(AssociatedConformanceWitness + 32), MEMORY[0x277D84AC0], v23);
    (*(v19 + 8))(v21, AssociatedTypeWitness);
    sub_26BE12418(v24);

    sub_26BE00258(v10, v11);

    sub_26BE00258(v37, v30);
    sub_26BE00258(v5, v26);
    sub_26BE00258(v27, v28);
    sub_26BE00258(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }
}

void sub_26BE4BE9C(unsigned int *a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *a1;
  v6 = *(v1 + 1);
  if (*(v6 + 16))
  {
    v7 = sub_26BEBB414(*a1);
    if (v8)
    {
      sub_26BE00608(*(*(v6 + 56) + 16 * v7), *(*(v6 + 56) + 16 * v7 + 8));
      return;
    }
  }

  v9 = *(v4 + 4);
  v10 = v9 != 0;
  v11 = v9 - 1;
  if (!v10)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v11 < 0)
  {
    goto LABEL_44;
  }

  if (v5 > 2 * v11)
  {
    sub_26BE01654();
    swift_allocError();
    *v12 = 30;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0;
    *(v12 + 112) = 23;
    swift_willThrow();
    return;
  }

  v13 = *(v4 + 3);
  if (*(v13 + 16) <= v5)
  {
    sub_26BE2E2B8(&v97);
  }

  else
  {
    v14 = v13 + 136 * v5;
    *v96 = *(v14 + 32);
    v15 = *(v14 + 48);
    v16 = *(v14 + 64);
    v17 = *(v14 + 80);
    *&v96[64] = *(v14 + 96);
    *&v96[48] = v17;
    *&v96[32] = v16;
    *&v96[16] = v15;
    v18 = *(v14 + 112);
    v19 = *(v14 + 128);
    v20 = *(v14 + 144);
    *&v96[128] = *(v14 + 160);
    *&v96[96] = v19;
    *&v96[112] = v20;
    *&v96[80] = v18;
    sub_26BE2E1F0(v96, v94, &qword_28045E4C8, &unk_26C0112A0);
    v103 = *&v96[96];
    v104 = *&v96[112];
    v105 = *&v96[128];
    v99 = *&v96[32];
    v100 = *&v96[48];
    v101 = *&v96[64];
    v102 = *&v96[80];
    v97 = *v96;
    v98 = *&v96[16];
  }

  if (v5)
  {
    *v81 = v5;
    MLS.NodeIndex.left.getter(v94);
    if (v94[4])
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    LODWORD(v80[0]) = *v94;
    sub_26BE4BE9C(v80);
    if (v2)
    {
      sub_26BE2E258(&v97, &qword_28045E4C8, &unk_26C0112A0);
      return;
    }

    v68 = v23;
    v106 = v24;
    LODWORD(v83[0]) = v5;
    MLS.NodeIndex.right.getter(&v85);
    if (BYTE4(v85))
    {
      goto LABEL_47;
    }

    v69[0] = v85;
    sub_26BE4BE9C(v69);
    v67 = v26;
    v38 = v25;
    *&v81[96] = v103;
    *&v81[112] = v104;
    *&v81[128] = v105;
    *&v81[32] = v99;
    *&v81[48] = v100;
    *&v81[64] = v101;
    *&v81[80] = v102;
    *v81 = v97;
    *&v81[16] = v98;
    if (sub_26BE58C10(v81) == 1)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
    }

    else
    {
      *&v94[96] = *&v81[96];
      *&v94[112] = *&v81[112];
      *&v94[128] = *&v81[128];
      *&v94[32] = *&v81[32];
      *&v94[48] = *&v81[48];
      *&v94[64] = *&v81[64];
      *&v94[80] = *&v81[80];
      *v94 = *v81;
      *&v94[16] = *&v81[16];
      if (sub_26BE592C4(v94) != 1)
      {
        sub_26BE13A3C(v94);
        sub_26BE01654();
        swift_allocError();
        *v61 = 28;
        *(v61 + 8) = 0u;
        *(v61 + 24) = 0u;
        *(v61 + 40) = 0u;
        *(v61 + 56) = 0u;
        *(v61 + 72) = 0u;
        *(v61 + 88) = 0u;
        *(v61 + 104) = 0;
        *(v61 + 112) = 23;
        swift_willThrow();
        sub_26BE2E258(&v97, &qword_28045E4C8, &unk_26C0112A0);
        memset(v80, 0, 40);
        *(&v80[2] + 1) = v68;
        *&v80[3] = v106;
        *(&v80[3] + 1) = v38;
        *&v80[4] = v67;
        sub_26BE5A184(v80);
        return;
      }

      v58 = sub_26BE13A3C(v94);
      v39 = *v58;
      v59 = v58[1];
      v60 = v58[3];
      v65 = v58[2];
      v66 = v59;
      v63 = v58[4];
      v64 = v60;
      v80[6] = v103;
      v80[7] = v104;
      *&v80[8] = v105;
      v80[2] = v99;
      v80[3] = v100;
      v80[4] = v101;
      v80[5] = v102;
      v80[0] = v97;
      v80[1] = v98;
      sub_26BE59BD8(v80, &v70);
      sub_26BE5A2DC(0, 0, 0, 0, 0);
      v43 = v63;
      v42 = v64;
      v41 = v65;
      v40 = v66;
    }

    v64 = v42;
    v65 = v41;
    v63 = v43;
    v66 = v40;
    v62[1] = v39;
    *&v70 = v39;
    *(&v70 + 1) = v40;
    *&v71 = v41;
    *(&v71 + 1) = v42;
    *&v72 = v43;
    *(&v72 + 1) = v68;
    *&v73 = v106;
    *(&v73 + 1) = v38;
    *&v74 = v67;
    *&v94[64] = v67;
    v62[2] = v38;
    *&v94[32] = v72;
    *&v94[48] = v73;
    *v94 = v70;
    *&v94[16] = v71;
    sub_26BE5A1D8(v94);
    *&v95[103] = *&v94[96];
    *&v95[119] = *&v94[112];
    *&v95[135] = *&v94[128];
    *&v95[39] = *&v94[32];
    *&v95[55] = *&v94[48];
    *&v95[71] = *&v94[64];
    *&v95[87] = *&v94[80];
    *&v95[7] = *v94;
    v95[151] = v94[144];
    *&v95[23] = *&v94[16];
    *&v80[0] = v39;
    *(&v80[0] + 1) = v66;
    *&v80[1] = v65;
    *(&v80[1] + 1) = v64;
    *&v80[2] = v63;
    *(&v80[2] + 1) = v68;
    *&v80[3] = v106;
    *(&v80[3] + 1) = v38;
    *&v80[4] = v67;
    sub_26BE5A1E4(&v70, v82);
    sub_26BE5A184(v80);
    *&v96[97] = *&v95[96];
    *&v96[113] = *&v95[112];
    *&v96[129] = *&v95[128];
    *&v96[33] = *&v95[32];
    *&v96[49] = *&v95[48];
    *&v96[65] = *&v95[64];
    *&v96[81] = *&v95[80];
    *&v96[1] = *v95;
    v96[0] = 2;
    *&v96[145] = *&v95[144];
    *&v96[17] = *&v95[16];
  }

  else
  {
    v68 = v4;
    v106 = v2;
    v21 = v5 >> 1;
    sub_26BE59DB4(v83);
    *(&v82[5] + 4) = v83[5];
    *(&v82[6] + 4) = v83[6];
    *(&v82[7] + 4) = v83[7];
    *(&v82[1] + 4) = v83[1];
    *(&v82[2] + 4) = v83[2];
    *(&v82[3] + 4) = v83[3];
    *(&v82[8] + 4) = v84;
    *(&v82[4] + 4) = v83[4];
    *(v82 + 4) = v83[0];
    v91 = v103;
    v92 = v104;
    v93 = v105;
    v87 = v99;
    v88 = v100;
    v89 = v101;
    v90 = v102;
    v85 = v97;
    v86 = v98;
    if (sub_26BE58C10(&v85) != 1)
    {
      LODWORD(v67) = v5 >> 1;
      *&v81[96] = v91;
      *&v81[112] = v92;
      *&v81[128] = v93;
      *&v81[32] = v87;
      *&v81[48] = v88;
      *&v81[64] = v89;
      *&v81[80] = v90;
      *v81 = v85;
      *&v81[16] = v86;
      if (sub_26BE592C4(v81) == 1)
      {
        sub_26BE13A3C(v81);
        sub_26BE01654();
        swift_allocError();
        *v22 = 28;
        *(v22 + 8) = 0u;
        *(v22 + 24) = 0u;
        *(v22 + 40) = 0u;
        *(v22 + 56) = 0u;
        *(v22 + 72) = 0u;
        *(v22 + 88) = 0u;
        *(v22 + 104) = 0;
        *(v22 + 112) = 23;
        swift_willThrow();
        sub_26BE2E258(&v97, &qword_28045E4C8, &unk_26C0112A0);
        *&v94[84] = v82[5];
        *&v94[100] = v82[6];
        *&v94[116] = v82[7];
        *&v94[128] = *(&v82[7] + 12);
        *&v94[20] = v82[1];
        *&v94[36] = v82[2];
        *&v94[52] = v82[3];
        *&v94[68] = v82[4];
        *v94 = v67;
        *&v94[4] = v82[0];
        sub_26BE5A39C(v94);
        return;
      }

      v27 = sub_26BE13A3C(v81);
      v70 = *v27;
      v28 = *(v27 + 64);
      v30 = *(v27 + 16);
      v29 = *(v27 + 32);
      v73 = *(v27 + 48);
      v74 = v28;
      v71 = v30;
      v72 = v29;
      v32 = *(v27 + 96);
      v31 = *(v27 + 112);
      v33 = *(v27 + 80);
      v78 = *(v27 + 128);
      v76 = v32;
      v77 = v31;
      v75 = v33;
      nullsub_1();
      v80[5] = *(&v82[5] + 4);
      v80[6] = *(&v82[6] + 4);
      v80[7] = *(&v82[7] + 4);
      *&v80[8] = *(&v82[8] + 4);
      v80[2] = *(&v82[2] + 4);
      v80[3] = *(&v82[3] + 4);
      v80[4] = *(&v82[4] + 4);
      v80[0] = *(v82 + 4);
      v80[1] = *(&v82[1] + 4);
      *&v94[96] = v103;
      *&v94[112] = v104;
      *&v94[128] = v105;
      *&v94[32] = v99;
      *&v94[48] = v100;
      *&v94[64] = v101;
      *&v94[80] = v102;
      *v94 = v97;
      *&v94[16] = v98;
      sub_26BE59BD8(v94, v69);
      sub_26BE2E258(v80, &qword_28045E6A0, &unk_26C016520);
      *(&v82[5] + 4) = v75;
      *(&v82[6] + 4) = v76;
      *(&v82[7] + 4) = v77;
      *(&v82[1] + 4) = v71;
      *(&v82[2] + 4) = v72;
      *(&v82[3] + 4) = v73;
      *(&v82[4] + 4) = v74;
      *(&v82[8] + 4) = v78;
      *(v82 + 4) = v70;
      v21 = v67;
    }

    *(&v80[4] + 4) = v82[4];
    *(&v80[5] + 4) = v82[5];
    *(&v80[6] + 4) = v82[6];
    *(&v80[2] + 4) = v82[2];
    *(&v80[1] + 4) = v82[1];
    *(&v80[7] + 4) = v82[7];
    v80[8] = *(&v82[7] + 12);
    LODWORD(v80[0]) = v21;
    *(&v80[3] + 4) = v82[3];
    *(v80 + 4) = v82[0];
    *&v94[96] = v80[6];
    *&v94[112] = v80[7];
    *&v94[128] = *(&v82[7] + 12);
    *&v94[32] = v80[2];
    *&v94[48] = v80[3];
    *&v94[64] = v80[4];
    *&v94[80] = v80[5];
    *v94 = v80[0];
    *&v94[16] = v80[1];
    sub_26BE5A338(v94);
    *&v79[103] = *&v94[96];
    *&v79[119] = *&v94[112];
    *&v79[135] = *&v94[128];
    *&v79[39] = *&v94[32];
    *&v79[55] = *&v94[48];
    *&v79[71] = *&v94[64];
    *&v79[87] = *&v94[80];
    *&v79[7] = *v94;
    *&v79[23] = *&v94[16];
    *&v81[84] = v82[5];
    *&v81[100] = v82[6];
    *&v81[116] = v82[7];
    *&v81[128] = *(&v82[7] + 12);
    *&v81[20] = v82[1];
    *&v81[36] = v82[2];
    *&v81[52] = v82[3];
    *&v81[68] = v82[4];
    v79[151] = v94[144];
    *v81 = v21;
    *&v81[4] = v82[0];
    sub_26BE5A340(v80, &v70);
    sub_26BE5A39C(v81);
    *&v96[97] = *&v79[96];
    *&v96[113] = *&v79[112];
    *&v96[129] = *&v79[128];
    *&v96[33] = *&v79[32];
    *&v96[49] = *&v79[48];
    *&v96[65] = *&v79[64];
    *&v96[81] = *&v79[80];
    *&v96[1] = *v79;
    v96[0] = 1;
    *&v96[145] = *&v79[144];
    *&v96[17] = *&v79[16];
    v3 = v106;
    v4 = v68;
  }

  *v81 = xmmword_26C00BBD0;
  *&v81[16] = 0;
  *&v94[96] = *&v96[96];
  *&v94[112] = *&v96[112];
  *&v94[128] = *&v96[128];
  *&v94[137] = *&v96[137];
  *&v94[32] = *&v96[32];
  *&v94[48] = *&v96[48];
  *&v94[64] = *&v96[64];
  *&v94[80] = *&v96[80];
  *v94 = *v96;
  *&v94[16] = *&v96[16];
  sub_26BFEA954(v94);
  if (v3)
  {
    sub_26BE2E258(&v97, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE5A240(v96);
    sub_26BE00258(*v81, *&v81[8]);
    return;
  }

  v34 = *v81;
  v35 = *&v81[8];
  v36 = *&v81[8] >> 62;
  if ((*&v81[8] >> 62) > 1)
  {
    if (v36 != 2)
    {
      goto LABEL_35;
    }

    v37 = *(*v81 + 24);
  }

  else
  {
    if (!v36)
    {
      goto LABEL_35;
    }

    v37 = *v81 >> 32;
  }

  if (v37 < 0)
  {
    __break(1u);
  }

LABEL_35:
  v44 = sub_26C00909C();
  v46 = v45;
  sub_26BE00258(v34, v35);
  v47 = *v4;
  if ((v47 - 3) < 0xFFFFFFFE)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v81[0] = v47 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v106 = *&v94[32];
  if (*(*&v94[32] + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash))
  {
    *&v94[24] = sub_26C00A33C();
    *&v94[32] = sub_26BE5A294(&qword_28045E368, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
    __swift_allocate_boxed_opaque_existential_1(v94);
    sub_26C00A32C();
  }

  else
  {
    *&v94[24] = sub_26C00A30C();
    *&v94[32] = sub_26BE5A294(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    __swift_allocate_boxed_opaque_existential_1(v94);
    sub_26C00A2FC();
  }

  *v81 = v44;
  *&v81[8] = v46;
  __swift_mutable_project_boxed_opaque_existential_1(v94, *&v94[24]);
  sub_26BE016A8();
  sub_26C009BEC();
  v68 = v44;
  __swift_project_boxed_opaque_existential_1(v94, *&v94[24]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = v62;
  v65 = *(AssociatedTypeWitness - 1);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v67 = v46;
  v50 = v62 - v49;
  sub_26C009BDC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = sub_26BE0B280(sub_26BE1367C, 0, AssociatedTypeWitness, MEMORY[0x277D84B78], MEMORY[0x277D84A98], *(AssociatedConformanceWitness + 32), MEMORY[0x277D84AC0], v52);
  (*(v65 + 8))(v50, AssociatedTypeWitness);
  v54 = sub_26BE12418(v53);
  v56 = v55;

  sub_26BE00608(v54, v56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v81 = *(v4 + 1);
  sub_26BE56E54(v54, v56, v5, isUniquelyReferenced_nonNull_native);
  sub_26BE5A240(v96);
  sub_26BE2E258(&v97, &qword_28045E4C8, &unk_26C0112A0);

  sub_26BE00258(v68, v67);
  *(v4 + 1) = *v81;
  __swift_destroy_boxed_opaque_existential_1(v94);
}

uint64_t MLS.TreeKEMPublicKey.expectNodeIsLeaf(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 112);
  v23[6] = *(a1 + 96);
  v23[7] = v4;
  v24 = *(a1 + 128);
  v5 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v5;
  v6 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v6;
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  if (sub_26BE592C4(v23) == 1)
  {
    sub_26BE13A3C(v23);
    sub_26BE01654();
    swift_allocError();
    *v8 = 28;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 88) = 0u;
    *(v8 + 104) = 0;
    *(v8 + 112) = 23;
    return swift_willThrow();
  }

  else
  {
    v10 = sub_26BE13A3C(v23);
    v11 = *(v10 + 112);
    *(a2 + 96) = *(v10 + 96);
    *(a2 + 112) = v11;
    *(a2 + 128) = *(v10 + 128);
    v12 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v12;
    v13 = *(v10 + 80);
    *(a2 + 64) = *(v10 + 64);
    *(a2 + 80) = v13;
    v14 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v14;
    v22 = *(a1 + 128);
    v15 = *(a1 + 112);
    v21[6] = *(a1 + 96);
    v21[7] = v15;
    v16 = *(a1 + 80);
    v21[4] = *(a1 + 64);
    v21[5] = v16;
    v17 = *(a1 + 48);
    v21[2] = *(a1 + 32);
    v21[3] = v17;
    v18 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v18;
    v19 = sub_26BE13A3C(v21);
    return sub_26BE00758(v19, v20);
  }
}

uint64_t MLS.TreeKEMPublicKey.expectNodeIsParent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 112);
  v22[6] = *(a1 + 96);
  v22[7] = v4;
  v23 = *(a1 + 128);
  v5 = *(a1 + 48);
  v22[2] = *(a1 + 32);
  v22[3] = v5;
  v6 = *(a1 + 80);
  v22[4] = *(a1 + 64);
  v22[5] = v6;
  v7 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v7;
  if (sub_26BE592C4(v22) == 1)
  {
    v8 = sub_26BE13A3C(v22);
    v9 = *(v8 + 32);
    v10 = *(v8 + 16);
    *a2 = *v8;
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
    v11 = *(a1 + 112);
    v20[6] = *(a1 + 96);
    v20[7] = v11;
    v21 = *(a1 + 128);
    v12 = *(a1 + 48);
    v20[2] = *(a1 + 32);
    v20[3] = v12;
    v13 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v13;
    v14 = *(a1 + 80);
    v20[4] = *(a1 + 64);
    v20[5] = v14;
    v15 = sub_26BE13A3C(v20);
    v16 = v15[2];
    v17 = v15[3];
    sub_26BE00608(*v15, v15[1]);
    sub_26BE00608(v16, v17);
  }

  else
  {
    sub_26BE13A3C(v22);
    sub_26BE01654();
    swift_allocError();
    *v19 = 28;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 0u;
    *(v19 + 56) = 0u;
    *(v19 + 72) = 0u;
    *(v19 + 88) = 0u;
    *(v19 + 104) = 0;
    *(v19 + 112) = 23;
    return swift_willThrow();
  }
}

void sub_26BE4CFD8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 48);
    v10[2] = *(a1 + 32);
    v10[3] = v6;
    v10[4] = *(a1 + 64);
    v7 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_26BE56BBC(v10, a2, a3, isUniquelyReferenced_nonNull_native);
    sub_26BE00258(a2, a3);
    *v3 = v9;
  }

  else
  {
    sub_26BE2E258(a1, &qword_28045E6F8, &qword_26C011360);
    sub_26C0001C8(a2, a3, v10);
    sub_26BE00258(a2, a3);
    sub_26BE2E258(v10, &qword_28045E6F8, &qword_26C011360);
  }
}

uint64_t sub_26BE4D0C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_26BE03890(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_26BE56F8C(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_26BE2E258(a1, &qword_28045E6A8, &qword_26C0112B0);
    v7 = sub_26BEBB414(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_26BE6DD70();
        v11 = v13;
      }

      sub_26BE03890((*(v11 + 56) + 40 * v9), v14);
      sub_26C000A2C(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_26BE2E258(v14, &qword_28045E6A8, &qword_26C0112B0);
  }

  return result;
}

uint64_t sub_26BE4D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_26C00921C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_26BE2E258(a1, &qword_28045E4A8, &unk_26C00ECB0);
    v15 = sub_26BEBB598(a2, a3);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v4;
      v23 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26BE6DEF4();
        v19 = v23;
      }

      (*(v12 + 32))(v10, *(v19 + 56) + *(v12 + 72) * v17, v11);
      sub_26C000BCC(v17, v19);
      *v4 = v19;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_26BE2E258(v10, &qword_28045E4A8, &unk_26C00ECB0);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    result = sub_26BE570BC(v14, a2, a3, v20);
    *v4 = v23;
  }

  return result;
}

uint64_t sub_26BE4D428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_26C009C8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_26BE2E258(a1, &qword_28045E708, &unk_26C011370);
    v13 = sub_26BEBB414(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26BE6E7A8();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_26C001358(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_26BE2E258(v8, &qword_28045E708, &unk_26C011370);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_26BE574C8(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_26BE4D678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E710, &unk_26C020E50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = _s11HashRatchetVMa(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_26BE2E258(a1, &qword_28045E710, &unk_26C020E50);
    v13 = sub_26BEBB480(a2 & 0xFFFFFFFF00000001);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26BE6EA10();
        v17 = v21;
      }

      sub_26BE5B2E0(*(v17 + 56) + *(v10 + 72) * v15, v8, _s11HashRatchetVMa);
      sub_26C001528(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_26BE2E258(v8, &qword_28045E710, &unk_26C020E50);
  }

  else
  {
    sub_26BE5B2E0(a1, v12, _s11HashRatchetVMa);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_26BE57630(v12, a2 & 0xFFFFFFFF00000001, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_26BE4D8CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E700, &qword_26C011368);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for MLS.KeyAndNonce(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_26BE2E258(a1, &qword_28045E700, &qword_26C011368);
    v13 = sub_26BEBB208(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26BE6EE0C();
        v17 = v21;
      }

      sub_26BE5B2E0(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for MLS.KeyAndNonce);
      sub_26C001714(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_26BE2E258(v8, &qword_28045E700, &qword_26C011368);
  }

  else
  {
    sub_26BE5B2E0(a1, v12, type metadata accessor for MLS.KeyAndNonce);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_26BE578D4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

void *MLS.TreeKEMPublicKey.rootHash.getter()
{
  result = sub_26BE592D0();
  if (!v0)
  {
    v3 = result;
    sub_26BE00608(result, v2);
    return v3;
  }

  return result;
}

int *MLS.TreeKEMPublicKey.parentHashValid(from:path:)(int *result, __int128 *a2)
{
  v4 = *result;
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a2 + 11);
    v7 = *(a2 + 12);
    v8 = *(a2 + 104);
    v9 = *(v2 + 8);
    v10 = *(v2 + 16);
    v11 = *(v2 + 24);
    LOWORD(v21) = *v2;
    *(&v21 + 1) = v9;
    LODWORD(v22) = v10;
    *(&v22 + 1) = v11;
    v32 = 2 * v4;

    MLS.TreeKEMPublicKey.filteredDirectPath(index:)(&v32, &v33);

    if (!v3)
    {
      v32 = v4;
      v12 = a2[3];
      v23 = a2[2];
      v24 = v12;
      v25 = a2[4];
      v13 = *(a2 + 10);
      v14 = a2[1];
      v21 = *a2;
      v22 = v14;
      v26 = v13;
      v27 = v6;
      v28 = v7;
      v29 = v8;
      v15 = *(a2 + 105);
      v16 = *(a2 + 121);
      *&v31[15] = *(a2 + 17);
      *v31 = v16;
      v30 = v15;
      v17 = MLS.TreeKEMPublicKey.parentHashes(from:filteredDirectPath:path:)(&v32, &v33, &v21);

      if (v8 == 1 && *(v17 + 2))
      {
        v18 = *(v17 + 4);
        v19 = *(v17 + 5);
        sub_26BE5A15C(v6, v7, 1);
        sub_26BE00608(v18, v19);

        v20 = sub_26BE02DEC(v18, v19, v6, v7);
        sub_26BE5A170(v6, v7, 1);
        sub_26BE00258(v18, v19);
        return v20;
      }
    }

    return 0;
  }

  return result;
}

void MLS.TreeKEMPublicKey.originalTreeHash(index:parentExcept:)(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  LODWORD(v86) = *v2;
  v87 = *(v2 + 1);
  v88 = v3;
  LODWORD(v85) = *(v2 + 4);
  v84 = *(v2 + 3);
  v4 = *(a2 + 16);
  if (!v4)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_14:
    if (!*(v9 + 2))
    {
      if (v87[2])
      {
        v16 = sub_26BEBB414(v88);
        if (v17)
        {
          sub_26BE00608(*(v87[7] + 16 * v16), *(v87[7] + 16 * v16 + 8));

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_83;
    }

    v83 = v9;
    v15 = v114;
    if ((v88 & 1) == 0)
    {
      sub_26BE59DB4(&v92);
      *&v102[4] = v92;
      *&v102[68] = v96;
      *&v102[52] = v95;
      *&v102[36] = v94;
      *&v102[20] = v93;
      *&v102[132] = v100;
      *&v102[116] = v99;
      *&v102[100] = v98;
      *&v102[84] = v97;
      *(&v101[6] + 4) = *&v102[96];
      *(&v101[5] + 4) = *&v102[80];
      *(&v101[2] + 4) = *&v102[32];
      *(&v101[1] + 4) = *&v102[16];
      *(&v101[7] + 4) = *&v102[112];
      v101[8] = *&v102[124];
      *(&v101[3] + 4) = *&v102[48];
      LODWORD(v101[0]) = v88 >> 1;
      *(&v101[4] + 4) = *&v102[64];
      *(v101 + 4) = *v102;
      v109 = v101[6];
      v110 = v101[7];
      v111 = *&v102[124];
      v105 = v101[2];
      v106 = v101[3];
      v107 = v101[4];
      v108 = v101[5];
      v103 = v101[0];
      v104 = v101[1];
      sub_26BE5A338(&v103);
      *&v102[55] = v106;
      *&v102[39] = v105;
      *&v102[119] = v110;
      *&v102[103] = v109;
      *&v102[135] = v111;
      v102[151] = v112;
      *&v102[71] = v107;
      *&v102[87] = v108;
      *&v102[7] = v103;
      *&v102[23] = v104;
      __dst[0] = 1;
      *&__dst[113] = *&v102[112];
      *&__dst[97] = *&v102[96];
      *&__dst[49] = *&v102[48];
      *&__dst[33] = *&v102[32];
      *&__dst[129] = *&v102[128];
      *&__dst[145] = *&v102[144];
      *&__dst[65] = *&v102[64];
      *&__dst[81] = *&v102[80];
      *&__dst[1] = *v102;
      *&__dst[17] = *&v102[16];
      v90 = xmmword_26C00BBD0;
      v91 = 0;
      *&v102[96] = *&__dst[96];
      *&v102[112] = *&__dst[112];
      *&v102[128] = *&__dst[128];
      *&v102[137] = *&__dst[137];
      *&v102[32] = *&__dst[32];
      *&v102[48] = *&__dst[48];
      *&v102[64] = *&__dst[64];
      *&v102[80] = *&__dst[80];
      *v102 = *__dst;
      *&v102[16] = *&__dst[16];
      sub_26BE5A340(v101, v89);
      sub_26BFEA954(v102);
      v7 = v86;
      if (v15)
      {
        sub_26BE5A39C(v101);
        sub_26BE5A240(__dst);
        sub_26BE00258(v90, *(&v90 + 1));

        return;
      }

      v20 = v90;
      v21 = *(&v90 + 1) >> 62;
      if ((*(&v90 + 1) >> 62) > 1)
      {
        if (v21 != 2)
        {
LABEL_38:
          v29 = sub_26C00909C();
          v31 = v30;
          sub_26BE5A240(__dst);
          sub_26BE5A39C(v101);
          sub_26BE00258(v20, *(&v20 + 1));
          goto LABEL_39;
        }

        v24 = *(v90 + 24);
      }

      else
      {
        if (!v21)
        {
          goto LABEL_38;
        }

        v24 = v90 >> 32;
      }

      if (v24 < 0)
      {
        __break(1u);
      }

      goto LABEL_38;
    }

    v7 = v86;
    *__dst = v86;
    *&__dst[8] = v87;
    *&__dst[16] = v85;
    *&__dst[24] = v84;
    LODWORD(v103) = v88;
    MLS.NodeIndex.left.getter(v102);
    if (v102[4])
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      return;
    }

    LODWORD(v101[0]) = *v102;

    MLS.TreeKEMPublicKey.originalTreeHash(index:parentExcept:)(v101, v83);
    if (v15)
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    v81 = v18;
    v82 = v19;

    *__dst = v86;
    *&__dst[8] = v87;
    *&__dst[16] = v85;
    *&__dst[24] = v84;
    LODWORD(v103) = v88;
    MLS.NodeIndex.right.getter(v102);
    if (v102[4])
    {
      goto LABEL_87;
    }

    LODWORD(v101[0]) = *v102;
    MLS.TreeKEMPublicKey.originalTreeHash(index:parentExcept:)(v101, v83);
    v25 = v85 - 1;
    if (!v85)
    {
      goto LABEL_84;
    }

    if (v25 < 0)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v10 = v22;
    if (v88 > 2 * v25)
    {
      v26 = v23;
      sub_26BE01654();
      swift_allocError();
      *v27 = 30;
      *(v27 + 8) = 0u;
      *(v27 + 24) = 0u;
      *(v27 + 40) = 0u;
      *(v27 + 56) = 0u;
      *(v27 + 72) = 0u;
      *(v27 + 88) = 0u;
      *(v27 + 104) = 0;
      *(v27 + 112) = 23;
      swift_willThrow();

      memset(__dst, 0, 40);
      *&__dst[40] = v81;
      *&__dst[48] = v82;
      *&__dst[56] = v10;
      *&__dst[64] = v26;
      v28 = __dst;
      goto LABEL_50;
    }

    if (*(v84 + 16) <= v88)
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v8 = 0;
      v53 = v81;
      v52 = v82;
      goto LABEL_48;
    }

    v40 = v23;
    v41 = v84 + 136 * v88;
    *v102 = *(v41 + 32);
    v42 = *(v41 + 48);
    v43 = *(v41 + 64);
    v44 = *(v41 + 96);
    *&v102[48] = *(v41 + 80);
    *&v102[64] = v44;
    *&v102[16] = v42;
    *&v102[32] = v43;
    v45 = *(v41 + 112);
    v46 = *(v41 + 128);
    v47 = *(v41 + 144);
    *&v102[128] = *(v41 + 160);
    *&v102[96] = v46;
    *&v102[112] = v47;
    *&v102[80] = v45;
    memmove(__dst, (v41 + 32), 0x88uLL);
    if (sub_26BE58C10(__dst) == 1)
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v8 = 0;
      v53 = v81;
      v52 = v82;
      v23 = v40;
LABEL_48:
      v87 = v50;
      v88 = v49;
      v85 = v51;
      *&v101[0] = v48;
      *(&v101[0] + 1) = v49;
      *&v101[1] = v50;
      *(&v101[1] + 1) = v51;
      *&v101[2] = v8;
      *(&v101[2] + 1) = v53;
      *&v101[3] = v52;
      *(&v101[3] + 1) = v10;
      *&v101[4] = v23;
      *&v107 = v23;
      v105 = v101[2];
      v106 = v101[3];
      v103 = v101[0];
      v104 = v101[1];
      v54 = v23;
      sub_26BE5A1D8(&v103);
      *&v102[55] = v106;
      *&v102[39] = v105;
      *&v102[119] = v110;
      *&v102[103] = v109;
      *&v102[135] = v111;
      v102[151] = v112;
      *&v102[71] = v107;
      *&v102[87] = v108;
      *&v102[7] = v103;
      *&v102[23] = v104;
      __dst[0] = 2;
      *&__dst[113] = *&v102[112];
      *&__dst[97] = *&v102[96];
      *&__dst[49] = *&v102[48];
      *&__dst[33] = *&v102[32];
      *&__dst[129] = *&v102[128];
      *&__dst[145] = *&v102[144];
      *&__dst[65] = *&v102[64];
      *&__dst[81] = *&v102[80];
      *&__dst[1] = *v102;
      *&__dst[17] = *&v102[16];
      v92 = xmmword_26C00BBD0;
      *&v93 = 0;
      *&v102[96] = *&__dst[96];
      *&v102[112] = *&__dst[112];
      *&v102[128] = *&__dst[128];
      *&v102[137] = *&__dst[137];
      *&v102[32] = *&__dst[32];
      *&v102[48] = *&__dst[48];
      *&v102[64] = *&__dst[64];
      *&v102[80] = *&__dst[80];
      *v102 = *__dst;
      *&v102[16] = *&__dst[16];
      sub_26BE5A1E4(v101, v89);
      v4 = v48;
      v5 = v54;
      sub_26BFEA954(v102);
      if (!v15)
      {
        goto LABEL_52;
      }

      sub_26BE5A240(__dst);
      sub_26BE00258(v92, *(&v92 + 1));

      v89[0] = v4;
      v89[1] = v88;
      v89[2] = v87;
      v89[3] = v85;
      v89[4] = v8;
      v89[5] = v81;
      v89[6] = v82;
      v89[7] = v10;
      v89[8] = v54;
      v28 = v89;
LABEL_50:
      sub_26BE5A184(v28);
      return;
    }

    v109 = *&__dst[96];
    v110 = *&__dst[112];
    *&v111 = *&__dst[128];
    v105 = *&__dst[32];
    v106 = *&__dst[48];
    v107 = *&__dst[64];
    v108 = *&__dst[80];
    v103 = *__dst;
    v104 = *&__dst[16];
    if (sub_26BE592C4(&v103) != 1)
    {
      sub_26BE13A3C(&v103);
      sub_26BE01654();
      swift_allocError();
      *v74 = 28;
      *(v74 + 8) = 0u;
      *(v74 + 24) = 0u;
      *(v74 + 40) = 0u;
      *(v74 + 56) = 0u;
      *(v74 + 72) = 0u;
      *(v74 + 88) = 0u;
      *(v74 + 104) = 0;
      *(v74 + 112) = 23;
      swift_willThrow();

      memset(v101, 0, 40);
      *(&v101[2] + 1) = v81;
      *&v101[3] = v82;
      *(&v101[3] + 1) = v10;
      *&v101[4] = v40;
      v28 = v101;
      goto LABEL_50;
    }

    v84 = v10;
    v79 = v40;
    v57 = sub_26BE13A3C(&v103);
    v48 = *v57;
    v58 = v57[1];
    v59 = v57[3];
    v87 = v57[2];
    v88 = v58;
    v85 = v59;
    v60 = v57[4];
    v101[6] = *&v102[96];
    v101[7] = *&v102[112];
    *&v101[8] = *&v102[128];
    v101[2] = *&v102[32];
    v101[3] = *&v102[48];
    v101[4] = *&v102[64];
    v101[5] = *&v102[80];
    v101[0] = *v102;
    v101[1] = *&v102[16];
    sub_26BE2E1F0(v102, v89, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE2E1F0(v102, v89, &qword_28045E4C8, &unk_26C0112A0);
    sub_26BE59BD8(v101, v89);
    sub_26BE5A2DC(0, 0, 0, 0, 0);

    sub_26BE2E258(v102, &qword_28045E4C8, &unk_26C0112A0);
    v77 = v60;
    v61 = *(v60 + 16);
    if (v61)
    {
      v78 = v48;
      v114 = 0;
      v62 = 0;
      v63 = v77 + 32;
      v64 = v83;
      v10 = v84;
      v65 = (v83 + 32);
      v8 = MEMORY[0x277D84F90];
      v80 = v77 + 32;
      do
      {
        v66 = *(v63 + 4 * v62++);
        v67 = *(v64 + 16);
        v68 = v65;
        while (v67)
        {
          v69 = *v68++;
          --v67;
          if (v69 == v66)
          {
            goto LABEL_59;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26BEEBEAC(0, *(v8 + 2) + 1, 1, v8);
        }

        v71 = *(v8 + 2);
        v70 = *(v8 + 3);
        v64 = v83;
        if (v71 >= v70 >> 1)
        {
          v72 = sub_26BEEBEAC((v70 > 1), v71 + 1, 1, v8);
          v64 = v83;
          v8 = v72;
        }

        *(v8 + 2) = v71 + 1;
        *&v8[4 * v71 + 32] = v66;
        v10 = v84;
        v63 = v80;
LABEL_59:
        ;
      }

      while (v62 != v61);
      sub_26BE2E258(v102, &qword_28045E4C8, &unk_26C0112A0);

      if (!v77)
      {

        v8 = 0;
        v53 = v81;
        v52 = v82;
        v15 = v114;
        v7 = v86;
        v48 = v78;
        v23 = v79;
        goto LABEL_80;
      }

      v15 = v114;
      v7 = v86;
      v48 = v78;
    }

    else
    {
      sub_26BE2E258(v102, &qword_28045E4C8, &unk_26C0112A0);

      v8 = MEMORY[0x277D84F90];
      v10 = v84;
    }

    v53 = v81;
    v52 = v82;
    v23 = v79;
LABEL_80:
    v50 = v87;
    v49 = v88;
    v51 = v85;
    goto LABEL_48;
  }

  v5 = (a2 + 32);
  v6 = __clz(__rbit32(~v3));
  v7 = v6 + 1;
  v8 = (v3 >> (v6 + 1));
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = *v5++;
    v10 = v11;
    if ((v11 & 0x80000000) != 0)
    {
      break;
    }

    if (v6 > 0x1E || (2 * v10) >> v7 == v8)
    {
      v12 = v9;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v9 = v12;
      }

      else
      {
        v9 = sub_26BEECEB4(0, *(v12 + 2) + 1, 1, v12);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_26BEECEB4((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      *&v9[4 * v14 + 32] = v10;
    }

    if (!--v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_52:
  v78 = v4;
  v79 = v5;
  v55 = v92;
  v56 = *(&v92 + 1) >> 62;
  if ((*(&v92 + 1) >> 62) <= 1)
  {
    if (!v56)
    {
      goto LABEL_74;
    }

    v73 = v92 >> 32;
LABEL_72:
    if (v73 < 0)
    {
      __break(1u);
    }

    goto LABEL_74;
  }

  if (v56 == 2)
  {
    v73 = *(v92 + 24);
    goto LABEL_72;
  }

LABEL_74:
  v75 = sub_26C00909C();
  v31 = v76;
  sub_26BE5A240(__dst);
  sub_26BE00258(v55, *(&v55 + 1));
  *v102 = v78;
  *&v102[8] = v88;
  *&v102[16] = v87;
  *&v102[24] = v85;
  *&v102[32] = v8;
  *&v102[40] = v81;
  *&v102[48] = v82;
  *&v102[56] = v10;
  *&v102[64] = v79;
  v29 = v75;
  sub_26BE5A184(v102);
LABEL_39:
  if (v7 - 3 < 0xFFFFFFFE)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v102[0] = v7 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v32 = *(*&__dst[32] + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash);
  v114 = *&__dst[32];
  if (v32)
  {
    *&__dst[24] = sub_26C00A33C();
    *&__dst[32] = sub_26BE5A294(&qword_28045E368, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
    __swift_allocate_boxed_opaque_existential_1(__dst);
    sub_26C00A32C();
  }

  else
  {
    *&__dst[24] = sub_26C00A30C();
    *&__dst[32] = sub_26BE5A294(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    __swift_allocate_boxed_opaque_existential_1(__dst);
    sub_26C00A2FC();
  }

  *v102 = v29;
  *&v102[8] = v31;
  v88 = v31;
  __swift_mutable_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
  sub_26BE00608(v29, v31);
  sub_26BE016A8();
  sub_26C009BEC();
  sub_26BE00258(*v102, *&v102[8]);
  __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = v29;
  v87 = &v77;
  v34 = *(AssociatedTypeWitness - 1);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v36 = &v77 - v35;
  sub_26C009BDC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = sub_26BE0B280(sub_26BE1367C, 0, AssociatedTypeWitness, MEMORY[0x277D84B78], MEMORY[0x277D84A98], *(AssociatedConformanceWitness + 32), MEMORY[0x277D84AC0], v38);
  (*(v34 + 8))(v36, AssociatedTypeWitness);

  sub_26BE12418(v39);

  sub_26BE00258(v86, v88);

  __swift_destroy_boxed_opaque_existential_1(__dst);
}

void sub_26BE4EB68(unsigned int *a1, unsigned int *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *v2;
  v7 = *(v2 + 1);
  v8 = *(v2 + 4);
  v9 = *(v2 + 3);
  v61 = *v2;
  v62 = v7;
  v63 = v8;
  v64 = v9;
  v60 = v4;
  MLS.TreeKEMPublicKey.expectNodeAt(index:)(&v60, &v65);
  if (v3)
  {
    return;
  }

  v74 = 0;
  v56[6] = v71;
  v56[7] = v72;
  v56[2] = v67;
  v56[3] = v68;
  v56[4] = v69;
  v56[5] = v70;
  v56[0] = v65;
  v56[1] = v66;
  v58[6] = v71;
  v58[7] = v72;
  v58[2] = v67;
  v58[3] = v68;
  v58[4] = v69;
  v58[5] = v70;
  v57 = v73;
  v59 = v73;
  v58[0] = v65;
  v58[1] = v66;
  v10 = sub_26BE592C4(v58);
  v11 = sub_26BE13A3C(v58);
  if (v10 != 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v21 = 28;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 72) = 0u;
    *(v21 + 88) = 0u;
    *(v21 + 104) = 0;
    *(v21 + 112) = 23;
    swift_willThrow();
    sub_26BE13854(v56);
    return;
  }

  v12 = v11[1];
  v44 = *v11;
  v45 = v12;
  v13 = v11[3];
  v46 = v11[2];
  v14 = v11[4];
  LODWORD(v43) = v6;
  LOWORD(v53) = v6;
  *(&v53 + 1) = v7;
  LODWORD(v54) = v8;
  v55 = v9;
  v52 = v5;
  v15 = *(v14 + 16);
  if (v15)
  {
    v47 = v13;
    sub_26BE59BD8(v56, v48);
    v48[0] = MEMORY[0x277D84F90];

    sub_26BECBA74(0, v15, 0);
    v16 = v48[0];
    v17 = *(v48[0] + 16);
    v18 = 32;
    do
    {
      v19 = *(v14 + v18);
      v48[0] = v16;
      v20 = *(v16 + 24);
      if (v17 >= v20 >> 1)
      {
        sub_26BECBA74((v20 > 1), v17 + 1, 1);
        v16 = v48[0];
      }

      *(v16 + 16) = v17 + 1;
      *(v16 + 4 * v17 + 32) = v19;
      v18 += 4;
      ++v17;
      --v15;
    }

    while (v15);

    v13 = v47;
  }

  else
  {
    sub_26BE59BD8(v56, v48);
    v16 = MEMORY[0x277D84F90];
  }

  v22 = v74;
  MLS.TreeKEMPublicKey.originalTreeHash(index:parentExcept:)(&v52, v16);
  if (v22)
  {
    sub_26BE13854(v56);
    sub_26BE13854(v56);

    return;
  }

  v25 = v23;
  v26 = v24;

  v53 = xmmword_26C00BBD0;
  v54 = 0;
  v48[0] = v44;
  v48[1] = v45;
  v48[2] = v46;
  v49 = v13;
  v50 = v25;
  v51 = v26;
  sub_26BE00608(v44, v45);
  sub_26BE00608(v46, v13);
  sub_26BE00608(v25, v26);
  sub_26BFEA76C(v48);
  v27 = v53;
  v28 = *(&v53 + 1) >> 62;
  v74 = 0;
  if ((*(&v53 + 1) >> 62) > 1)
  {
    if (v28 != 2)
    {
      goto LABEL_22;
    }

    v29 = *(v53 + 24);
LABEL_20:
    if (v29 < 0)
    {
      __break(1u);
    }

    goto LABEL_22;
  }

  if (v28)
  {
    v29 = v53 >> 32;
    goto LABEL_20;
  }

LABEL_22:
  v30 = sub_26C00909C();
  v32 = v31;
  sub_26BE00258(v27, *(&v27 + 1));
  if ((v43 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v53) = v43 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v43 = v50;
    v33 = *(v50 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash);
    v47 = v13;
    if (v33)
    {
      v49 = sub_26C00A33C();
      v50 = sub_26BE5A294(&qword_28045E368, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
      __swift_allocate_boxed_opaque_existential_1(v48);
      sub_26C00A32C();
    }

    else
    {
      v49 = sub_26C00A30C();
      v50 = sub_26BE5A294(&qword_28045E370, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      __swift_allocate_boxed_opaque_existential_1(v48);
      sub_26C00A2FC();
    }

    *&v53 = v30;
    *(&v53 + 1) = v32;
    __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
    v42 = v30;
    sub_26BE016A8();
    sub_26C009BEC();
    __swift_project_boxed_opaque_existential_1(v48, v49);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v41[0] = v32;
    v41[1] = v41;
    v35 = *(AssociatedTypeWitness - 1);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v37 = v41 - v36;
    sub_26C009BDC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v40 = sub_26BE0B280(sub_26BE1367C, 0, AssociatedTypeWitness, MEMORY[0x277D84B78], MEMORY[0x277D84A98], *(AssociatedConformanceWitness + 32), MEMORY[0x277D84AC0], v39);
    (*(v35 + 8))(v37, AssociatedTypeWitness);
    sub_26BE12418(v40);

    sub_26BE00258(v25, v26);

    sub_26BE00258(v42, v41[0]);
    sub_26BE00258(v44, v45);
    sub_26BE00258(v46, v47);
    sub_26BE00258(v25, v26);
    sub_26BE13854(v56);
    sub_26BE13854(v56);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }
}

uint64_t sub_26BE4F210(int *a1, uint64_t a2, unint64_t a3)
{
  v126 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  LOWORD(__dst) = *v3;
  *(&__dst + 1) = v8;
  LODWORD(v118) = v9;
  *(&v118 + 1) = v10;
  LODWORD(v108) = v7;
  sub_26BE4B650(&v108);
  if (!v4)
  {
    v14 = v11;
    v89 = *(v11 + 16);
    if (!v89)
    {
LABEL_129:

      v12 = 0;
      return v12 & 1;
    }

    v15 = a3;
    v16 = 0;
    v93 = v9 - 1;
    v94 = v9 == 0;
    v92 = 2 * (v9 - 1);
    v90 = v10;
    v91 = v10 + 32;
    if (a2)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15 == 0xC000000000000000;
    }

    v18 = !v17;
    v88 = v18;
    v19 = v15 >> 62;
    v20 = __OFSUB__(HIDWORD(a2), a2);
    v85 = v20;
    v84 = HIDWORD(a2) - a2;
    v86 = v15;
    v87 = BYTE6(v15);
    v21 = *(v11 + 16);
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
      }

      if (v94)
      {
        goto LABEL_133;
      }

      if (v93 < 0)
      {
        goto LABEL_134;
      }

      v22 = *(v14 + 4 * v16 + 32);
      if (v22 > v92 || *(v10 + 16) <= v22 || (v23 = (v91 + 136 * v22), v108 = *v23, v24 = v23[1], v25 = v23[2], v26 = v23[4], v111 = v23[3], v112 = v26, v109 = v24, v110 = v25, v27 = v23[5], v28 = v23[6], v29 = v23[7], v116 = *(v23 + 16), v114 = v28, v115 = v29, v113 = v27, memmove(&__dst, v23, 0x88uLL), sub_26BE58C10(&__dst) == 1))
      {

        sub_26BE01654();
        swift_allocError();
        *v75 = 30;
        *(v75 + 8) = 0u;
        *(v75 + 24) = 0u;
        *(v75 + 40) = 0u;
        *(v75 + 56) = 0u;
        *(v75 + 72) = 0u;
        *(v75 + 88) = 0u;
        *(v75 + 104) = 0;
        *(v75 + 112) = 23;
        swift_willThrow();
        return v12 & 1;
      }

      v30 = v19;
      v106[6] = v123;
      v106[7] = v124;
      v107 = v125;
      v106[2] = v119;
      v106[3] = v120;
      v106[4] = v121;
      v106[5] = v122;
      v106[0] = __dst;
      v106[1] = v118;
      v31 = sub_26BE592C4(v106);
      v32 = sub_26BE13A3C(v106);
      if (v31 != 1)
      {
        v19 = v30;
        if (!*(v32 + 104) || *(v32 + 104) != 1)
        {
          goto LABEL_16;
        }

        v39 = *(v32 + 88);
        v40 = *(v32 + 96);
        v41 = v40 >> 62;
        if (v40 >> 62 == 3)
        {
          if (v39)
          {
            v42 = 0;
          }

          else
          {
            v42 = v40 == 0xC000000000000000;
          }

          v44 = !v42 || v30 < 3;
          if (((v44 | v88) & 1) == 0)
          {
LABEL_131:

            v12 = 1;
            return v12 & 1;
          }

LABEL_93:
          v55 = 0;
          if (v30 > 1)
          {
            goto LABEL_94;
          }

LABEL_90:
          v64 = v87;
          if (v30)
          {
            v64 = v84;
            if (v85)
            {
              goto LABEL_141;
            }
          }

LABEL_96:
          if (v55 != v64)
          {
            goto LABEL_128;
          }

          if (v55 < 1)
          {
            goto LABEL_131;
          }

          if (v41 > 1)
          {
            if (v41 != 2)
            {
              *&v96[6] = 0;
              *v96 = 0;
              sub_26BE2E1F0(&v108, &v97, &qword_28045E4C8, &unk_26C0112A0);
              sub_26BE5A15C(v39, v40, 1);
              sub_26BE567B0(v96, a2, v86, &v97);
              sub_26BE5A170(v39, v40, 1);
              goto LABEL_120;
            }

            v83 = a2;
            v67 = *(v39 + 16);
            v81 = *(v39 + 24);
            sub_26BE2E1F0(&v108, &v97, &qword_28045E4C8, &unk_26C0112A0);
            sub_26BE5A15C(v39, v40, 1);
            v68 = sub_26C008E9C();
            if (v68)
            {
              v76 = v67;
              v69 = v68;
              v70 = sub_26C008ECC();
              v71 = v76;
              if (__OFSUB__(v76, v70))
              {
                goto LABEL_149;
              }

              v78 = v76 - v70 + v69;
              v72 = v81;
            }

            else
            {
              v78 = 0;
              v72 = v81;
              v71 = v67;
            }

            if (__OFSUB__(v72, v71))
            {
              goto LABEL_148;
            }
          }

          else
          {
            if (!v41)
            {
              *v96 = *(v32 + 88);
              *&v96[8] = v40;
              v96[10] = BYTE2(v40);
              v96[11] = BYTE3(v40);
              v96[12] = BYTE4(v40);
              v96[13] = BYTE5(v40);
              sub_26BE2E1F0(&v108, &v97, &qword_28045E4C8, &unk_26C0112A0);
              sub_26BE5A15C(v39, v40, 1);
              v19 = v30;
              sub_26BE567B0(v96, a2, v86, &v97);
              sub_26BE5A170(v39, v40, 1);
LABEL_120:
              sub_26BE2E258(&v108, &qword_28045E4C8, &unk_26C0112A0);
              if (v97)
              {
                goto LABEL_131;
              }

LABEL_128:
              v21 = v89;
              v10 = v90;
              goto LABEL_16;
            }

            v83 = a2;
            if (v39 >> 32 < v39)
            {
              goto LABEL_147;
            }

            sub_26BE2E1F0(&v108, &v97, &qword_28045E4C8, &unk_26C0112A0);
            sub_26BE5A15C(v39, v40, 1);
            v73 = sub_26C008E9C();
            if (v73)
            {
              v79 = v73;
              v74 = sub_26C008ECC();
              if (__OFSUB__(v39, v74))
              {
                goto LABEL_150;
              }

              v78 = v39 - v74 + v79;
            }

            else
            {
              v78 = 0;
            }
          }

          sub_26C008EBC();
          a2 = v83;
          sub_26BE567B0(v78, v83, v86, &v97);
          sub_26BE5A170(v39, v40, 1);
          sub_26BE2E258(&v108, &qword_28045E4C8, &unk_26C0112A0);
          v19 = v30;
          if (v97)
          {
            goto LABEL_131;
          }

          goto LABEL_128;
        }

        if (v41 <= 1)
        {
          if (v41)
          {
            LODWORD(v55) = HIDWORD(v39) - v39;
            if (__OFSUB__(HIDWORD(v39), v39))
            {
              goto LABEL_146;
            }

            v55 = v55;
            if (v30 > 1)
            {
              goto LABEL_94;
            }
          }

          else
          {
            v55 = BYTE6(v40);
            if (v30 > 1)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_90;
        }

        if (v41 != 2)
        {
          goto LABEL_93;
        }

        v63 = *(v39 + 16);
        v62 = *(v39 + 24);
        v48 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        if (v48)
        {
          goto LABEL_145;
        }

        if (v30 <= 1)
        {
          goto LABEL_90;
        }

LABEL_94:
        if (v30 == 2)
        {
          v66 = *(a2 + 16);
          v65 = *(a2 + 24);
          v48 = __OFSUB__(v65, v66);
          v64 = v65 - v66;
          if (v48)
          {
            goto LABEL_142;
          }

          goto LABEL_96;
        }

        if (!v55)
        {
          goto LABEL_131;
        }

        goto LABEL_128;
      }

      v33 = *(v32 + 16);
      v34 = *(v32 + 24);
      v35 = v34 >> 62;
      v19 = v30;
      if (v34 >> 62 == 3)
      {
        break;
      }

      if (v35 > 1)
      {
        if (v35 != 2)
        {
          goto LABEL_60;
        }

        v47 = *(v33 + 16);
        v46 = *(v33 + 24);
        v48 = __OFSUB__(v46, v47);
        v45 = v46 - v47;
        if (v48)
        {
          goto LABEL_138;
        }

        if (v30 <= 1)
        {
          goto LABEL_57;
        }
      }

      else if (v35)
      {
        LODWORD(v45) = HIDWORD(v33) - v33;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_137;
        }

        v45 = v45;
        if (v30 <= 1)
        {
LABEL_57:
          v49 = v87;
          if (v30)
          {
            v49 = v84;
            if (v85)
            {
              goto LABEL_135;
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        v45 = BYTE6(v34);
        if (v30 <= 1)
        {
          goto LABEL_57;
        }
      }

LABEL_61:
      if (v30 != 2)
      {
        if (!v45)
        {
          goto LABEL_131;
        }

        goto LABEL_15;
      }

      v51 = *(a2 + 16);
      v50 = *(a2 + 24);
      v48 = __OFSUB__(v50, v51);
      v49 = v50 - v51;
      if (v48)
      {
        goto LABEL_136;
      }

LABEL_63:
      if (v45 == v49)
      {
        if (v45 < 1)
        {
          goto LABEL_131;
        }

        if (v35 > 1)
        {
          if (v35 == 2)
          {
            v77 = *(v33 + 24);
            v80 = *(v33 + 16);
            v103 = v114;
            v104 = v115;
            v105 = v116;
            v97 = v108;
            v98 = v109;
            v99 = v110;
            v100 = v111;
            v101 = v112;
            v102 = v113;
            sub_26BE59BD8(&v97, v96);
            v52 = sub_26C008E9C();
            if (v52)
            {
              v53 = sub_26C008ECC();
              v54 = v80;
              if (__OFSUB__(v80, v53))
              {
                goto LABEL_143;
              }

              v52 += v80 - v53;
            }

            else
            {
              v54 = v80;
            }

            if (__OFSUB__(v77, v54))
            {
              goto LABEL_140;
            }

            sub_26C008EBC();
            v60 = v52;
            v59 = a2;
            v61 = v86;
            goto LABEL_113;
          }

          memset(v95, 0, 14);
          v103 = v114;
          v104 = v115;
          v105 = v116;
          v99 = v110;
          v100 = v111;
          v101 = v112;
          v102 = v113;
          v97 = v108;
          v98 = v109;
          sub_26BE59BD8(&v97, v96);
        }

        else
        {
          if (v35)
          {
            v82 = a2;
            v56 = v33;
            if (v33 >> 32 < v33)
            {
              goto LABEL_139;
            }

            v103 = v114;
            v104 = v115;
            v105 = v116;
            v99 = v110;
            v100 = v111;
            v101 = v112;
            v102 = v113;
            v97 = v108;
            v98 = v109;
            sub_26BE59BD8(&v97, v96);
            v57 = sub_26C008E9C();
            if (v57)
            {
              v58 = sub_26C008ECC();
              if (__OFSUB__(v56, v58))
              {
                goto LABEL_144;
              }

              v57 += v56 - v58;
            }

            sub_26C008EBC();
            v59 = v82;
            v60 = v57;
            v61 = v86;
            a2 = v82;
LABEL_113:
            sub_26BE567B0(v60, v59, v61, v96);
            sub_26BE2E258(&v108, &qword_28045E4C8, &unk_26C0112A0);
            v21 = v89;
            v19 = v30;
            if (v96[0])
            {
              goto LABEL_131;
            }

            goto LABEL_15;
          }

          v95[0] = *(v32 + 16);
          LOWORD(v95[1]) = v34;
          BYTE2(v95[1]) = BYTE2(v34);
          BYTE3(v95[1]) = BYTE3(v34);
          BYTE4(v95[1]) = BYTE4(v34);
          BYTE5(v95[1]) = BYTE5(v34);
          v99 = v110;
          v100 = v111;
          v97 = v108;
          v98 = v109;
          v105 = v116;
          v103 = v114;
          v104 = v115;
          v101 = v112;
          v102 = v113;
          sub_26BE59BD8(&v97, v96);
          v19 = v30;
        }

        sub_26BE567B0(v95, a2, v86, v96);
        sub_26BE2E258(&v108, &qword_28045E4C8, &unk_26C0112A0);
        if (v96[0])
        {
          goto LABEL_131;
        }
      }

LABEL_15:
      v10 = v90;
LABEL_16:
      if (v21 == ++v16)
      {
        goto LABEL_129;
      }
    }

    if (v33)
    {
      v36 = 0;
    }

    else
    {
      v36 = v34 == 0xC000000000000000;
    }

    v38 = !v36 || v30 < 3;
    if (((v38 | v88) & 1) == 0)
    {
      goto LABEL_131;
    }

LABEL_60:
    v45 = 0;
    if (v30 <= 1)
    {
      goto LABEL_57;
    }

    goto LABEL_61;
  }

  return v12 & 1;
}

void MLS.TreeKEMPublicKey.isParentHashValid.getter()
{
  v2 = *(v0 + 4);
  v3 = v2 - 1;
  if (!v2)
  {
    goto LABEL_26;
  }

  if (v3 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 1);
    v6 = *(v0 + 3);
    v34 = *(v0 + 4);
    MLS.NodeIndex.init(forRoot:)(&v34, __dst);
    if (!v1)
    {
      v7 = __clz(__rbit32(~LODWORD(__dst[0])));
      if (v7)
      {
        v8 = 2 * v3;
        v24 = v7 + 1;
        v9 = v6 + 32;
        v10 = 1;
        v27 = 2 * v3;
        v28 = v4;
        v26 = v5;
        while (1)
        {
          if (v10 == 31)
          {
            goto LABEL_28;
          }

          v25 = v10;
          v11 = 2 << v10;
          v12 = (v11 >> 1) - 1;
          if (v12 <= v8)
          {
            break;
          }

LABEL_7:
          v10 = v25 + 1;
          if (v25 + 1 == v24)
          {
            return;
          }
        }

        v33 = v11;
        while (1)
        {
          while (*(v6 + 16) <= v12)
          {
LABEL_12:
            v13 = __CFADD__(v12, v11);
            v12 += v11;
            if (v13)
            {
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

            if (v12 > v8)
            {
              goto LABEL_7;
            }
          }

          memmove(__dst, (v9 + 136 * v12), 0x88uLL);
          if (sub_26BE58C10(__dst) == 1)
          {
            LODWORD(v11) = v33;
            goto LABEL_12;
          }

          v14 = v2;
          v41 = v12;
          MLS.NodeIndex.left.getter(&v34);
          if (v35)
          {
            goto LABEL_30;
          }

          v15 = v34;
          v41 = v12;
          MLS.NodeIndex.right.getter(&v34);
          if (v35)
          {
            goto LABEL_29;
          }

          v16 = v34;
          LOWORD(v34) = v4;
          v36 = v5;
          v37 = v14;
          v38 = v6;
          v40 = v16;
          v41 = v12;
          sub_26BE4EB68(&v41, &v40);
          v32 = v16;
          v18 = v17;
          v20 = v19;
          LOWORD(v34) = v4;
          v36 = v5;
          v37 = v14;
          v38 = v6;
          v40 = v15;
          v41 = v12;
          sub_26BE4EB68(&v41, &v40);
          v30 = v21;
          v31 = v22;
          LOWORD(v34) = v4;
          v36 = v5;
          v37 = v14;
          v38 = v6;
          v41 = v15;
          v29 = sub_26BE4F210(&v41, v18, v20);
          LOWORD(v34) = v4;
          v36 = v5;
          v37 = v14;
          v38 = v6;
          v41 = v32;
          v23 = sub_26BE4F210(&v41, v30, v31);
          sub_26BE00258(v30, v31);
          sub_26BE00258(v18, v20);
          if (((v29 | v23) & 1) == 0)
          {
            return;
          }

          LODWORD(v11) = v33;
          v13 = __CFADD__(v12, v33);
          v12 += v33;
          if (v13)
          {
            goto LABEL_25;
          }

          v2 = v14;
          v8 = v27;
          v5 = v26;
          v9 = v6 + 32;
          v4 = v28;
          if (v12 > v27)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }
}

_DWORD *MLS.TreeKEMPublicKey.hasLeaf(index:)(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = 2 * *result;
    return ((MLS.TreeKEMPublicKey.blankAt(index:)(&v1) & 1) == 0);
  }

  return result;
}

void sub_26BE5000C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 112);
  v18[6] = *(a1 + 96);
  v18[7] = v5;
  v19 = *(a1 + 128);
  v6 = *(a1 + 48);
  v18[2] = *(a1 + 32);
  v18[3] = v6;
  v7 = *(a1 + 80);
  v18[4] = *(a1 + 64);
  v18[5] = v7;
  v8 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v8;
  v9 = *(v2 + 24);
  v20 = xmmword_26C00BBD0;
  v21 = 0;
  sub_26BE7DD28(v18);
  v10 = v20;
  if (v3)
  {
    sub_26BE00258(v20, *(&v20 + 1));
    return;
  }

  v11 = *(&v20 + 1) >> 62;
  if ((*(&v20 + 1) >> 62) <= 1)
  {
    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = v20 >> 32;
LABEL_9:
    if (v12 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v11 == 2)
  {
    v12 = *(v20 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v13 = sub_26C00909C();
  v15 = v14;
  sub_26BE00258(v10, *(&v10 + 1));
  *&v18[0] = v9;

  v16 = MLS.RatchetTree.hasLeaf(leafData:)(&v20, v13, v15);

  sub_26BE00258(v13, v15);
  v17 = v20;
  if ((v16 & 1) == 0)
  {
    v17 = 0;
  }

  *a2 = v17;
  *(a2 + 4) = (v16 & 1) == 0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLS.TreeKEMPublicKey.truncate()()
{
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = v0;
    v4 = v2 - 1;
    if (v2 == 1)
    {
LABEL_13:
      v10 = *(v0 + 8);
      v11 = *(v0 + 16);
      v12 = *(v0 + 24);
      *__dst = *v0;
      v19 = v10;
      v20 = v11;
      v21 = v12;
      v22 = 2 * v4;

      v13 = MLS.TreeKEMPublicKey.blankAt(index:)(&v22);

      if (!v1)
      {
        if (v13)
        {

          *(v3 + 24) = MEMORY[0x277D84F90];
          *(v3 + 16) = 0;
        }

        else
        {
          v15 = v11 >> 1;
          if (v4 < v11 >> 1)
          {
            do
            {
              v16 = v15;
              v17 = sub_26BE55FBC(*(v12 + 16) - (*(v12 + 16) >> 1), v12);
              v12 = v17;
              v15 = v16 >> 1;
            }

            while (v4 < v16 >> 1);
            *(v3 + 16) = v16;
            *(v3 + 24) = v17;
          }
        }
      }
    }

    else
    {
      v5 = 2 * v2 - 2;
      while ((v4 & 0x80000000) == 0)
      {
        v6 = *(v0 + 16);
        v7 = v6 != 0;
        v8 = v6 - 1;
        if (!v7)
        {
          goto LABEL_22;
        }

        if (v8 < 0)
        {
          goto LABEL_23;
        }

        if (v5 > 2 * v8)
        {
          sub_26BE01654();
          swift_allocError();
          *v14 = 30;
          *(v14 + 8) = 0u;
          *(v14 + 24) = 0u;
          *(v14 + 40) = 0u;
          *(v14 + 56) = 0u;
          *(v14 + 72) = 0u;
          *(v14 + 88) = 0u;
          *(v14 + 104) = 0;
          *(v14 + 112) = 23;
          swift_willThrow();
          return;
        }

        v9 = *(v0 + 24);
        if (*(v9 + 16) <= v5 || (memmove(__dst, (v9 + 136 * v5 + 32), 0x88uLL), sub_26BE58C10(__dst) == 1))
        {
          *__dst = v4;
          sub_26BE476A8(__dst);
          if (v1)
          {
            return;
          }

          v5 -= 2;
          if (--v4)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }
  }
}

uint64_t sub_26BE50384(uint64_t result, uint64_t *a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v6 = 0;
  v7 = *(result + 24);
  v8 = v4 - 1;
  v9 = 2 * (v4 - 1);
  v10 = v7 + 32;
  v11 = 2 * v4;
  v37 = v9;
  v38 = v4 - 1;
  v39 = v7 + 32;
  v43 = 2 * v4;
  while (1)
  {
    if (v6 == 0x100000000)
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    if (v8 < 0)
    {
      goto LABEL_25;
    }

    if (v6 > v9)
    {
LABEL_20:
      sub_26BE01654();
      swift_allocError();
      v36 = 30;
LABEL_21:
      *v35 = v36;
      *(v35 + 8) = 0u;
      *(v35 + 24) = 0u;
      *(v35 + 40) = 0u;
      *(v35 + 56) = 0u;
      *(v35 + 72) = 0u;
      *(v35 + 88) = 0u;
      *(v35 + 104) = 0;
      *(v35 + 112) = 23;
      return swift_willThrow();
    }

    if (*(v7 + 16) > v6)
    {
      break;
    }

LABEL_5:
    v6 += 2;
    if (v11 == v6)
    {
      return result;
    }
  }

  v12 = (v10 + 136 * v6);
  memmove(__dst, v12, 0x88uLL);
  result = sub_26BE58C10(__dst);
  if (result == 1)
  {
LABEL_4:
    v11 = v43;
    goto LABEL_5;
  }

  v48[0] = *v12;
  v13 = v12[1];
  v14 = v12[2];
  v15 = v12[4];
  v48[3] = v12[3];
  v48[4] = v15;
  v48[1] = v13;
  v48[2] = v14;
  v16 = v12[5];
  v17 = v12[6];
  v18 = v12[7];
  v49 = *(v12 + 16);
  v48[6] = v17;
  v48[7] = v18;
  v48[5] = v16;
  memmove(v50, v12, 0x88uLL);
  if (sub_26BE58C10(v50) == 1)
  {
    goto LABEL_20;
  }

  v46[6] = v50[6];
  v46[7] = v50[7];
  v47 = v51;
  v46[2] = v50[2];
  v46[3] = v50[3];
  v46[4] = v50[4];
  v46[5] = v50[5];
  v46[0] = v50[0];
  v46[1] = v50[1];
  v19 = sub_26BE592C4(v46);
  v20 = sub_26BE13A3C(v46);
  if (v19 == 1)
  {
    sub_26BE01654();
    swift_allocError();
    v36 = 28;
    goto LABEL_21;
  }

  v42 = v3;
  v21 = *(v20 + 64);
  v22 = *a2;
  v44 = v21;
  MEMORY[0x28223BE20](v20);
  *(&v37 - 2) = &v44;
  *(&v37 - 1) = v22;
  v24 = (v23 + 63) >> 6;
  v25 = 8 * v24;
  v40 = v24;
  v41 = v26;
  if (v27 > 0xD)
  {
    sub_26BE2E1F0(v48, v45, &qword_28045E4C8, &unk_26C0112A0);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v29 = swift_slowAlloc();
      v33 = v42;
      v34 = sub_26BEBE818(v29, v40, sub_26BE5B278);
      v3 = v33;
      if (v33)
      {
        goto LABEL_27;
      }

      v32 = v34;

      MEMORY[0x26D69A4E0](v29, -1, -1);
      goto LABEL_3;
    }
  }

  else
  {
    isStackAllocationSafe = sub_26BE2E1F0(v48, v45, &qword_28045E4C8, &unk_26C0112A0);
  }

  v29 = &v37;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  bzero(&v37 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0), v25);
  v30 = v42;
  v31 = sub_26BEBD9CC((&v37 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0)), v40, v21, v22);
  v3 = v30;
  if (!v30)
  {
    v32 = v31;

LABEL_3:
    v10 = v39;
    *a2 = v32;
    result = sub_26BE2E258(v48, &qword_28045E4C8, &unk_26C0112A0);
    v9 = v37;
    v8 = v38;
    goto LABEL_4;
  }

  swift_willThrow();

  __break(1u);
LABEL_27:

  result = MEMORY[0x26D69A4E0](v29, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_26BE50778(uint64_t result, uint64_t *a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v6 = 0;
  v7 = *(result + 24);
  v8 = v4 - 1;
  v9 = 2 * (v4 - 1);
  v10 = v7 + 32;
  v11 = 2 * v4;
  v37 = v9;
  v38 = v4 - 1;
  v39 = v7 + 32;
  v43 = 2 * v4;
  while (1)
  {
    if (v6 == 0x100000000)
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    if (v8 < 0)
    {
      goto LABEL_25;
    }

    if (v6 > v9)
    {
LABEL_20:
      sub_26BE01654();
      swift_allocError();
      v36 = 30;
LABEL_21:
      *v35 = v36;
      *(v35 + 8) = 0u;
      *(v35 + 24) = 0u;
      *(v35 + 40) = 0u;
      *(v35 + 56) = 0u;
      *(v35 + 72) = 0u;
      *(v35 + 88) = 0u;
      *(v35 + 104) = 0;
      *(v35 + 112) = 23;
      return swift_willThrow();
    }

    if (*(v7 + 16) > v6)
    {
      break;
    }

LABEL_5:
    v6 += 2;
    if (v11 == v6)
    {
      return result;
    }
  }

  v12 = (v10 + 136 * v6);
  memmove(__dst, v12, 0x88uLL);
  result = sub_26BE58C10(__dst);
  if (result == 1)
  {
LABEL_4:
    v11 = v43;
    goto LABEL_5;
  }

  v48[0] = *v12;
  v13 = v12[1];
  v14 = v12[2];
  v15 = v12[4];
  v48[3] = v12[3];
  v48[4] = v15;
  v48[1] = v13;
  v48[2] = v14;
  v16 = v12[5];
  v17 = v12[6];
  v18 = v12[7];
  v49 = *(v12 + 16);
  v48[6] = v17;
  v48[7] = v18;
  v48[5] = v16;
  memmove(v50, v12, 0x88uLL);
  if (sub_26BE58C10(v50) == 1)
  {
    goto LABEL_20;
  }

  v46[6] = v50[6];
  v46[7] = v50[7];
  v47 = v51;
  v46[2] = v50[2];
  v46[3] = v50[3];
  v46[4] = v50[4];
  v46[5] = v50[5];
  v46[0] = v50[0];
  v46[1] = v50[1];
  v19 = sub_26BE592C4(v46);
  v20 = sub_26BE13A3C(v46);
  if (v19 == 1)
  {
    sub_26BE01654();
    swift_allocError();
    v36 = 28;
    goto LABEL_21;
  }

  v42 = v3;
  v21 = *(v20 + 72);
  v22 = *a2;
  v44 = v21;
  MEMORY[0x28223BE20](v20);
  *(&v37 - 2) = &v44;
  *(&v37 - 1) = v22;
  v24 = (v23 + 63) >> 6;
  v25 = 8 * v24;
  v40 = v24;
  v41 = v26;
  if (v27 > 0xD)
  {
    sub_26BE2E1F0(v48, v45, &qword_28045E4C8, &unk_26C0112A0);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v29 = swift_slowAlloc();
      v33 = v42;
      v34 = sub_26BEBE818(v29, v40, sub_26BE5B24C);
      v3 = v33;
      if (v33)
      {
        goto LABEL_27;
      }

      v32 = v34;

      MEMORY[0x26D69A4E0](v29, -1, -1);
      goto LABEL_3;
    }
  }

  else
  {
    isStackAllocationSafe = sub_26BE2E1F0(v48, v45, &qword_28045E4C8, &unk_26C0112A0);
  }

  v29 = &v37;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  bzero(&v37 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0), v25);
  v30 = v42;
  v31 = sub_26BEBD9F4((&v37 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0)), v40, v21, v22);
  v3 = v30;
  if (!v30)
  {
    v32 = v31;

LABEL_3:
    v10 = v39;
    *a2 = v32;
    result = sub_26BE2E258(v48, &qword_28045E4C8, &unk_26C0112A0);
    v9 = v37;
    v8 = v38;
    goto LABEL_4;
  }

  swift_willThrow();

  __break(1u);
LABEL_27:

  result = MEMORY[0x26D69A4E0](v29, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_26BE50B6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(result + 24);
    v6 = v3 - 1;
    v7 = (2 * (v3 - 1));
    v8 = v5 + 32;
    v9 = 2 * v3;
    v31 = v3 - 1;
    while (v4 != 0x100000000)
    {
      if (v6 < 0)
      {
        goto LABEL_17;
      }

      if (v4 > v7)
      {
LABEL_12:
        sub_26BE01654();
        swift_allocError();
        v29 = 30;
LABEL_13:
        *v28 = v29;
        *(v28 + 8) = 0u;
        *(v28 + 24) = 0u;
        *(v28 + 40) = 0u;
        *(v28 + 56) = 0u;
        *(v28 + 72) = 0u;
        *(v28 + 88) = 0u;
        *(v28 + 104) = 0;
        *(v28 + 112) = 23;
        return swift_willThrow();
      }

      if (*(v5 + 16) > v4)
      {
        v10 = (v8 + 136 * v4);
        memmove(__dst, v10, 0x88uLL);
        result = sub_26BE58C10(__dst);
        if (result != 1)
        {
          v36[0] = *v10;
          v11 = v10[1];
          v12 = v10[2];
          v13 = v10[4];
          v36[3] = v10[3];
          v36[4] = v13;
          v36[1] = v11;
          v36[2] = v12;
          v14 = v10[5];
          v15 = v10[6];
          v16 = v10[7];
          v37 = *(v10 + 16);
          v36[6] = v15;
          v36[7] = v16;
          v36[5] = v14;
          memmove(v38, v10, 0x88uLL);
          if (sub_26BE58C10(v38) == 1)
          {
            goto LABEL_12;
          }

          v34[6] = v38[6];
          v34[7] = v38[7];
          v35 = v39;
          v34[2] = v38[2];
          v34[3] = v38[3];
          v34[4] = v38[4];
          v34[5] = v38[5];
          v34[0] = v38[0];
          v34[1] = v38[1];
          v17 = sub_26BE592C4(v34);
          v18 = sub_26BE13A3C(v34);
          if (v17 == 1)
          {
            sub_26BE01654();
            swift_allocError();
            v29 = 28;
            goto LABEL_13;
          }

          v19 = v5;
          v20 = v7;
          v21 = v8;
          v22 = *v18;
          v23 = v18[1];
          v24 = v18[2];
          v25 = v18[3];
          sub_26BE2E1F0(v36, &v32, &qword_28045E4C8, &unk_26C0112A0);
          sub_26BE00608(v22, v23);
          sub_26BE00608(v24, v25);
          sub_26BF7532C(&v32, v24, v25);
          sub_26BE00258(v32, v33);
          v26 = v22;
          v8 = v21;
          v7 = v20;
          v5 = v19;
          v6 = v31;
          v27 = v23;
          v9 = v30;
          sub_26BF7532C(&v32, v26, v27);
          sub_26BE00258(v32, v33);
          result = sub_26BE2E258(v36, &qword_28045E4C8, &unk_26C0112A0);
        }
      }

      v4 += 2;
      if (v9 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BE50E20(uint64_t result, uint64_t *a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v6 = 0;
  v7 = *(result + 24);
  v8 = v4 - 1;
  v9 = 2 * (v4 - 1);
  v10 = v7 + 32;
  v11 = 2 * v4;
  v37 = v9;
  v38 = v4 - 1;
  v39 = v7 + 32;
  v43 = 2 * v4;
  while (1)
  {
    if (v6 == 0x100000000)
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    if (v8 < 0)
    {
      goto LABEL_25;
    }

    if (v6 > v9)
    {
LABEL_20:
      sub_26BE01654();
      swift_allocError();
      v36 = 30;
LABEL_21:
      *v35 = v36;
      *(v35 + 8) = 0u;
      *(v35 + 24) = 0u;
      *(v35 + 40) = 0u;
      *(v35 + 56) = 0u;
      *(v35 + 72) = 0u;
      *(v35 + 88) = 0u;
      *(v35 + 104) = 0;
      *(v35 + 112) = 23;
      return swift_willThrow();
    }

    if (*(v7 + 16) > v6)
    {
      break;
    }

LABEL_5:
    v6 += 2;
    if (v11 == v6)
    {
      return result;
    }
  }

  v12 = (v10 + 136 * v6);
  memmove(__dst, v12, 0x88uLL);
  result = sub_26BE58C10(__dst);
  if (result == 1)
  {
LABEL_4:
    v11 = v43;
    goto LABEL_5;
  }

  v48[0] = *v12;
  v13 = v12[1];
  v14 = v12[2];
  v15 = v12[4];
  v48[3] = v12[3];
  v48[4] = v15;
  v48[1] = v13;
  v48[2] = v14;
  v16 = v12[5];
  v17 = v12[6];
  v18 = v12[7];
  v49 = *(v12 + 16);
  v48[6] = v17;
  v48[7] = v18;
  v48[5] = v16;
  memmove(v50, v12, 0x88uLL);
  if (sub_26BE58C10(v50) == 1)
  {
    goto LABEL_20;
  }

  v46[6] = v50[6];
  v46[7] = v50[7];
  v47 = v51;
  v46[2] = v50[2];
  v46[3] = v50[3];
  v46[4] = v50[4];
  v46[5] = v50[5];
  v46[0] = v50[0];
  v46[1] = v50[1];
  v19 = sub_26BE592C4(v46);
  v20 = sub_26BE13A3C(v46);
  if (v19 == 1)
  {
    sub_26BE01654();
    swift_allocError();
    v36 = 28;
    goto LABEL_21;
  }

  v42 = v3;
  v21 = *(v20 + 80);
  v22 = *a2;
  v44 = v21;
  MEMORY[0x28223BE20](v20);
  *(&v37 - 2) = &v44;
  *(&v37 - 1) = v22;
  v24 = (v23 + 63) >> 6;
  v25 = 8 * v24;
  v40 = v24;
  v41 = v26;
  if (v27 > 0xD)
  {
    sub_26BE2E1F0(v48, v45, &qword_28045E4C8, &unk_26C0112A0);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v29 = swift_slowAlloc();
      v33 = v42;
      v34 = sub_26BEBE818(v29, v40, sub_26BE5B220);
      v3 = v33;
      if (v33)
      {
        goto LABEL_27;
      }

      v32 = v34;

      MEMORY[0x26D69A4E0](v29, -1, -1);
      goto LABEL_3;
    }
  }

  else
  {
    isStackAllocationSafe = sub_26BE2E1F0(v48, v45, &qword_28045E4C8, &unk_26C0112A0);
  }

  v29 = &v37;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  bzero(&v37 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0), v25);
  v30 = v42;
  v31 = sub_26BEBDB74((&v37 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0)), v40, v21, v22);
  v3 = v30;
  if (!v30)
  {
    v32 = v31;

LABEL_3:
    v10 = v39;
    *a2 = v32;
    result = sub_26BE2E258(v48, &qword_28045E4C8, &unk_26C0112A0);
    v9 = v37;
    v8 = v38;
    goto LABEL_4;
  }

  swift_willThrow();

  __break(1u);
LABEL_27:

  result = MEMORY[0x26D69A4E0](v29, -1, -1);
  __break(1u);
  return result;
}