uint64_t sub_1AEB421AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB42298()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB422DC()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB42314@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB423CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB42428(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEB424A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB424DC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB42530()
{
  outlined consume of Data._Representation(v0[2], v0[3]);

  if (v0[5])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB42594@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 88);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB425E4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB42644()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB4268C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB426CC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEB427FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB428A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB4294C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB42984()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB429C4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1AEB42AE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB42B1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB42B58()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 sub_1AEB42BC4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEB42BD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB42C24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB42C5C()
{
  outlined consume of ActivitySession.State(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1AEB42C94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 identifier];
  *a2 = result;
  return result;
}

uint64_t sub_1AEB42CD8()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB42D10()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB42D58@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB42DBC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x128);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1AEB42E28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB42EF8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x150))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB42FC0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed (@guaranteed TUConversationActivitySession, @guaranteed ActivitySessionManager) -> (@owned ActivitySession)partial apply;
  a2[1] = result;
  return result;
}

uint64_t sub_1AEB4313C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D8))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed (@guaranteed ActivitySessionManager, @in_guaranteed UUID, @unowned UInt64) -> (@owned PubSubTopicsObserver)partial apply;
  a2[1] = result;
  return result;
}

uint64_t sub_1AEB431DC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB43214()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB43294()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB432CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB43344()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB4337C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB433B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB43410(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEB43484@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB43548()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB435A0()
{
  swift_unknownObjectRelease();

  outlined consume of BackgroundSession.State(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB435F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB43638()
{
  v1 = *(type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB43720()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB43768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
  swift_beginAccess();
  return outlined init with copy of UserNotificationCenter(v3 + v4, a2);
}

uint64_t sub_1AEB437C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB43824(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_1AEB438B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1AEB43920(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  BackgroundSession.session.setter(v1);
}

uint64_t sub_1AEB439B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3 + v4, a2, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
}

uint64_t sub_1AEB43A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEB43A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEB43B38()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AEB43B90()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB43BC8()
{
  v1 = *(type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB43CD0()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB43D44()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AEB43E34()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB43F18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB43F50()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB43F98()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB43FD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB44010()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB44050()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB44098()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB440E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB44120()
{

  outlined consume of Data._Representation(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AEB44178()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB441C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB441FC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB442B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionHostConnection.__isAppProcess);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1AEB44310()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB44348()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB44380()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB443C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB44464@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PresenceSessionInterface.identity;
  return result;
}

uint64_t sub_1AEB444B0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PresenceSessionInterface.identity = v1;
  return result;
}

uint64_t sub_1AEB445D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB4461C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB44664@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB4471C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB44754()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB447C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB44820(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);

  return v4(v2, v3);
}

uint64_t sub_1AEB4489C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB44938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB44984(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);
  outlined copy of ActivitySession.State(*a1);
  return v3(v2);
}

uint64_t sub_1AEB449E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB44A2C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 192);

  return v2(v3);
}

uint64_t sub_1AEB44A80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB44ACC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 216);

  return v2(v3);
}

uint64_t sub_1AEB44B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PluginEndpoint(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AEB44BE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PluginEndpoint(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AEB44C9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB44CDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB44D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB44D90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB44DEC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1AEB44F10()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB44F60(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

char *sub_1AEB450F0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    *(result + 1) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1AEB4527C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AEB452F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AEB45370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1AEB45428(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB454F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB45530()
{

  outlined consume of Data._Representation(*(v0 + 40), *(v0 + 48));

  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AEB45638()
{
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AEB45688()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB456C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB45710()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB45754@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 144);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB457A4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB45864@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1AEB45878(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 24) = *result;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_1AEB4588C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB458C4()
{

  outlined consume of PubSubTopic.ClosedReason(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1AEB45908()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB45950()
{
  v1 = (type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB45A48()
{
  v1 = (type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB45B40()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1AEB45B8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB45BC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB45BFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB45C34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB45C74()
{
  v1 = (type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  MEMORY[0x1B27121C0](v0 + v3 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB45D64()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB45E28@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB45EDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB45F38(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE0);

  return v2(v3);
}

uint64_t sub_1AEB4605C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB460C0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x110);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEB46130@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB46194(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x128);

  return v2(v3);
}

uint64_t sub_1AEB46200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEB4626C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEB462DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB46330()
{
  v1 = (type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  MEMORY[0x1B27121C0](v0 + v3 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB46418()
{
  v1 = (type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  MEMORY[0x1B27121C0](v0 + v3 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB46540()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB46580()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB465BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB46608()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB4664C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB46710()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEB467EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1AEB468E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB4694C(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x190);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEB469C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB46A2C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A8);

  return v2(v3);
}

uint64_t sub_1AEB46B74@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB46BD8(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D8);

  return v2(v3);
}

uint64_t sub_1AEB46C44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB46C80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB46CF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB46D40(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_1AEB46DA8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB46DE0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static GroupActivityAssociation.supportsSecureCoding;
  return result;
}

uint64_t sub_1AEB46E2C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static GroupActivityAssociation.supportsSecureCoding = v1;
  return result;
}

id sub_1AEB46E74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCloned];
  *a2 = result;
  return result;
}

uint64_t sub_1AEB46EA8()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB46EE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB46F3C(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEB46FB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB46FFC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 112);

  return v2(v3);
}

uint64_t sub_1AEB47050@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB470A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB470EC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t sub_1AEB47150()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB47188@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB47240@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB4729C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);

  return v2(v3);
}

uint64_t sub_1AEB473D0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNContactStoreConfiguration) -> (@owned TUContactsDataSource);
  a2[1] = result;
  return result;
}

uint64_t sub_1AEB4746C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB474A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB474E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB4751C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB47568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMd, &_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB47638(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for CheckedContinuation();
    v8 = type metadata accessor for Optional();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1AEB47700(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for CheckedContinuation();
    v7 = type metadata accessor for Optional();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB477BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB477F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB47844(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t sub_1AEB47898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_1AEB478E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB47934(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 136);

  return v2(v3);
}

uint64_t sub_1AEB47988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB479E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB47A48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB47A94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CopresenceCore9Histogram_totalCount;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1AEB47AE8@<X0>(uint64_t *a1@<X8>)
{
  result = DarwinNotification.state.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AEB47B14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return notify_set_state(*(v3 + 32), v2);
}

uint64_t sub_1AEB47B70()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB47BA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB47BE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB47C40(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB47CD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB47D68()
{

  if (*(v0 + 144))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1AEB47DC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB47E00()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_1AEB47E90()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB47EC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB47F08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB47F64(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEB47FCC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB48028(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE8);

  return v2(v3);
}

uint64_t sub_1AEB480D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB48124(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 200);

  return v2(v3);
}

uint64_t sub_1AEB48178()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB481B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return outlined copy of Data?(v4, v5);
}

uint64_t sub_1AEB48214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1AEB482DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_1AEB483A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB48400(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEB48474()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB484B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB484FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 120);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB4854C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB485A4@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1AEB485EC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 128) = v2;
  return result;
}

uint64_t sub_1AEB48630@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 176);
}

uint64_t sub_1AEB48680@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 184);
}

uint64_t sub_1AEB486D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB48710@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result & 1;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id CPDefaultLog(uint64_t a1)
{
  if (CPDefaultLog_onceToken != -1)
  {
    CPDefaultLog_cold_1();
  }

  v2 = CPDefaultLog_CPDefaultLog;

  return v2;
}

uint64_t __CPDefaultLog_block_invoke()
{
  CPDefaultLog_CPDefaultLog = os_log_create(CPLoggingSubsystem, "Default");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *stateNameForPGBackgroundPIPAuthorizationState(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unknown state";
  }

  else
  {
    return off_1E7A45BE8[a1];
  }
}

id getGKDaemonProxyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGKDaemonProxyClass_softClass;
  v7 = getGKDaemonProxyClass_softClass;
  if (!getGKDaemonProxyClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGKDaemonProxyClass_block_invoke;
    v3[3] = &unk_1E7A45C70;
    v3[4] = &v4;
    __getGKDaemonProxyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AEB4C9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id cpGameCenterLog(uint64_t a1)
{
  if (cpGameCenterLog___once != -1)
  {
    cpGameCenterLog_cold_1();
  }

  v2 = cpGameCenterLog__log;

  return v2;
}

Class __getGKDaemonProxyClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!GameCenterFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __GameCenterFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A45C90;
    v6 = 0;
    GameCenterFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (GameCenterFoundationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("GKDaemonProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGKDaemonProxyClass_block_invoke_cold_1();
  }

  getGKDaemonProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GameCenterFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  GameCenterFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __cpGameCenterLog_block_invoke()
{
  cpGameCenterLog__log = os_log_create(CPLoggingSubsystem, "CPGameCenterUtilities");

  return MEMORY[0x1EEE66BB8]();
}

Swift::Int ActivitySession.Errors.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivitySession.Errors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivitySession.Errors(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v2);
  return Hasher._finalize()();
}

uint64_t ActivitySession.State.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    return 0x6164696C61766E49;
  }

  if (v2 == 1)
  {
    return 0x664F6465646E6148;
  }

  v4 = 0x64656E696F4ALL;
  if (v1 != 0x8000000000000008)
  {
    v4 = 1952867660;
  }

  if (v1 == 0x8000000000000000)
  {
    return 0x676E6974696157;
  }

  else
  {
    return v4;
  }
}

uint64_t static ActivitySession.State.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (v3 >> 62)
    {
      goto LABEL_22;
    }

    v7 = *(v2 + 24);
    v8 = *(v3 + 24);
    if (v7)
    {
      if (v8)
      {
        if (*(v2 + 16) != *(v3 + 16) || v7 != v8)
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of ActivitySession.State(v3);
          outlined copy of ActivitySession.State(v2);
          outlined consume of ActivitySession.State(v2);
          outlined consume of ActivitySession.State(v3);
          if ((v10 & 1) == 0)
          {
LABEL_24:
            v6 = 0;
            return v6 & 1;
          }

LABEL_32:
          v6 = 1;
          return v6 & 1;
        }

        outlined copy of ActivitySession.State(v3);
        outlined copy of ActivitySession.State(v2);
        goto LABEL_30;
      }

      outlined copy of ActivitySession.State(v3);
      outlined copy of ActivitySession.State(v2);
    }

    else
    {
      outlined copy of ActivitySession.State(v3);
      outlined copy of ActivitySession.State(v2);
      if (!v8)
      {
        swift_bridgeObjectRelease_n();
LABEL_30:
        outlined consume of ActivitySession.State(v2);
        v11 = v3;
LABEL_31:
        outlined consume of ActivitySession.State(v11);
        goto LABEL_32;
      }
    }

    goto LABEL_23;
  }

  if (v4 != 1)
  {
    if (v2 == 0x8000000000000000)
    {
      if (v3 != 0x8000000000000000)
      {
        goto LABEL_22;
      }

      outlined consume of ActivitySession.State(0x8000000000000000);
      v11 = 0x8000000000000000;
    }

    else if (v2 == 0x8000000000000008)
    {
      if (v3 != 0x8000000000000008)
      {
        goto LABEL_22;
      }

      outlined consume of ActivitySession.State(0x8000000000000008);
      v11 = 0x8000000000000008;
    }

    else
    {
      if (v3 != 0x8000000000000010)
      {
        goto LABEL_22;
      }

      outlined consume of ActivitySession.State(0x8000000000000010);
      v11 = 0x8000000000000010;
    }

    goto LABEL_31;
  }

  if (v3 >> 62 != 1)
  {
LABEL_22:
    outlined copy of ActivitySession.State(*a2);
    outlined copy of ActivitySession.State(v2);
LABEL_23:
    outlined consume of ActivitySession.State(v2);
    outlined consume of ActivitySession.State(v3);
    goto LABEL_24;
  }

  v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = v5;
  outlined copy of ActivitySession.State(v3);
  outlined copy of ActivitySession.State(v2);
  v6 = static ActivitySession.State.== infix(_:_:)(&v14, &v13);
  outlined consume of ActivitySession.State(v2);
  outlined consume of ActivitySession.State(v3);
  return v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ActivitySession.State()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    return 0x6164696C61766E49;
  }

  if (v2 == 1)
  {
    return 0x664F6465646E6148;
  }

  v4 = 0x64656E696F4ALL;
  if (v1 != 0x8000000000000008)
  {
    v4 = 1952867660;
  }

  if (v1 == 0x8000000000000000)
  {
    return 0x676E6974696157;
  }

  else
  {
    return v4;
  }
}

char *ActivitySession.Capabilities.pluginNames.getter()
{
  if ((*v0 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v4 = &v1[16 * v3];
  *(v4 + 4) = 0xD000000000000010;
  *(v4 + 5) = 0x80000001AEE2EFD0;
  return v1;
}

uint64_t *ActivitySession.Capabilities.attachments.unsafeMutableAddressor()
{
  if (one-time initialization token for attachments != -1)
  {
    swift_once();
  }

  return &static ActivitySession.Capabilities.attachments;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t ActivitySession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPActivitySession_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for ActivitySession.activityInterval : ActivitySession(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for DateInterval();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x178))(v6);
}

uint64_t ActivitySession.activityInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPActivitySession_activityInterval;
  swift_beginAccess();
  v4 = type metadata accessor for DateInterval();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ActivitySession.activityInterval.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_activityInterval;
  swift_beginAccess();
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path getter for ActivitySession.terminatingHandle : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.terminatingHandle : ActivitySession(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x190);
  v4 = *a1;
  return v3(v2);
}

void *ActivitySession.terminatingHandle.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_terminatingHandle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ActivitySession.terminatingHandle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_terminatingHandle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for ActivitySession.isFirstJoin : ActivitySession@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result & 1;
  return result;
}

uint64_t ActivitySession.isFirstJoin.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_isFirstJoin;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ActivitySession.isFirstJoin.setter(char a1)
{
  v3 = OBJC_IVAR___CPActivitySession_isFirstJoin;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL ActivitySession.isPermittedToJoin.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F8))(&v6);
  if (v6 >> 62 == 1)
  {
    v2 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v3 = v2 >> 62;
    v4 = (v2 & 0x3FFFFFFFFFFFFFF7) == 0;
    v1 = v3 == 2 && v4;
    goto LABEL_9;
  }

  if (v6 >> 62 != 2 || (v6 | 8) != 0x8000000000000008)
  {
    v1 = 0;
LABEL_9:
    outlined consume of ActivitySession.State(v6);
    return v1;
  }

  return 1;
}

uint64_t ActivitySession.persistentSceneIdentifier.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))(v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  BidirectionalCollection.last.getter();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v2;
}

uint64_t ActivitySession.persistentSceneIdentifiers.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator);
  if (v3)
  {
    v4 = atomic_load((v3 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch));
    if (v4 == -1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v5 = [*(v3 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager) scenesInBranchWithIndex_];
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v10 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    *&v8 = v6;
    outlined init with take of ContiguousBytes(&v8, v11);
    return outlined init with take of ContiguousBytes(v11, a1);
  }

  else
  {
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    result = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    a1[4] = result;
    *a1 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t ActivitySession.primarySceneAssociationIdentifier.getter()
{
  if (!*(v0 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator))
  {
    return 0;
  }

  v1 = ActivitySession.SceneAssociationCoordinator.associatedBranchAppProvidedAssociation.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = *&v1[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID];
  v3 = v1;

  return v2;
}

uint64_t ActivitySession.didAssociateScene.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator);
  if (!v1)
  {
    return 0;
  }

  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  v3 = v1;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

void *ActivitySession.sceneAssociationCoordinator.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator);
  v2 = v1;
  return v1;
}

uint64_t key path getter for ActivitySession.persistentSceneIsEligibleForAutoClose : ActivitySession@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))();
  *a2 = result & 1;
  return result;
}

Swift::Void __swiftcall ActivitySession.sessionChanged()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR___CPActivitySession_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_1AEB26000, v9, v10, "%@ notifying manager of change", v11, 0xCu);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v8) + 0x3D8))())
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 72))(v8, ObjectType, v15);
    swift_unknownObjectRelease();
  }
}

uint64_t ActivitySession.persistentSceneIsEligibleForAutoClose.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_persistentSceneIsEligibleForAutoClose;
  swift_beginAccess();
  return *(v0 + v1);
}

void ActivitySession.persistentSceneIsEligibleForAutoClose.setter(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR___CPActivitySession_persistentSceneIsEligibleForAutoClose;
  swift_beginAccess();
  v8 = *(v1 + v7);
  *(v1 + v7) = a1;
  v9 = *(v1 + OBJC_IVAR___CPActivitySession_queue);
  *v6 = v9;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v9)
  {
    if (v8 != *(v1 + v7))
    {
      ActivitySession.sessionChanged()();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t key path getter for ActivitySession.audioSessionID : ActivitySession@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t ActivitySession.audioSessionID.getter()
{
  v1 = (v0 + OBJC_IVAR___CPActivitySession_audioSessionID);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t ActivitySession.audioSessionID.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___CPActivitySession_audioSessionID;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t key path getter for ActivitySession.externalParticipants : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.externalParticipants : ActivitySession(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x218);

  return v2(v3);
}

uint64_t key path setter for ActivitySession.domainAssertion : ActivitySession(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMd, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v8 - v5, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMd, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x230))(v6);
}

uint64_t ActivitySession.domainAssertion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPActivitySession_domainAssertion;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, a1, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMd, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMR);
}

uint64_t ActivitySession.domainAssertion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_domainAssertion;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(a1, v1 + v3, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMd, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMR);
  return swift_endAccess();
}

uint64_t key path getter for ActivitySession.distributionCount : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x258))();
  *a2 = result;
  return result;
}

uint64_t ActivitySession.distributionCount.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_distributionCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ActivitySession.distributionCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_distributionCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void ActivitySession.changeStatusForExternalParticipants(updatedParticipants:)(uint64_t a1)
{
  v2 = v1;
  v57 = type metadata accessor for DispatchPredicate();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = (v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TUExternalParticipant();
    lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUExternalParticipant and conformance NSObject, MEMORY[0x1E69D8A28], MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    a1 = v68[4];
    v5 = v68[5];
    v7 = v68[6];
    v6 = v68[7];
    v8 = v68[8];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v6 = 0;
  }

  v54[1] = v7;
  v12 = (v7 + 64) >> 6;
  v61 = v2;
  v60 = a1;
  v59 = v5;
  v58 = v12;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v6;
  v14 = v8;
  v15 = v6;
  if (v8)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_38;
    }

    while (1)
    {
      v66 = v17;
      v64 = v16;
      v19 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x210))();
      v20 = v19;
      v63 = v15;
      if ((v19 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        type metadata accessor for TUExternalParticipant();
        lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUExternalParticipant and conformance NSObject, MEMORY[0x1E69D8A28], MEMORY[0x1E69E81B8]);
        Set.Iterator.init(_cocoa:)();
        v20 = v68[9];
        v21 = v68[10];
        v22 = v68[11];
        v23 = v68[12];
        v24 = v68[13];
      }

      else
      {
        v23 = 0;
        v25 = -1 << *(v19 + 32);
        v21 = v19 + 56;
        v22 = ~v25;
        v26 = -v25;
        v27 = v26 < 64 ? ~(-1 << v26) : -1;
        v24 = v27 & *(v19 + 56);
      }

      v62 = v22;
      v28 = (v22 + 64) >> 6;
      if ((v20 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v34 = __CocoaSet.Iterator.next()();
        if (!v34)
        {
          goto LABEL_34;
        }

        v67 = v34;
        type metadata accessor for TUExternalParticipant();
        swift_dynamicCast();
        v33 = v68[0];
        v31 = v23;
        v32 = v24;
        if (!v68[0])
        {
          goto LABEL_34;
        }

LABEL_31:
        v65 = v24;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v35 = [v33 identifier];
        v36 = [v66 identifier];
        v37 = static NSObject.== infix(_:_:)();

        if (v37)
        {
          break;
        }

        v23 = v31;
        v24 = v32;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }
      }

      v2 = v61;
      v38 = *((*MEMORY[0x1E69E7D40] & *v61) + 0x220);
      v39 = v38(v68);

      v39(v68, 0);
      v40 = v66;
      v41 = v38(v68);
      specialized Set._Variant.insert(_:)(&v67, v40);

      v41(v68, 0);
      outlined consume of Set<String>.Iterator._Variant(v20);
      v6 = v63;
      v8 = v64;
LABEL_35:
      a1 = v60;
      v5 = v59;
      v12 = v58;
      if ((v60 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v18 = __CocoaSet.Iterator.next()();
      if (v18)
      {
        v67 = v18;
        type metadata accessor for TUExternalParticipant();
        swift_dynamicCast();
        v17 = v68[0];
        v15 = v6;
        v16 = v8;
        if (v68[0])
        {
          continue;
        }
      }

      goto LABEL_38;
    }

LABEL_23:
    v29 = v23;
    v30 = v24;
    v31 = v23;
    if (!v24)
    {
      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31 >= v28)
        {
          goto LABEL_34;
        }

        v30 = *(v21 + 8 * v31);
        ++v29;
        if (v30)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_27:
    v32 = (v30 - 1) & v30;
    v33 = *(*(v20 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (v33)
    {
      goto LABEL_31;
    }

LABEL_34:
    outlined consume of Set<String>.Iterator._Variant(v20);

    v6 = v63;
    v8 = v64;
    v2 = v61;
    goto LABEL_35;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_44;
    }

    if (v15 >= v12)
    {
      break;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

LABEL_38:
  outlined consume of Set<String>.Iterator._Variant(a1);
  v42 = *(v2 + OBJC_IVAR___CPActivitySession_queue);
  v43 = v55;
  *v55 = v42;
  v44 = v56;
  v45 = v57;
  (*(v56 + 104))(v43, *MEMORY[0x1E69E8020], v57);
  v46 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v47 = (*(v44 + 8))(v43, v45);
  if ((v42 & 1) == 0)
  {
    goto LABEL_45;
  }

  v48 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x408))(v47);
  if (!v48)
  {
    goto LABEL_42;
  }

  v49 = v48;
  v50 = [*(v48 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
  if (!swift_dynamicCast())
  {
LABEL_46:
    __break(1u);
    return;
  }

  v51 = v67;

  v52 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x210))();
  specialized _copyCollectionToContiguousArray<A>(_:)(v52, specialized Sequence._copySequenceContents(initializing:));

  type metadata accessor for TUExternalParticipant();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v51 setExternalParticipants_];

  swift_unknownObjectRelease();
LABEL_42:
  ActivitySession.sessionChanged()();
}

uint64_t key path getter for ActivitySession.applicationState : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A8))();
  *a2 = result;
  return result;
}

uint64_t ActivitySession.applicationState.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_applicationState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ActivitySession.applicationState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_applicationState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *key path getter for ActivitySession.capabilities : ActivitySession@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2C0))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for ActivitySession.capabilities : ActivitySession(uint64_t *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C8))(&v4);
}

uint64_t ActivitySession.capabilities.didset()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR___CPActivitySession_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2048;
    v13 = OBJC_IVAR___CPActivitySession_capabilities;
    swift_beginAccess();
    *(v11 + 14) = *&v8[v13];
    _os_log_impl(&dword_1AEB26000, v9, v10, "%@ updated capabilities to %ld", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  else
  {
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x3D8))();
  if (result)
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 168))(v8, ObjectType, v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ActivitySession.capabilities.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___CPActivitySession_capabilities;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ActivitySession.capabilities.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___CPActivitySession_capabilities;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return ActivitySession.capabilities.didset();
}

uint64_t (*ActivitySession.capabilities.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ActivitySession.capabilities.modify;
}

uint64_t ActivitySession.capabilities.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return ActivitySession.capabilities.didset();
  }

  return result;
}

uint64_t key path getter for ActivitySession.reportDictionary : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.reportDictionary : ActivitySession(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2E0);

  return v2(v3);
}

uint64_t ActivitySession.externalParticipants.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void ActivitySession.logDurationMetric(_:)()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x388))();
  v2 = [v1 activity];

  v3 = [v2 metadata];
  if (v3)
  {
    v4 = [v3 context];

    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AEE07B10;
      strcpy((inited + 32), "activity_type");
      *(inited + 46) = -4864;
      v6 = [v4 analyticsIdentifier];
      if (!v6)
      {
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = MEMORY[0x1B270FF70](v7);
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

      *(inited + 48) = v8;
      *(inited + 56) = 0x6E6F697461727564;
      *(inited + 64) = 0xE800000000000000;
      DateInterval.duration.getter();
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
      swift_arrayDestroy();
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Log.default);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        aBlock[0] = v15;
        *v14 = 136315394;
        *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001AEE2EFF0, aBlock);
        *(v14 + 12) = 2080;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSObjectCGMd, &_sSDySSSo8NSObjectCGMR);
        v16 = String.init<A>(reflecting:)();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, aBlock);

        *(v14 + 14) = v18;
        _os_log_impl(&dword_1AEB26000, v12, v13, "Logged coreanalytics event %s %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v15, -1, -1);
        MEMORY[0x1B27120C0](v14, -1, -1);
      }

      v19 = MEMORY[0x1B270FF70](0xD000000000000028, 0x80000001AEE2EFF0);
      v20 = swift_allocObject();
      *(v20 + 16) = v10;
      aBlock[4] = partial apply for closure #1 in ActivitySession.logDurationMetric(_:);
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      aBlock[3] = &block_descriptor;
      v21 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v21);
    }
  }
}

void *key path getter for ActivitySession.state : ActivitySession@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for ActivitySession.state : ActivitySession(unint64_t *a1, void **a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x300);
  outlined copy of ActivitySession.State(v5);
  return v3(&v5);
}

void ActivitySession.state.didset(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v93 - v5;
  v103 = type metadata accessor for DateInterval();
  v7 = *(v103 - 8);
  v8 = MEMORY[0x1EEE9AC00](v103);
  v101 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v93 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v100 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v93 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  v21 = *(v2 + OBJC_IVAR___CPActivitySession_queue);
  *v19 = v21;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v23 = (*(v17 + 8))(v19, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v105 = v7;
  v108[0] = v20;
  v107 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x2F8);
  v107(v110, v23);
  v24 = v110[0];
  v109 = v110[0];
  v25 = static ActivitySession.State.== infix(_:_:)(v108, &v109);
  outlined consume of ActivitySession.State(v24);
  if (v25)
  {
    if (one-time initialization token for default == -1)
    {
LABEL_4:
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Log.default);
      v27 = v2;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v2;
        v32 = v27;
        _os_log_impl(&dword_1AEB26000, v28, v29, "%@ dropping state update since value is the same", v30, 0xCu);
        outlined destroy of NSObject?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27120C0](v31, -1, -1);
        MEMORY[0x1B27120C0](v30, -1, -1);
      }

      return;
    }

LABEL_52:
    swift_once();
    goto LABEL_4;
  }

  v99 = v11;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.default);
  v34 = v2;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v97 = v6;
  v98 = v12;
  v104 = v20;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v108[0] = v40;
    *v38 = 138412546;
    *(v38 + 4) = v34;
    *v39 = v2;
    *(v38 + 12) = 2080;
    v41 = v34;
    (v107)(v110);
    v109 = v110[0];
    v42 = String.init<A>(reflecting:)();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v108);

    *(v38 + 14) = v44;
    _os_log_impl(&dword_1AEB26000, v35, v36, "%@ changed to state: %s", v38, 0x16u);
    outlined destroy of NSObject?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v45 = v39;
    v20 = v104;
    MEMORY[0x1B27120C0](v45, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1B27120C0](v40, -1, -1);
    MEMORY[0x1B27120C0](v38, -1, -1);
  }

  v46 = MEMORY[0x1E69E7D40];
  v47 = *((*MEMORY[0x1E69E7D40] & *v34) + 0x408);
  v48 = v47();
  if (v48)
  {
    v49 = v48;
    v50 = [*(v48 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
    if (!swift_dynamicCast())
    {
      __break(1u);
      return;
    }

    v51 = v110[0];

    (v107)(v108);
    if (v108[0] >> 62)
    {
      if (v108[0] >> 62 == 1)
      {
        outlined consume of ActivitySession.State(v108[0]);
        v52 = 4;
      }

      else if (v108[0] == 0x8000000000000000)
      {
        v52 = 0;
      }

      else if (v108[0] == 0x8000000000000008)
      {
        v52 = 1;
      }

      else
      {
        v52 = 5;
      }
    }

    else
    {
      outlined consume of ActivitySession.State(v108[0]);
      v52 = 2;
    }

    [v51 setStateWithState:v52 error:0];
    v48 = swift_unknownObjectRelease();
  }

  v107(v110, v48);
  if ((v110[0] & 0x8000000000000000) != 0)
  {
    if (v110[0] == 0x8000000000000000)
    {
      goto LABEL_26;
    }

    if (v110[0] == 0x8000000000000008)
    {
      Date.init()();
      v92 = (*((*v46 & *v34) + 0x180))(v108);
      DateInterval.start.setter();
      v92(v108, 0);
      goto LABEL_26;
    }
  }

  else
  {
    outlined consume of ActivitySession.State(v110[0]);
  }

  (*((*v46 & *v34) + 0x410))(0);
LABEL_26:
  v108[0] = v20;
  v110[0] = 0x8000000000000008;
  if ((static ActivitySession.State.== infix(_:_:)(v108, v110) & 1) == 0)
  {
    (v107)(v108);
    v53 = v108[0];
    v109 = 0x8000000000000008;
    v110[0] = v108[0];
    v54 = static ActivitySession.State.== infix(_:_:)(v110, &v109);
    v55 = outlined consume of ActivitySession.State(v53);
    if (v54)
    {
      v56 = (v47)(v55);
      if (v56)
      {
        v57 = v56;
        ActivitySession.acquireAssertionsIfNecessary(for:)(v56);
      }
    }
  }

  (v107)(v108);
  v58 = v108[0];
  v109 = 0x8000000000000008;
  v110[0] = v108[0];
  v59 = static ActivitySession.State.== infix(_:_:)(v110, &v109);
  outlined consume of ActivitySession.State(v58);
  if ((v59 & 1) == 0)
  {
    ActivitySession.invalidateAssertions(useDelay:)(1);
  }

  v108[0] = v20;
  v110[0] = 0x8000000000000008;
  if (static ActivitySession.State.== infix(_:_:)(v108, v110))
  {
    (v107)(v108);
    v60 = v108[0];
    v109 = 0x8000000000000008;
    v110[0] = v108[0];
    v61 = static ActivitySession.State.== infix(_:_:)(v110, &v109);
    outlined consume of ActivitySession.State(v60);
    if ((v61 & 1) == 0)
    {
      Date.init()();
      v62 = MEMORY[0x1E69E7D40];
      v63 = (*((*MEMORY[0x1E69E7D40] & *v34) + 0x180))(v108);
      DateInterval.end.setter();
      v63(v108, 0);
      v64 = (*((*v62 & *v34) + 0x1A8))(0);
      v65 = *((*v62 & *v34) + 0x170);
      v66 = v102;
      (v65)(v64);
      (*((*v62 & *v34) + 0x2F0))(v66);
      v67 = *(v105 + 8);
      v105 += 8;
      v68 = v67(v66, v103);
      v69 = (*((*v62 & *v34) + 0x3D8))(v68);
      if (v69)
      {
        v96 = v69;
        v94 = v70;
        ObjectType = swift_getObjectType();
        v71 = v102;
        v65();
        DateInterval.start.getter();
        v72 = v103;
        v73 = v67(v71, v103);
        v74 = v65;
        v75 = v101;
        (v74)(v73);
        v76 = v100;
        DateInterval.end.getter();
        v67(v75, v72);
        v77 = v106;
        (*(v94 + 128))(v34, v106, v76, ObjectType);
        swift_unknownObjectRelease();
        v78 = *(v98 + 8);
        v79 = v76;
        v80 = v99;
        v78(v79, v99);
        v78(v77, v80);
      }
    }
  }

  v81 = v104;
  v108[0] = v104;
  v110[0] = 0x8000000000000010;
  v82 = static ActivitySession.State.== infix(_:_:)(v108, v110);
  if (v82)
  {
    (v107)(v108);
    v83 = v108[0];
    v109 = 0x8000000000000000;
    v110[0] = v108[0];
    v84 = static ActivitySession.State.== infix(_:_:)(v110, &v109);
    v82 = outlined consume of ActivitySession.State(v83);
    if (v84)
    {
      v85 = v97;
      Date.init()();
      (*(v98 + 56))(v85, 0, 1, v99);
      v86 = OBJC_IVAR___CPActivitySession_permittedJoinTimestamp;
      swift_beginAccess();
      outlined assign with take of ActivitySession.DomainAssertionWrapper?(v85, v34 + v86, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v82 = swift_endAccess();
    }
  }

  v107(v108, v82);
  v87 = v108[0];
  v88 = MEMORY[0x1E69E7D40];
  if ((v108[0] & 0x8000000000000000) == 0)
  {
    outlined consume of ActivitySession.State(v108[0]);
LABEL_41:
    v87 = (*((*v88 & *v34) + 0x2B0))(0);
    goto LABEL_42;
  }

  if (v108[0] != 0x8000000000000000)
  {
    if (v108[0] == 0x8000000000000008)
    {
      goto LABEL_41;
    }

    v87 = (*((*MEMORY[0x1E69E7D40] & *v34) + 0x2B0))(1);
  }

LABEL_42:
  if ((*((*v88 & *v34) + 0x3D8))(v87))
  {
    v90 = v89;
    v91 = swift_getObjectType();
    v108[0] = v81;
    (*(v90 + 120))(v34, v108, v91, v90);
    swift_unknownObjectRelease();
  }
}

uint64_t ActivitySession.State.cpActivitySessionState.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    return 2;
  }

  if (v2 == 1)
  {
    return 4;
  }

  v4 = 1;
  if (v1 != 0x8000000000000008)
  {
    v4 = 5;
  }

  if (v1 == 0x8000000000000000)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void ActivitySession.acquireAssertionsIfNecessary(for:)(uint64_t a1)
{
  if (ActivitySession.needsAssertions()())
  {
    v3 = OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem;
    if (*(v1 + OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem))
    {

      dispatch thunk of DispatchWorkItem.cancel()();

      *(v1 + v3) = 0;
    }

    v4 = *(a1 + direct field offset for XPCHostConnection.bundleIdentifier);
    v5 = *(a1 + direct field offset for XPCHostConnection.bundleIdentifier + 8);
    v6 = [*(a1 + direct field offset for XPCHostConnection.connection) processIdentifier];
    v7 = v4;
    v8 = v5;

    ActivitySession.acquireDomainAssertion(bundleID:pid:)(*&v7, v6);
  }
}

Swift::Void __swiftcall ActivitySession.invalidateAssertions(useDelay:)(Swift::Bool useDelay)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchTime();
  v21 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem;
  v15 = *(v1 + OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem);
  if (useDelay)
  {
    if (!v15)
    {
      v20[4] = v13;
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in ActivitySession.invalidateAssertions(useDelay:);
      aBlock[5] = v16;
      v20[2] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_48;
      v20[3] = _Block_copy(aBlock);
      v23 = MEMORY[0x1E69E7CC0];
      v20[1] = lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      v17 = DispatchWorkItem.init(flags:block:)();

      static DispatchTime.now()();
      *v5 = 2;
      v18 = v22;
      (*(v22 + 104))(v5, *MEMORY[0x1E69E7F48], v3);
      MEMORY[0x1B270FBE0](v9, v5);
      (*(v18 + 8))(v5, v3);
      v19 = *(v21 + 8);
      v19(v9, v6);
      MEMORY[0x1B2710680](v11, v17);
      v19(v11, v6);
      *(v1 + v14) = v17;
    }
  }

  else
  {
    if (v15)
    {

      dispatch thunk of DispatchWorkItem.cancel()();

      *(v1 + v14) = 0;
    }

    ActivitySession.invalidateDomainAssertion()();
  }
}

uint64_t ActivitySession.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

unint64_t ActivitySession.state.setter(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  static Published.subscript.setter();
  ActivitySession.state.didset(&v5);
  return outlined consume of ActivitySession.State(v2);
}

unint64_t (*ActivitySession.state.modify(uint64_t a1))(unint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return ActivitySession.state.modify;
}

unint64_t ActivitySession.state.modify(unint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[2];
  if (a2)
  {
    outlined copy of ActivitySession.State(v4);
    static Published.subscript.getter();

    v6 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v7 = v5;
    static Published.subscript.setter();
    v12 = v6;
    ActivitySession.state.didset(&v12);
    outlined consume of ActivitySession.State(v6);
    v8 = *a1;
  }

  else
  {
    static Published.subscript.getter();

    v9 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v10 = v5;
    static Published.subscript.setter();
    v12 = v9;
    ActivitySession.state.didset(&v12);
    v8 = v9;
  }

  return outlined consume of ActivitySession.State(v8);
}

uint64_t key path setter for ActivitySession.$state : ActivitySession(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x318))(v6);
}

uint64_t ActivitySession.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMd, &_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ActivitySession.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMd, &_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ActivitySession.$state.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___CPActivitySession__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMd, &_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySession.$state.modify;
}

id ActivitySession.activity.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_activity;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ActivitySession.activity.setter(void *a1)
{
  v3 = OBJC_IVAR___CPActivitySession_activity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  ActivitySession.activity.didset(v4);
}

uint64_t key path getter for ActivitySession.activity : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x328))();
  *a2 = result;
  return result;
}

void ActivitySession.activity.didset(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR___CPActivitySession_queue];
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2112;
    v15 = OBJC_IVAR___CPActivitySession_activity;
    swift_beginAccess();
    v16 = *&v10[v15];
    *(v13 + 14) = v16;
    v14[1] = v16;
    v17 = v10;
    v18 = v16;
    _os_log_impl(&dword_1AEB26000, v11, v12, "ActivitySession %@ activity changed to %@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  v19 = OBJC_IVAR___CPActivitySession_activity;
  swift_beginAccess();
  v20 = [*&v10[v19] metadata];
  [v20 saveImageToDisk];

  v21 = [*&v10[v19] metadata];
  v22 = [a1 metadata];
  v23 = v22;
  if (v21)
  {
    if (v22)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivityMetadata, 0x1E69D8B48);
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v23 = v21;
  }

  else if (!v22)
  {
    goto LABEL_16;
  }

LABEL_13:
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_1AEB26000, v26, v27, "Cleaning up image for old metadata %@", v28, 0xCu);
    outlined destroy of NSObject?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  v31 = [v25 metadata];
  [v31 removeImageDiskFile];

LABEL_16:
  v32 = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x408))();
  if (!v32)
  {
LABEL_19:
    ActivitySession.sessionChanged()();
    return;
  }

  v33 = v32;
  v34 = [*(v32 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
  if (swift_dynamicCast())
  {
    v35 = v38;

    v36 = *&v10[v19];
    [v35 setActivityWithActivity_];

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  __break(1u);
}

void (*ActivitySession.activity.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySession_activity;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return ActivitySession.activity.modify;
}

void ActivitySession.activity.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    ActivitySession.activity.didset(v8);

    v10 = *v5;
  }

  else
  {
    ActivitySession.activity.didset(v8);
  }

  free(v3);
}

uint64_t key path getter for ActivitySession.isLocallyInitiated : ActivitySession@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x340))();
  *a2 = result & 1;
  return result;
}

uint64_t key path setter for ActivitySession.isLocallyInitiated : ActivitySession(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CPActivitySession_isLocallyInitiated;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t ActivitySession.isLocallyInitiated.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_isLocallyInitiated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for ActivitySession.isUsingAirplay : ActivitySession@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x370))();
  *a2 = result & 1;
  return result;
}

uint64_t ActivitySession.isUsingAirplay.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_isUsingAirplay;
  swift_beginAccess();
  return *(v0 + v1);
}

void ActivitySession.isUsingAirplay.setter(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR___CPActivitySession_isUsingAirplay;
  swift_beginAccess();
  *(v1 + v7) = a1;
  v8 = *(v1 + OBJC_IVAR___CPActivitySession_queue);
  *v6 = v8;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v8)
  {
    ActivitySession.sessionChanged()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*ActivitySession.isUsingAirplay.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for DispatchPredicate();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[6] = v8;
  swift_beginAccess();
  return ActivitySession.isUsingAirplay.modify;
}

void ActivitySession.isUsingAirplay.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[6];
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v3[5];
    v7 = *(v3[3] + OBJC_IVAR___CPActivitySession_queue);
    *v4 = v7;
    (*(v6 + 104))(v4, *MEMORY[0x1E69E8020], v5);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v6 + 8))(v4, v5);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v4 = v3[6];
    ActivitySession.sessionChanged()();
  }

  free(v4);

  free(v3);
}

id ActivitySession.tuConversationActivitySession.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v89 - v3;
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x328))(v2);
  [v6 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
  v7 = swift_dynamicCast();
  v8 = v101;
  (*((*v5 & *v0) + 0x2F8))(&v100, v7);
  v97 = v4;
  v94 = v8;
  if (v100 >> 62)
  {
    if (v100 >> 62 == 1)
    {
      outlined consume of ActivitySession.State(v100);
      v9 = 4;
    }

    else
    {
      v10 = 1;
      if (v100 != 0x8000000000000008)
      {
        v10 = 5;
      }

      if (v100 == 0x8000000000000000)
      {
        v9 = 0;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  else
  {
    outlined consume of ActivitySession.State(v100);
    v9 = 2;
  }

  v93 = v9;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x340);
  v92 = *(v0 + OBJC_IVAR___CPActivitySession_endpoint);
  v91 = v12();
  v90 = (*((*v11 & *v0) + 0x1A0))();
  v13 = v11;
  v14 = *v11 & *v0;
  v95 = *(v14 + 0x3C0);
  v96 = v14 + 960;
  v15 = v95();
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo25TUConversationParticipantC_SD6ValuesVys6UInt64VAE_GTt0g5(v15);
  v98 = v0;
  LOBYTE(v11) = *(v0 + OBJC_IVAR___CPActivitySession_isLocalParticipantActive);
  v16 = (*((*v13 & *v0) + 0x2A8))();
  v17 = objc_allocWithZone(MEMORY[0x1E69D8B58]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v19 = Date._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  v20 = Set._bridgeToObjectiveC()().super.isa;
  v21 = v98;

  LOBYTE(v88) = v11;
  LOBYTE(v87) = v90 & 1;
  v22 = v17;
  v23 = v94;
  v24 = v92;
  v25 = [v22 initWithActivity:v94 state:v93 uuid:isa endpoint:v92 locallyInitiated:v91 & 1 timestamp:v19 isFirstJoin:v87 activeRemoteParticipants:v20 isLocalParticipantActive:v88 applicationState:v16];

  v26 = MEMORY[0x1E69E7D40];
  v27 = (*((*MEMORY[0x1E69E7D40] & *v21) + 0x188))();
  [v25 setTerminatingHandle_];

  [v25 setDistributionCount_];
  [v25 setIsLightweightPrimaryInitiated_];
  v28 = [v25 setPermittedToJoin_];
  v29 = [v25 setPersistentSceneIsEligibleForAutoClose_];
  (*((*v26 & *v21) + 0x1C8))(v99, v29);
  v30 = __swift_project_boxed_opaque_existential_1(v99, v99[3]);
  MEMORY[0x1EEE9AC00](v30);
  (*(v32 + 16))(&v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  Array.init<A>(_:)();
  v33 = Array._bridgeToObjectiveC()().super.isa;

  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  [v25 setPersistentSceneIdentifiers_];

  v34 = (*((*v26 & *v21) + 0x1D0))();
  if (v35)
  {
    v36 = MEMORY[0x1B270FF70](v34);
  }

  else
  {
    v36 = 0;
  }

  [v25 setPrimarySceneAssociationIdentifier_];

  v37 = MEMORY[0x1E69E7D40];
  v38 = [v25 setDidAssociateScene_];
  v39 = [v25 setUsingAirplay_];
  v40 = (*((*v37 & *v21) + 0x1F8))(v39);
  v41 = v97;
  if ((v40 & 0x100000000) != 0)
  {
    v42.super.super.isa = 0;
  }

  else
  {
    v42.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  }

  [v25 setClientAudioSessionID_];

  v43 = Date._bridgeToObjectiveC()().super.isa;
  [v25 setLocalCreationTimestamp_];

  v44 = OBJC_IVAR___CPActivitySession_permittedJoinTimestamp;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v21 + v44, v41, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v45 = type metadata accessor for Date();
  v46 = *(v45 - 8);
  v47 = 0;
  if ((*(v46 + 48))(v41, 1, v45) != 1)
  {
    v47 = Date._bridgeToObjectiveC()().super.isa;
    (*(v46 + 8))(v41, v45);
  }

  v94 = v25;
  [v25 setPermittedJoinTimestamp_];

  v48 = v95();
  v101 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_ADTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v49 = v48 + 64;
  v50 = 1 << *(v48 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v48 + 64);
  v53 = (v50 + 63) >> 6;

  v54 = 0;
  v97 = v48;
  if (v52)
  {
    goto LABEL_27;
  }

LABEL_23:
  while (1)
  {
    v56 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v56 >= v53)
    {

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type NSNumber and conformance NSObject, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v82 = Dictionary._bridgeToObjectiveC()().super.isa;

      v83 = v94;
      [v94 setParticipantIdentifierMap_];

      v84 = (*((*MEMORY[0x1E69E7D40] & *v98) + 0x210))();
      specialized _copyCollectionToContiguousArray<A>(_:)(v84, specialized Sequence._copySequenceContents(initializing:));

      type metadata accessor for TUExternalParticipant();
      v85 = Array._bridgeToObjectiveC()().super.isa;

      [v83 setExternalParticipants_];

      return v83;
    }

    v52 = *(v49 + 8 * v56);
    ++v54;
    if (v52)
    {
      while (1)
      {
        v57 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
        v58 = (v56 << 9) | (8 * v57);
        v59 = *(*(v48 + 48) + v58);
        v60 = *(*(v48 + 56) + v58);
        v61 = [v60 identifier];
        v62 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
        v63 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
        if (!v63)
        {
          v55 = specialized Dictionary._Variant.removeValue(forKey:)(v62);

          v54 = v56;
          if (!v52)
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        }

        v64 = v63;
        v65 = v101;
        if ((v101 & 0xC000000000000001) != 0)
        {
          if (v101 >= 0)
          {
            v65 = v101 & 0xFFFFFFFFFFFFFF8;
          }

          v66 = __CocoaSet.count.getter();
          if (__OFADD__(v66, 1))
          {
            goto LABEL_49;
          }

          v65 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_AHTt1g5(v65, v66 + 1);
          v101 = v65;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v65;
        v68 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
        v70 = *(v65 + 16);
        v71 = (v69 & 1) == 0;
        v72 = __OFADD__(v70, v71);
        v73 = v70 + v71;
        if (v72)
        {
          goto LABEL_48;
        }

        v74 = v69;
        if (*(v65 + 24) < v73)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_39;
        }

        v79 = v68;
        specialized _NativeDictionary.copy()();
        v68 = v79;
        v76 = v100;
        if (v74)
        {
LABEL_40:
          v77 = v76[7];
          v78 = *(v77 + 8 * v68);
          *(v77 + 8 * v68) = v64;

          goto LABEL_44;
        }

LABEL_42:
        v76[(v68 >> 6) + 8] |= 1 << v68;
        *(v76[6] + 8 * v68) = v62;
        *(v76[7] + 8 * v68) = v64;

        v80 = v76[2];
        v72 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v72)
        {
          goto LABEL_50;
        }

        v76[2] = v81;
LABEL_44:
        v101 = v76;
        v54 = v56;
        v48 = v97;
        if (!v52)
        {
          goto LABEL_23;
        }

LABEL_27:
        v56 = v54;
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v73, isUniquelyReferenced_nonNull_native);
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_51;
      }

LABEL_39:
      v76 = v100;
      if (v74)
      {
        goto LABEL_40;
      }

      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo25TUConversationParticipantC_SD6ValuesVys6UInt64VAE_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  v4 = lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  v5 = 0;
  v12[1] = MEMORY[0x1B27104E0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    specialized Set._Variant.insert(_:)(v12, *(*(a1 + 56) + ((v10 << 9) | (8 * v11))), &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90, &_ss11_SetStorageCySo25TUConversationParticipantCGMd, &_ss11_SetStorageCySo25TUConversationParticipantCGMR);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SD4KeysVyAESo25TUConversationParticipantC_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1B27104E0](*(a1 + 16), MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = specialized Set._Variant.insert(_:)(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *_sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_s15LazyMapSequenceVys07FlattenF0VyAHyShySo38TUConversationActivitySessionContainerCGShySo0hiJ0CGGGAFGTt0g5(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v53 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v52 = v39 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v51 = v39 - v8;
  v9 = lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v58 = MEMORY[0x1B27104E0](0, v2, v9);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v50 = a1[3];
  v54 = a1[4];
  result = specialized LazyMapSequence.makeIterator()(v10, v11, v12, v59);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v45 = v64;
  v46 = v59[0];
  v41 = v59[1];
  v18 = v62;
  v43 = v63;
  v49 = (v3 + 32);
  v48 = (v3 + 8);
  v39[1] = v60;
  v40 = (v60 + 64) >> 6;
  v19 = 0xF000000000000007;
  v42 = v61;
  for (i = v2; ; v2 = i)
  {
    v55 = v19;
    v47 = v14;
    if ((~v19 & 0xF000000000000007) != 0)
    {
      break;
    }

LABEL_18:
    v30 = v46;
    if (v46 < 0)
    {
      v35 = __CocoaSet.Iterator.next()();
      if (!v35)
      {
        goto LABEL_34;
      }

      v56 = v35;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
      swift_dynamicCast();
      v34 = v57;
      if (!v57)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v31 = v42;
      if (!v18)
      {
        while (1)
        {
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_36;
          }

          if (v32 >= v40)
          {
            goto LABEL_34;
          }

          v18 = *(v41 + 8 * v32);
          ++v31;
          if (v18)
          {
            v42 = v32;
            goto LABEL_25;
          }
        }
      }

      v32 = v42;
LABEL_25:
      v33 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v34 = *(*(v46 + 48) + ((v32 << 9) | (8 * v33)));
      if (!v34)
      {
LABEL_34:
        outlined consume of Set<String>.Iterator._Variant(v30);

        outlined consume of Set<TUConversationActivitySession>.Iterator?(v55);

        return v58;
      }
    }

    v57 = v34;
    v43(&v56, &v57);

    v19 = v56;
    if ((v56 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      Set.Iterator.init(_cocoa:)();
      v19 = v65;
      v20 = v66;
      v14 = v67;
      v16 = v68;
      v21 = v69;
    }

    else
    {
      v16 = 0;
      v36 = -1 << *(v56 + 32);
      v20 = (v56 + 56);
      v14 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v21 = v38 & *(v56 + 56);
    }

    result = outlined consume of Set<TUConversationActivitySession>.Iterator?(v55);
    v15 = v20;
    v17 = v21;
  }

  v22 = (v14 + 64) >> 6;
  while (1)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      result = __CocoaSet.Iterator.next()();
      if (!result)
      {
        goto LABEL_18;
      }

      v56 = result;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      result = swift_dynamicCast();
      v25 = v57;
      v23 = v16;
      if (!v57)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    v29 = v16;
    if (!v17)
    {
      break;
    }

    v23 = v16;
LABEL_8:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    result = *(*(v19 + 48) + ((v23 << 9) | (8 * v24)));
    v25 = result;
    if (!result)
    {
      goto LABEL_18;
    }

LABEL_9:
    v57 = v25;
    v26 = v51;
    v50(&v57);

    v27 = v53;
    (*v49)(v53, v26, v2);
    v28 = v52;
    specialized Set._Variant.insert(_:)(v52, v27);
    result = (*v48)(v28, v2);
    v16 = v23;
    v19 = v55;
  }

  while (1)
  {
    v23 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      goto LABEL_18;
    }

    v17 = v15[v23];
    ++v29;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DateV_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1B27104E0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ActivitySession.activeParticipantsUpdateItem : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.activeParticipantsUpdateItem : ActivitySession(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3B0);

  return v2(v3);
}

uint64_t key path getter for ActivitySession.activeParticipants : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3C0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.activeParticipants : ActivitySession(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3C8);

  return v2(v3);
}

void ActivitySession.activeParticipants.didset(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CPActivitySession_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v9 = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x328))(v9);
    v11 = [v10 isStaticActivity];

    if ((v11 & 1) == 0)
    {
      swift_beginAccess();

      v13 = specialized _NativeDictionary.mapValues<A>(_:)(v12);

      v14 = specialized _NativeDictionary.mapValues<A>(_:)(a1);
      v15 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_ADTt1g5(v13, v14);

      if ((v15 & 1) == 0)
      {
        ActivitySession.sessionChanged()();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ActivitySession.activeParticipants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_activeParticipants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  ActivitySession.activeParticipants.didset(v4);
}

void (*ActivitySession.activeParticipants.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySession_activeParticipants;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return ActivitySession.activeParticipants.modify;
}

void ActivitySession.activeParticipants.modify(void **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 4);
  v3 = *(*a1 + 5);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 3);
  if (a2)
  {

    ActivitySession.activeParticipants.didset(v5);
  }

  else
  {
    ActivitySession.activeParticipants.didset(v5);
  }

  free(v2);
}

uint64_t key path getter for ActivitySession.sessionManager : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3D8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ActivitySession.sessionManager : ActivitySession(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3E0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ActivitySession.sessionManager.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___CPActivitySession_sessionManager;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ActivitySession.sessionManager.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySession_sessionManager;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

void ActivitySession.sessionManager.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t key path getter for ActivitySession.rtcReporter : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3F0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.rtcReporter : ActivitySession(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3F8);

  return v2(v3);
}

uint64_t ActivitySession.activeParticipantsUpdateItem.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t key path getter for ActivitySession.connection : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x408))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.connection : ActivitySession(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x410);
  v4 = *a1;
  return v3(v2);
}

void *ActivitySession.connection.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ActivitySession.connection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = direct field offset for XPCHostConnection.connection;
    v6 = *&v4[direct field offset for XPCHostConnection.connection];
    v7 = v4;
    [v6 setExportedObject_];
    [*&v4[v5] setInvalidationHandler_];
    [*&v4[v5] setInterruptionHandler_];
    [*&v4[v5] invalidate];

    v8 = *(v1 + v3);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + v3) = a1;
}

void (*ActivitySession.connection.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySession_connection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return ActivitySession.connection.modify;
}

void ActivitySession.connection.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;
    ActivitySession.connection.setter(v3);
    v5 = v2[3];
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    if (v8)
    {
      v9 = direct field offset for XPCHostConnection.connection;
      v10 = *&v8[direct field offset for XPCHostConnection.connection];
      v11 = v8;
      [v10 setExportedObject_];
      [*&v8[v9] setInvalidationHandler_];
      [*&v8[v9] setInterruptionHandler_];
      [*&v8[v9] invalidate];

      v5 = *(v7 + v6);
      v7 = v2[4];
      v6 = v2[5];
    }

    else
    {
      v5 = 0;
    }

    *(v7 + v6) = v3;
  }

  free(v2);
}

Swift::Void __swiftcall ActivitySession.updateExternalParticipants(participants:)(Swift::OpaquePointer participants)
{
  if (participants._rawValue >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((participants._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while ((participants._rawValue & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B2710B10](v4, participants._rawValue);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x220);
      v8 = v5;
      v9 = v7(v10);
      specialized Set._Variant.insert(_:)(&v11, v8);

      v9(v10, 0);
      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((participants._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(participants._rawValue + v4 + 4);
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  ActivitySession.sessionChanged()();
}

uint64_t ActivitySession.updateActiveParticipants(with:fromCache:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v108 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x1EEE9AC00](v108);
  v7 = (&v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(&v2->isa + OBJC_IVAR___CPActivitySession_queue);
  *v11 = v12;
  v13 = *(v9 + 104);
  LODWORD(v111) = *MEMORY[0x1E69E8020];
  v115 = v13;
  v13(v11);
  v109 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v14 = *(v9 + 8);
  (v14)(v11, v8);
  if ((v12 & 1) == 0)
  {
    goto LABEL_58;
  }

  v118 = a1;

  v15 = ActivitySession.localParticipantAlias.getter();
  v16 = &static ConversationManagerInterface.identity;
  v112 = v7;
  v113 = a1;
  if ((v17 & 1) != 0 || (v114 = v15, !specialized Set.contains(_:)(v15, a1)))
  {
    v23 = OBJC_IVAR___CPActivitySession_isLocalParticipantActive;
    if (*(&v3->isa + OBJC_IVAR___CPActivitySession_isLocalParticipantActive) != 1)
    {
      v114 = 0;
      LODWORD(v115) = 1;
      a1 = v113;
      goto LABEL_19;
    }

    v24 = v4;
    v114 = v14;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.default);
    v4 = v3;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v107 = v4;

    LODWORD(v4) = v24;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      LODWORD(v110) = v24;
      v4 = v28;
      v29 = swift_slowAlloc();
      *v4 = 138412290;
      v30 = v107;
      *(v4 + 4) = v107;
      *v29 = v30;
      v31 = v30;
      _os_log_impl(&dword_1AEB26000, v26, v27, "%@ setting isLocalParticipantActive=false", v4, 0xCu);
      outlined destroy of NSObject?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v29, -1, -1);
      v32 = v4;
      LODWORD(v4) = v110;
      MEMORY[0x1B27120C0](v32, -1, -1);
    }

    v33 = *(&v3->isa + v23);
    *(&v3->isa + v23) = 0;
    v34 = v109;
    *v11 = v109;
    (v115)(v11, v111, v8);
    v35 = v34;
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    (v114)(v11, v8);
    if (v34)
    {
      if (v33 != *(&v3->isa + v23))
      {
        ActivitySession.sessionChanged()();
      }

      v114 = 0;
      LODWORD(v115) = 1;
      a1 = v113;
      goto LABEL_17;
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);

    __break(1u);
    return result;
  }

  LODWORD(v110) = v4;
  v18 = v14;
  v19 = OBJC_IVAR___CPActivitySession_isLocalParticipantActive;
  v20 = *(&v3->isa + OBJC_IVAR___CPActivitySession_isLocalParticipantActive);
  *(&v3->isa + OBJC_IVAR___CPActivitySession_isLocalParticipantActive) = 1;
  v21 = v109;
  *v11 = v109;
  (v115)(v11, v111, v8);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (v18)(v11, v8);
  if ((v21 & 1) == 0)
  {
    goto LABEL_62;
  }

  if (v20 != *(&v3->isa + v19))
  {
    ActivitySession.sessionChanged()();
  }

  specialized Set._Variant.remove(_:)(v114);
  LODWORD(v115) = 0;
  LODWORD(v4) = v110;
LABEL_17:
  v16 = &static ConversationManagerInterface.identity;
LABEL_19:
  if (*(v16 + 431) != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v36 = type metadata accessor for Logger();
    v37 = __swift_project_value_buffer(v36, static Log.default);

    v38 = v3;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    v41 = os_log_type_enabled(v39, v40);
    v107 = v37;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v116 = v105;
      *v42 = 138413058;
      *(v42 + 4) = v38;
      v104 = v43;
      *v43 = v38;
      *(v42 + 12) = 1024;
      *(v42 + 14) = v4 & 1;
      *(v42 + 18) = 2080;
      if (v115)
      {
        v44 = v38;
        v45 = 0xE300000000000000;
        v46 = 7104878;
      }

      else
      {
        aBlock[0] = v114;
        v47 = v38;
        v46 = String.init<A>(reflecting:)();
        v45 = v48;
      }

      LODWORD(v106) = v40;
      v111 = v39;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, &v116);

      *(v42 + 20) = v49;
      *(v42 + 28) = 2080;
      v50 = *(a1 + 16);
      if (v50)
      {
        LODWORD(v110) = v4;
        v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5(v50, 0);
        v51 = specialized Sequence._copySequenceContents(initializing:)(aBlock, &v3[4].isa, v50, a1);
        v52 = aBlock[0];

        outlined consume of Set<String>.Iterator._Variant(v52);
        if (v51 != v50)
        {
          goto LABEL_61;
        }

        a1 = v113;
        LOBYTE(v4) = v110;
      }

      else
      {
        v3 = MEMORY[0x1E69E7CC0];
      }

      aBlock[0] = v3;
      specialized MutableCollection<>.sort(by:)(aBlock);
      v53 = MEMORY[0x1B2710180](aBlock[0], MEMORY[0x1E69E76D8]);
      v55 = v54;

      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v116);

      *(v42 + 30) = v56;
      v57 = v111;
      _os_log_impl(&dword_1AEB26000, v111, v106, "%@ updating activeParticipants, fromCache: %{BOOL}d, localParticipantID:%s participantIDs: %s", v42, 0x26u);
      v58 = v104;
      outlined destroy of NSObject?(v104, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v58, -1, -1);
      v59 = v105;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v59, -1, -1);
      MEMORY[0x1B27120C0](v42, -1, -1);
    }

    else
    {
    }

    v60 = OBJC_IVAR___CPActivitySession_activeParticipantIDs;
    if (_sSh2eeoiySbShyxG_ABtFZs6UInt64V_Tt1g5(*(&v38->isa + OBJC_IVAR___CPActivitySession_activeParticipantIDs), a1))
    {
      if (v4 & 1) == 0 || (v61 = (*((*MEMORY[0x1E69E7D40] & v38->isa) + 0x3C0))(), v62 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SD4KeysVyAESo25TUConversationParticipantC_GTt0g5(v61), v63 = _sSh2eeoiySbShyxG_ABtFZs6UInt64V_Tt1g5(v62, v118), , (v63))
      {
        v64 = v38;
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *v67 = 138412290;
          *(v67 + 4) = v64;
          *v68 = v64;
          v69 = v64;
          _os_log_impl(&dword_1AEB26000, v65, v66, "%@ not updating activeParticipants since no change was detected", v67, 0xCu);
          outlined destroy of NSObject?(v68, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B27120C0](v68, -1, -1);
          MEMORY[0x1B27120C0](v67, -1, -1);
        }
      }
    }

    v106 = 0;
    *(&v38->isa + v60) = a1;

    v70 = *((*MEMORY[0x1E69E7D40] & v38->isa) + 0x3A8);

    if (v70(v71))
    {
      dispatch thunk of DispatchWorkItem.cancel()();
    }

    v111 = dispatch_group_create();
    v72 = swift_allocObject();
    *(v72 + 16) = MEMORY[0x1E69E7CC8];
    v73 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v74 = swift_allocObject();
    *(v74 + 16) = v73;
    *(v74 + 24) = v72;
    aBlock[4] = partial apply for closure #1 in ActivitySession.updateActiveParticipants(with:fromCache:);
    aBlock[5] = v74;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_61;
    _Block_copy(aBlock);
    v116 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

    v110 = v72;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v3 = DispatchWorkItem.init(flags:block:)();

    v76 = (*((*MEMORY[0x1E69E7D40] & v38->isa) + 0x328))(v75);
    v77 = [v76 bundleIdentifier];

    if (!v77)
    {
      break;
    }

    v112 = v3;

    v78 = a1 + 56;
    v79 = 1 << *(a1 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v81 = v80 & *(a1 + 56);
    v4 = (v79 + 63) >> 6;

    v82 = 0;
    while (v81)
    {
LABEL_47:
      v84 = __clz(__rbit64(v81));
      v81 &= v81 - 1;
      v85 = *(*(a1 + 48) + ((v82 << 9) | (8 * v84)));
      v86 = v115;
      if (v85 != v114)
      {
        v86 = 1;
      }

      if (v86 == 1)
      {
        v3 = v111;
        dispatch_group_enter(v111);
        v87 = swift_allocObject();
        v87[2] = v110;
        v87[3] = v85;
        v87[4] = v3;
        v88 = *((*MEMORY[0x1E69E7D40] & v38->isa) + 0x478);

        v89 = v3;
        v88(v85, 0, partial apply for closure #1 in closure #2 in ActivitySession.updateActiveParticipants(with:fromCache:), v87);
        a1 = v113;
      }
    }

    while (1)
    {
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v83 >= v4)
      {

        v90 = v111;
        OS_dispatch_group.notify(queue:work:)();
        v91 = *((*MEMORY[0x1E69E7D40] & v38->isa) + 0x3B0);

        v91(v92);

        goto LABEL_55;
      }

      v81 = *(v78 + 8 * v83);
      ++v82;
      if (v81)
      {
        v82 = v83;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  v93 = v38;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    aBlock[0] = v97;
    *v96 = 136315394;
    v98 = Set.description.getter();
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, aBlock);

    *(v96 + 4) = v100;
    *(v96 + 12) = 2112;
    *(v96 + 14) = v93;
    v101 = v115;
    *v115 = v38;
    v102 = v93;
    _os_log_impl(&dword_1AEB26000, v94, v95, "Failed to update participants for participantIDs %s on %@ because of invalid bundleID", v96, 0x16u);
    outlined destroy of NSObject?(v101, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v101, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    MEMORY[0x1B27120C0](v97, -1, -1);
    MEMORY[0x1B27120C0](v96, -1, -1);
  }

  else
  {
  }

LABEL_55:
}

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (type metadata accessor for ActivitySession(0), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x1B27111C0](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void closure #1 in ActivitySession.updateActiveParticipants(with:fromCache:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = v3;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18[0] = v17;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v3;
      *(v8 + 12) = 2080;
      swift_beginAccess();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      v10 = v5;

      v11 = Dictionary.description.getter();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v18);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_1AEB26000, v6, v7, "Retrieved all participants for %@, updating with participants %s", v8, 0x16u);
      outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1B27120C0](v17, -1, -1);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    swift_beginAccess();
    v15 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x3C8);

    v15(v16);
  }
}

void closure #1 in closure #2 in ActivitySession.updateActiveParticipants(with:fromCache:)(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    swift_beginAccess();
    v7 = a1;
    specialized Dictionary.subscript.setter(a1, a3);
    swift_endAccess();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a3;
      _os_log_impl(&dword_1AEB26000, v9, v10, "updateActiveParticipants, could not find active-remote-participant for participantID %llu", v11, 0xCu);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t ActivitySession.join(audioSessionID:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v3[OBJC_IVAR___CPActivitySession_queue];
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v14 = v3;

    specialized ActivitySession.invalidationBlock(execute:)(v14, v14, a1 | ((HIDWORD(a1) & 1) << 32), a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ActivitySession.join(audioSessionID:completion:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2F8);
  v7(&v46);
  v8 = v46;
  v44 = 0x8000000000000000;
  v45 = v46;
  v9 = static ActivitySession.State.== infix(_:_:)(&v45, &v44);
  v10 = outlined consume of ActivitySession.State(v8);
  if (v9 & 1) != 0 || ((v7)(&v46, v10), v11 = v46, v44 = 0x8000000000000008, v45 = v46, v12 = static ActivitySession.State.== infix(_:_:)(&v45, &v44), outlined consume of ActivitySession.State(v11), (v12))
  {
    v41 = a3;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.host);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v40 = a4;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v46 = v19;
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *v18 = a1;
      *(v17 + 12) = 2080;
      if ((a2 & 0x100000000) != 0)
      {
        v20 = v14;
        v21 = 0xE300000000000000;
        v22 = 7104878;
      }

      else
      {
        LODWORD(v45) = a2;
        v25 = v14;
        v22 = String.init<A>(reflecting:)();
        v21 = v26;
      }

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v46);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_1AEB26000, v15, v16, "Joining %@ with audioSessionID: %s", v17, 0x16u);
      outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B27120C0](v19, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);

      a4 = v40;
    }

    else
    {
    }

    v46 = 0x8000000000000008;
    v28 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v14) + 0x300))(&v46);
    (*((*v28 & *v14) + 0x200))(a2 | ((HIDWORD(a2) & 1) << 32));
    v29 = swift_allocObject();
    *(v29 + 16) = v41;
    *(v29 + 24) = a4;
    v30 = *((*v28 & *v14) + 0x3D8);

    if (v30(v31))
    {
      v33 = v32;
      ObjectType = swift_getObjectType();
      v34 = UUID.uuidString.getter();
      v36 = v35;
      v37 = swift_allocObject();
      v37[2] = v14;
      v37[3] = partial apply for closure #1 in closure #1 in ActivitySession.join(audioSessionID:completion:);
      v37[4] = v29;
      v38 = *(v33 + 96);
      v39 = v14;

      v38(v39, v34, v36, closure #1 in ActivitySession.fetchDataCryptor(completion:)partial apply, v37, ObjectType, v33);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    lazy protocol witness table accessor for type ActivitySession.Errors and conformance ActivitySession.Errors();
    swift_allocError();
    *v23 = 1;
    return swift_willThrow();
  }
}

uint64_t ActivitySession.invalidationBlock(execute:)(uint64_t (*a1)(void))
{
  result = a1();
  if (v2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = v1;
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v9 = 138412546;
      *(v9 + 4) = v5;
      *v10 = v5;
      *(v9 + 12) = 2080;
      v12 = v5;
      v13 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_1AEB26000, v7, v8, "%@ was invalidated with error: %s", v9, 0x16u);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }

    [v5 resetSession];
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActivitySession.leave()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR___CPActivitySession_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v8 = (v3 + 8);
  v10 = v9(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v8 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x328))(v10);
  v12 = [v11 metadata];

  if (!v12 || (v13 = [v12 lifetimePolicy], v12, v13 != 1) || ((*((*v8 & *v1) + 0x340))() & 1) == 0)
  {
    v18 = v1;
    specialized ActivitySession.invalidationBlock(execute:)(v18, v18, closure #1 in ActivitySession.leave());

    return;
  }

  if (one-time initialization token for host != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.host);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1AEB26000, v15, v16, "Requested leave, but ending instead due to lifetimePolicy", v17, 2u);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

  (*((*v8 & *v1) + 0x440))();
}

void closure #1 in ActivitySession.leave()(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2F8);
  v3(&v26);
  v4 = v26;
  v24 = 0x8000000000000008;
  v25 = v26;
  v5 = static ActivitySession.State.== infix(_:_:)(&v25, &v24);
  v6 = outlined consume of ActivitySession.State(v4);
  if (v5 & 1) != 0 || ((v3)(&v26, v6), v7 = v26, v24 = 0x8000000000000000, v25 = v26, v8 = static ActivitySession.State.== infix(_:_:)(&v25, &v24), outlined consume of ActivitySession.State(v7), (v8))
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.host);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = a1;
      v15 = v10;
      _os_log_impl(&dword_1AEB26000, v11, v12, "Leaving %@", v13, 0xCu);
      outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v14, -1, -1);
      v16 = v13;
      v2 = MEMORY[0x1E69E7D40];
      MEMORY[0x1B27120C0](v16, -1, -1);
    }

    v26 = 0x8000000000000010;
    v17 = (*((*v2 & *v10) + 0x300))(&v26);
    if (*(v10 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator))
    {
      ActivitySession.SceneAssociationCoordinator.disassociateAllScenes()();
    }

    v18 = (*((*v2 & *v10) + 0x328))(v17);
    v19 = [v18 isSystemActivity];

    if (v19)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1AEB26000, v20, v21, "Activity is a systemActivity, permitting activity to be re-distributed.", v22, 2u);
        MEMORY[0x1B27120C0](v22, -1, -1);
      }

      (*((*v2 & *v10) + 0x448))();
    }
  }

  else
  {
    lazy protocol witness table accessor for type ActivitySession.Errors and conformance ActivitySession.Errors();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall ActivitySession.end()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR___CPActivitySession_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Ending %@", v11, 0xCu);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v16 = v14;
  (*((*MEMORY[0x1E69E7D40] & *v8) + 0x300))(&v16);
}

Swift::Void __swiftcall ActivitySession.permitJoin()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR___CPActivitySession_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Received request for %@ to be permitted", v11, 0xCu);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  v14 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v8) + 0x2F8))(v25);
  v15 = v25[0];
  v26 = 0x8000000000000010;
  v27 = v25[0];
  v16 = static ActivitySession.State.== infix(_:_:)(&v27, &v26);
  outlined consume of ActivitySession.State(v15);
  if (v16)
  {
    v17 = v8;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v8;
      v22 = v17;
      _os_log_impl(&dword_1AEB26000, v18, v19, "Permitting %@ to be joined", v20, 0xCu);
      outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v21, -1, -1);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    v23 = (*((*v14 & *v17) + 0x268))(v25);
    if (__OFADD__(*v24, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v24;
      v23(v25, 0);
      v25[0] = 0x8000000000000000;
      (*((*v14 & *v17) + 0x300))(v25);
    }
  }
}

uint64_t ActivitySession.logAttachmentEvent(report:reportEvent:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  v8 = v3;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2080;
    v14 = v8;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v16);
    _os_log_impl(&dword_1AEB26000, v9, v10, "%@: Logging attachment event in RTC reporting: %s", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x3F0))();
  if (result)
  {
    RTCReporter.reportAttachmentEvent(report:)(a1);
  }

  return result;
}

void ActivitySession.postEvent(event:)(char *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR___CPActivitySession_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v11 = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_7:
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.default);
    v26 = a1;
    v27 = v3;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v28, v29))
    {
LABEL_23:

      return;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v30 = 138412802;
    *(v30 + 4) = v27;
    *(v30 + 12) = 2112;
    *(v30 + 14) = v26;
    *v31 = v3;
    v31[1] = v26;
    *(v30 + 22) = 2080;
    v32 = v26;
    v33 = v27;
    v2(&v44);
    if (v44 >> 62)
    {
      if (v44 >> 62 != 1)
      {
        v38 = v42;
        v39 = 0xE600000000000000;
        v40 = 0x64656E696F4ALL;
        if (v44 != 0x8000000000000008)
        {
          v40 = 1952867660;
          v39 = 0xE400000000000000;
        }

        if (v44 == 0x8000000000000000)
        {
          v35 = 0x676E6974696157;
        }

        else
        {
          v35 = v40;
        }

        if (v44 == 0x8000000000000000)
        {
          v34 = 0xE700000000000000;
        }

        else
        {
          v34 = v39;
        }

        goto LABEL_22;
      }

      v34 = 0xE900000000000066;
      v35 = 0x664F6465646E6148;
    }

    else
    {
      v34 = 0xEB00000000646574;
      v35 = 0x6164696C61766E49;
    }

    v38 = v42;
LABEL_22:
    outlined consume of ActivitySession.State(v44);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v45);

    *(v30 + 24) = v41;
    _os_log_impl(&dword_1AEB26000, v28, v29, "%@ dropping event %@ because state != joined. state: %s", v30, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1B27120C0](v38, -1, -1);
    MEMORY[0x1B27120C0](v30, -1, -1);
    goto LABEL_23;
  }

  v12 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x2F8);
  (v2)(&v45, v11);
  v13 = v45;
  v43 = 0x8000000000000008;
  v44 = v45;
  v14 = static ActivitySession.State.== infix(_:_:)(&v44, &v43);
  outlined consume of ActivitySession.State(v13);
  if ((v14 & 1) == 0)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v15;
  v17 = *&a1[OBJC_IVAR___CPActivitySessionEvent_originatorID];
  v18 = *((*v12 & *v3) + 0x3C0);

  v19 = a1;
  v20 = v18();
  if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);

    v24 = v23;
    closure #1 in ActivitySession.postEvent(event:)(v23, v19, v15);
  }

  else
  {

    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for closure #1 in ActivitySession.postEvent(event:);
    *(v36 + 24) = v16;
    v37 = *((*v12 & *v3) + 0x478);

    v37(v17, 1, partial apply for closure #2 in ActivitySession.postEvent(event:), v36);
  }
}

void closure #1 in ActivitySession.postEvent(event:)(void *a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = *&a2[OBJC_IVAR___CPActivitySessionEvent_type];
      v8 = objc_allocWithZone(MEMORY[0x1E69D8B40]);
      v9 = a1;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v11 = [v8 initWithSessionUUID:isa originator:v9 type:v7];

      if (*&a2[OBJC_IVAR___CPActivitySessionEvent_item + 8])
      {
        v12 = MEMORY[0x1B270FF70](*&a2[OBJC_IVAR___CPActivitySessionEvent_item]);
      }

      else
      {
        v12 = 0;
      }

      [v11 setItem_];

      v17 = [v11 setQueueItemType_];
      v18 = MEMORY[0x1E69E7D40];
      v19 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x388))(v17);
      [v11 setSession_];

      if ((*((*v18 & *v6) + 0x3D8))([v11 setUrl_]))
      {
        v21 = v20;
        ObjectType = swift_getObjectType();
        (*(v21 + 88))(v6, v11, ObjectType, v21);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.default);
    v23 = a2;
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = *&v23[OBJC_IVAR___CPActivitySessionEvent_originatorID];

      _os_log_impl(&dword_1AEB26000, oslog, v14, "Received event from unknown participant %llu", v15, 0xCu);
      MEMORY[0x1B27120C0](v15, -1, -1);
      v16 = oslog;
    }

    else
    {

      v16 = v23;
    }
  }
}

Swift::Void __swiftcall ActivitySession.requestEncryptionKeys(for:)(Swift::OpaquePointer_optional a1)
{
  v2 = v1;
  rawValue = a1.value._rawValue;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___CPActivitySession_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  isUniquelyReferenced_nonNull_native = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = MEMORY[0x1E69E7D40];
    if (rawValue)
    {
      v12 = rawValue[2];
      if (v12)
      {
        v13 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3C0);
        v14 = (rawValue + 4);
        v15 = MEMORY[0x1E69E7CC0];
        do
        {
          v17 = *v14++;
          v16 = v17;
          v18 = v13(isUniquelyReferenced_nonNull_native);
          if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v20 & 1) != 0))
          {
            v21 = *(*(v18 + 56) + 8 * v19);

            v16 = [v21 identifier];
          }

          else
          {
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
            v15 = isUniquelyReferenced_nonNull_native;
          }

          v23 = *(v15 + 16);
          v22 = *(v15 + 24);
          if (v23 >= v22 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v15);
            v15 = isUniquelyReferenced_nonNull_native;
          }

          *(v15 + 16) = v23 + 1;
          *(v15 + 8 * v23 + 32) = v16;
          --v12;
        }

        while (v12);
      }

      else
      {
        v15 = MEMORY[0x1E69E7CC0];
      }

      v11 = MEMORY[0x1E69E7D40];
    }

    else
    {
      v15 = 0;
    }

    if ((*((*v11 & *v2) + 0x3D8))(isUniquelyReferenced_nonNull_native))
    {
      v25 = v24;
      ObjectType = swift_getObjectType();
      v27 = (*((*v11 & *v2) + 0x4C8))();
      (*(v25 + 104))(v2, v15, v27, v28, ObjectType, v25);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ActivitySession.usesAliasing.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x408))(result);
    if (v8)
    {
      v9 = v8[direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers];

      v10 = v9 ^ 1;
    }

    else
    {
      v10 = 1;
    }

    return v10 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivitySession.localParticipantAlias.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = MEMORY[0x1E69E7D40];
    result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D8))(result);
    if (result)
    {
      v10 = v9;
      v11 = (*((*v8 & *v0) + 0x328))();
      v12 = [v11 bundleIdentifier];

      if (v12)
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if ((ActivitySession.usesAliasing.getter() & 1) == 0)
        {

          v13 = 0;
          v15 = 0;
        }

        ObjectType = swift_getObjectType();
        v17 = (*(v10 + 56))(v13, v15, ObjectType, v10);
        swift_unknownObjectRelease();

        return v17;
      }

      else
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivitySession.participant(with:includeLocalParticipant:completion:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR___CPActivitySession_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v16 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & *v4) + 0x3D8))(result))
  {
    return a3(0);
  }

  v18 = v17;
  v19 = (*((*v16 & *v4) + 0x328))();
  v20 = [v19 bundleIdentifier];

  if (!v20)
  {
    swift_unknownObjectRelease();
    return a3(0);
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if ((ActivitySession.usesAliasing.getter() & 1) == 0)
  {

    v21 = 0;
    v23 = 0;
  }

  ObjectType = swift_getObjectType();
  (*(v18 + 64))(a1, v21, v23, a2 & 1, a3, a4, ObjectType, v18);
  swift_unknownObjectRelease();
}

uint64_t ActivitySession.localParticipantCluster.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (!(*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D8))(result))
    {
      return 0;
    }

    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 32))(ObjectType, v9);
    swift_unknownObjectRelease();
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ActivitySession.presentSessionDismissalAlert(for:allowingCancellation:completion:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&countAndFlagsBits - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v5[OBJC_IVAR___CPActivitySession_queue];
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v102 = a1;
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.default);
  v18 = v5;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v103 = a2;
  v104 = a4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v105 = v18;
    v106 = v23;
    *v22 = 136315138;
    type metadata accessor for ActivitySession(0);
    v24 = v18;
    v25 = String.init<A>(reflecting:)();
    v27 = a5;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v106);

    *(v22 + 4) = v28;
    a5 = v27;
    _os_log_impl(&dword_1AEB26000, v19, v20, "Presenting session dismissal alert for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1B27120C0](v23, -1, -1);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  v29 = MEMORY[0x1E69E7D40];
  v30 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0x408))();
  if (v30)
  {
    v31 = v30;
    v32 = (*((*v29 & *v18) + 0x328))();
    v33 = [v32 metadata];

    v101 = v31;
    if (v33 && (v34 = [v33 title], v33, v34))
    {
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      type metadata accessor for ConversationManagerHost();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v39 = [objc_opt_self() bundleForClass_];
      v107._object = 0xE000000000000000;
      v40._object = 0x80000001AEE2F040;
      v40._countAndFlagsBits = 0xD000000000000015;
      v41.value._countAndFlagsBits = 0x6E65736572706F43;
      v41.value._object = 0xEE0065726F436563;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v107._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v107);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AEE07B20;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v43 + 32) = v35;
      *(v43 + 40) = v37;
      v44 = String.init(format:_:)();
      v46 = v45;
    }

    else
    {
      v47 = &v31[direct field offset for XPCHostConnection.bundleIdentifier];
      v48 = *&v31[direct field offset for XPCHostConnection.bundleIdentifier];
      v49 = *(v47 + 1);
      objc_allocWithZone(MEMORY[0x1E69635F8]);

      v50 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v48, v49, 1);
      if (v50)
      {
        v87 = v50;
        type metadata accessor for ConversationManagerHost();
        v88 = swift_getObjCClassFromMetadata();
        v89 = [objc_opt_self() bundleForClass_];
        v109._object = 0xE000000000000000;
        v90._countAndFlagsBits = 0x415F40255F444E45;
        v90._object = 0xEF454D414E5F5050;
        v91.value._countAndFlagsBits = 0x6E65736572706F43;
        v91.value._object = 0xEE0065726F436563;
        v92._countAndFlagsBits = 0;
        v92._object = 0xE000000000000000;
        v109._countAndFlagsBits = 0;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v90, v91, v89, v92, v109)._countAndFlagsBits;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1AEE07B20;
        v94 = v87;
        v95 = [v87 localizedName];
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;

        *(v93 + 56) = MEMORY[0x1E69E6158];
        *(v93 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v93 + 32) = v96;
        *(v93 + 40) = v98;
        v44 = String.init(format:_:)();
        v46 = v99;

LABEL_12:
        v57 = a3 & 1;
        v58 = ActivitySession.buildDisplayOptions(title:allowingCancellation:)(v44, v46, a3 & 1);

        if (v58)
        {
          v59 = *&v18[OBJC_IVAR___CPActivitySession_notificationCenter + 24];
          v60 = *&v18[OBJC_IVAR___CPActivitySession_notificationCenter + 32];
          countAndFlagsBits = __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR___CPActivitySession_notificationCenter], v59);
          v61 = UUID.uuidString.getter();
          v63 = v62;
          v64 = swift_allocObject();
          *(v64 + 16) = v57;
          v65 = v104;
          *(v64 + 24) = v18;
          *(v64 + 32) = v65;
          *(v64 + 40) = a5;
          v66 = *(v60 + 8);
          v67 = v18;

          v66(v61, v63, v102, v103, v58, 0, partial apply for closure #1 in ActivitySession.presentSessionDismissalAlert(for:allowingCancellation:completion:), v64, v59, v60);
        }

        else
        {
          v77 = v18;
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v105 = v77;
            v106 = v81;
            *v80 = 136315138;
            type metadata accessor for ActivitySession(0);
            v82 = v77;
            v83 = String.init<A>(reflecting:)();
            v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v106);

            *(v80 + 4) = v85;
            _os_log_impl(&dword_1AEB26000, v78, v79, "Skipping session dismissal alert and ending session because only one option would be presented: %s", v80, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v81);
            MEMORY[0x1B27120C0](v81, -1, -1);
            MEMORY[0x1B27120C0](v80, -1, -1);
          }

          v86 = v101;
          (*((*MEMORY[0x1E69E7D40] & *v77) + 0x490))(v104, a5);
        }

        return;
      }

      type metadata accessor for ConversationManagerHost();
      v51 = swift_getObjCClassFromMetadata();
      v52 = [objc_opt_self() bundleForClass_];
      v108._object = 0xE000000000000000;
      v53._countAndFlagsBits = 0x495443415F444E45;
      v53._object = 0xEC00000059544956;
      v54.value._countAndFlagsBits = 0x6E65736572706F43;
      v54.value._object = 0xEE0065726F436563;
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      v108._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v108);

      v44 = String.init(format:_:)();
      v46 = v56;
    }

    goto LABEL_12;
  }

  v68 = v18;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v105 = v68;
    v106 = v72;
    *v71 = 136315138;
    type metadata accessor for ActivitySession(0);
    v73 = v68;
    v74 = String.init<A>(reflecting:)();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v106);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_1AEB26000, v69, v70, "Not presenting session dismissal alert because we don't have an XPC connection for the app (not joined?) session: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x1B27120C0](v72, -1, -1);
    MEMORY[0x1B27120C0](v71, -1, -1);
  }

  v104(0);
}

uint64_t closure #1 in ActivitySession.presentSessionDismissalAlert(for:allowingCancellation:completion:)(uint64_t result, char a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (result == 2)
  {
    if ((a2 & 1) == 0)
    {
      return result;
    }

    return (*((*MEMORY[0x1E69E7D40] & *a3) + 0x498))(a4, a5);
  }

  if (result == 1)
  {
    if (a2)
    {
      return (*((*MEMORY[0x1E69E7D40] & *a3) + 0x490))(a4, a5);
    }

    return (*((*MEMORY[0x1E69E7D40] & *a3) + 0x498))(a4, a5);
  }

  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & *a3) + 0x490))(a4, a5);
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);
  v8 = a3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    type metadata accessor for ActivitySession(0);
    v13 = v8;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1AEB26000, v9, v10, "User chose not to dismiss session %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  return a4(1);
}

uint64_t ActivitySession.endSessionForAll(completion:)(void (*a1)(void), void *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  v46 = v16;
  v47 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v45 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.default);
  v20 = v6;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40[1] = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v41 = a1;
    v40[0] = v25;
    v48 = v20;
    aBlock[0] = v25;
    *v24 = 136315138;
    type metadata accessor for ActivitySession(0);
    v42 = v15;
    v26 = v20;
    v27 = String.init<A>(reflecting:)();
    v29 = a5;
    v30 = a6;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, aBlock);
    v15 = v42;

    *(v24 + 4) = v31;
    a6 = v30;
    a5 = v29;
    _os_log_impl(&dword_1AEB26000, v21, v22, a3, v24, 0xCu);
    v32 = v40[0];
    __swift_destroy_boxed_opaque_existential_1Tm(v40[0]);
    v33 = v32;
    a1 = v41;
    MEMORY[0x1B27120C0](v33, -1, -1);
    MEMORY[0x1B27120C0](v24, -1, -1);
  }

  a1(0);
  v34 = swift_allocObject();
  *(v34 + 16) = v20;
  aBlock[4] = a5;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a6;
  v35 = _Block_copy(aBlock);
  v36 = v20;
  v37 = v45;
  static DispatchQoS.unspecified.getter();
  v48 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v38 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v37, v15, v35);
  _Block_release(v35);
  (*(v44 + 8))(v15, v38);
  (*(v47 + 8))(v37, v46);
}

Swift::Void __swiftcall ActivitySession.terminateSessionIfAtEndOfLifetime()()
{
  v4 = v0;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v4 + OBJC_IVAR___CPActivitySession_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v11 = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_14:
    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.default);
    v31 = v4;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v49[0] = v3;
      v34 = swift_slowAlloc();
      v35 = v1;
      v36 = swift_slowAlloc();
      v51 = v36;
      *v34 = 67109634;
      *(v34 + 4) = v2() & 1;

      *(v34 + 8) = 2080;
      v37 = (*((*v35 & *v31) + 0x328))();
      v38 = [v37 metadata];

      if (v38)
      {
        v39 = [v38 lifetimePolicy];

        v50 = v39;
        type metadata accessor for TUConversationActivityLifetimePolicy(0);
        v40 = String.init<A>(reflecting:)();
        v42 = v41;
      }

      else
      {
        v42 = 0xE300000000000000;
        v40 = 7104878;
      }

      v43 = v49[0];
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v51);

      *(v34 + 10) = v44;
      *(v34 + 18) = 2080;
      v43(&v50, v45);
      v46 = String.init<A>(reflecting:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v51);

      *(v34 + 20) = v48;
      _os_log_impl(&dword_1AEB26000, v32, v33, "terminateSessionIfAtEndOfLifetime, Not terminating session.  isLocallyInitiated: %{BOOL}d, lifetimePolicy: %s, state: %s", v34, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v36, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    else
    {
    }

    return;
  }

  v1 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x2F8);
  v12 = (*MEMORY[0x1E69E7D40] & *v4) + 760;
  v13 = v3(&v51, v11);
  v14 = v51;
  if ((v51 & 0x8000000000000000) == 0)
  {
    v13 = outlined consume of ActivitySession.State(v51);
  }

  v2 = *((*v1 & *v4) + 0x340);
  if (((v2)(v13) & 1) == 0 || (v15 = (*((*v1 & *v4) + 0x328))(), v16 = [v15 metadata], v15, !v16) || (v17 = objc_msgSend(v16, sel_lifetimePolicy), v16, (v14 & 0x8000000000000000) == 0) || v17 != 1)
  {
    v49[1] = v12;
    if (one-time initialization token for default == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.default);
  v19 = v4;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = v1;
    v24 = swift_slowAlloc();
    v50 = v19;
    v51 = v24;
    *v22 = 136315138;
    type metadata accessor for ActivitySession(0);
    v25 = v19;
    v26 = String.init<A>(reflecting:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v51);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1AEB26000, v20, v21, "terminateSessionIfAtEndOfLifetime, terminating %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v29 = v24;
    v1 = v23;
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  (*((*v1 & *v19) + 0x440))();
}

unint64_t ActivitySession.buildDisplayOptions(title:allowingCancellation:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);

  v11 = swift_initStackObject();
  if (a3)
  {
    *(v11 + 16) = xmmword_1AEE07B30;
    *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 72) = v9;
    *(v11 + 40) = v12;
    *(v11 + 48) = a1;
    *(v11 + 56) = a2;
    *(v11 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 88) = v13;
    type metadata accessor for ConversationManagerHost();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();

    v16 = [v15 bundleForClass_];
    v74._object = 0xE000000000000000;
    v17._object = 0x80000001AEE2F6F0;
    v17._countAndFlagsBits = 0xD000000000000010;
    v18.value._countAndFlagsBits = 0x6E65736572706F43;
    v18.value._object = 0xEE0065726F436563;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v74._countAndFlagsBits = 0;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v74);

    *(v11 + 120) = MEMORY[0x1E69E6158];
    *(v11 + 96) = v20;
    *(v11 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 136) = v21;
    v22 = [v15 bundleForClass_];
    v75._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0x4C45434E4143;
    v23._object = 0xE600000000000000;
    v24.value._countAndFlagsBits = 0x6E65736572706F43;
    v24.value._object = 0xEE0065726F436563;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v75._countAndFlagsBits = 0;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v75);

    *(v11 + 144) = v26;
    v9 = MEMORY[0x1E69E6158];
    *(v11 + 168) = MEMORY[0x1E69E6158];
    *(v11 + 176) = 0xD000000000000022;
    *(v11 + 216) = MEMORY[0x1E69E6810];
    *(v11 + 184) = 0x80000001AEE2F710;
    *(v11 + 192) = 1;
  }

  else
  {
    *(v11 + 16) = xmmword_1AEE07B10;
    *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 72) = v9;
    *(v11 + 40) = v28;
    *(v11 + 48) = a1;
    *(v11 + 56) = a2;
    *(v11 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 88) = v29;
    type metadata accessor for ConversationManagerHost();
    v30 = swift_getObjCClassFromMetadata();
    v31 = objc_opt_self();

    v32 = [v31 bundleForClass_];
    v76._object = 0xE000000000000000;
    v33._object = 0x80000001AEE2F6F0;
    v33._countAndFlagsBits = 0xD000000000000010;
    v34.value._countAndFlagsBits = 0x6E65736572706F43;
    v34.value._object = 0xEE0065726F436563;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v76._countAndFlagsBits = 0;
    v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v76);

    *(v11 + 120) = v9;
    *(v11 + 96) = v36;
  }

  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  v40 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v4) + 0x340))() & 1) == 0 || (v41 = (*((*v40 & *v4) + 0x328))(), v42 = [v41 metadata], v41, !v42) || (v43 = objc_msgSend(v42, sel_lifetimePolicy), v42, v43 != 1))
  {
    if (!(*((*v40 & *v4) + 0x3D8))() || (v45 = v44, ObjectType = swift_getObjectType(), v47 = (*(v45 + 48))(ObjectType, v45), swift_unknownObjectRelease(), (v47 & 1) != 0))
    {
      type metadata accessor for ConversationManagerHost();
      v48 = swift_getObjCClassFromMetadata();
      v49 = [objc_opt_self() bundleForClass_];
      v77._object = 0xE000000000000000;
      v50._countAndFlagsBits = 0x5F524F465F444E45;
      v50._object = 0xEA0000000000454DLL;
      v51.value._countAndFlagsBits = 0x6E65736572706F43;
      v51.value._object = 0xEE0065726F436563;
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      v77._countAndFlagsBits = 0;
      v53 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v49, v52, v77);

      v73 = v9;
      v72 = v53;
      outlined init with take of Any(&v72, v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v27;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, v37, v39, isUniquelyReferenced_nonNull_native);
LABEL_16:

      return v70;
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Log.default);
  v56 = v4;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v72._countAndFlagsBits = v60;
    *v59 = 136315138;
    *&v71[0] = v56;
    type metadata accessor for ActivitySession(0);
    v61 = v56;
    v62 = String.init<A>(reflecting:)();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v72._countAndFlagsBits);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_1AEB26000, v57, v58, "excluding end-only-for-me option for locally initiated session with initiator-owned content association: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x1B27120C0](v60, -1, -1);
    MEMORY[0x1B27120C0](v59, -1, -1);
  }

  if (a3)
  {
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
    v73 = MEMORY[0x1E69E6810];
    v72._countAndFlagsBits = 0;
    outlined init with take of Any(&v72, v71);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, v65, v67, v68);
    goto LABEL_16;
  }

  return 0;
}

id default argument 7 of ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static IMUserNotificationCenter.shared;
  a1[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  a1[4] = &protocol witness table for IMUserNotificationCenter;
  *a1 = v3;

  return v3;
}

char *ActivitySession.__allocating_init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, void *a9)
{
  v10 = v9;
  v28 = a7;
  v29 = a8;
  v27 = a6;
  v26 = a5;
  v15 = objc_allocWithZone(v10);
  ObjectType = swift_getObjectType();
  v17 = a9[3];
  v18 = a9[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a9, v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(a1, a2, a3, v26, v27, v28, v29, v21, v15, ObjectType, v17, a4, v18);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  return v23;
}

char *ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, void *a9)
{
  v26 = a7;
  v27 = a8;
  v25 = a6;
  v24 = a5;
  ObjectType = swift_getObjectType();
  v15 = a9[3];
  v16 = a9[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a9, v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(a1, a2, a3, v24, v25, v26, v27, v19, v9, ObjectType, v15, a4, v16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  return v21;
}

void closure #1 in ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    ActivitySession.associatedScenesChanged()();
  }
}

_BYTE *ActivitySession.__allocating_init(activitySession:manager:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized ActivitySession.__allocating_init(activitySession:manager:)(a1, a2, v3, ObjectType, a3);
}

id ActivitySession.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem;
  if (*&v0[OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();

    *&v0[v2] = 0;
  }

  ActivitySession.invalidateDomainAssertion()();
  v3 = OBJC_IVAR___CPActivitySession_connection;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = 0;

  v6.receiver = v1;
  v6.super_class = type metadata accessor for ActivitySession(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

Swift::Void __swiftcall ActivitySession.refreshDataCryptor()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v7 = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F8))(&v26, v7);
    v9 = v26;
    v24 = 0x8000000000000008;
    v25 = v26;
    v10 = static ActivitySession.State.== infix(_:_:)(&v25, &v24);
    outlined consume of ActivitySession.State(v9);
    if (v10)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      v12 = *((*v8 & *v0) + 0x3D8);
      v13 = v0;
      if (v12())
      {
        v15 = v14;
        ObjectType = swift_getObjectType();
        v17 = UUID.uuidString.getter();
        v19 = v18;
        v20 = swift_allocObject();
        v20[2] = v13;
        v20[3] = partial apply for closure #1 in ActivitySession.refreshDataCryptor();
        v20[4] = v11;
        v21 = *(v15 + 96);
        v22 = v13;

        v21(v22, v17, v19, partial apply for closure #1 in ActivitySession.fetchDataCryptor(completion:), v20, ObjectType, v15);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

char *closure #1 in ActivitySession.refreshDataCryptor()(uint64_t a1, void *a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x408))();
  if (result)
  {
    v4 = result;
    v5 = [*&result[direct field offset for XPCHostConnection.connection] remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
    result = swift_dynamicCast();
    if (result)
    {

      [v6 setDataCryptor_];
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in ActivitySession.fetchDataCryptor(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in ActivitySession.fetchDataCryptor(completion:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_237;
  v14 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v12, v9, v14);
  _Block_release(v14);
  (*(v18 + 8))(v9, v7);
  (*(v10 + 8))(v12, v17);
}

Swift::Void __swiftcall ActivitySession.invalidate(replacementBundleIdentifier:)(Swift::String replacementBundleIdentifier)
{
  object = replacementBundleIdentifier._object;
  countAndFlagsBits = replacementBundleIdentifier._countAndFlagsBits;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR___CPActivitySession_queue];
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_1AEB26000, v12, v13, "Invalidating %@", v14, 0xCu);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = countAndFlagsBits;
  *(v17 + 24) = object;
  v20 = v17;
  v18 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x300);

  v18(&v20);
}

id ActivitySession.rbsAssertion(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() targetWithPid_];
  v2 = *MEMORY[0x1E69D8FC8];
  v3 = MEMORY[0x1B270FF70](0x74634170756F7247, 0xEF73656974697669);
  v4 = [objc_opt_self() attributeWithDomain:v2 name:v3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AEE07B40;
  *(v5 + 32) = v4;
  v6 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v7 = v4;
  v8 = MEMORY[0x1B270FF70](0xD000000000000024, 0x80000001AEE2F060);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v6 initWithExplanation:v8 target:v1 attributes:isa];

  return v10;
}

void ActivitySession.updateApplicationState(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CPActivitySession_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v9 = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = MEMORY[0x1E69E7D40];
    if (a1 != 1 || ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x2F8))(&v16, v9), v11 = v16, v14 = 0x8000000000000008, v15 = v16, v12 = static ActivitySession.State.== infix(_:_:)(&v15, &v14), outlined consume of ActivitySession.State(v11), (v12 & 1) == 0))
    {
      (*((*v10 & *v1) + 0x2B0))(a1);
      ActivitySession.sessionChanged()();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ActivitySession.refreshActiveParticipants()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x428);

    v7(v8, 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in ActivitySession.listener(_:shouldAcceptNewConnection:)(_BYTE *a1, void *a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x3D8))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 80))(a2, ObjectType, v6);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8 & 1;
  return result;
}

Swift::Void __swiftcall ActivitySession.requestForegroundPresentation()()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Asked to be presented as foreground for %@", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x2F8);
  v9(&v24);
  v10 = v24;
  v22 = 0x8000000000000008;
  v23 = v24;
  v11 = static ActivitySession.State.== infix(_:_:)(&v23, &v22);
  v12 = outlined consume of ActivitySession.State(v10);
  if (v11 & 1) != 0 || ((v9)(&v24, v12), v13 = v24, v22 = 0x8000000000000000, v23 = v24, v14 = static ActivitySession.State.== infix(_:_:)(&v23, &v22), outlined consume of ActivitySession.State(v13), (v14))
  {
    v15 = (*((*v8 & *v2) + 0x2B0))(1);
    if ((*((*v8 & *v2) + 0x3D8))(v15))
    {
      v17 = v16;
      ObjectType = swift_getObjectType();
      (*(v17 + 136))(v2, ObjectType, v17);
      swift_unknownObjectRelease();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR, MEMORY[0x1E695BF80]);
    Subject<>.send()();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1AEB26000, oslog, v19, "Not presenting in foreground as session is not in joined or waiting state", v20, 2u);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }
  }
}

Swift::Void __swiftcall ActivitySession.enableAutoCloseForPersistentScene()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v4 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ActivitySession.enableAutoCloseForPersistentScene();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_100;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v11 + 8))(v3, v1);
  (*(v4 + 8))(v6, v10);
}

void closure #1 in ActivitySession.enableAutoCloseForPersistentScene()(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR___CPActivitySession_persistentSceneIsEligibleForAutoClose;
    swift_beginAccess();
    v8 = v6[v7];
    v6[v7] = 1;
    v9 = *&v6[OBJC_IVAR___CPActivitySession_queue];
    *v4 = v9;
    (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
    v10 = v9;
    LOBYTE(v9) = _dispatchPreconditionTest(_:)();
    (*(v2 + 8))(v4, v1);
    if (v9)
    {
      if (v8 != v6[v7])
      {
        ActivitySession.sessionChanged()();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall ActivitySession.associateScene(sceneID:)(Swift::String sceneID)
{
  object = sceneID._object;
  countAndFlagsBits = sceneID._countAndFlagsBits;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR___CPActivitySession_queue];
  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = countAndFlagsBits;
  v11[4] = object;
  aBlock[4] = partial apply for closure #1 in ActivitySession.associateScene(sceneID:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_106;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

void closure #1 in ActivitySession.associateScene(sceneID:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator);
  if (v5)
  {
    oslog = v5;
    v6._countAndFlagsBits = a2;
    v6._object = a3;
    ActivitySession.SceneAssociationCoordinator.setSystemAssociatedScene(to:)(v6);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.host);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v12);
      _os_log_impl(&dword_1AEB26000, oslog, v8, "Attempted to associate scene '%s' on an activity without a scene association coordinator.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1B27120C0](v10, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }
  }
}

char *ActivitySession.associatedScenesChanged()()
{
  if (one-time initialization token for sceneAssociation != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.sceneAssociation);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136446722;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001AEE2F680, &v28);
    *(v7 + 12) = 2080;
    (*((*v6 & *v2) + 0x1C8))(v27);
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v9 = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v28);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v28);

    *(v7 + 24) = v15;
    _os_log_impl(&dword_1AEB26000, v3, v4, "%{public}s to [%s] on %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  else
  {
  }

  v16 = (*((*v6 & *v2) + 0x3D8))();
  if (v16)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 144))(v2, ObjectType, v18);
    v16 = swift_unknownObjectRelease();
  }

  result = (*((*v6 & *v2) + 0x408))(v16);
  if (result)
  {
    v21 = result;
    v22 = [*&result[direct field offset for XPCHostConnection.connection] remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
    result = swift_dynamicCast();
    if (result)
    {
      v23 = v28;

      v24 = (*((*v6 & *v2) + 0x1C0))();
      if (v25)
      {
        v26 = MEMORY[0x1B270FF70](v24);
      }

      else
      {
        v26 = 0;
      }

      [v23 setAssociatedSceneWithSceneSessionIdentifier_];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void ActivitySession.setNearbyParticipantIDs(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_unaliasedNearbyParticipantIDs;
  if (*(v1 + OBJC_IVAR___CPActivitySession_unaliasedNearbyParticipantIDs) && (_sSh2eeoiySbShyxG_ABtFZs6UInt64V_Tt1g5(*(v1 + OBJC_IVAR___CPActivitySession_unaliasedNearbyParticipantIDs), a1) & 1) != 0)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.host);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v68[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001AEE2F090, v68);
      _os_log_impl(&dword_1AEB26000, oslog, v5, "%{public}s: Nearby participants did not change. Skipping update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1B27120C0](v7, -1, -1);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }

    else
    {
    }

    return;
  }

  *(v1 + v3) = a1;

  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3C0);
  v65 = a1;

  v64 = v1;
  v10 = v8(v9);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_ADTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_13:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v17 >= v15)
    {

      *(swift_allocObject() + 16) = v11;

      v33 = MEMORY[0x1B27104E0](0, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
      v34 = *(v65 + 56);
      v68[0] = v33;
      v35 = -1 << *(v65 + 32);
      if (-v35 < 64)
      {
        v36 = ~(-1 << -v35);
      }

      else
      {
        v36 = -1;
      }

      v37 = v36 & v34;

      v38 = 0;
      while (1)
      {
        v39 = v37;
        v40 = v38;
        if (!v37)
        {
          break;
        }

LABEL_35:
        v42 = (v39 - 1) & v39;
        v43 = *(*(v65 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));

        outlined consume of Set<String>.Iterator._Variant(v44);
        v38 = v40;
        v37 = v42;
        if (v11[2])
        {
          v45 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
          v38 = v40;
          v37 = v42;
          if (v46)
          {
            specialized Set._Variant.insert(_:)(&v69, *(v11[7] + 8 * v45));
            v38 = v40;
            v37 = v42;
          }
        }
      }

      v41 = v38;
      while (1)
      {
        v40 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_51;
        }

        if (v40 >= ((63 - v35) >> 6))
        {

          outlined consume of Set<String>.Iterator._Variant(v65);
          outlined consume of Set<String>.Iterator._Variant(v65);

          if (one-time initialization token for host != -1)
          {
            goto LABEL_54;
          }

          goto LABEL_39;
        }

        v39 = *(v65 + 56 + 8 * v40);
        ++v41;
        if (v39)
        {
          goto LABEL_35;
        }
      }
    }

    v14 = *(v10 + 64 + 8 * v17);
    ++v16;
  }

  while (!v14);
  while (1)
  {
    v18 = (v17 << 9) | (8 * __clz(__rbit64(v14)));
    osloga = *(*(v10 + 48) + v18);
    v19 = *(*(v10 + 56) + v18);
    v20 = [v19 identifier];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v11;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
    v24 = v11[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v11[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v22;
        specialized _NativeDictionary.copy()();
        v22 = v32;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_56;
      }
    }

    v14 &= v14 - 1;
    v11 = v68[0];
    if (v28)
    {
      *(*(v68[0] + 56) + 8 * v22) = osloga;

      v16 = v17;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(v68[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v11[6] + 8 * v22) = v20;
      *(v11[7] + 8 * v22) = osloga;

      v30 = v11[2];
      v26 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v26)
      {
        goto LABEL_53;
      }

      v11[2] = v31;
      v16 = v17;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v17 = v16;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  swift_once();
LABEL_39:
  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Log.host);

  v48 = v64;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v68[0] = v52;
    *v51 = 136446722;
    *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001AEE2F090, v68);
    *(v51 + 12) = 2080;
    v53 = Set.description.getter();
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v68);

    *(v51 + 14) = v55;
    *(v51 + 22) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v68);

    *(v51 + 24) = v58;
    _os_log_impl(&dword_1AEB26000, v49, v50, "%{public}s: Setting nearby participants to %s on %s", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v52, -1, -1);
    MEMORY[0x1B27120C0](v51, -1, -1);
  }

  v59 = (*((*MEMORY[0x1E69E7D40] & *v48) + 0x408))();
  if (v59)
  {
    v60 = v59;
    v61 = [*(v59 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
    if (swift_dynamicCast())
    {
      v62 = v69;

      isa = Set._bridgeToObjectiveC()().super.isa;

      [v62 setNearbyParticipants_];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
LABEL_56:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }
  }

  else
  {
  }
}

id ActivitySession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for Identifiable.id.getter in conformance ActivitySession@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___CPActivitySession_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t ActivitySession.updateActivity<A>(_:newValue:)(void *a1, uint64_t a2)
{
  v4 = *(*a1 + *MEMORY[0x1E69E6F98] + 8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - v7;
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x328))(v6);
  (*(v5 + 16))(v8, a2, v4);
  v13[1] = v10;
  v11 = v10;
  swift_setAtReferenceWritableKeyPath();

  return (*((*v9 & *v2) + 0x330))(v11);
}

void ActivitySession.updateActivity(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = type metadata accessor for UUID();
  v162 = *(v160 - 8);
  v8 = MEMORY[0x1EEE9AC00](v160);
  v155 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v161 = &v148 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v159 = &v148 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + OBJC_IVAR___CPActivitySession_queue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v156 = v7;
  v157 = v5;
  v158 = v4;
  v22 = [a1 activityIdentifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x328);
  v26 = v7();
  v27 = [v26 activityIdentifier];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v23 == v28 && v25 == v30)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v33 = (v7)(v31);
  v34 = [v33 bundleIdentifier];

  if (v34)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = [a1 bundleIdentifier];
  if (v38)
  {
    v39 = v38;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = specialized static BundleIdentiferMap.areEquivalentBundleIDs(bundleID:otherBundleID:)(v35, v37, v40, v42);

  if (v43)
  {
    v45 = (v7)(v44);
    v46 = [a1 isEquivalentToActivity_];

    if (!v46)
    {
LABEL_36:
      v74 = (v7)(v47);
      v75 = specialized static TUConversationActivity.< infix(_:_:)(v74, a1);

      v76 = v162;
      if (v75)
      {
        if (one-time initialization token for host != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        __swift_project_value_buffer(v77, static Log.host);
        v78 = v2;
        v79 = a1;
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v152 = v81;
          v153 = v80;
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          aBlock[0] = v151;
          *v82 = 138412802;
          *(v82 + 4) = v79;
          *v83 = v79;
          *(v82 + 12) = 2112;
          v154 = v79;
          v84 = (v7)(v79);
          *(v82 + 14) = v84;
          v150 = v83;
          v83[1] = v84;
          *(v82 + 22) = 2080;
          v85 = v159;
          v86 = v160;
          v149 = *(v76 + 16);
          v149(v159, v78 + OBJC_IVAR___CPActivitySession_id, v160);
          (*(v76 + 56))(v85, 0, 1, v86);
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(v85, v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if ((*(v76 + 48))(v14, 1, v86) == 1)
          {
            v87 = 0xE300000000000000;
            v88 = 7104878;
          }

          else
          {
            v106 = v161;
            (*(v76 + 32))(v161, v14, v86);
            v149(v155, v106, v86);
            v88 = String.init<A>(reflecting:)();
            v87 = v107;
            (*(v76 + 8))(v106, v86);
          }

          outlined destroy of NSObject?(v159, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v87, aBlock);

          *(v82 + 24) = v108;
          v109 = v153;
          _os_log_impl(&dword_1AEB26000, v153, v152, "Updating activity %@ vs %@ on %s", v82, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v110 = v150;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v110, -1, -1);
          v111 = v151;
          __swift_destroy_boxed_opaque_existential_1Tm(v151);
          MEMORY[0x1B27120C0](v111, -1, -1);
          MEMORY[0x1B27120C0](v82, -1, -1);

          v76 = v162;
          v79 = v154;
        }

        else
        {

          v86 = v160;
        }

        v112 = v7();
        v113 = [v79 UUID];
        v114 = v161;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v76 + 8))(v114, v86);
        [v112 setUUID_];

        v116 = v7();
        v117 = [v79 applicationContext];
        v118 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v119;

        v121 = Data._bridgeToObjectiveC()().super.isa;
        outlined consume of Data._Representation(v118, v120);
        [v116 setApplicationContext_];

        v122 = v7();
        v123 = [v79 metadata];
        [v122 setMetadata_];

        v124 = v7();
        v125 = [v79 timestamp];
        v126 = v156;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v127 = Date._bridgeToObjectiveC()().super.isa;
        (*(v157 + 8))(v126, v158);
        [v124 setTimestamp_];

        v128 = v7();
        v129 = [v79 trustedFromHandle];
        [v128 setTrustedFromHandle_];

        v130 = [v79 originator];
        v131 = v7();
        [v131 setOriginator_];
        v132 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v78) + 0x330))(v131);

        v133 = *((*v132 & *v78) + 0x2F8);
        v133(aBlock);
        v134 = aBlock[0];
        v164 = 0x8000000000000000;
        v165[0] = aBlock[0];
        LOBYTE(v130) = static ActivitySession.State.== infix(_:_:)(v165, &v164);
        v135 = outlined consume of ActivitySession.State(v134);
        if (v130 & 1) != 0 || ((v133)(aBlock, v135), v136 = aBlock[0], v164 = 0x8000000000000008, v165[0] = aBlock[0], v137 = static ActivitySession.State.== infix(_:_:)(v165, &v164), v135 = outlined consume of ActivitySession.State(v136), (v137))
        {
          v135 = (*((*v132 & *v78) + 0x3D8))(v135);
          if (v135)
          {
            v139 = v138;
            ObjectType = swift_getObjectType();
            v141 = (*(v139 + 16))(ObjectType, v139);
            swift_unknownObjectRelease();
            v142 = swift_allocObject();
            *(v142 + 16) = v78;
            aBlock[4] = partial apply for closure #1 in ActivitySession.updateActivity(_:);
            aBlock[5] = v142;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
            aBlock[3] = &block_descriptor_115;
            v143 = _Block_copy(aBlock);
            v144 = v78;

            [v141 authorizePiPForActivity:v144 withCompletion:v143];
            _Block_release(v143);
          }
        }

        if ((*((*v132 & *v78) + 0x3D8))(v135))
        {
          v146 = v145;
          v147 = swift_getObjectType();
          (*(v146 + 112))(v78, v147, v146);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (one-time initialization token for host != -1)
        {
          swift_once();
        }

        v89 = type metadata accessor for Logger();
        __swift_project_value_buffer(v89, static Log.host);
        v90 = a1;
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          *v93 = 138412290;
          *(v93 + 4) = v90;
          *v94 = v90;
          v95 = v90;
          _os_log_impl(&dword_1AEB26000, v91, v92, "Dropping activity update because it is older than the current activity %@", v93, 0xCu);
          outlined destroy of NSObject?(v94, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B27120C0](v94, -1, -1);
          MEMORY[0x1B27120C0](v93, -1, -1);
        }
      }

      return;
    }

    v48 = v7();
    v49 = [v48 metadata];

    if (v49)
    {
      v50 = [v49 imageData];

      if (v50)
      {
        v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

LABEL_24:
        v62 = [a1 metadata];
        if (v62 && (v63 = v62, v64 = [v62 imageData], v63, v64))
        {
          v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v66;
        }

        else
        {
          v65 = 0;
          v67 = 0xF000000000000000;
        }

        if (v52 >> 60 == 15)
        {
          if (v67 >> 60 == 15)
          {
            outlined consume of Data?(v49, v52);
LABEL_49:
            if (one-time initialization token for host != -1)
            {
              swift_once();
            }

            v97 = type metadata accessor for Logger();
            __swift_project_value_buffer(v97, static Log.host);
            v98 = v2;
            v99 = a1;
            v100 = Logger.logObject.getter();
            v101 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v100, v101))
            {
              v102 = swift_slowAlloc();
              v103 = swift_slowAlloc();
              *v102 = 138412546;
              *(v102 + 4) = v98;
              *(v102 + 12) = 2112;
              *(v102 + 14) = v99;
              *v103 = v2;
              v103[1] = v99;
              v104 = v98;
              v105 = v99;
              _os_log_impl(&dword_1AEB26000, v100, v101, "%@ dropping activity update because of no significant changes %@", v102, 0x16u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              swift_arrayDestroy();
              MEMORY[0x1B27120C0](v103, -1, -1);
              MEMORY[0x1B27120C0](v102, -1, -1);
            }

            return;
          }
        }

        else if (v67 >> 60 != 15)
        {
          outlined copy of Data?(v49, v52);
          outlined copy of Data?(v65, v67);
          v96 = specialized static Data.== infix(_:_:)(v49, v52, v65, v67);
          outlined consume of Data?(v65, v67);
          outlined consume of Data?(v49, v52);
          outlined consume of Data?(v65, v67);
          outlined consume of Data?(v49, v52);
          if (v96)
          {
            goto LABEL_49;
          }

          goto LABEL_33;
        }

        outlined consume of Data?(v49, v52);
        outlined consume of Data?(v65, v67);
LABEL_33:
        v68 = [a1 metadata];
        if (!v68)
        {
          goto LABEL_49;
        }

        v69 = v68;
        v70 = [v68 imageData];

        if (!v70)
        {
          goto LABEL_49;
        }

        v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        v47 = outlined consume of Data._Representation(v71, v73);
        goto LABEL_36;
      }

      v49 = 0;
    }

    v52 = 0xF000000000000000;
    goto LABEL_24;
  }

LABEL_17:
  if (one-time initialization token for host != -1)
  {
LABEL_63:
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Log.host);
  v54 = v2;
  v55 = a1;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412802;
    *(v58 + 4) = v54;
    *(v58 + 12) = 2112;
    *(v58 + 14) = v55;
    *v59 = v2;
    v59[1] = v55;
    *(v58 + 22) = 2112;
    v60 = v54;
    v61 = (v7)(v55);
    *(v58 + 24) = v61;
    v59[2] = v61;
    _os_log_impl(&dword_1AEB26000, v56, v57, "%@ dropping activity update because of mismatched activityIdentifiers or bundleID %@ vs %@", v58, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v59, -1, -1);
    MEMORY[0x1B27120C0](v58, -1, -1);
  }

  [v54 resetSession];
}

void closure #1 in ActivitySession.updateActivity(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a3;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&dword_1AEB26000, oslog, v6, "[PiP] Authorized pip for %@", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void ActivitySession.updateActivityImage(_:)()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v7 = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x328);
  v10 = (v9)(v7);
  v11 = [v10 metadata];

  if (v11)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v11 setImageData_];

    v13 = v11;
    v14 = v9();
    [v14 setMetadata_];
    (*((*v8 & *v0) + 0x330))(v14);

    goto LABEL_7;
  }

  if (one-time initialization token for host != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.host);
  v13 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1AEB26000, v13, v16, "No metadata to update", v17, 2u);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

LABEL_7:
}

Swift::Bool __swiftcall ActivitySession.needsAssertions()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x328);
  v3 = v2();
  v4 = [v3 isScreenSharingActivity];

  if (v4)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_23;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "[Assertion] Does not need assertion because is screen sharing";
LABEL_22:
    _os_log_impl(&dword_1AEB26000, v6, v7, v9, v8, 2u);
    MEMORY[0x1B27120C0](v8, -1, -1);
LABEL_23:

    return 0;
  }

  v10 = v2();
  v11 = [v10 isSystemActivity];

  if (v11)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_23;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "[Assertion] Does not need assertion because is system activity";
    goto LABEL_22;
  }

  v13 = (*((*v1 & *v0) + 0x408))();
  if (!v13)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.default);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_23;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "[Assertion] Does not need assertion because no connection";
    goto LABEL_22;
  }

  v6 = v13;
  v14 = (v13 + direct field offset for ActivitySessionHostConnection.__isAppProcess);
  swift_beginAccess();
  v15 = *v14;
  v16 = *(&v6[1].isa + direct field offset for XPCHostConnection.bundleIdentifier);
  v28[0] = *(v6 + direct field offset for XPCHostConnection.bundleIdentifier);
  v28[1] = v16;

  v15(&v27, v28);

  if (v27 != 1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.default);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1AEB26000, v24, v25, "[Assertion] Does not need assertion because app is a daemon", v26, 2u);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    goto LABEL_23;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.default);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1AEB26000, v18, v19, "[Assertion] Needs assertion because it is an app", v20, 2u);
    MEMORY[0x1B27120C0](v20, -1, -1);
  }

  return 1;
}

Swift::Void __swiftcall ActivitySession.acquireDomainAssertion(bundleID:pid:)(Swift::String bundleID, Swift::Int32 pid)
{
  v3 = *&pid;
  object = bundleID._object;
  countAndFlagsBits = bundleID._countAndFlagsBits;
  v86[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMd, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v76[-v6];
  v7 = type metadata accessor for ActivitySession.DomainAssertionWrapper(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v81 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v76[-v11];
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v76[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *&v2[OBJC_IVAR___CPActivitySession_queue];
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Log.host);

  v20 = v2;
  v84 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v79 = v8;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v86[0] = v26;
    *v24 = 136315650;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v86);
    *(v24 + 12) = 1024;
    *(v24 + 14) = v3;
    *(v24 + 18) = 2112;
    *(v24 + 20) = v20;
    *v25 = v20;
    v27 = v20;
    _os_log_impl(&dword_1AEB26000, v21, v22, "[Assertion] Attempting to acquire domain assertion for app with bundleID:%s pid:%d %@", v24, 0x1Cu);
    outlined destroy of NSObject?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1B27120C0](v26, -1, -1);
    MEMORY[0x1B27120C0](v24, -1, -1);
  }

  v28 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x4D8))(v3);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v86[0] = v32;
    *v31 = 136315138;
    v85 = v28;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSAssertion, 0x1E69C7548);
    v78 = v20;
    v77 = v3;
    v33 = v28;
    v34 = String.init<A>(reflecting:)();
    v36 = v28;
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v86);
    LODWORD(v3) = v77;
    v20 = v78;

    *(v31 + 4) = v37;
    v28 = v36;
    _os_log_impl(&dword_1AEB26000, v29, v30, "[Assertion] Generated assertion: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x1B27120C0](v32, -1, -1);
    MEMORY[0x1B27120C0](v31, -1, -1);
  }

  [v28 addObserver_];
  ActivitySession.invalidateDomainAssertion()();
  v86[0] = 0;
  v38 = [v28 acquireWithError_];
  v39 = v86[0];
  if (v38)
  {
    v40 = OBJC_IVAR___CPActivitySession_id;
    v41 = *(v7 + 28);
    v42 = type metadata accessor for UUID();
    v43 = v28;
    v44 = v82;
    (*(*(v42 - 8) + 16))(&v82[v41], &v20[v40], v42);
    v45 = countAndFlagsBits;
    *v44 = v43;
    *(v44 + 1) = v45;
    *(v44 + 2) = object;
    *(v44 + 6) = v3;
    v46 = v81;
    outlined init with copy of ActivitySession.DomainAssertionWrapper(v44, v81, type metadata accessor for ActivitySession.DomainAssertionWrapper);

    v47 = v39;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v86[0] = v51;
      *v50 = 136315138;
      v52 = ActivitySession.DomainAssertionWrapper.description.getter();
      v53 = v7;
      v55 = v54;
      outlined destroy of ActivitySession.DomainAssertionWrapper(v46);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v55, v86);
      v7 = v53;

      *(v50 + 4) = v56;
      _os_log_impl(&dword_1AEB26000, v48, v49, "[Assertion] Successfully acquired domain assertion for app with %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1B27120C0](v51, -1, -1);
      MEMORY[0x1B27120C0](v50, -1, -1);
    }

    else
    {

      outlined destroy of ActivitySession.DomainAssertionWrapper(v46);
    }

    v73 = v79;
    v74 = v80;
    v75 = v82;
    outlined init with copy of ActivitySession.DomainAssertionWrapper(v82, v80, type metadata accessor for ActivitySession.DomainAssertionWrapper);
    (*(v73 + 56))(v74, 0, 1, v7);
    (*((*MEMORY[0x1E69E7D40] & *v20) + 0x230))(v74);
    outlined destroy of ActivitySession.DomainAssertionWrapper(v75);
  }

  else
  {
    v57 = v86[0];
    v58 = _convertNSErrorToError(_:)();

    swift_willThrow();

    v59 = v20;
    v60 = v58;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v84 = v28;
      v64 = object;
      v65 = v63;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v86[0] = v67;
      *v65 = 136315906;
      *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v64, v86);
      *(v65 + 12) = 1024;
      *(v65 + 14) = v3;
      *(v65 + 18) = 2112;
      *(v65 + 20) = v59;
      *v66 = v20;
      *(v65 + 28) = 2080;
      v85 = v58;
      v68 = v59;
      v69 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v70 = String.init<A>(reflecting:)();
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v86);

      *(v65 + 30) = v72;
      v28 = v84;
      _os_log_impl(&dword_1AEB26000, v61, v62, "[Assertion] Domain assertion request failed for app with bundleID:%s pid:%d %@. Error:%s ", v65, 0x26u);
      outlined destroy of NSObject?(v66, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v66, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v67, -1, -1);
      MEMORY[0x1B27120C0](v65, -1, -1);
    }

    [v28 removeObserver_];
  }
}

void closure #1 in ActivitySession.invalidateAssertions(useDelay:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem;
    if (*(Strong + OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem))
    {

      dispatch thunk of DispatchWorkItem.cancel()();

      *&v2[v3] = 0;
    }

    ActivitySession.invalidateDomainAssertion()();
  }
}

Swift::Void __swiftcall ActivitySession.invalidateDomainAssertion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMd, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMR);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for ActivitySession.DomainAssertionWrapper(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v26 - v14);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x228))(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMd, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMR);
  }

  else
  {
    outlined init with take of ActivitySession.DomainAssertionWrapper(v7, v15, type metadata accessor for ActivitySession.DomainAssertionWrapper);
    v16 = *v15;
    if ([*v15 isValid])
    {
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.host);
      outlined init with copy of ActivitySession.DomainAssertionWrapper(v15, v12, type metadata accessor for ActivitySession.DomainAssertionWrapper);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v27 = v20;
        v28 = swift_slowAlloc();
        v29 = v28;
        *v20 = 136315138;
        v26 = ActivitySession.DomainAssertionWrapper.description.getter();
        v22 = v21;
        outlined destroy of ActivitySession.DomainAssertionWrapper(v12);
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v22, &v29);

        v24 = v27;
        *(v27 + 1) = v23;
        _os_log_impl(&dword_1AEB26000, v18, v19, "[Assertion] Invalidating domain assertion for app with %s", v24, 0xCu);
        v25 = v28;
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1B27120C0](v25, -1, -1);
        MEMORY[0x1B27120C0](v24, -1, -1);
      }

      else
      {

        outlined destroy of ActivitySession.DomainAssertionWrapper(v12);
      }

      [v16 removeObserver_];
      [v16 invalidate];
      (*(v9 + 56))(v5, 1, 1, v8);
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x230))(v5);
    }

    outlined destroy of ActivitySession.DomainAssertionWrapper(v15);
  }
}

uint64_t ActivitySession.DomainAssertionWrapper.bundleID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ActivitySession.DomainAssertionWrapper.activitySessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivitySession.DomainAssertionWrapper(0) + 28);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivitySession.DomainAssertionWrapper.description.getter()
{
  _StringGuts.grow(_:)(55);
  MEMORY[0x1B2710020](0xD00000000000001BLL, 0x80000001AEE2F0F0);
  MEMORY[0x1B2710020](*(v0 + 8), *(v0 + 16));
  MEMORY[0x1B2710020](0x3A64697020, 0xE500000000000000);
  v4 = *(v0 + 24);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v1);

  MEMORY[0x1B2710020](0xD000000000000011, 0x80000001AEE2F110);
  type metadata accessor for ActivitySession.DomainAssertionWrapper(0);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  return HIDWORD(v4);
}

uint64_t ActivitySession.DomainAssertionWrapper.init(assertion:bundleID:pid:activitySessionUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = *(type metadata accessor for ActivitySession.DomainAssertionWrapper(0) + 28);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 32);

  return v10(a6 + v8, a5, v9);
}

uint64_t ActivitySession.assertionWillInvalidate(_:)()
{
  v1 = *&v0[OBJC_IVAR___CPActivitySession_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ActivitySession.assertionWillInvalidate(_:);
  *(v3 + 24) = v2;
  v8[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_124;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}