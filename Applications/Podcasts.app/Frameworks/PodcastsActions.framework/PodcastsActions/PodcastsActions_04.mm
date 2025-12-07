uint64_t sub_6AD00()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  updated = type metadata accessor for UpdateEpisodePlayStateIntent(0);
  v6 = sub_70530(&qword_12F498, type metadata accessor for UpdateEpisodePlayStateIntent, &protocol conformance descriptor for UpdateEpisodePlayStateIntent);
  *v4 = v0;
  v4[1] = sub_6AE34;
  v7 = v0[9];
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v8, v3, updated, v6, v1, v2);
}

uint64_t sub_6AE34()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_705CC;
  }

  else
  {

    v2 = sub_705D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6AF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6AF74, 0, 0);
}

uint64_t sub_6AF74()
{
  v0[11] = sub_704DC();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6B050;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6B050()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_705D4;
  }

  else
  {
    v2 = sub_6B180;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6B180()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  updated = type metadata accessor for UpdateEpisodePlayStateIntent(0);
  v6 = sub_70530(&qword_12F498, type metadata accessor for UpdateEpisodePlayStateIntent, &protocol conformance descriptor for UpdateEpisodePlayStateIntent);
  *v4 = v0;
  v4[1] = sub_6AE34;
  v7 = v0[9];
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v8, v3, updated, v6, v1, v2);
}

uint64_t sub_6B2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6B2D8, 0, 0);
}

uint64_t sub_6B2D8()
{
  v0[11] = sub_70488();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6B3B4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6B3B4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_7750;
  }

  else
  {
    v2 = sub_6B4E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6B4E4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = type metadata accessor for PlayEpisodeIntent(0);
  v6 = sub_70530(&qword_12F3C8, type metadata accessor for PlayEpisodeIntent, &protocol conformance descriptor for PlayEpisodeIntent);
  *v4 = v0;
  v4[1] = sub_6B618;
  v7 = v0[9];
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v8, v3, v5, v6, v1, v2);
}

uint64_t sub_6B618()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_6B798;
  }

  else
  {

    v2 = sub_6B734;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6B734()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6B798()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6B828, 0, 0);
}

uint64_t sub_6B828()
{
  v0[11] = sub_70434();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6B904;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6B904()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_705D4;
  }

  else
  {
    v2 = sub_6BA34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6BA34()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = type metadata accessor for EnqueueEpisodeForPlaybackIntent(0);
  v6 = sub_70530(&qword_12F478, type metadata accessor for EnqueueEpisodeForPlaybackIntent, &protocol conformance descriptor for EnqueueEpisodeForPlaybackIntent);
  *v4 = v0;
  v4[1] = sub_6AE34;
  v7 = v0[9];
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v8, v3, v5, v6, v1, v2);
}

uint64_t sub_6BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6BB8C, 0, 0);
}

uint64_t sub_6BB8C()
{
  v0[11] = sub_703E0();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6BC68;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6BC68()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_705D4;
  }

  else
  {
    v2 = sub_6BD98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6BD98()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = type metadata accessor for EnqueueEpisodeForPlaybackIntent(0);
  v6 = sub_70530(&qword_12F478, type metadata accessor for EnqueueEpisodeForPlaybackIntent, &protocol conformance descriptor for EnqueueEpisodeForPlaybackIntent);
  *v4 = v0;
  v4[1] = sub_6AE34;
  v7 = v0[9];
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v8, v3, v5, v6, v1, v2);
}

uint64_t sub_6BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a2;
  v4[10] = a1;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6BEF0, 0, 0);
}

uint64_t sub_6BEF0()
{
  v0[11] = sub_7038C();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6BFCC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6BFCC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_705D4;
  }

  else
  {
    v2 = sub_6C0FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6C0FC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_C2A8();
  *v4 = v0;
  v4[1] = sub_6A9A0;
  v6 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v6, v0 + 9, v3, &type metadata for RemoveEpisodesDownloadIntent, v5, v1, v2);
}

uint64_t sub_6C1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a2;
  v4[10] = a1;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6C220, 0, 0);
}

uint64_t sub_6C220()
{
  v0[11] = sub_702E4();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6C2FC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6C2FC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_7750;
  }

  else
  {
    v2 = sub_6C42C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6C42C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_70338();
  *v4 = v0;
  v4[1] = sub_6C52C;
  v6 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v6, v0 + 9, v3, &type metadata for BookmarkEpisodeIntent, v5, v1, v2);
}

uint64_t sub_6C52C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_6C65C;
  }

  else
  {
    v2 = sub_6B734;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6C65C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6C6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a2;
  v4[10] = a1;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6C6E4, 0, 0);
}

uint64_t sub_6C6E4()
{
  v0[11] = sub_7023C();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6C7C0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6C7C0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_705D4;
  }

  else
  {
    v2 = sub_6C8F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6C8F0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_70290();
  *v4 = v0;
  v4[1] = sub_6A9A0;
  v6 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v6, v0 + 9, v3, &type metadata for UnbookmarkEpisodeIntent, v5, v1, v2);
}

uint64_t sub_6CA10()
{
  v0[9] = sub_70194();
  v0[10] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_6CAEC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6CAEC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_6CE34;
  }

  else
  {
    v2 = sub_6CC1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6CC1C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[13] = v3;
  v4 = swift_task_alloc();
  v0[14] = v4;
  v6 = sub_701E8();
  *v4 = v0;
  v4[1] = sub_6CD18;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v5, v3, &type metadata for PlayNextChapterIntent, v6, v1, v2);
}

uint64_t sub_6CD18()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_6CEB4;
  }

  else
  {

    v2 = sub_6CE4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6CE4C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_6CEB4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6CF40()
{
  v0[9] = sub_700EC();
  v0[10] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_6D01C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6D01C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_705D8;
  }

  else
  {
    v2 = sub_6D14C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6D14C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[13] = v3;
  v4 = swift_task_alloc();
  v0[14] = v4;
  v6 = sub_70140();
  *v4 = v0;
  v4[1] = sub_6D248;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v5, v3, &type metadata for PlayPreviousChapterIntent, v6, v1, v2);
}

uint64_t sub_6D248()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_705E0;
  }

  else
  {

    v2 = sub_705EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6D364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6D388, 0, 0);
}

uint64_t sub_6D388()
{
  v0[11] = sub_70098();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6D464;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6D464()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_705D4;
  }

  else
  {
    v2 = sub_6D594;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6D594()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = type metadata accessor for OpenTranscriptIntent(0);
  v6 = sub_70530(&qword_12F420, type metadata accessor for OpenTranscriptIntent, &protocol conformance descriptor for OpenTranscriptIntent);
  *v4 = v0;
  v4[1] = sub_6AE34;
  v7 = v0[9];
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v8, v3, v5, v6, v1, v2);
}

uint64_t sub_6D6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return _swift_task_switch(sub_6D6F0, 0, 0);
}

uint64_t sub_6D6F0()
{
  v0[12] = sub_70044();
  v0[13] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_6D7CC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6D7CC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_6DB50;
  }

  else
  {
    v2 = sub_6D8FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6D8FC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[16] = v3;
  v4 = swift_task_alloc();
  v0[17] = v4;
  ShowLatestEpisodesIntent = type metadata accessor for FetchShowLatestEpisodesIntent(0);
  v6 = sub_70530(&qword_12F410, type metadata accessor for FetchShowLatestEpisodesIntent, &protocol conformance descriptor for FetchShowLatestEpisodesIntent);
  *v4 = v0;
  v4[1] = sub_6DA34;
  v7 = v0[11];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 10, v7, v3, ShowLatestEpisodesIntent, v6, v1, v2);
}

uint64_t sub_6DA34()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_6DBD0;
  }

  else
  {

    v2 = sub_6DB68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6DB68()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[10];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_6DBD0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a3;
  v3[12] = a1;
  v3[10] = a2;
  return _swift_task_switch(sub_6DC60, 0, 0);
}

uint64_t sub_6DC60()
{
  v0[13] = sub_6FF9C();
  v0[14] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_6DD3C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6DD3C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_705DC;
  }

  else
  {
    v2 = sub_6DE6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6DE6C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[17] = v3;
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = type metadata accessor for FollowFeedIntent(0);
  v6 = sub_70530(&qword_12F3F0, type metadata accessor for FollowFeedIntent, &protocol conformance descriptor for FollowFeedIntent);
  *v4 = v0;
  v4[1] = sub_6DFA4;
  v7 = v0[12];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v7, v3, v5, v6, v1, v2);
}

uint64_t sub_6DFA4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_705E4;
  }

  else
  {

    v2 = sub_705E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6E0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a1;
  v3[7] = a2;
  v3[8] = a3;
  return _swift_task_switch(sub_6E0E4, 0, 0);
}

uint64_t sub_6E0E4()
{
  v0[11] = sub_6FF9C();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6E1C0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6E1C0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_7750;
  }

  else
  {
    v2 = sub_6E2F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6E2F0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_6FFF0();
  *v4 = v0;
  v4[1] = sub_6E3F0;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 9, v0 + 10, v3, &type metadata for FetchShowEntitiesIntent, v5, v1, v2);
}

uint64_t sub_6E3F0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_6C65C;
  }

  else
  {
    v2 = sub_6E520;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6E520()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[9];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_6E588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a3;
  v3[12] = a1;
  v3[10] = a2;
  return _swift_task_switch(sub_6E5AC, 0, 0);
}

uint64_t sub_6E5AC()
{
  v0[13] = sub_6FF48();
  v0[14] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_6E688;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6E688()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_6EA0C;
  }

  else
  {
    v2 = sub_6E7B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6E7B8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[17] = v3;
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = type metadata accessor for FollowFeedIntent(0);
  v6 = sub_70530(&qword_12F3F0, type metadata accessor for FollowFeedIntent, &protocol conformance descriptor for FollowFeedIntent);
  *v4 = v0;
  v4[1] = sub_6E8F0;
  v7 = v0[12];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v7, v3, v5, v6, v1, v2);
}

uint64_t sub_6E8F0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_6EA90;
  }

  else
  {

    v2 = sub_6EA24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6EA24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 8);
  v4 = *(v0 + 72);

  return v3(v1, v2, v4);
}

uint64_t sub_6EA90()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6EAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a1;
  v5[11] = a2;
  v5[7] = a3;
  v5[8] = a4;
  v5[9] = a5;
  return _swift_task_switch(sub_6EB24, 0, 0);
}

uint64_t sub_6EB24()
{
  v0[12] = sub_6FEF4();
  v0[13] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_6EC00;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6EC00()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_6DB50;
  }

  else
  {
    v2 = sub_6ED30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6ED30()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[16] = v3;
  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = type metadata accessor for PlayStationIntent(0);
  v6 = sub_70530(&qword_12F3D8, type metadata accessor for PlayStationIntent, &protocol conformance descriptor for PlayStationIntent);
  *v4 = v0;
  v4[1] = sub_6EE64;
  v7 = v0[10];
  v8 = v0[11];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v8, v3, v5, v6, v1, v2);
}

uint64_t sub_6EE64()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_6DBD0;
  }

  else
  {

    v2 = sub_6B734;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6EF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6EFA4, 0, 0);
}

uint64_t sub_6EFA4()
{
  v0[11] = sub_6FEA0();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6F080;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6F080()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_705D4;
  }

  else
  {
    v2 = sub_6F1B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6F1B0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = type metadata accessor for PlayStationIntent(0);
  v6 = sub_70530(&qword_12F3D8, type metadata accessor for PlayStationIntent, &protocol conformance descriptor for PlayStationIntent);
  *v4 = v0;
  v4[1] = sub_6AE34;
  v7 = v0[9];
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v8, v3, v5, v6, v1, v2);
}

uint64_t sub_6F2E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  v4 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v2 + 32);
  return _swift_task_switch(sub_6F314, 0, 0);
}

uint64_t sub_6F314()
{
  v0[14] = sub_6FE4C();
  v0[15] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_6F3F0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_6F3F0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_6F770;
  }

  else
  {
    v2 = sub_6F520;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6F520()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = sub_E5B44();
  v0[18] = v3;
  v4 = swift_task_alloc();
  v0[19] = v4;
  v5 = type metadata accessor for PlayEpisodeIntent(0);
  v6 = sub_70530(&qword_12F3C8, type metadata accessor for PlayEpisodeIntent, &protocol conformance descriptor for PlayEpisodeIntent);
  *v4 = v0;
  v4[1] = sub_6F654;
  v7 = v0[12];
  v8 = v0[13];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v8, v3, v5, v6, v1, v2);
}

uint64_t sub_6F654()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_6F7EC;
  }

  else
  {

    v2 = sub_6F788;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6F788()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6F7EC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6F858(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F360, &qword_EE730);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F368, &qword_EE738);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._object = 0x80000000000F6EB0;
  v5._countAndFlagsBits = 0xD000000000000013;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F378, &qword_EE768);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_6F9F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return DownloadEpisodesAppIntent.perform()(a1);
}

uint64_t sub_6FA8C(uint64_t a1)
{
  v2 = sub_69904();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_6FAC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6FB2C(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_6FB88()
{
  result = qword_12F388;
  if (!qword_12F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F388);
  }

  return result;
}

unint64_t sub_6FBE0()
{
  result = qword_12F390;
  if (!qword_12F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F390);
  }

  return result;
}

unint64_t sub_6FC38()
{
  result = qword_12F398;
  if (!qword_12F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F398);
  }

  return result;
}

unint64_t sub_6FCE0()
{
  result = qword_12F3A0;
  if (!qword_12F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3A0);
  }

  return result;
}

void *sub_6FD34@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

void *sub_6FD74@<X0>(void *a1@<X8>)
{
  result = sub_E5504();
  *a1 = v3;
  return result;
}

unint64_t sub_6FE4C()
{
  result = qword_12F3C0;
  if (!qword_12F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3C0);
  }

  return result;
}

unint64_t sub_6FEA0()
{
  result = qword_12F3D0;
  if (!qword_12F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3D0);
  }

  return result;
}

unint64_t sub_6FEF4()
{
  result = qword_12F3E0;
  if (!qword_12F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3E0);
  }

  return result;
}

unint64_t sub_6FF48()
{
  result = qword_12F3E8;
  if (!qword_12F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3E8);
  }

  return result;
}

unint64_t sub_6FF9C()
{
  result = qword_12F3F8;
  if (!qword_12F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F3F8);
  }

  return result;
}

unint64_t sub_6FFF0()
{
  result = qword_12F400;
  if (!qword_12F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F400);
  }

  return result;
}

unint64_t sub_70044()
{
  result = qword_12F408;
  if (!qword_12F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F408);
  }

  return result;
}

unint64_t sub_70098()
{
  result = qword_12F418;
  if (!qword_12F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F418);
  }

  return result;
}

unint64_t sub_700EC()
{
  result = qword_12F428;
  if (!qword_12F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F428);
  }

  return result;
}

unint64_t sub_70140()
{
  result = qword_12F430;
  if (!qword_12F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F430);
  }

  return result;
}

unint64_t sub_70194()
{
  result = qword_12F438;
  if (!qword_12F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F438);
  }

  return result;
}

unint64_t sub_701E8()
{
  result = qword_12F440;
  if (!qword_12F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F440);
  }

  return result;
}

unint64_t sub_7023C()
{
  result = qword_12F448;
  if (!qword_12F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F448);
  }

  return result;
}

unint64_t sub_70290()
{
  result = qword_12F450;
  if (!qword_12F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F450);
  }

  return result;
}

unint64_t sub_702E4()
{
  result = qword_12F458;
  if (!qword_12F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F458);
  }

  return result;
}

unint64_t sub_70338()
{
  result = qword_12F460;
  if (!qword_12F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F460);
  }

  return result;
}

unint64_t sub_7038C()
{
  result = qword_12F468;
  if (!qword_12F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F468);
  }

  return result;
}

unint64_t sub_703E0()
{
  result = qword_12F470;
  if (!qword_12F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F470);
  }

  return result;
}

unint64_t sub_70434()
{
  result = qword_12F480;
  if (!qword_12F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F480);
  }

  return result;
}

unint64_t sub_70488()
{
  result = qword_12F488;
  if (!qword_12F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F488);
  }

  return result;
}

unint64_t sub_704DC()
{
  result = qword_12F490;
  if (!qword_12F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F490);
  }

  return result;
}

uint64_t sub_70530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_70578()
{
  result = qword_12F4A0;
  if (!qword_12F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F4A0);
  }

  return result;
}

uint64_t sub_705F4()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F4A8);
  __swift_project_value_buffer(v0, qword_12F4A8);
  return sub_E5914();
}

uint64_t static MarkEpisodeAsPlayedAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB98 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F4A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MarkEpisodeAsPlayedAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static MarkEpisodeAsPlayedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4C0, &qword_EE9D0);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4C8, &qword_EE9D8);
  __chkstk_darwin(v1);
  sub_70934();
  sub_E5744();
  v3._countAndFlagsBits = 0x206B72614DLL;
  v3._object = 0xE500000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4D8, &qword_EEA08);
  sub_E5724();

  v4._countAndFlagsBits = 0x79616C5020736120;
  v4._object = 0xEA00000000006465;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_70934()
{
  result = qword_12F4D0;
  if (!qword_12F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F4D0);
  }

  return result;
}

uint64_t sub_70988@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*MarkEpisodeAsPlayedAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_70A4C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_6FAC8(a1, &v10 - v7);
  sub_6FAC8(v8, v6);

  sub_E5514();
  sub_71A70(v8, type metadata accessor for EpisodeEntity);
}

uint64_t MarkEpisodeAsPlayedAppIntent.episode.setter(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_6FAC8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_71A70(a1, type metadata accessor for EpisodeEntity);
}

void (*MarkEpisodeAsPlayedAppIntent.episode.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t MarkEpisodeAsPlayedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v26 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = type metadata accessor for EpisodeEntity(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

unint64_t sub_71064()
{
  result = qword_12E000;
  if (!qword_12E000)
  {
    type metadata accessor for EpisodeEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E000);
  }

  return result;
}

uint64_t MarkEpisodeAsPlayedAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = type metadata accessor for UpdateEpisodePlayStateIntent(0);
  *(v2 + 56) = swift_task_alloc();
  sub_E6304();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = type metadata accessor for EpisodeEntity(0);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v3 = sub_E6974();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;

  return _swift_task_switch(sub_71228, 0, 0);
}

uint64_t sub_71228(uint64_t a1)
{
  v23 = v1;
  sub_E6914();

  v2 = sub_E6964();
  v3 = sub_E7494();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[14];
    v21 = v1[15];
    v5 = v1[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    sub_E5504();
    v8 = sub_E7084();
    v10 = sub_23E64(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "Received a request to mark episode as played: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);

    (*(v4 + 8))(v21, v5);
  }

  else
  {
    v12 = v1[14];
    v11 = v1[15];
    v13 = v1[13];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[7];
  sub_E5504();
  *v14 = 0;
  v15 = swift_task_alloc();
  v1[18] = v15;
  *v15 = v1;
  v15[1] = sub_71460;
  v16 = v1[16];
  v17 = v1[17];
  v19 = v1[7];
  v18 = v1[8];

  return sub_6AAD0(v18, v19, v16, v17);
}

uint64_t sub_71460()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 152) = v0;

  sub_71A70(v3, type metadata accessor for UpdateEpisodePlayStateIntent);
  if (v0)
  {
    v4 = sub_71750;
  }

  else
  {
    sub_71A70(*(v2 + 64), &type metadata accessor for EpisodePlayState);
    v4 = sub_715C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_715C8()
{
  v10 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  sub_E5504();
  OpenEpisodeAppIntent.init()(v9);
  v5 = v9[0];
  v4 = v9[1];
  v6 = v9[2];
  sub_6FAC8(v2, v1);
  sub_6FAC8(v1, v3);
  sub_E5514();
  sub_71A70(v1, type metadata accessor for EpisodeEntity);
  *(v0 + 160) = 2;
  sub_E5514();
  sub_71A70(v2, type metadata accessor for EpisodeEntity);
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
  sub_71AD0();
  sub_E5374();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_71750()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_717F8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4C0, &qword_EE9D0);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4C8, &qword_EE9D8);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x206B72614DLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4D8, &qword_EEA08);
  sub_E5724();

  v6._countAndFlagsBits = 0x79616C5020736120;
  v6._object = 0xEA00000000006465;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_71998(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return MarkEpisodeAsPlayedAppIntent.perform()(a1);
}

uint64_t sub_71A34(uint64_t a1)
{
  v2 = sub_70934();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_71A70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_71AD0()
{
  result = qword_12F4F0;
  if (!qword_12F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F4F0);
  }

  return result;
}

unint64_t sub_71B28()
{
  result = qword_12F4F8;
  if (!qword_12F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F4F8);
  }

  return result;
}

unint64_t sub_71B80()
{
  result = qword_12F500;
  if (!qword_12F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F500);
  }

  return result;
}

void *sub_71C28@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_71D28()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F518);
  __swift_project_value_buffer(v0, qword_12F518);
  return sub_E5914();
}

uint64_t static MarkEpisodeAsUnplayedAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBA0 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MarkEpisodeAsUnplayedAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static MarkEpisodeAsUnplayedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F530, &qword_EEBC0);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F538, &qword_EEBC8);
  __chkstk_darwin(v1);
  sub_7206C();
  sub_E5744();
  v3._countAndFlagsBits = 0x206B72614DLL;
  v3._object = 0xE500000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F548, &unk_EEBF8);
  sub_E5724();

  v4._countAndFlagsBits = 0x6C706E5520736120;
  v4._object = 0xEC00000064657961;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_7206C()
{
  result = qword_12F540;
  if (!qword_12F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F540);
  }

  return result;
}

uint64_t sub_720C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*MarkEpisodeAsUnplayedAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_72160(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_6FAC8(a1, &v10 - v7);
  sub_6FAC8(v8, v6);

  sub_E5514();
  sub_71A70(v8, type metadata accessor for EpisodeEntity);
}

uint64_t MarkEpisodeAsUnplayedAppIntent.episode.setter(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_6FAC8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_71A70(a1, type metadata accessor for EpisodeEntity);
}

void (*MarkEpisodeAsUnplayedAppIntent.episode.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t MarkEpisodeAsUnplayedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v26 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = type metadata accessor for EpisodeEntity(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t MarkEpisodeAsUnplayedAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = type metadata accessor for UpdateEpisodePlayStateIntent(0);
  *(v2 + 56) = swift_task_alloc();
  sub_E6304();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = type metadata accessor for EpisodeEntity(0);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v3 = sub_E6974();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;

  return _swift_task_switch(sub_728E4, 0, 0);
}

uint64_t sub_728E4(uint64_t a1)
{
  v23 = v1;
  sub_E6914();

  v2 = sub_E6964();
  v3 = sub_E7494();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[14];
    v21 = v1[15];
    v5 = v1[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    sub_E5504();
    v8 = sub_E7084();
    v10 = sub_23E64(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "Received a request to mark episode as unplayed: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);

    (*(v4 + 8))(v21, v5);
  }

  else
  {
    v12 = v1[14];
    v11 = v1[15];
    v13 = v1[13];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[7];
  sub_E5504();
  *v14 = 2;
  v15 = swift_task_alloc();
  v1[18] = v15;
  *v15 = v1;
  v15[1] = sub_72B20;
  v16 = v1[16];
  v17 = v1[17];
  v19 = v1[7];
  v18 = v1[8];

  return sub_6AF50(v18, v19, v16, v17);
}

uint64_t sub_72B20()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 152) = v0;

  sub_71A70(v3, type metadata accessor for UpdateEpisodePlayStateIntent);
  if (v0)
  {
    v4 = sub_71750;
  }

  else
  {
    sub_71A70(*(v2 + 64), &type metadata accessor for EpisodePlayState);
    v4 = sub_72C88;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_72C88()
{
  v10 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  sub_E5504();
  OpenEpisodeAppIntent.init()(v9);
  v5 = v9[0];
  v4 = v9[1];
  v6 = v9[2];
  sub_6FAC8(v2, v1);
  sub_6FAC8(v1, v3);
  sub_E5514();
  sub_71A70(v1, type metadata accessor for EpisodeEntity);
  *(v0 + 160) = 3;
  sub_E5514();
  sub_71A70(v2, type metadata accessor for EpisodeEntity);
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
  sub_71AD0();
  sub_E5374();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_72E10(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F530, &qword_EEBC0);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F538, &qword_EEBC8);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x206B72614DLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F548, &unk_EEBF8);
  sub_E5724();

  v6._countAndFlagsBits = 0x6C706E5520736120;
  v6._object = 0xEC00000064657961;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_72FB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return MarkEpisodeAsUnplayedAppIntent.perform()(a1);
}

uint64_t sub_73050(uint64_t a1)
{
  v2 = sub_7206C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_73090()
{
  result = qword_12F550;
  if (!qword_12F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F550);
  }

  return result;
}

unint64_t sub_730E8()
{
  result = qword_12F558;
  if (!qword_12F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F558);
  }

  return result;
}

void *sub_73190@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_7324C()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F570);
  __swift_project_value_buffer(v0, qword_12F570);
  return sub_E5914();
}

uint64_t static PlayEpisodeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBA8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F570);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_73360()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12F588);
  v1 = __swift_project_value_buffer(v0, qword_12F588);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayEpisodeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12F588);
  swift_beginAccess();
  return sub_69558(v3, a1);
}

uint64_t static PlayEpisodeAppIntent.description.setter(uint64_t a1)
{
  if (qword_12CBB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12F588);
  swift_beginAccess();
  sub_73560(a1, v3);
  swift_endAccess();
  return sub_735D0(a1);
}

uint64_t sub_73560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_735D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static PlayEpisodeAppIntent.description.modify(uint64_t a1))(void)
{
  if (qword_12CBB0 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_project_value_buffer(v1, qword_12F588);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_736D8(uint64_t a1)
{
  if (qword_12CBB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12F588);
  swift_beginAccess();
  sub_73560(a1, v3);
  return swift_endAccess();
}

uint64_t static PlayEpisodeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5A0, &qword_EEDB8);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5A8, &qword_EEDC0);
  __chkstk_darwin(v1);
  sub_73910();
  sub_E5744();
  v3._countAndFlagsBits = 0x2079616C50;
  v3._object = 0xE500000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5B8, &unk_EEDF0);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_73910()
{
  result = qword_12F5B0;
  if (!qword_12F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F5B0);
  }

  return result;
}

uint64_t sub_73964@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*PlayEpisodeAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_73A04(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_6FAC8(a1, &v10 - v7);
  sub_6FAC8(v8, v6);

  sub_E5514();
  sub_74E00(v8, type metadata accessor for EpisodeEntity);
}

uint64_t PlayEpisodeAppIntent.episode.setter(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_6FAC8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_74E00(a1, type metadata accessor for EpisodeEntity);
}

void (*PlayEpisodeAppIntent.episode.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t PlayEpisodeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v26 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = type metadata accessor for EpisodeEntity(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t PlayEpisodeAppIntent.perform()(uint64_t a1)
{
  v2[7] = a1;
  type metadata accessor for EpisodeEntity(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v3 = sub_E5354();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v6 = v1[1];
  v2[13] = v4;
  v2[14] = v6;
  v2[5] = v5;
  v2[6] = v6;
  v7 = swift_task_alloc();
  v2[15] = v7;
  *v7 = v2;
  v7[1] = sub_74168;

  return sub_743F4(v4);
}

uint64_t sub_74168()
{

  return _swift_task_switch(sub_74264, 0, 0);
}

uint64_t sub_74264()
{
  v13 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v11 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  sub_E5504();
  OpenEpisodeAppIntent.init()(v12);
  v7 = v12[0];
  v6 = v12[1];
  v8 = v12[2];
  sub_6FAC8(v4, v3);
  sub_6FAC8(v3, v5);
  sub_E5514();
  sub_74E00(v3, type metadata accessor for EpisodeEntity);
  *(v0 + 128) = 6;
  sub_E5514();
  sub_74E00(v4, type metadata accessor for EpisodeEntity);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 32) = v8;
  sub_71AD0();
  sub_E5364();
  (*(v2 + 8))(v1, v11);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_743F4(uint64_t a1)
{
  *(v2 + 32) = a1;
  type metadata accessor for EpisodeEntity(0);
  *(v2 + 40) = swift_task_alloc();
  sub_E7014();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = type metadata accessor for PlayEpisodeIntent(0);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *v1;

  return _swift_task_switch(sub_744E8, 0, 0);
}

uint64_t sub_744E8()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_E5504();
  v3 = v2[5];
  v4 = sub_E63C4();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v2[7];
  v6 = enum case for PlaybackIntent.Source.app(_:);
  v7 = sub_E6204();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  v8 = (v1 + v2[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_74648;

  return (sub_6B2B4)();
}

uint64_t sub_74648()
{
  v2 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  sub_74E00(v2, type metadata accessor for PlayEpisodeIntent);
  if (v0)
  {
    v3 = sub_748BC;
  }

  else
  {
    v3 = sub_7478C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7478C()
{
  v1 = v0[5];
  sub_E7004();
  v7._countAndFlagsBits = 0x79616C7020776F4ELL;
  v7._object = 0xED00002720676E69;
  sub_E6FF4(v7);
  sub_E5504();
  sub_E53E4();
  v2 = v0[2];
  v3 = v0[3];
  sub_74E00(v1, type metadata accessor for EpisodeEntity);
  v8._countAndFlagsBits = v2;
  v8._object = v3;
  sub_E6FD4(v8);

  v9._countAndFlagsBits = 39;
  v9._object = 0xE100000000000000;
  sub_E6FF4(v9);
  sub_E5344();

  v4 = v0[1];

  return v4();
}

uint64_t sub_748BC()
{
  sub_8EE68(v0[12], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_74948(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5A0, &qword_EEDB8);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5A8, &qword_EEDC0);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x2079616C50;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F5B8, &unk_EEDF0);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_74AD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayEpisodeAppIntent.perform()(a1);
}

uint64_t sub_74B74(uint64_t a1)
{
  v2 = sub_73910();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_74BB4()
{
  result = qword_12F5C0;
  if (!qword_12F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F5C0);
  }

  return result;
}

unint64_t sub_74C0C()
{
  result = qword_12F5C8;
  if (!qword_12F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F5C8);
  }

  return result;
}

void *sub_74CBC@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_74E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_74E60()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F5F8);
  __swift_project_value_buffer(v0, qword_12F5F8);
  return sub_E5914();
}

uint64_t static PlayEpisodeLastAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBB8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F5F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_74F6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12F610);
  v1 = __swift_project_value_buffer(v0, qword_12F610);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayEpisodeLastAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBC0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12F610);

  return sub_69558(v3, a1);
}

uint64_t static PlayEpisodeLastAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F628, &qword_EEFB8);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F630, &qword_EEFC0);
  __chkstk_darwin(v1);
  sub_75250();
  sub_E5744();
  v3._countAndFlagsBits = 0x2079616C50;
  v3._object = 0xE500000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F640, &unk_EEFF0);
  sub_E5724();

  v4._countAndFlagsBits = 0x7473616C20;
  v4._object = 0xE500000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_75250()
{
  result = qword_12F638;
  if (!qword_12F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F638);
  }

  return result;
}

uint64_t sub_752A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*PlayEpisodeLastAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_75344(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_6FAC8(a1, &v10 - v7);
  sub_6FAC8(v8, v6);

  sub_E5514();
  sub_76828(v8, type metadata accessor for EpisodeEntity);
}

uint64_t PlayEpisodeLastAppIntent.episode.setter(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_6FAC8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_76828(a1, type metadata accessor for EpisodeEntity);
}

void (*PlayEpisodeLastAppIntent.episode.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t PlayEpisodeLastAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v26 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = type metadata accessor for EpisodeEntity(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t PlayEpisodeLastAppIntent.perform()(uint64_t a1)
{
  v2[7] = a1;
  type metadata accessor for EpisodeEntity(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v3 = sub_E5354();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v6 = v1[1];
  v2[13] = v4;
  v2[14] = v6;
  v2[5] = v5;
  v2[6] = v6;
  v7 = swift_task_alloc();
  v2[15] = v7;
  *v7 = v2;
  v7[1] = sub_75AA8;

  return sub_75D30(v4);
}

uint64_t sub_75AA8()
{

  return _swift_task_switch(sub_75BA4, 0, 0);
}

uint64_t sub_75BA4()
{
  v13 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v11 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  sub_E5504();
  OpenEpisodeAppIntent.init()(v12);
  v7 = v12[0];
  v6 = v12[1];
  v8 = v12[2];
  sub_6FAC8(v4, v3);
  sub_6FAC8(v3, v5);
  sub_E5514();
  sub_76828(v3, type metadata accessor for EpisodeEntity);
  *(v0 + 128) = 0;
  sub_E5514();
  sub_76828(v4, type metadata accessor for EpisodeEntity);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 32) = v8;
  sub_71AD0();
  sub_E5364();
  (*(v2 + 8))(v1, v11);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_75D30(uint64_t a1)
{
  *(v2 + 32) = a1;
  sub_E7014();
  *(v2 + 40) = swift_task_alloc();
  type metadata accessor for EpisodeEntity(0);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = type metadata accessor for EnqueueEpisodeForPlaybackIntent(0);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = *v1;

  return _swift_task_switch(sub_75E3C, 0, 0);
}

uint64_t sub_75E3C()
{
  v1 = v0[7];
  sub_E5504();
  v3 = *(v1 + 72);
  v2 = *(v1 + 80);

  sub_76828(v1, type metadata accessor for EpisodeEntity);
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v5 = v0[6];
    sub_E5504();
    v3 = *(v5 + 88);
    sub_76828(v5, type metadata accessor for EpisodeEntity);
    v4 = 0;
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = *(v0[8] + 20);
  v9 = enum case for PlaybackController.QueueCommand.Location.queueTail(_:);
  v10 = sub_E5D24();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  sub_767C4(v7, v6);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_75FDC;
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[10];

  return sub_6B804(sub_6B804, v14, v12, v13);
}

uint64_t sub_75FDC()
{
  v2 = *(*v1 + 80);
  *(*v1 + 112) = v0;

  sub_76828(v2, type metadata accessor for EnqueueEpisodeForPlaybackIntent);
  if (v0)
  {
    v3 = sub_76264;
  }

  else
  {
    v3 = sub_76120;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_76120()
{
  v1 = v0[6];
  sub_E7004();
  v7._countAndFlagsBits = 0x20676E6979616C50;
  v7._object = 0xE900000000000027;
  sub_E6FF4(v7);
  sub_E5504();
  sub_E53E4();
  v2 = v0[2];
  v3 = v0[3];
  sub_76828(v1, type metadata accessor for EpisodeEntity);
  v8._countAndFlagsBits = v2;
  v8._object = v3;
  sub_E6FD4(v8);

  v9._countAndFlagsBits = 0x7473616C2027;
  v9._object = 0xE600000000000000;
  sub_E6FF4(v9);
  sub_E5344();

  v4 = v0[1];

  return v4();
}

uint64_t sub_76264()
{
  sub_8EE68(v0[14], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_7630C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F628, &qword_EEFB8);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F630, &qword_EEFC0);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x2079616C50;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F640, &unk_EEFF0);
  sub_E5724();

  v6._countAndFlagsBits = 0x7473616C20;
  v6._object = 0xE500000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_764A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayEpisodeLastAppIntent.perform()(a1);
}

uint64_t sub_76540(uint64_t a1)
{
  v2 = sub_75250();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_76580()
{
  result = qword_12F648;
  if (!qword_12F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F648);
  }

  return result;
}

unint64_t sub_765D8()
{
  result = qword_12F650;
  if (!qword_12F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F650);
  }

  return result;
}

void *sub_76680@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_767C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnqueueEpisodeForPlaybackIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_76828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_76888()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F668);
  __swift_project_value_buffer(v0, qword_12F668);
  return sub_E5914();
}

uint64_t static PlayEpisodeNextAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBC8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F668);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_76994()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12F680);
  v1 = __swift_project_value_buffer(v0, qword_12F680);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayEpisodeNextAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12F680);

  return sub_69558(v3, a1);
}

uint64_t static PlayEpisodeNextAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F698, &qword_EF1A8);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6A0, &qword_EF1B0);
  __chkstk_darwin(v1);
  sub_76C7C();
  sub_E5744();
  v3._countAndFlagsBits = 543450177;
  v3._object = 0xE400000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6B0, &unk_EF1E0);
  sub_E5724();

  v4._countAndFlagsBits = 0x75657551206F7420;
  v4._object = 0xE900000000000065;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_76C7C()
{
  result = qword_12F6A8;
  if (!qword_12F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F6A8);
  }

  return result;
}

uint64_t sub_76CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*PlayEpisodeNextAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_76D70(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_6FAC8(a1, &v10 - v7);
  sub_6FAC8(v8, v6);

  sub_E5514();
  sub_76828(v8, type metadata accessor for EpisodeEntity);
}

uint64_t PlayEpisodeNextAppIntent.episode.setter(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_6FAC8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_76828(a1, type metadata accessor for EpisodeEntity);
}

void (*PlayEpisodeNextAppIntent.episode.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t PlayEpisodeNextAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v26 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = type metadata accessor for EpisodeEntity(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t PlayEpisodeNextAppIntent.perform()(uint64_t a1)
{
  v2[7] = a1;
  type metadata accessor for EpisodeEntity(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v3 = sub_E5354();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v6 = v1[1];
  v2[13] = v4;
  v2[14] = v6;
  v2[5] = v5;
  v2[6] = v6;
  v7 = swift_task_alloc();
  v2[15] = v7;
  *v7 = v2;
  v7[1] = sub_774D4;

  return sub_77760(v4);
}

uint64_t sub_774D4()
{

  return _swift_task_switch(sub_775D0, 0, 0);
}

uint64_t sub_775D0()
{
  v13 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v11 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  sub_E5504();
  OpenEpisodeAppIntent.init()(v12);
  v7 = v12[0];
  v6 = v12[1];
  v8 = v12[2];
  sub_6FAC8(v4, v3);
  sub_6FAC8(v3, v5);
  sub_E5514();
  sub_76828(v3, type metadata accessor for EpisodeEntity);
  *(v0 + 128) = 4;
  sub_E5514();
  sub_76828(v4, type metadata accessor for EpisodeEntity);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 32) = v8;
  sub_71AD0();
  sub_E5364();
  (*(v2 + 8))(v1, v11);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_77760(uint64_t a1)
{
  *(v2 + 32) = a1;
  sub_E7014();
  *(v2 + 40) = swift_task_alloc();
  type metadata accessor for EpisodeEntity(0);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = type metadata accessor for EnqueueEpisodeForPlaybackIntent(0);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = *v1;

  return _swift_task_switch(sub_7786C, 0, 0);
}

uint64_t sub_7786C()
{
  v1 = v0[7];
  sub_E5504();
  v3 = *(v1 + 72);
  v2 = *(v1 + 80);

  sub_76828(v1, type metadata accessor for EpisodeEntity);
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v5 = v0[6];
    sub_E5504();
    v3 = *(v5 + 88);
    sub_76828(v5, type metadata accessor for EpisodeEntity);
    v4 = 0;
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = *(v0[8] + 20);
  v9 = enum case for PlaybackController.QueueCommand.Location.queueHead(_:);
  v10 = sub_E5D24();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  sub_767C4(v7, v6);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_77A0C;
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[10];

  return sub_6BB68(sub_6BB68, v14, v12, v13);
}

uint64_t sub_77A0C()
{
  v2 = *(*v1 + 80);
  *(*v1 + 112) = v0;

  sub_76828(v2, type metadata accessor for EnqueueEpisodeForPlaybackIntent);
  if (v0)
  {
    v3 = sub_76264;
  }

  else
  {
    v3 = sub_77B50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_77B50()
{
  v1 = v0[6];
  sub_E7004();
  v7._countAndFlagsBits = 0x20676E6979616C50;
  v7._object = 0xE900000000000027;
  sub_E6FF4(v7);
  sub_E5504();
  sub_E53E4();
  v2 = v0[2];
  v3 = v0[3];
  sub_76828(v1, type metadata accessor for EpisodeEntity);
  v8._countAndFlagsBits = v2;
  v8._object = v3;
  sub_E6FD4(v8);

  v9._countAndFlagsBits = 0x7478656E2027;
  v9._object = 0xE600000000000000;
  sub_E6FF4(v9);
  sub_E5344();

  v4 = v0[1];

  return v4();
}

uint64_t sub_77C94(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F698, &qword_EF1A8);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6A0, &qword_EF1B0);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 543450177;
  v5._object = 0xE400000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6B0, &unk_EF1E0);
  sub_E5724();

  v6._countAndFlagsBits = 0x75657551206F7420;
  v6._object = 0xE900000000000065;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_77E30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayEpisodeNextAppIntent.perform()(a1);
}

uint64_t sub_77ECC(uint64_t a1)
{
  v2 = sub_76C7C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_77F0C()
{
  result = qword_12F6B8;
  if (!qword_12F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F6B8);
  }

  return result;
}

unint64_t sub_77F64()
{
  result = qword_12F6C0;
  if (!qword_12F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F6C0);
  }

  return result;
}

void *sub_7800C@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_78150()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F6D8);
  __swift_project_value_buffer(v0, qword_12F6D8);
  return sub_E5914();
}

uint64_t static RemoveEpisodesDownloadAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBD8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F6D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static RemoveEpisodesDownloadAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static RemoveEpisodesDownloadAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6F0, &qword_EF3A0);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6F8, &qword_EF3A8);
  __chkstk_darwin(v1);
  sub_78488();
  sub_E5744();
  v3._object = 0x80000000000F7180;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F708, &qword_EF3D8);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_78488()
{
  result = qword_12F700;
  if (!qword_12F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F700);
  }

  return result;
}

uint64_t sub_784DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*RemoveEpisodesDownloadAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

void (*RemoveEpisodesDownloadAppIntent.episodes.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t RemoveEpisodesDownloadAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v19 = sub_E5774();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v18 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_E5944();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v20 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F380, &qword_EE778);
  sub_E5914();
  sub_E5914();
  (*(v14 + 56))(v12, 0, 1, v13);
  v21 = 0;
  v15 = sub_E5354();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v16(v7, 1, 1, v15);
  (*(v2 + 104))(v18, enum case for InputConnectionBehavior.default(_:), v19);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t RemoveEpisodesDownloadAppIntent.perform()(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = *(type metadata accessor for EpisodeEntity(0) - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *v1;

  return _swift_task_switch(sub_78A30, 0, 0);
}

uint64_t sub_78A30()
{
  sub_E5504();
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[8];
    sub_15D58(0, v2, 0);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      sub_6FAC8(v5, v0[8]);
      v7 = *(v4 + 64);
      if (v7)
      {
        v8 = 1;
        v9 = *(v4 + 64);
      }

      else
      {
        v8 = 0;
        v9 = *(v4 + 88);
      }

      v10 = v0[8];
      v11 = v7;
      sub_6FB2C(v10);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_15D58((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[3 * v13];
      v14[4] = v9;
      v14[5] = 0;
      *(v14 + 48) = v8;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v0[11] = _swiftEmptyArrayStorage;
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_78C00;
  v16 = v0[9];
  v17 = v0[10];

  return sub_6BECC(sub_6BECC, _swiftEmptyArrayStorage, v16, v17);
}

uint64_t sub_78C00()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_78E2C;
  }

  else
  {
    v2 = sub_78D30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_78D30()
{
  v7 = v0;
  OpenAppLocationAppIntent.init()(v6);
  v1 = v6[0];
  v2 = v6[1];
  v3 = v6[2];
  *(v0 + 112) = 9;
  sub_E5514();
  *(v0 + 113) = 2;
  sub_E5514();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  sub_6FB88();
  sub_E5374();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_78E2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_78E90(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6F0, &qword_EF3A0);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F6F8, &qword_EF3A8);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._object = 0x80000000000F7180;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F708, &qword_EF3D8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_79028(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return RemoveEpisodesDownloadAppIntent.perform()(a1);
}

uint64_t sub_790C4(uint64_t a1)
{
  v2 = sub_78488();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_79104()
{
  result = qword_12F710;
  if (!qword_12F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F710);
  }

  return result;
}

unint64_t sub_7915C()
{
  result = qword_12F718;
  if (!qword_12F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F718);
  }

  return result;
}

void *sub_79204@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

void *sub_79244@<X0>(void *a1@<X8>)
{
  result = sub_E5504();
  *a1 = v3;
  return result;
}

uint64_t sub_792D8()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F730);
  __swift_project_value_buffer(v0, qword_12F730);
  return sub_E5914();
}

uint64_t static SaveEpisodeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBE0 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static SaveEpisodeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static SaveEpisodeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F748, &qword_EF590);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F750, &qword_EF598);
  __chkstk_darwin(v1);
  sub_79614();
  sub_E5744();
  v3._countAndFlagsBits = 0x2065766153;
  v3._object = 0xE500000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F760, &qword_EF5C8);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_79614()
{
  result = qword_12F758;
  if (!qword_12F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F758);
  }

  return result;
}

uint64_t sub_79668@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*SaveEpisodeAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

void (*SaveEpisodeAppIntent.episodes.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t SaveEpisodeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v19 = sub_E5774();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v18 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_E5944();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v20 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F380, &qword_EE778);
  sub_E5914();
  sub_E5914();
  (*(v14 + 56))(v12, 0, 1, v13);
  v21 = 0;
  v15 = sub_E5354();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v16(v7, 1, 1, v15);
  (*(v2 + 104))(v18, enum case for InputConnectionBehavior.default(_:), v19);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t SaveEpisodeAppIntent.perform()(uint64_t a1)
{
  *(v2 + 56) = a1;
  v3 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 64) = v3;
  *(v2 + 72) = *(v3 - 8);
  *(v2 + 80) = swift_task_alloc();
  v4 = sub_E6974();
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *v1;

  return _swift_task_switch(sub_79C1C, 0, 0);
}

uint64_t sub_79C1C(uint64_t a1)
{
  v36 = v1;
  sub_E6914();

  v2 = sub_E6964();
  v3 = sub_E7494();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[12];
    v34 = v1[13];
    v5 = v1[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315138;
    sub_E5504();
    v8 = sub_E7204();
    v10 = v9;

    v11 = sub_23E64(v8, v10, &v35);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "Received a request to bookmark episodes: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);

    (*(v4 + 8))(v34, v5);
  }

  else
  {
    v13 = v1[12];
    v12 = v1[13];
    v14 = v1[11];

    (*(v13 + 8))(v12, v14);
  }

  sub_E5504();
  v15 = v1[5];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v1[9];
    v18 = v1[10];
    v35 = _swiftEmptyArrayStorage;
    sub_15D58(0, v16, 0);
    v19 = v35;
    v20 = v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v21 = *(v17 + 72);
    do
    {
      sub_6FAC8(v20, v1[10]);
      v22 = *(v18 + 64);
      if (v22)
      {
        v23 = 1;
        v24 = *(v18 + 64);
      }

      else
      {
        v23 = 0;
        v24 = *(v18 + 88);
      }

      v25 = v1[10];
      v26 = v22;
      sub_6FB2C(v25);
      v35 = v19;
      v28 = v19[2];
      v27 = v19[3];
      if (v28 >= v27 >> 1)
      {
        sub_15D58((v27 > 1), v28 + 1, 1);
        v19 = v35;
      }

      v19[2] = v28 + 1;
      v29 = &v19[3 * v28];
      v29[4] = v24;
      v29[5] = 0;
      *(v29 + 48) = v23;
      v20 += v21;
      --v16;
    }

    while (v16);
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
  }

  v1[16] = v19;
  v30 = swift_task_alloc();
  v1[17] = v30;
  *v30 = v1;
  v30[1] = sub_79F58;
  v31 = v1[14];
  v32 = v1[15];

  return sub_6C1FC(sub_6C1FC, v19, v31, v32);
}

uint64_t sub_79F58()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_6A600;
  }

  else
  {
    v2 = sub_7A088;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7A088()
{
  v7 = v0;
  OpenAppLocationAppIntent.init()(v6);
  v1 = v6[0];
  v2 = v6[1];
  v3 = v6[2];
  *(v0 + 152) = 4;
  sub_E5514();
  *(v0 + 153) = 0;
  sub_E5514();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  sub_6FB88();
  sub_E5374();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_7A18C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F748, &qword_EF590);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F750, &qword_EF598);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x2065766153;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F760, &qword_EF5C8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7A31C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return SaveEpisodeAppIntent.perform()(a1);
}

uint64_t sub_7A3B8(uint64_t a1)
{
  v2 = sub_79614();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_7A3F8()
{
  result = qword_12F768;
  if (!qword_12F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F768);
  }

  return result;
}

unint64_t sub_7A450()
{
  result = qword_12F770;
  if (!qword_12F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F770);
  }

  return result;
}

void *sub_7A4F8@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

void *sub_7A538@<X0>(void *a1@<X8>)
{
  result = sub_E5504();
  *a1 = v3;
  return result;
}

uint64_t sub_7A5CC()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F788);
  __swift_project_value_buffer(v0, qword_12F788);
  return sub_E5914();
}

uint64_t static UnsaveEpisodeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBE8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F788);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UnsaveEpisodeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static UnsaveEpisodeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7A0, &qword_EF780);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7A8, &qword_EF788);
  __chkstk_darwin(v1);
  sub_7A90C();
  sub_E5744();
  v3._countAndFlagsBits = 0x20657661736E55;
  v3._object = 0xE700000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7B8, &qword_EF7B8);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_7A90C()
{
  result = qword_12F7B0;
  if (!qword_12F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F7B0);
  }

  return result;
}

uint64_t sub_7A960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*UnsaveEpisodeAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

void (*UnsaveEpisodeAppIntent.episodes.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t UnsaveEpisodeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v19 = sub_E5774();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v18 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_E5944();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v20 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F380, &qword_EE778);
  sub_E5914();
  sub_E5914();
  (*(v14 + 56))(v12, 0, 1, v13);
  v21 = 0;
  v15 = sub_E5354();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v16(v7, 1, 1, v15);
  (*(v2 + 104))(v18, enum case for InputConnectionBehavior.default(_:), v19);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t UnsaveEpisodeAppIntent.perform()(uint64_t a1)
{
  *(v2 + 64) = a1;
  v3 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();
  v4 = sub_E6974();
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;

  return _swift_task_switch(sub_7AF20, 0, 0);
}

uint64_t sub_7AF20(uint64_t a1)
{
  v37 = v1;
  sub_E6914();

  v2 = sub_E6964();
  v3 = sub_E7494();

  if (os_log_type_enabled(v2, v3))
  {
    v35 = v1[15];
    v5 = v1[12];
    v4 = v1[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36 = v7;
    *v6 = 136315138;
    sub_E5504();
    v8 = sub_E7204();
    v10 = v9;

    v11 = sub_23E64(v8, v10, &v36);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "Received a request to unbookmark episodes: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);

    v12 = *(v4 + 8);
    v12(v35, v5);
  }

  else
  {
    v13 = v1[15];
    v14 = v1[12];
    v15 = v1[13];

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  v1[18] = v12;
  sub_E5504();
  v16 = v1[5];
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v1[10];
    v19 = v1[11];
    v36 = _swiftEmptyArrayStorage;
    sub_15D58(0, v17, 0);
    v20 = v36;
    v21 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v22 = *(v18 + 72);
    do
    {
      sub_6FAC8(v21, v1[11]);
      v23 = *(v19 + 64);
      if (v23)
      {
        v24 = 1;
        v25 = *(v19 + 64);
      }

      else
      {
        v24 = 0;
        v25 = *(v19 + 88);
      }

      v26 = v1[11];
      v27 = v23;
      sub_6FB2C(v26);
      v36 = v20;
      v29 = v20[2];
      v28 = v20[3];
      if (v29 >= v28 >> 1)
      {
        sub_15D58((v28 > 1), v29 + 1, 1);
        v20 = v36;
      }

      v20[2] = v29 + 1;
      v30 = &v20[3 * v29];
      v30[4] = v25;
      v30[5] = 0;
      *(v30 + 48) = v24;
      v21 += v22;
      --v17;
    }

    while (v17);
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
  }

  v1[19] = v20;
  v31 = swift_task_alloc();
  v1[20] = v31;
  *v31 = v1;
  v31[1] = sub_7B260;
  v32 = v1[16];
  v33 = v1[17];

  return sub_6C6C0(sub_6C6C0, v20, v32, v33);
}

uint64_t sub_7B260()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_7B618;
  }

  else
  {
    v2 = sub_7B390;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7B390(uint64_t a1)
{
  v22 = v1;
  sub_E6914();

  v2 = sub_E6964();
  v3 = sub_E7494();

  if (os_log_type_enabled(v2, v3))
  {
    v19 = *(v1 + 112);
    v20 = *(v1 + 144);
    v4 = *(v1 + 96);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21[0] = v6;
    *v5 = 136315138;
    sub_E5504();
    v7 = sub_E7204();
    v9 = v8;

    v10 = sub_23E64(v7, v9, v21);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "Received a request to bookmark episodes: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);

    v20(v19, v4);
  }

  else
  {
    v11 = *(v1 + 144);
    v12 = *(v1 + 112);
    v13 = *(v1 + 96);

    v11(v12, v13);
  }

  OpenAppLocationAppIntent.init()(v21);
  v14 = v21[0];
  v15 = v21[1];
  v16 = v21[2];
  *(v1 + 176) = 4;
  sub_E5514();
  *(v1 + 177) = 1;
  sub_E5514();
  *(v1 + 16) = v14;
  *(v1 + 24) = v15;
  *(v1 + 32) = v16;
  sub_6FB88();
  sub_E5374();

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_7B618()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7B690(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7A0, &qword_EF780);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7A8, &qword_EF788);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x20657661736E55;
  v5._object = 0xE700000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F7B8, &qword_EF7B8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7B824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return UnsaveEpisodeAppIntent.perform()(a1);
}

uint64_t sub_7B8C0(uint64_t a1)
{
  v2 = sub_7A90C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_7B900()
{
  result = qword_12F7C0;
  if (!qword_12F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F7C0);
  }

  return result;
}

unint64_t sub_7B958()
{
  result = qword_12F7C8;
  if (!qword_12F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F7C8);
  }

  return result;
}

void *sub_7BA00@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

void *sub_7BA40@<X0>(void *a1@<X8>)
{
  result = sub_E5504();
  *a1 = v3;
  return result;
}

unint64_t sub_7BB04()
{
  result = qword_12F7E0;
  if (!qword_12F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F7E0);
  }

  return result;
}

uint64_t OpenAppLocationAppIntent.init(target:notice:)@<X0>(char a1@<W0>, char *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  OpenAppLocationAppIntent.init()(v9);
  v6 = v9[1];
  v7 = v9[2];
  *a3 = v9[0];
  a3[1] = v6;
  a3[2] = v7;
  LOBYTE(v9[0]) = a1;
  sub_E5514();
  LOBYTE(v9[0]) = v5;
  return sub_E5514();
}

uint64_t sub_7BBCC()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F7E8);
  __swift_project_value_buffer(v0, qword_12F7E8);
  return sub_E5914();
}

uint64_t static OpenAppLocationAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBF0 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F7E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenAppLocationAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static OpenAppLocationAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F800, &qword_EFA60);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F808, &qword_EFA68);
  __chkstk_darwin(v1);
  sub_6FB88();
  sub_E5744();
  v3._object = 0x80000000000F7320;
  v3._countAndFlagsBits = 0xD000000000000021;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F810, &unk_EFA98);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7BF04(uint64_t *a1, uint64_t *a2)
{

  sub_E51E4();
}

void (*OpenAppLocationAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_3CA68;
}

uint64_t sub_7C028(char *a1, uint64_t *a2)
{

  sub_E5514();
}

void (*OpenAppLocationAppIntent.target.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t sub_7C168(char *a1, uint64_t *a2)
{

  sub_E5514();
}

void (*OpenAppLocationAppIntent.notice.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t OpenAppLocationAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v32 = sub_E5774();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_E5944();
  v28 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v33 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F818, &qword_EFAA8);
  sub_E5914();
  sub_E5914();
  v15 = *(v14 + 56);
  v27 = v14 + 56;
  v29 = v15;
  v15(v12, 0, 1, v13);
  LOBYTE(v34[0]) = 12;
  v16 = sub_E5354();
  v17 = *(*(v16 - 8) + 56);
  v17(v9, 1, 1, v16);
  v17(v7, 1, 1, v16);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v18 = *(v2 + 104);
  v23 = v2 + 104;
  v24 = v18;
  v19 = v31;
  v18(v31);
  sub_49C94();
  v20 = sub_E5554();
  v21 = v30;
  v30[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F820, &qword_EFAB0);
  v29(v12, 1, 1, v28);
  LOBYTE(v34[0]) = 2;
  v17(v9, 1, 1, v16);
  v17(v7, 1, 1, v16);
  v24(v19, v25, v32);
  sub_7D1D0();
  result = sub_E5544();
  v21[2] = result;
  return result;
}

uint64_t sub_7C714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

uint64_t OpenAppLocationAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  v3 = sub_E5BB4();
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = type metadata accessor for OpenAppLocationAction(0);
  *(v2 + 80) = swift_task_alloc();
  v4 = sub_E6CF4();
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 - 8);
  *(v2 + 104) = swift_task_alloc();
  v5 = sub_E6974();
  *(v2 + 112) = v5;
  *(v2 + 120) = *(v5 - 8);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = *v1;
  *(v2 + 152) = *(v1 + 16);

  return _swift_task_switch(sub_7C8F8, 0, 0);
}

uint64_t sub_7C8F8(uint64_t a1)
{
  v30 = v1;
  sub_E6914();

  v2 = sub_E6964();
  v3 = sub_E74B4();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v1 + 120);
    v4 = *(v1 + 128);
    v6 = *(v1 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    sub_E5504();
    v9 = AppLocation.rawValue.getter(*(v1 + 177));
    v11 = sub_23E64(v9, v10, &v29);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "Opening App Location from intent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v13 = *(v1 + 120);
    v12 = *(v1 + 128);
    v14 = *(v1 + 112);

    (*(v13 + 8))(v12, v14);
  }

  v16 = *(v1 + 72);
  v15 = *(v1 + 80);
  v18 = *(v1 + 56);
  v17 = *(v1 + 64);
  v19 = *(v1 + 48);
  *(v1 + 16) = *(v1 + 136);
  *(v1 + 24) = *(v1 + 144);
  sub_E5504();
  v20 = *(v1 + 176);
  sub_E6CD4();
  *(v15 + *(v16 + 20)) = v20;
  (*(v18 + 104))(v17, enum case for ActionMetricsBehavior.notProcessed(_:), v19);
  v21 = swift_task_alloc();
  *(v1 + 160) = v21;
  v22 = sub_7D224();
  v23 = sub_7D278();
  *v21 = v1;
  v21[1] = sub_7CB94;
  v24 = *(v1 + 104);
  v26 = *(v1 + 72);
  v25 = *(v1 + 80);
  v27 = *(v1 + 64);

  return ActionDispatching.dispatch<A>(action:metrics:)(v24, v25, v27, &type metadata for OpenAppLocationAppIntent, v26, v22, v23);
}

uint64_t sub_7CB94()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  *(*v1 + 168) = v0;

  (*(v5 + 8))(v4, v6);
  sub_7D2D0(v3);
  if (v0)
  {
    v7 = sub_7CDE8;
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);
    v7 = sub_7CD4C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_7CD4C()
{
  sub_E53A4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7CDE8()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_7CE78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_E5504();
  *a1 = v3;
  return result;
}

void (*sub_7CEEC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_33020;
}

uint64_t sub_7CF60(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F800, &qword_EFA60);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F808, &qword_EFA68);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._object = 0x80000000000F7320;
  v5._countAndFlagsBits = 0xD000000000000021;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F810, &unk_EFA98);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7D0F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return OpenAppLocationAppIntent.perform()(a1);
}

uint64_t sub_7D194(uint64_t a1)
{
  v2 = sub_6FB88();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_7D1D0()
{
  result = qword_12F828;
  if (!qword_12F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F828);
  }

  return result;
}

unint64_t sub_7D224()
{
  result = qword_12F830;
  if (!qword_12F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F830);
  }

  return result;
}

unint64_t sub_7D278()
{
  result = qword_12F838;
  if (!qword_12F838)
  {
    type metadata accessor for OpenAppLocationAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F838);
  }

  return result;
}

uint64_t sub_7D2D0(uint64_t a1)
{
  v2 = type metadata accessor for OpenAppLocationAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_7D330()
{
  result = qword_12F840;
  if (!qword_12F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F840);
  }

  return result;
}

unint64_t sub_7D38C()
{
  result = qword_12F848;
  if (!qword_12F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F848);
  }

  return result;
}

unint64_t sub_7D3E8()
{
  result = qword_12F850;
  if (!qword_12F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F850);
  }

  return result;
}

unint64_t sub_7D440()
{
  result = qword_12F858;
  if (!qword_12F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F858);
  }

  return result;
}

void *sub_7D4CC@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

void *sub_7D50C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_E5504();
  *a1 = v3;
  return result;
}

void *sub_7D54C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_E5504();
  *a1 = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_7D5A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_7D5E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7D6C0()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F870);
  __swift_project_value_buffer(v0, qword_12F870);
  return sub_E5914();
}

uint64_t static OpenChannelAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F870);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenChannelAppIntent.title.setter(uint64_t a1)
{
  if (qword_12CBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F870);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenChannelAppIntent.title.modify(uint64_t a1))(void)
{
  if (qword_12CBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_E5944();
  __swift_project_value_buffer(v1, qword_12F870);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_7D974(uint64_t a1)
{
  if (qword_12CBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F870);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static OpenChannelAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F888, &qword_EFCE0);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F890, &qword_EFCE8);
  __chkstk_darwin(v1);
  sub_7DBD4();
  sub_E5744();
  v3._countAndFlagsBits = 0x206E65704FLL;
  v3._object = 0xE500000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F8A0, &unk_EFD18);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_7DBD4()
{
  result = qword_12F898;
  if (!qword_12F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F898);
  }

  return result;
}

uint64_t sub_7DC28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*OpenChannelAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_3CA68;
}

uint64_t sub_7DCC8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ChannelEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_7DE68(a1, &v10 - v7);
  sub_7DE68(v8, v6);

  sub_E5514();
  sub_7F2A0(v8, type metadata accessor for ChannelEntity);
}

uint64_t OpenChannelAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for ChannelEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_7DE68(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_7F2A0(a1, type metadata accessor for ChannelEntity);
}

uint64_t sub_7DE68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*OpenChannelAppIntent.target.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t OpenChannelAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F8A8, &qword_EFD28);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v26 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F8B0, &qword_EFD30);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = type metadata accessor for ChannelEntity(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_7F3A0(&qword_12E040, type metadata accessor for ChannelEntity, &protocol conformance descriptor for ChannelEntity);
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t OpenChannelAppIntent.init(target:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ChannelEntity(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  OpenChannelAppIntent.init()(v12);
  v10 = v12[1];
  *a2 = v12[0];
  a2[1] = v10;
  sub_7DE68(a1, v9);
  sub_7DE68(v9, v7);
  sub_E5514();
  sub_7F2A0(a1, type metadata accessor for ChannelEntity);
  return sub_7F2A0(v9, type metadata accessor for ChannelEntity);
}

uint64_t OpenChannelAppIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  v3 = sub_E6974();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  v4 = sub_E5BB4();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = type metadata accessor for OpenStoreURLAction(0);
  *(v2 + 96) = swift_task_alloc();
  v5 = sub_E6CF4();
  *(v2 + 104) = v5;
  *(v2 + 112) = *(v5 - 8);
  *(v2 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = type metadata accessor for ChannelEntity(0);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v6 = sub_E59C4();
  *(v2 + 160) = v6;
  *(v2 + 168) = *(v6 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = *v1;
  sub_E72F4();
  *(v2 + 200) = sub_E72E4();
  v8 = sub_E7294();
  *(v2 + 208) = v8;
  *(v2 + 216) = v7;

  return _swift_task_switch(sub_7E720, v8, v7);
}

uint64_t sub_7E720()
{
  v40 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  sub_E5504();
  sub_CC80(v3 + *(v5 + 48), v4);
  sub_7F2A0(v3, type metadata accessor for ChannelEntity);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v6 = *(v0 + 128);

    sub_DB70(v6);
    sub_E6914();

    v7 = sub_E6964();
    v8 = sub_E74B4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 144);
      v10 = *(v0 + 48);
      v37 = *(v0 + 56);
      v11 = *(v0 + 40);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v39 = v13;
      *v12 = 136315138;
      sub_E5504();
      v14 = *v9;
      v15 = v9[1];

      sub_7F2A0(v9, type metadata accessor for ChannelEntity);
      v16 = sub_23E64(v14, v15, &v39);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Unable to open show %s, no share URL", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);

      (*(v10 + 8))(v37, v11);
    }

    else
    {
      v33 = *(v0 + 48);
      v32 = *(v0 + 56);
      v34 = *(v0 + 40);

      (*(v33 + 8))(v32, v34);
    }

    sub_7F1F8();
    swift_allocError();
    swift_willThrow();

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v18 = *(v0 + 168);
    v17 = *(v0 + 176);
    v19 = *(v0 + 160);
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    v24 = *(v0 + 64);
    v38 = *(v0 + 184);
    (*(v18 + 32))(v17, *(v0 + 128), v19);
    *(v0 + 16) = v38;
    (*(v18 + 16))(v20 + *(v21 + 20), v17, v19);
    sub_E6CD4();
    (*(v23 + 104))(v22, enum case for ActionMetricsBehavior.notProcessed(_:), v24);
    v25 = swift_task_alloc();
    *(v0 + 224) = v25;
    v26 = sub_7F24C();
    v27 = sub_7F3A0(&qword_12F8C8, type metadata accessor for OpenStoreURLAction, &protocol conformance descriptor for OpenStoreURLAction);
    *v25 = v0;
    v25[1] = sub_7EB70;
    v28 = *(v0 + 120);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    v31 = *(v0 + 80);

    return ActionDispatching.dispatch<A>(action:metrics:)(v28, v29, v31, &type metadata for OpenChannelAppIntent, v30, v26, v27);
  }
}

uint64_t sub_7EB70()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = v2[12];
    (*(v2[9] + 8))(v2[10], v2[8]);
    sub_7F2A0(v3, type metadata accessor for OpenStoreURLAction);
    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_7EE28;
  }

  else
  {
    v8 = v2[14];
    v7 = v2[15];
    v10 = v2[12];
    v9 = v2[13];
    (*(v2[9] + 8))(v2[10], v2[8]);
    sub_7F2A0(v10, type metadata accessor for OpenStoreURLAction);
    (*(v8 + 8))(v7, v9);
    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_7ED20;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_7ED20()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  sub_E53A4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_7EE28()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void (*sub_7EF18(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_33020;
}

uint64_t sub_7EF8C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F888, &qword_EFCE0);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F890, &qword_EFCE8);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F8A0, &unk_EFD18);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7F120(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return OpenChannelAppIntent.perform()(a1);
}

uint64_t sub_7F1BC(uint64_t a1)
{
  v2 = sub_7DBD4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_7F1F8()
{
  result = qword_12F8B8;
  if (!qword_12F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8B8);
  }

  return result;
}

unint64_t sub_7F24C()
{
  result = qword_12F8C0;
  if (!qword_12F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8C0);
  }

  return result;
}

uint64_t sub_7F2A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_7F304()
{
  result = qword_12F8D0;
  if (!qword_12F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8D0);
  }

  return result;
}

uint64_t sub_7F3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_7F3EC()
{
  result = qword_12F8D8;
  if (!qword_12F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8D8);
  }

  return result;
}

unint64_t sub_7F448()
{
  result = qword_12F8E0;
  if (!qword_12F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8E0);
  }

  return result;
}

unint64_t sub_7F4A0()
{
  result = qword_12F8E8;
  if (!qword_12F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F8E8);
  }

  return result;
}

void *sub_7F534@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t OpenEpisodeAppIntent.init(target:notice:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EpisodeEntity(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *a2;
  OpenEpisodeAppIntent.init()(&v16);
  v13 = v17;
  v15 = v16;
  *a3 = v16;
  *(a3 + 16) = v13;
  sub_6FAC8(a1, v11);
  sub_6FAC8(v11, v9);
  sub_E5514();
  sub_818B0(v11, type metadata accessor for EpisodeEntity);
  LOBYTE(v16) = v12;
  sub_E5514();
  return sub_818B0(a1, type metadata accessor for EpisodeEntity);
}

uint64_t static OpenEpisodeAppIntent.IntentSpecification(target:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F918, &unk_EFF50);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  v5 = sub_E5E74();
  __chkstk_darwin(v5 - 8);
  v6 = sub_E5E84();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_E5E64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F920, &qword_EFF78);
  sub_E5ED4();
  *(swift_allocObject() + 16) = xmmword_E87F0;
  v8[1] = a1;
  type metadata accessor for EpisodeEntity.CustomRepresentation(0);
  sub_819B0(&qword_12E9C0, type metadata accessor for EpisodeEntity.CustomRepresentation, &protocol conformance descriptor for EpisodeEntity.CustomRepresentation);

  sub_E5EC4();
  return sub_E5E94();
}

uint64_t sub_7F9D0()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F900);
  __swift_project_value_buffer(v0, qword_12F900);
  return sub_E5914();
}

uint64_t static OpenEpisodeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC00 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F900);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenEpisodeAppIntent.title.setter(uint64_t a1)
{
  if (qword_12CC00 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F900);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenEpisodeAppIntent.title.modify(uint64_t a1))(void)
{
  if (qword_12CC00 != -1)
  {
    swift_once();
  }

  v1 = sub_E5944();
  __swift_project_value_buffer(v1, qword_12F900);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_7FC84(uint64_t a1)
{
  if (qword_12CC00 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F900);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static OpenEpisodeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F928, &qword_EFF80);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F930, &qword_EFF88);
  __chkstk_darwin(v1);
  sub_71AD0();
  sub_E5744();
  v3._countAndFlagsBits = 0x206E65704FLL;
  v3._object = 0xE500000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F938, &unk_EFFB8);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_7FF2C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_6FAC8(a1, &v10 - v7);
  sub_6FAC8(v8, v6);

  sub_E5514();
  sub_818B0(v8, type metadata accessor for EpisodeEntity);
}

uint64_t OpenEpisodeAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_6FAC8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_818B0(a1, type metadata accessor for EpisodeEntity);
}

void (*OpenEpisodeAppIntent.target.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t sub_80188(uint64_t *a1, uint64_t *a2)
{

  sub_E51E4();
}

uint64_t OpenEpisodeAppIntent.objectGraph.setter(uint64_t a1)
{

  sub_E51E4();
}

void (*OpenEpisodeAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_3CA68;
}

void (*OpenEpisodeAppIntent.notice.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t OpenEpisodeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v39 = sub_E5774();
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_E5944();
  v35 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  v17 = *(v16 + 56);
  v34 = v16 + 56;
  v36 = v17;
  v17(v14, 0, 1, v15);
  v18 = type metadata accessor for EpisodeEntity(0);
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v21 = v8;
  v20(v8, 1, 1, v19);
  v22 = v6;
  v20(v6, 1, 1, v19);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v1 + 104);
  v32 = v1 + 104;
  v33 = v23;
  v24 = v37;
  v23(v37);
  sub_819B0(&qword_12E000, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
  v25 = v22;
  v26 = v24;
  v27 = sub_E5584();
  v28 = v38;
  *v38 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v40 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v28[1] = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F940, &qword_EFFC8);
  v36(v14, 1, 1, v35);
  LOBYTE(v41[0]) = 6;
  v20(v21, 1, 1, v19);
  v20(v25, 1, 1, v19);
  v33(v26, v31, v39);
  sub_81808();
  result = sub_E5544();
  v28[2] = result;
  return result;
}

uint64_t sub_80884@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

uint64_t OpenEpisodeAppIntent.perform()(uint64_t a1)
{
  *(v2 + 48) = a1;
  v3 = sub_E6974();
  *(v2 + 56) = v3;
  *(v2 + 64) = *(v3 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v4 = sub_E5BB4();
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = type metadata accessor for OpenStoreURLAction(0);
  *(v2 + 120) = swift_task_alloc();
  v5 = sub_E6CF4();
  *(v2 + 128) = v5;
  *(v2 + 136) = *(v5 - 8);
  *(v2 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = type metadata accessor for EpisodeEntity(0);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  v6 = sub_E59C4();
  *(v2 + 184) = v6;
  *(v2 + 192) = *(v6 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = *v1;
  *(v2 + 224) = *(v1 + 16);
  sub_E72F4();
  *(v2 + 232) = sub_E72E4();
  v8 = sub_E7294();
  *(v2 + 240) = v8;
  *(v2 + 248) = v7;

  return _swift_task_switch(sub_80B78, v8, v7);
}

uint64_t sub_80B78()
{
  v42 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  sub_E5504();
  sub_CC80(v3 + *(v5 + 104), v4);
  sub_818B0(v3, type metadata accessor for EpisodeEntity);
  v6 = (*(v2 + 48))(v4, 1, v1);
  v7 = *(v0 + 152);
  if (v6 == 1)
  {

    sub_DB70(v7);
    sub_E6914();

    v8 = sub_E6964();
    v9 = sub_E74B4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 168);
      v39 = *(v0 + 80);
      v12 = *(v0 + 56);
      v11 = *(v0 + 64);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41 = v14;
      *v13 = 136315138;
      sub_E5504();
      v15 = *v10;
      v16 = v10[1];

      sub_818B0(v10, type metadata accessor for EpisodeEntity);
      v17 = sub_23E64(v15, v16, &v41);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v8, v9, "Unable to open show %s, no share URL", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);

      (*(v11 + 8))(v39, v12);
    }

    else
    {
      v33 = *(v0 + 80);
      v34 = *(v0 + 56);
      v35 = *(v0 + 64);

      (*(v35 + 8))(v33, v34);
    }

    sub_7F1F8();
    swift_allocError();
    swift_willThrow();

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v18 = *(v0 + 224);
    v20 = *(v0 + 192);
    v19 = *(v0 + 200);
    v21 = *(v0 + 184);
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    v24 = *(v0 + 96);
    v40 = *(v0 + 104);
    v25 = *(v0 + 88);
    v38 = *(v0 + 208);
    (*(v20 + 32))(v19, v7, v21);
    *(v0 + 16) = v38;
    *(v0 + 32) = v18;
    (*(v20 + 16))(v22 + *(v23 + 20), v19, v21);
    sub_E6CD4();
    (*(v24 + 104))(v40, enum case for ActionMetricsBehavior.notProcessed(_:), v25);
    v26 = swift_task_alloc();
    *(v0 + 256) = v26;
    v27 = sub_8185C();
    v28 = sub_819B0(&qword_12F8C8, type metadata accessor for OpenStoreURLAction, &protocol conformance descriptor for OpenStoreURLAction);
    *v26 = v0;
    v26[1] = sub_80FF8;
    v29 = *(v0 + 144);
    v31 = *(v0 + 112);
    v30 = *(v0 + 120);
    v32 = *(v0 + 104);

    return ActionDispatching.dispatch<A>(action:metrics:)(v29, v30, v32, &type metadata for OpenEpisodeAppIntent, v31, v27, v28);
  }
}

uint64_t sub_80FF8()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = v2[15];
    (*(v2[12] + 8))(v2[13], v2[11]);
    sub_818B0(v3, type metadata accessor for OpenStoreURLAction);
    v4 = v2[30];
    v5 = v2[31];
    v6 = sub_812B4;
  }

  else
  {
    v8 = v2[17];
    v7 = v2[18];
    v10 = v2[15];
    v9 = v2[16];
    (*(v2[12] + 8))(v2[13], v2[11]);
    sub_818B0(v10, type metadata accessor for OpenStoreURLAction);
    (*(v8 + 8))(v7, v9);
    v4 = v2[30];
    v5 = v2[31];
    v6 = sub_811A8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_811A8()
{

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_E53A4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_812B4()
{
  v21 = v0;

  sub_E6914();
  swift_errorRetain();
  v1 = sub_E6964();
  v2 = sub_E74B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[33];
    v4 = v0[8];
    v19 = v0[9];
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v0[5] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v8 = sub_E7084();
    v10 = sub_23E64(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "FAILURE: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);

    (*(v4 + 8))(v19, v5);
  }

  else
  {
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];

    (*(v12 + 8))(v11, v13);
  }

  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[23];
  sub_E53A4();
  (*(v15 + 8))(v14, v16);

  v17 = v0[1];

  return v17();
}

void (*sub_8152C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_33020;
}

uint64_t sub_815A0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F928, &qword_EFF80);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F930, &qword_EFF88);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F938, &unk_EFFB8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_81730(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return OpenEpisodeAppIntent.perform()(a1);
}

uint64_t sub_817CC(uint64_t a1)
{
  v2 = sub_71AD0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_81808()
{
  result = qword_12F948;
  if (!qword_12F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F948);
  }

  return result;
}

unint64_t sub_8185C()
{
  result = qword_12F950;
  if (!qword_12F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F950);
  }

  return result;
}

uint64_t sub_818B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_81914()
{
  result = qword_12F958;
  if (!qword_12F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F958);
  }

  return result;
}

uint64_t sub_819B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_819FC()
{
  result = qword_12F960;
  if (!qword_12F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F960);
  }

  return result;
}

unint64_t sub_81A58()
{
  result = qword_12F968;
  if (!qword_12F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F968);
  }

  return result;
}

unint64_t sub_81AB0()
{
  result = qword_12F970;
  if (!qword_12F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F970);
  }

  return result;
}

void *sub_81B6C@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

void *sub_81BAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_E5504();
  *a1 = v3;
  return result;
}

uint64_t static OpenShowAppIntent.IntentSpecification(target:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F918, &unk_EFF50);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  v5 = sub_E5E74();
  __chkstk_darwin(v5 - 8);
  v6 = sub_E5E84();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_E5E64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F920, &qword_EFF78);
  sub_E5ED4();
  *(swift_allocObject() + 16) = xmmword_E87F0;
  v8[1] = a1;
  type metadata accessor for ShowEntity.CustomRepresentation(0);
  sub_83D98(&qword_12ECD0, type metadata accessor for ShowEntity.CustomRepresentation, &protocol conformance descriptor for ShowEntity.CustomRepresentation);

  sub_E5EC4();
  return sub_E5E94();
}

uint64_t sub_81EE8()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F988);
  __swift_project_value_buffer(v0, qword_12F988);
  return sub_E5914();
}

uint64_t static OpenShowAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F988);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenShowAppIntent.title.setter(uint64_t a1)
{
  if (qword_12CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F988);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenShowAppIntent.title.modify(uint64_t a1))(void)
{
  if (qword_12CC08 != -1)
  {
    swift_once();
  }

  v1 = sub_E5944();
  __swift_project_value_buffer(v1, qword_12F988);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_82198(uint64_t a1)
{
  if (qword_12CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F988);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static OpenShowAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9A0, &qword_F01F0);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9A8, &qword_F01F8);
  __chkstk_darwin(v1);
  sub_823F8();
  sub_E5744();
  v3._countAndFlagsBits = 0x206E65704FLL;
  v3._object = 0xE500000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9B8, &unk_F0228);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_823F8()
{
  result = qword_12F9B0;
  if (!qword_12F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9B0);
  }

  return result;
}

uint64_t sub_8244C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

uint64_t sub_82478(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ShowEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_8262C(a1, &v10 - v7);
  sub_8262C(v8, v6);

  sub_E5514();
  sub_83C98(v8, type metadata accessor for ShowEntity);
}

uint64_t OpenShowAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for ShowEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_8262C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_83C98(a1, type metadata accessor for ShowEntity);
}

uint64_t sub_8262C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*OpenShowAppIntent.target.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

void (*OpenShowAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_3CA68;
}

void (*OpenShowAppIntent.notice.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t OpenShowAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v39 = sub_E5774();
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_E5944();
  v35 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9C0, &qword_F1180);
  sub_E5914();
  sub_E5914();
  v17 = *(v16 + 56);
  v34 = v16 + 56;
  v36 = v17;
  v17(v14, 0, 1, v15);
  v18 = type metadata accessor for ShowEntity(0);
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v21 = v8;
  v20(v8, 1, 1, v19);
  v22 = v6;
  v20(v6, 1, 1, v19);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v1 + 104);
  v32 = v1 + 104;
  v33 = v23;
  v24 = v37;
  v23(v37);
  sub_83D98(&qword_12DDF0, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
  v25 = v22;
  v26 = v24;
  v27 = sub_E5584();
  v28 = v38;
  *v38 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v40 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v28[1] = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9C8, &qword_F0238);
  v36(v14, 1, 1, v35);
  LOBYTE(v41[0]) = 2;
  v20(v21, 1, 1, v19);
  v20(v25, 1, 1, v19);
  v33(v26, v31, v39);
  sub_83BF0();
  result = sub_E5544();
  v28[2] = result;
  return result;
}

uint64_t OpenShowAppIntent.init(target:notice:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ShowEntity(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *a2;
  OpenShowAppIntent.init()(&v16);
  v13 = v17;
  v15 = v16;
  *a3 = v16;
  *(a3 + 16) = v13;
  sub_8262C(a1, v11);
  sub_8262C(v11, v9);
  sub_E5514();
  sub_83C98(v11, type metadata accessor for ShowEntity);
  LOBYTE(v16) = v12;
  sub_E5514();
  return sub_83C98(a1, type metadata accessor for ShowEntity);
}

uint64_t OpenShowAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  v3 = sub_E6974();
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();
  v4 = sub_E5BB4();
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = type metadata accessor for OpenStoreURLAction(0);
  *(v2 + 104) = swift_task_alloc();
  v5 = sub_E6CF4();
  *(v2 + 112) = v5;
  *(v2 + 120) = *(v5 - 8);
  *(v2 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = type metadata accessor for ShowEntity(0);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v6 = sub_E59C4();
  *(v2 + 168) = v6;
  *(v2 + 176) = *(v6 - 8);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = *v1;
  *(v2 + 208) = *(v1 + 16);
  sub_E72F4();
  *(v2 + 216) = sub_E72E4();
  v8 = sub_E7294();
  *(v2 + 224) = v8;
  *(v2 + 232) = v7;

  return _swift_task_switch(sub_83100, v8, v7);
}

uint64_t sub_83100()
{
  v42 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  sub_E5504();
  sub_CC80(v3 + *(v5 + 84), v4);
  sub_83C98(v3, type metadata accessor for ShowEntity);
  v6 = (*(v2 + 48))(v4, 1, v1);
  v7 = *(v0 + 136);
  if (v6 == 1)
  {

    sub_DB70(v7);
    sub_E6914();

    v8 = sub_E6964();
    v9 = sub_E74B4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 152);
      v11 = *(v0 + 56);
      v39 = *(v0 + 64);
      v12 = *(v0 + 48);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41 = v14;
      *v13 = 136315138;
      sub_E5504();
      v15 = *v10;
      v16 = v10[1];

      sub_83C98(v10, type metadata accessor for ShowEntity);
      v17 = sub_23E64(v15, v16, &v41);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v8, v9, "Unable to open show %s, no share URL", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);

      (*(v11 + 8))(v39, v12);
    }

    else
    {
      v34 = *(v0 + 56);
      v33 = *(v0 + 64);
      v35 = *(v0 + 48);

      (*(v34 + 8))(v33, v35);
    }

    sub_7F1F8();
    swift_allocError();
    swift_willThrow();

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v18 = *(v0 + 208);
    v20 = *(v0 + 176);
    v19 = *(v0 + 184);
    v21 = *(v0 + 168);
    v23 = *(v0 + 96);
    v22 = *(v0 + 104);
    v24 = *(v0 + 80);
    v40 = *(v0 + 88);
    v25 = *(v0 + 72);
    v38 = *(v0 + 192);
    (*(v20 + 32))(v19, v7, v21);
    *(v0 + 16) = v38;
    *(v0 + 32) = v18;
    (*(v20 + 16))(v22 + *(v23 + 20), v19, v21);
    sub_E6CD4();
    (*(v24 + 104))(v40, enum case for ActionMetricsBehavior.notProcessed(_:), v25);
    v26 = swift_task_alloc();
    *(v0 + 240) = v26;
    v27 = sub_83C44();
    v28 = sub_83D98(&qword_12F8C8, type metadata accessor for OpenStoreURLAction, &protocol conformance descriptor for OpenStoreURLAction);
    *v26 = v0;
    v26[1] = sub_8356C;
    v29 = *(v0 + 128);
    v31 = *(v0 + 96);
    v30 = *(v0 + 104);
    v32 = *(v0 + 88);

    return ActionDispatching.dispatch<A>(action:metrics:)(v29, v30, v32, &type metadata for OpenShowAppIntent, v31, v27, v28);
  }
}

uint64_t sub_8356C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = v2[13];
    (*(v2[10] + 8))(v2[11], v2[9]);
    sub_83C98(v3, type metadata accessor for OpenStoreURLAction);
    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_83824;
  }

  else
  {
    v8 = v2[15];
    v7 = v2[16];
    v10 = v2[13];
    v9 = v2[14];
    (*(v2[10] + 8))(v2[11], v2[9]);
    sub_83C98(v10, type metadata accessor for OpenStoreURLAction);
    (*(v8 + 8))(v7, v9);
    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_8371C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_8371C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  sub_E53A4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_83824()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void (*sub_83914(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_33020;
}

uint64_t sub_83988(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9A0, &qword_F01F0);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9A8, &qword_F01F8);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x206E65704FLL;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9B8, &unk_F0228);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_83B18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return OpenShowAppIntent.perform()(a1);
}

uint64_t sub_83BB4(uint64_t a1)
{
  v2 = sub_823F8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_83BF0()
{
  result = qword_12F9D0;
  if (!qword_12F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9D0);
  }

  return result;
}

unint64_t sub_83C44()
{
  result = qword_12F9D8;
  if (!qword_12F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9D8);
  }

  return result;
}

uint64_t sub_83C98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_83CFC()
{
  result = qword_12F9E0;
  if (!qword_12F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9E0);
  }

  return result;
}

uint64_t sub_83D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_83DE4()
{
  result = qword_12F9E8;
  if (!qword_12F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9E8);
  }

  return result;
}

unint64_t sub_83E40()
{
  result = qword_12F9F0;
  if (!qword_12F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9F0);
  }

  return result;
}

unint64_t sub_83E98()
{
  result = qword_12F9F8;
  if (!qword_12F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F9F8);
  }

  return result;
}

void *sub_83F54@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

void *sub_83F94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_E5504();
  *a1 = v3;
  return result;
}

uint64_t sub_8406C()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FA10);
  __swift_project_value_buffer(v0, qword_12FA10);
  return sub_E5914();
}

uint64_t static SearchPodcastsAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC10 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FA10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_84184()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FA28);
  v1 = __swift_project_value_buffer(v0, qword_12FA28);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static SearchPodcastsAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC18 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FA28);

  return sub_69558(v3, a1);
}

uint64_t sub_842C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA98, &unk_F0670);
  v0 = sub_E5614();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_E87F0;
  result = (*(v1 + 104))(v3 + v2, enum case for StringSearchScope.general(_:), v0);
  qword_12FA40 = v3;
  return result;
}

uint64_t static SearchPodcastsAppIntent.searchScopes.getter()
{
  if (qword_12CC20 != -1)
  {
    swift_once();
  }
}

void (*SearchPodcastsAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_3CA68;
}

uint64_t sub_8447C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_E5634();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);

  sub_E5514();
  (*(v4 + 8))(v9, v3);
}

uint64_t SearchPodcastsAppIntent.criteria.setter(uint64_t a1)
{
  v2 = sub_E5634();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_E5514();
  return (*(v3 + 8))(a1, v2);
}

void (*SearchPodcastsAppIntent.criteria.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t SearchPodcastsAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v18 = a1;
  v1 = sub_E5774();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_E5944();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v19 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v13 = sub_E5214();
  v14 = v18;
  *v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA48, &qword_F0450);
  sub_E5914();
  sub_E5914();
  (*(v12 + 56))(v10, 0, 1, v11);
  v15 = sub_E5354();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  (*(v2 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_E5594();
  v14[1] = result;
  return result;
}

uint64_t SearchPodcastsAppIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  v3 = sub_E5BB4();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  v4 = sub_E6CF4();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  *(v2 + 88) = swift_task_alloc();
  v5 = sub_E6CE4();
  *(v2 + 96) = v5;
  *(v2 + 104) = *(v5 - 8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  v6 = sub_E6D64();
  *(v2 + 128) = v6;
  *(v2 + 136) = *(v6 - 8);
  *(v2 + 144) = swift_task_alloc();
  v7 = sub_E5634();
  *(v2 + 152) = v7;
  *(v2 + 160) = *(v7 - 8);
  *(v2 + 168) = swift_task_alloc();
  v8 = sub_E6974();
  *(v2 + 176) = v8;
  *(v2 + 184) = *(v8 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = *v1;
  sub_E72F4();
  *(v2 + 216) = sub_E72E4();
  v10 = sub_E7294();
  *(v2 + 224) = v10;
  *(v2 + 232) = v9;

  return _swift_task_switch(sub_84D5C, v10, v9);
}

uint64_t sub_84D5C(uint64_t a1)
{
  v51 = v1;
  sub_E6914();

  v2 = sub_E6964();
  v3 = sub_E7494();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[23];
    v5 = v1[21];
    v46 = v1[22];
    v48 = v1[24];
    v6 = v1[20];
    v44 = v1[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v7 = 136315138;
    sub_E5504();
    v9 = sub_E5624();
    v11 = v10;
    (*(v6 + 8))(v5, v44);
    v12 = sub_23E64(v9, v11, &v50);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v2, v3, "Starting search for term: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);

    (*(v4 + 8))(v48, v46);
  }

  else
  {
    v14 = v1[23];
    v13 = v1[24];
    v15 = v1[22];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v1[26];
  v18 = v1[20];
  v17 = v1[21];
  v40 = v1[19];
  v19 = v1[14];
  v21 = v1[12];
  v20 = v1[13];
  v42 = v1[11];
  v47 = v1[7];
  v49 = v1[25];
  v43 = v1[6];
  v45 = v1[5];
  sub_E6CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_E9EF0;
  sub_E6CD4();
  v23 = type metadata accessor for OpenAppLocationAction(0);
  *(v22 + 56) = v23;
  *(v22 + 64) = sub_85844(&qword_12F838, type metadata accessor for OpenAppLocationAction, &protocol conformance descriptor for OpenAppLocationAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 32));
  v41 = *(v20 + 32);
  v41(boxed_opaque_existential_1, v19, v21);
  *(boxed_opaque_existential_1 + *(v23 + 20)) = 7;
  v25 = v16;
  sub_E5504();
  v26 = sub_E5624();
  v28 = v27;
  (*(v18 + 8))(v17, v40);
  v29 = sub_E59C4();
  (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
  sub_E6CD4();
  v30 = type metadata accessor for SearchAction(0);
  *(v22 + 96) = v30;
  *(v22 + 104) = sub_85844(&qword_12FA58, type metadata accessor for SearchAction, &protocol conformance descriptor for SearchAction);
  v31 = __swift_allocate_boxed_opaque_existential_1((v22 + 72));
  v32 = v31 + v30[7];
  *v31 = 0;
  v31[1] = v26;
  v31[2] = v28;
  sub_CF40(v42, v31 + v30[6]);
  *v32 = 0;
  v32[8] = 1;
  *(v31 + v30[8]) = 0;
  v41((v31 + v30[9]), v19, v21);
  sub_E6D54();
  v1[2] = v49;
  v1[3] = v25;
  (*(v43 + 104))(v47, enum case for ActionMetricsBehavior.notProcessed(_:), v45);
  v33 = swift_task_alloc();
  v1[30] = v33;
  v34 = sub_85750();
  *v33 = v1;
  v33[1] = sub_85200;
  v35 = v1[18];
  v36 = v1[16];
  v37 = v1[10];
  v38 = v1[7];

  return ActionDispatching.dispatch<A>(action:metrics:)(v37, v35, v38, &type metadata for SearchPodcastsAppIntent, v36, v34, &protocol witness table for CompoundAction);
}

uint64_t sub_85200()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 248) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[28];
    v7 = v2[29];
    v8 = sub_85498;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v6 = v2[28];
    v7 = v2[29];
    v8 = sub_85390;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_85390()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  sub_E53A4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_85498()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_85594@<X0>(void *a1@<X8>)
{
  if (qword_12CC20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_12FA40;
}

void (*sub_85604(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_33020;
}

uint64_t sub_85678(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return SearchPodcastsAppIntent.perform()(a1);
}

uint64_t sub_85714(uint64_t a1)
{
  v2 = sub_858E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_85750()
{
  result = qword_12FA60;
  if (!qword_12FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA60);
  }

  return result;
}

unint64_t sub_857A8()
{
  result = qword_12FA68;
  if (!qword_12FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA68);
  }

  return result;
}

uint64_t sub_85844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_85890()
{
  result = qword_12FA78;
  if (!qword_12FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA78);
  }

  return result;
}

unint64_t sub_858E8()
{
  result = qword_12FA80;
  if (!qword_12FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA80);
  }

  return result;
}

unint64_t sub_85940()
{
  result = qword_12FA88;
  if (!qword_12FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA88);
  }

  return result;
}

unint64_t sub_85998()
{
  result = qword_12FA90;
  if (!qword_12FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FA90);
  }

  return result;
}

void *sub_85A58@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_85AF4()
{
  if (qword_12CC28 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_85BC0;
  v2 = *(v0 + 16);

  return sub_862D0(v2);
}

uint64_t sub_85BC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_85E38(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  sub_4ABC(0, &qword_12E090, NSManagedObjectID_ptr);
  *(v2 + 24) = sub_E71F4();

  return _swift_task_switch(sub_85ED0, 0, 0);
}

uint64_t sub_85ED0()
{
  if (qword_12CC28 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_85F9C;
  v2 = *(v0 + 24);

  return sub_862D0(v2);
}

uint64_t sub_85F9C()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_860FC, 0, 0);
  }

  else
  {
    v3 = v2[2];

    if (v3)
    {
      v4 = v2[2];
      v4[2](v4, 0);
      _Block_release(v4);
    }

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_860FC()
{
  v1 = *(v0 + 16);

  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = sub_E58F4();

    (v2)[2](v2, v3);
    _Block_release(v2);
  }

  else
  {
  }

  v4 = *(v0 + 8);

  return v4();
}

MTPlayAudioIntentSupport __swiftcall MTPlayAudioIntentSupport.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_86258()
{
  type metadata accessor for PlayAudioIntentSupportActor();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0xD00000000000001CLL;
  *(v0 + 120) = 0x80000000000F76B0;
  result = 0.0;
  *(v0 + 128) = xmmword_F0680;
  *(v0 + 144) = 0x80000000000F76D0;
  *(v0 + 152) = 0;
  qword_145668 = v0;
  return result;
}

uint64_t sub_862D0(uint64_t a1)
{
  v2[2] = v1;
  v4 = sub_E6974();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_863C4;

  return sub_86B98(a1);
}

uint64_t sub_863C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[7] = a1;
  v4[8] = a2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[2];

    return _swift_task_switch(sub_86514, v8, 0);
  }
}

uint64_t sub_86514()
{
  v1 = v0[7];
  if (!v1)
  {
LABEL_7:

    v12 = v0[1];

    return v12();
  }

  v2 = v0[8];
  v3 = sub_8CE48();
  if (v3)
  {
    v4 = sub_869E0(v3, v1);

    if (v4)
    {

      sub_E6914();
      v5 = sub_E6964();
      v6 = sub_E74D4();
      v7 = os_log_type_enabled(v5, v6);
      v9 = v0[4];
      v8 = v0[5];
      v10 = v0[3];
      if (v7)
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_0, v5, v6, "Skipping PlayAudioIntent donation as UUIDs have not changed.", v11, 2u);
      }

      (*(v9 + 8))(v8, v10);
      goto LABEL_7;
    }
  }

  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_866D8;

  return sub_87F7C(v2);
}

uint64_t sub_866D8(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  *v3 = v5;
  v3[1] = sub_86840;

  return sub_8A900();
}

uint64_t sub_86840()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_86950, v1, 0);
}

uint64_t sub_86950()
{
  v1 = v0[10];
  sub_8D568(v0[7]);
  sub_8C720(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_869E0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_E7CC4();

    sub_E7124();
    v16 = sub_E7CF4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_E7BD4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_86B98(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_E68B4();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_E7724();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v2[18] = swift_task_alloc();
  v5 = sub_E5944();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v6 = type metadata accessor for ContextualMetadata(0);
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v2[24] = *(v7 + 64);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v8 = sub_E6874();
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v9 = sub_E68A4();
  v2[32] = v9;
  v2[33] = *(v9 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_86ECC, v1, 0);
}

uint64_t sub_86ECC(uint64_t a1)
{
  sub_E6884();
  sub_E6864();
  v2 = sub_E6894();
  v3 = sub_E7674();
  if (sub_E77F4())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v2, v3, v5, "PlayAudioIntent.createEpisodeEntities", "", v4, 2u);
  }

  v6 = *(v1 + 280);
  v7 = *(v1 + 256);
  v8 = *(v1 + 264);
  v9 = *(v1 + 240);
  v10 = *(v1 + 248);
  v12 = *(v1 + 216);
  v11 = *(v1 + 224);
  v33 = *(v1 + 192);
  v31 = *(v1 + 200);
  v32 = *(v1 + 184);
  v27 = *(v1 + 208);
  v13 = *(v1 + 160);
  v28 = *(v1 + 144);
  v29 = *(v1 + 152);
  v30 = *(v1 + 136);
  v37 = *(v1 + 128);
  v35 = *(v1 + 120);
  v36 = *(v1 + 112);
  v34 = *(v1 + 72);

  (*(v11 + 16))(v9, v10, v12);
  sub_E68F4();
  swift_allocObject();
  *(v1 + 288) = sub_E68E4();
  v14 = *(v11 + 8);
  *(v1 + 296) = v14;
  *(v1 + 304) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v12);
  v15 = *(v8 + 8);
  *(v1 + 312) = v15;
  *(v1 + 320) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E740, &qword_EC270);
  sub_50A18();
  *v27 = sub_E5424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E750, &qword_EC278);
  sub_50A6C();
  v27[1] = sub_E5424();
  sub_E5914();
  (*(v13 + 56))(v28, 1, 1, v29);
  v16 = sub_E5684();
  (*(*(v16 - 8) + 56))(v30, 1, 1, v16);
  sub_E56A4();
  *(v1 + 64) = &_swiftEmptySetSingleton;
  sub_E53F4();
  *(v1 + 376) = 1;
  sub_E53F4();
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 privateQueueContext];
  *(v1 + 328) = v18;

  v19 = swift_allocObject();
  *(v1 + 336) = v19;
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v20 = swift_allocObject();
  *(v1 + 344) = v20;
  *(v20 + 16) = _swiftEmptyArrayStorage;
  sub_8E6F4(v27, v31, type metadata accessor for ContextualMetadata);
  v21 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v22 = (v33 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v1 + 352) = v23;
  *(v23 + 16) = v34;
  *(v23 + 24) = v18;
  sub_8E988(v31, v23 + v21, type metadata accessor for ContextualMetadata);
  *(v23 + v22) = v19;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  (*(v35 + 104))(v37, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v36);

  v18;

  v24 = swift_task_alloc();
  *(v1 + 360) = v24;
  *v24 = v1;
  v24[1] = sub_873A4;
  v25 = *(v1 + 128);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v24, v25, sub_8E880, v23, &type metadata for () + 8);
}

uint64_t sub_873A4()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = v2[16];
  v4 = v2[15];
  v5 = v2[14];
  v6 = v2[10];
  if (v0)
  {
    (*(v4 + 8))(v3, v5);

    v7 = sub_87850;
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v7 = sub_87574;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_87574(uint64_t a1)
{
  sub_E6884();
  v2 = sub_E6894();
  sub_E68D4();
  v3 = sub_E7664();
  if (sub_E77F4())
  {
    v5 = v1[12];
    v4 = v1[13];
    v6 = v1[11];

    sub_E6904();

    if ((*(v5 + 88))(v4, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[12] + 8))(v1[13], v1[11]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v2, v3, v9, "PlayAudioIntent.createEpisodeEntities", v7, v8, 2u);
  }

  v10 = v1[42];
  v11 = v1[43];
  v12 = v1[41];
  v23 = v1[39];
  v22 = v1[37];
  v13 = v1[34];
  v14 = v1[32];
  v15 = v1[29];
  v17 = v1[26];
  v16 = v1[27];

  v22(v15, v16);
  v23(v13, v14);
  sub_8E928(v17, type metadata accessor for ContextualMetadata);
  swift_beginAccess();
  v18 = *(v10 + 16);
  swift_beginAccess();
  v19 = *(v11 + 16);

  v20 = v1[1];

  return v20(v18, v19);
}

uint64_t sub_87850()
{
  v1 = v0[41];
  v2 = v0[26];

  sub_8E928(v2, type metadata accessor for ContextualMetadata);

  v3 = v0[1];

  return v3();
}

void sub_87998(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a5;
  v46 = a3;
  v47 = a4;
  v49 = sub_E6974();
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EAC0, &qword_ECC30);
  v13 = __chkstk_darwin(v12 - 8);
  v45 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v44 = &v40 - v15;
  v16 = type metadata accessor for EpisodeEntity(0);
  v43 = *(v16 - 8);
  v17 = __chkstk_darwin(v16 - 8);
  v56 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v55 = &v40 - v19;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_E7AC4())
  {
    v21 = 0;
    v61 = a1 & 0xC000000000000001;
    v58 = i;
    v59 = a1 & 0xFFFFFFFFFFFFFF8;
    v48 = &v9[1];
    v50 = a1;
    v42 = a2;
    v41 = v11;
    while (v61)
    {
      v22 = sub_E79B4();
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_26;
      }

LABEL_10:
      v24 = v22;
      v25 = sub_E7704();

      if (v6)
      {

        return;
      }

      if (v25)
      {
        v26 = [v25 uuid];
        if (v26)
        {
          v54 = 0;
          v27 = v26;
          v28 = sub_E7064();
          v51 = v29;
          v52 = v28;

          v30 = v25;
          v31 = v55;
          v53 = v30;
          EpisodeEntity.init(model:)(v30, v55);
          v32 = v44;
          sub_8E6F4(v46, v44, type metadata accessor for ContextualMetadata);
          v33 = type metadata accessor for ContextualMetadata(0);
          (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
          sub_26324(v32, v45, &qword_12EAC0, &qword_ECC30);
          sub_E53F4();
          sub_110AC(v32, &qword_12EAC0, &qword_ECC30);
          swift_beginAccess();
          sub_BEB48(v60, v52, v51);
          swift_endAccess();

          sub_8E6F4(v31, v56, type metadata accessor for EpisodeEntity);
          v34 = v57;
          swift_beginAccess();
          v9 = *(v34 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v34 + 16) = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v9 = sub_23454(0, v9[2].isa + 1, 1, v9);
            *(v57 + 16) = v9;
          }

          isa = v9[2].isa;
          v36 = v9[3].isa;
          v11 = v41;
          v6 = v54;
          if (isa >= v36 >> 1)
          {
            v9 = sub_23454((v36 > 1), isa + 1, 1, v9);
          }

          v9[2].isa = (isa + 1);
          sub_8E988(v56, v9 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * isa, type metadata accessor for EpisodeEntity);
          *(v57 + 16) = v9;
          swift_endAccess();

          sub_8E928(v55, type metadata accessor for EpisodeEntity);
          a2 = v42;
          a1 = v50;
          goto LABEL_6;
        }
      }

      sub_E6914();
      v9 = sub_E6964();
      v38 = sub_E74B4();
      if (os_log_type_enabled(v9, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_0, v9, v38, "AppIntents failed to find episode.", v39, 2u);
        a1 = v50;
      }

      else
      {
      }

      (*v48)(v11, v49);
LABEL_6:
      ++v21;
      if (v23 == v58)
      {
        return;
      }
    }

    if (v21 >= *(v59 + 16))
    {
      goto LABEL_27;
    }

    v22 = *(a1 + 8 * v21 + 32);
    v23 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }
}

uint64_t sub_87F7C(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_E68B4();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v4 = sub_E6974();
  v2[40] = v4;
  v2[41] = *(v4 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v5 = sub_E5794();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = type metadata accessor for AudioEntity(0);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v6 = type metadata accessor for EpisodeEntity(0);
  v2[54] = v6;
  v2[55] = *(v6 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v7 = sub_E6BE4();
  v2[60] = v7;
  v2[61] = *(v7 - 8);
  v2[62] = swift_task_alloc();
  v8 = sub_E6874();
  v2[63] = v8;
  v2[64] = *(v8 - 8);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v9 = sub_E68A4();
  v2[68] = v9;
  v2[69] = *(v9 - 8);
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();

  return _swift_task_switch(sub_88324, v1, 0);
}

uint64_t sub_88324(uint64_t a1)
{
  sub_E6884();
  sub_E6864();
  v2 = sub_E6894();
  v3 = sub_E7674();
  if (sub_E77F4())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v2, v3, v5, "PlayAudioIntent.prepareArtworkAndDonate", "", v4, 2u);
  }

  v6 = *(v1 + 552);
  v7 = *(v1 + 544);
  v8 = *(v1 + 536);
  v9 = *(v1 + 528);
  v11 = *(v1 + 504);
  v10 = *(v1 + 512);
  v13 = *(v1 + 488);
  v12 = *(v1 + 496);
  v39 = *(v1 + 568);
  v40 = *(v1 + 480);
  v41 = *(v1 + 280);

  (*(v10 + 16))(v9, v8, v11);
  sub_E68F4();
  swift_allocObject();
  *(v1 + 576) = sub_E68E4();
  v14 = *(v10 + 8);
  *(v1 + 584) = v14;
  *(v1 + 592) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v11);
  v15 = *(v6 + 8);
  *(v1 + 600) = v15;
  *(v1 + 608) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v39, v7);
  _s15PodcastsActions12DependenciesO03allC09JetEngine15BaseObjectGraphCyFZ_0();
  *(v1 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);

  sub_E6BD4();

  *(v1 + 624) = sub_E6DC4();

  (*(v13 + 8))(v12, v40);
  v16 = *(v41 + 16);
  *(v1 + 632) = v16;
  if (v16)
  {
    v17 = 0;
    v18 = *(v1 + 440);
    *(v1 + 760) = *(v18 + 80);
    *(v1 + 640) = *(v18 + 72);
    while (1)
    {
      *(v1 + 656) = _swiftEmptyArrayStorage;
      *(v1 + 648) = v17;
      v19 = *(v1 + 472);
      sub_8E6F4(*(v1 + 280) + ((*(v1 + 760) + 32) & ~*(v1 + 760)) + *(v1 + 640) * v17, v19, type metadata accessor for EpisodeEntity);
      swift_beginAccess();
      *(v1 + 664) = *(v19 + 72);
      v20 = *(v19 + 80);
      *(v1 + 672) = v20;
      if (v20)
      {
        break;
      }

      sub_8E928(*(v1 + 472), type metadata accessor for EpisodeEntity);
      v17 = *(v1 + 648) + 1;
      if (v17 == *(v1 + 632))
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();

    v27 = swift_task_alloc();
    *(v1 + 680) = v27;
    *v27 = v1;
    v27[1] = sub_8895C;
    v28 = *(v1 + 616);

    return BaseObjectGraph.inject<A>(_:)(v1 + 56, v28, v28);
  }

  else
  {
LABEL_7:
    sub_E6884();
    v21 = sub_E6894();
    sub_E68D4();
    v22 = sub_E7664();
    if (sub_E77F4())
    {
      v23 = *(v1 + 304);
      v24 = *(v1 + 312);
      v25 = *(v1 + 296);

      sub_E6904();

      if ((*(v23 + 88))(v24, v25) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v1 + 304) + 8))(*(v1 + 312), *(v1 + 296));
        v26 = "";
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v21, v22, v30, "PlayAudioIntent.prepareArtworkAndDonate", v26, v29, 2u);
    }

    v38 = *(v1 + 600);
    v31 = *(v1 + 584);
    v32 = *(v1 + 560);
    v33 = *(v1 + 544);
    v34 = *(v1 + 520);
    v35 = *(v1 + 504);

    v31(v34, v35);
    v38(v32, v33);

    v36 = *(v1 + 8);

    return v36(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_8895C()
{
  v2 = *v1;
  v2[86] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_88C70, 0, 0);
  }

  else
  {
    v3 = v2[59];
    v4 = *(v2[54] + 96);
    v5 = swift_task_alloc();
    v2[87] = v5;
    v6 = sub_8E674(&qword_12E998, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
    *v5 = v2;
    v5[1] = sub_88B38;
    v7 = v2[54];

    return Preparable.artworkData(for:imageProvider:)(v3 + v4, v2 + 7, v7, v6);
  }
}

uint64_t sub_88B38(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 704) = v2;

  if (v2)
  {
    v7 = sub_88FAC;
  }

  else
  {
    *(v6 + 712) = a2;
    *(v6 + 720) = a1;
    v7 = sub_88C94;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_88C94()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[59];
  v4 = v0[54];
  v5 = v0[36];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v3 + *(v4 + 100);
  sub_4DC8C(*v6, *(v6 + 8));
  *v6 = v1;
  *(v6 + 8) = v2;
  swift_endAccess();

  return _swift_task_switch(sub_88D3C, v5, 0);
}

uint64_t sub_88D3C()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  sub_68E3C((v0 + 16));
  sub_8E6F4(v1, v2, type metadata accessor for EpisodeEntity);
  swift_storeEnumTagMultiPayload();
  *(v0 + 728) = *(v0 + 48);
  sub_8E6F4(v2, v3, type metadata accessor for AudioEntity);
  sub_E5514();
  sub_8E928(v2, type metadata accessor for AudioEntity);
  v4 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v4;
  *(v0 + 128) = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 736) = v5;
  v6 = sub_674B8();
  *v5 = v0;
  v5[1] = sub_88E84;
  v7 = *(v0 + 400);

  return AppIntent.donate()(v7, &type metadata for PlayAudioIntent, v6);
}

uint64_t sub_88E84()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v3 = *(v2 + 288);

    v4 = sub_8A2B8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 288);
    v4 = sub_89644;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_88FAC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v0[94] = v0[88];
  v1 = v0[36];

  return _swift_task_switch(sub_8901C, v1, 0);
}

uint64_t sub_8901C()
{
  v40 = v0;
  swift_endAccess();

  sub_E6914();
  swift_errorRetain();
  v1 = sub_E6964();
  v2 = sub_E74B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 472);
    v4 = *(v0 + 328);
    v38 = *(v0 + 336);
    v37 = *(v0 + 320);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v5 = 136315394;
    *(v0 + 248) = *(v3 + 88);
    sub_57150();
    v8 = sub_E7BB4();
    v10 = sub_23E64(v8, v9, &v39);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v11;
    *v6 = v11;
    _os_log_impl(&dword_0, v1, v2, "Donating PlayAudioIntent failed %s - %@", v5, 0x16u);
    sub_110AC(v6, &unk_12DB20, &unk_F0760);

    __swift_destroy_boxed_opaque_existential_1(v7);

    (*(v4 + 8))(v38, v37);
  }

  else
  {
    v3 = *(v0 + 472);
    v13 = *(v0 + 328);
    v12 = *(v0 + 336);
    v14 = *(v0 + 320);

    (*(v13 + 8))(v12, v14);
  }

  sub_8E928(v3, type metadata accessor for EpisodeEntity);
  v15 = *(v0 + 656);
  while (1)
  {
    v16 = *(v0 + 648) + 1;
    if (v16 == *(v0 + 632))
    {
      break;
    }

    *(v0 + 656) = v15;
    *(v0 + 648) = v16;
    v17 = *(v0 + 472);
    sub_8E6F4(*(v0 + 280) + ((*(v0 + 760) + 32) & ~*(v0 + 760)) + *(v0 + 640) * v16, v17, type metadata accessor for EpisodeEntity);
    swift_beginAccess();
    *(v0 + 664) = *(v17 + 72);
    v18 = *(v17 + 80);
    *(v0 + 672) = v18;
    if (v18)
    {
      swift_beginAccess();

      v25 = swift_task_alloc();
      *(v0 + 680) = v25;
      *v25 = v0;
      v25[1] = sub_8895C;
      v26 = *(v0 + 616);

      return BaseObjectGraph.inject<A>(_:)(v0 + 56, v26, v26);
    }

    sub_8E928(*(v0 + 472), type metadata accessor for EpisodeEntity);
  }

  sub_E6884();
  v19 = sub_E6894();
  sub_E68D4();
  v20 = sub_E7664();
  if (sub_E77F4())
  {
    v21 = *(v0 + 304);
    v22 = *(v0 + 312);
    v23 = *(v0 + 296);

    sub_E6904();

    if ((*(v21 + 88))(v22, v23) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v24 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
      v24 = "";
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v19, v20, v28, "PlayAudioIntent.prepareArtworkAndDonate", v24, v27, 2u);
  }

  v36 = *(v0 + 600);
  v29 = *(v0 + 584);
  v30 = *(v0 + 560);
  v31 = *(v0 + 544);
  v32 = *(v0 + 520);
  v33 = *(v0 + 504);

  v29(v32, v33);
  v36(v30, v31);

  v34 = *(v0 + 8);

  return v34(v15);
}

uint64_t sub_89644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v119 = v3;
  v4 = (*(v3 + 472) + *(*(v3 + 432) + 100));
  v5 = v4[1];
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    v7 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v7 != 2)
      {
        goto LABEL_24;
      }

      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      v10 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
LABEL_12:
        sub_4EBA0(v6, v5);
        if (v10 >= 1)
        {
LABEL_13:
          v12 = *(v3 + 392);
          v11 = *(v3 + 400);
          v13 = *(v3 + 360);
          v14 = *(v3 + 368);
          sub_E6914();
          v115 = *(v14 + 16);
          v115(v12, v11, v13);
          sub_4EB8C(v6, v5);

          sub_4EB8C(v6, v5);
          v15 = sub_E6964();
          v16 = sub_E74D4();

          v17 = os_log_type_enabled(v15, v16);
          v18 = *(v3 + 672);
          if (!v17)
          {
            v66 = *(v3 + 392);
            v67 = *(v3 + 360);
            v68 = *(v3 + 368);
            v117 = *(v3 + 352);
            v69 = *(v3 + 320);
            v70 = *(v3 + 328);
            sub_4DC8C(v6, v5);

            sub_4DC8C(v6, v5);
            sub_4DC8C(v6, v5);

            (*(v68 + 8))(v66, v67);
            (*(v70 + 8))(v117, v69);
            goto LABEL_39;
          }

          v106 = v16;
          v107 = v15;
          v108 = *(v3 + 664);
          v109 = *(v3 + 472);
          v110 = *(v3 + 464);
          v111 = *(v3 + 456);
          v20 = *(v3 + 384);
          v19 = *(v3 + 392);
          v113 = v5 >> 62;
          v22 = *(v3 + 360);
          v21 = *(v3 + 368);
          v23 = swift_slowAlloc();
          *(v3 + 264) = swift_slowAlloc();
          *v23 = 136316418;
          v115(v20, v19, v22);
          v24 = sub_E7084();
          v26 = v25;
          (*(v21 + 8))(v19, v22);
          v27 = sub_23E64(v24, v26, (v3 + 264));

          *(v23 + 4) = v27;
          *(v23 + 12) = 2080;
          v28 = sub_23E64(v108, v18, (v3 + 264));

          *(v23 + 14) = v28;
          *(v23 + 22) = 2080;
          *(v3 + 272) = *(v109 + 88);
          sub_57150();
          v29 = sub_E7BB4();
          v31 = sub_23E64(v29, v30, (v3 + 264));

          *(v23 + 24) = v31;
          *(v23 + 32) = 2080;
          sub_8E6F4(v109, v110, type metadata accessor for EpisodeEntity);
          sub_E53E4();
          v32 = *(v3 + 216);
          v33 = *(v3 + 224);
          sub_8E928(v110, type metadata accessor for EpisodeEntity);
          v34 = sub_23E64(v32, v33, (v3 + 264));

          *(v23 + 34) = v34;
          *(v23 + 42) = 2080;
          sub_8E6F4(v109, v111, type metadata accessor for EpisodeEntity);
          sub_E53E4();
          v35 = *(v3 + 232);
          v36 = *(v3 + 240);
          sub_8E928(v111, type metadata accessor for EpisodeEntity);
          if (v36)
          {
            v37 = v35;
          }

          else
          {
            v37 = 0x20574F4853204F4ELL;
          }

          if (v36)
          {
            v38 = v36;
          }

          else
          {
            v38 = 0xEC000000454D414ELL;
          }

          v39 = sub_23E64(v37, v38, (v3 + 264));

          *(v23 + 44) = v39;
          *(v23 + 52) = 2048;
          if (v113 == 2)
          {
            v72 = *(v6 + 16);
            v71 = *(v6 + 24);
            a1 = sub_4DC8C(v6, v5);
            v40 = v71 - v72;
            if (!__OFSUB__(v71, v72))
            {
              v41 = v107;
              goto LABEL_38;
            }

LABEL_60:
            __break(1u);
            return BaseObjectGraph.inject<A>(_:)(a1, a2, a3);
          }

          if (v113 != 1)
          {
            v41 = v107;
            sub_4DC8C(v6, v5);
            v40 = BYTE6(v5);
            goto LABEL_38;
          }

          a1 = sub_4DC8C(v6, v5);
          LODWORD(v40) = HIDWORD(v6) - v6;
          v41 = v107;
          if (!__OFSUB__(HIDWORD(v6), v6))
          {
            v40 = v40;
LABEL_38:
            v73 = *(v3 + 352);
            v74 = *(v3 + 320);
            v75 = *(v3 + 328);
            *(v23 + 54) = v40;
            sub_4DC8C(v6, v5);
            _os_log_impl(&dword_0, v41, v106, "Donating PlayAudioIntent with episode: %s - %s - %s - %s - %s - artwork size: %ld bytes", v23, 0x3Eu);
            swift_arrayDestroy();

            sub_4DC8C(v6, v5);
            (*(v75 + 8))(v73, v74);
            goto LABEL_39;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_24:
        sub_4DC8C(v6, v5);
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v7)
    {
      if (!BYTE6(v5))
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(HIDWORD(v6), v6))
    {
      __break(1u);
      goto LABEL_59;
    }

    v10 = HIDWORD(v6) - v6;
    goto LABEL_12;
  }

LABEL_25:
  sub_E6914();

  v42 = sub_E6964();
  v43 = sub_E74C4();

  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v3 + 672);
  if (v44)
  {
    v46 = *(v3 + 664);
    v47 = *(v3 + 464);
    v48 = *(v3 + 472);
    v49 = *(v3 + 448);
    v112 = *(v3 + 328);
    v114 = *(v3 + 320);
    v116 = *(v3 + 344);
    v50 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v50 = 136315906;
    v51 = sub_23E64(v46, v45, &v118);

    *(v50 + 4) = v51;
    *(v50 + 12) = 2080;
    *(v3 + 256) = *(v48 + 88);
    sub_57150();
    v52 = sub_E7BB4();
    v54 = sub_23E64(v52, v53, &v118);

    *(v50 + 14) = v54;
    *(v50 + 22) = 2080;
    sub_8E6F4(v48, v47, type metadata accessor for EpisodeEntity);
    sub_E53E4();
    v55 = *(v3 + 184);
    v56 = *(v3 + 192);
    sub_8E928(v47, type metadata accessor for EpisodeEntity);
    v57 = sub_23E64(v55, v56, &v118);

    *(v50 + 24) = v57;
    *(v50 + 32) = 2080;
    sub_8E6F4(v48, v49, type metadata accessor for EpisodeEntity);
    sub_E53E4();
    v58 = *(v3 + 200);
    v59 = *(v3 + 208);
    sub_8E928(v49, type metadata accessor for EpisodeEntity);
    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0x20574F4853204F4ELL;
    }

    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0xEC000000454D414ELL;
    }

    v62 = sub_23E64(v60, v61, &v118);

    *(v50 + 34) = v62;
    _os_log_impl(&dword_0, v42, v43, "[ERROR] Donating PlayAudioIntent with episode: %s - %s - %s - %s -— No artwork data was loaded!", v50, 0x2Au);
    swift_arrayDestroy();

    (*(v112 + 8))(v116, v114);
  }

  else
  {
    v63 = *(v3 + 344);
    v64 = *(v3 + 320);
    v65 = *(v3 + 328);

    (*(v65 + 8))(v63, v64);
  }

LABEL_39:
  (*(*(v3 + 368) + 16))(*(v3 + 376), *(v3 + 400), *(v3 + 360));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = *(v3 + 656);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v77 = sub_234A4(0, v77[2] + 1, 1, *(v3 + 656));
  }

  v79 = v77[2];
  v78 = v77[3];
  if (v79 >= v78 >> 1)
  {
    v77 = sub_234A4((v78 > 1), v79 + 1, 1, v77);
  }

  v80 = *(v3 + 472);
  v81 = *(v3 + 400);
  v83 = *(v3 + 368);
  v82 = *(v3 + 376);
  v84 = *(v3 + 360);

  (*(v83 + 8))(v81, v84);
  v77[2] = v79 + 1;
  (*(v83 + 32))(v77 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v79, v82, v84);
  for (i = v80; ; i = *(v3 + 472))
  {
    sub_8E928(i, type metadata accessor for EpisodeEntity);
    v86 = *(v3 + 648) + 1;
    if (v86 == *(v3 + 632))
    {
      break;
    }

    *(v3 + 656) = v77;
    *(v3 + 648) = v86;
    v87 = *(v3 + 472);
    sub_8E6F4(*(v3 + 280) + ((*(v3 + 760) + 32) & ~*(v3 + 760)) + *(v3 + 640) * v86, v87, type metadata accessor for EpisodeEntity);
    swift_beginAccess();
    *(v3 + 664) = *(v87 + 72);
    v88 = *(v87 + 80);
    *(v3 + 672) = v88;
    if (v88)
    {
      swift_beginAccess();

      v95 = swift_task_alloc();
      *(v3 + 680) = v95;
      *v95 = v3;
      v95[1] = sub_8895C;
      a2 = *(v3 + 616);
      a1 = v3 + 56;
      a3 = a2;

      return BaseObjectGraph.inject<A>(_:)(a1, a2, a3);
    }
  }

  sub_E6884();
  v89 = sub_E6894();
  sub_E68D4();
  v90 = sub_E7664();
  if (sub_E77F4())
  {
    v91 = *(v3 + 304);
    v92 = *(v3 + 312);
    v93 = *(v3 + 296);

    sub_E6904();

    if ((*(v91 + 88))(v92, v93) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v94 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v3 + 304) + 8))(*(v3 + 312), *(v3 + 296));
      v94 = "";
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v89, v90, v97, "PlayAudioIntent.prepareArtworkAndDonate", v94, v96, 2u);
  }

  v105 = *(v3 + 600);
  v98 = *(v3 + 584);
  v99 = *(v3 + 560);
  v100 = *(v3 + 544);
  v101 = *(v3 + 520);
  v102 = *(v3 + 504);

  v98(v101, v102);
  v105(v99, v100);

  v103 = *(v3 + 8);

  return v103(v77);
}

uint64_t sub_8A2B8()
{
  v40 = v0;

  sub_E6914();
  swift_errorRetain();
  v1 = sub_E6964();
  v2 = sub_E74B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 472);
    v36 = *(v0 + 328);
    v37 = *(v0 + 320);
    v38 = *(v0 + 336);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v39 = v6;
    *v4 = 136315394;
    *(v0 + 248) = *(v3 + 88);
    sub_57150();
    v7 = sub_E7BB4();
    v9 = sub_23E64(v7, v8, &v39);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&dword_0, v1, v2, "Donating PlayAudioIntent failed %s - %@", v4, 0x16u);
    sub_110AC(v5, &unk_12DB20, &unk_F0760);

    __swift_destroy_boxed_opaque_existential_1(v6);

    (*(v36 + 8))(v38, v37);
  }

  else
  {
    v3 = *(v0 + 472);
    v12 = *(v0 + 328);
    v11 = *(v0 + 336);
    v13 = *(v0 + 320);

    (*(v12 + 8))(v11, v13);
  }

  sub_8E928(v3, type metadata accessor for EpisodeEntity);
  v14 = *(v0 + 656);
  while (1)
  {
    v15 = *(v0 + 648) + 1;
    if (v15 == *(v0 + 632))
    {
      break;
    }

    *(v0 + 656) = v14;
    *(v0 + 648) = v15;
    v16 = *(v0 + 472);
    sub_8E6F4(*(v0 + 280) + ((*(v0 + 760) + 32) & ~*(v0 + 760)) + *(v0 + 640) * v15, v16, type metadata accessor for EpisodeEntity);
    swift_beginAccess();
    *(v0 + 664) = *(v16 + 72);
    v17 = *(v16 + 80);
    *(v0 + 672) = v17;
    if (v17)
    {
      swift_beginAccess();

      v24 = swift_task_alloc();
      *(v0 + 680) = v24;
      *v24 = v0;
      v24[1] = sub_8895C;
      v25 = *(v0 + 616);

      return BaseObjectGraph.inject<A>(_:)(v0 + 56, v25, v25);
    }

    sub_8E928(*(v0 + 472), type metadata accessor for EpisodeEntity);
  }

  sub_E6884();
  v18 = sub_E6894();
  sub_E68D4();
  v19 = sub_E7664();
  if (sub_E77F4())
  {
    v20 = *(v0 + 304);
    v21 = *(v0 + 312);
    v22 = *(v0 + 296);

    sub_E6904();

    if ((*(v20 + 88))(v21, v22) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v23 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
      v23 = "";
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v18, v19, v27, "PlayAudioIntent.prepareArtworkAndDonate", v23, v26, 2u);
  }

  v35 = *(v0 + 600);
  v28 = *(v0 + 584);
  v29 = *(v0 + 560);
  v30 = *(v0 + 544);
  v31 = *(v0 + 520);
  v32 = *(v0 + 504);

  v28(v31, v32);
  v35(v29, v30);

  v33 = *(v0 + 8);

  return v33(v14);
}

uint64_t sub_8A900()
{
  v1[2] = v0;
  v2 = sub_E68B4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_E6974();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = sub_E5844();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v5 = sub_E56E4();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v6 = sub_E5794();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v7 = sub_E6874();
  v1[23] = v7;
  v1[24] = *(v7 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v8 = sub_E68A4();
  v1[28] = v8;
  v1[29] = *(v8 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_8AC48, v0, 0);
}

uint64_t sub_8AC48()
{
  v1 = sub_8BFEC();
  *(v0 + 256) = v1;
  if (v1)
  {
    v2 = v1;
    sub_E6884();
    sub_E6864();
    v3 = sub_E6894();
    v4 = sub_E7674();
    if (sub_E77F4())
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v3, v4, v6, "PlayAudioIntent.deleteOldIntents", "", v5, 2u);
    }

    v7 = *(v0 + 248);
    v8 = *(v0 + 224);
    v9 = *(v0 + 232);
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    v12 = *(v0 + 184);
    v13 = *(v0 + 192);

    (*(v13 + 16))(v10, v11, v12);
    sub_E68F4();
    swift_allocObject();
    *(v0 + 264) = sub_E68E4();
    v14 = *(v13 + 8);
    *(v0 + 272) = v14;
    *(v0 + 280) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v11, v12);
    v15 = *(v9 + 8);
    *(v0 + 288) = v15;
    *(v0 + 296) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v7, v8);
    v16 = *(v2 + 16);
    *(v0 + 304) = v16;
    if (v16)
    {
      v17 = *(v0 + 136);
      v18 = *(v0 + 144);
      v19 = *(v18 + 16);
      v18 += 16;
      v20 = *(v18 + 64);
      *(v0 + 360) = v20;
      *(v0 + 312) = *(v18 + 56);
      *(v0 + 320) = v19;
      v21 = *(v0 + 256);
      v22 = *(v0 + 176);
      *(v0 + 328) = 0;
      *(v0 + 336) = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19(v22, v21 + ((v20 + 32) & ~v20), v17);
      sub_E56D4();
      sub_E5834();
      v23 = swift_task_alloc();
      *(v0 + 344) = v23;
      *v23 = v0;
      v23[1] = sub_8B1E8;
      v24 = *(v0 + 104);

      return IntentDonationManager.deleteDonations(matching:)(v24);
    }

    sub_E6884();
    v32 = sub_E6894();
    sub_E68D4();
    v33 = sub_E7664();
    if (sub_E77F4())
    {
      v35 = *(v0 + 32);
      v34 = *(v0 + 40);
      v36 = *(v0 + 24);

      sub_E6904();

      if ((*(v35 + 88))(v34, v36) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v37 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
        v37 = "";
      }

      v53 = *(v0 + 288);
      v44 = *(v0 + 272);
      v52 = *(v0 + 240);
      v45 = *(v0 + 224);
      v46 = *(v0 + 200);
      v47 = *(v0 + 184);
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v32, v33, v49, "PlayAudioIntent.deleteOldIntents", v37, v48, 2u);

      v44(v46, v47);
      v53(v52, v45);
    }

    else
    {
      v38 = *(v0 + 288);
      v39 = *(v0 + 272);
      v40 = *(v0 + 240);
      v41 = *(v0 + 224);
      v42 = *(v0 + 200);
      v43 = *(v0 + 184);

      v39(v42, v43);
      v38(v40, v41);
    }
  }

  else
  {
    sub_E6914();
    v25 = sub_E6964();
    v26 = sub_E74D4();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 72);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v25, v26, "No old PlayAudioIntents to delete", v31, 2u);
    }

    (*(v30 + 8))(v28, v29);
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_8B1E8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 352) = v1;

  v4 = v3[16];
  v5 = v3[15];
  v6 = v3[14];
  v7 = v3[13];
  v8 = v3[12];
  v9 = v3[11];
  v10 = v3[2];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    v11 = sub_8B9B8;
  }

  else
  {

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    v11 = sub_8B414;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_8B414(uint64_t a1)
{
  v64 = v1;
  v2 = *(v1 + 320);
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  v5 = *(v1 + 136);
  sub_E6914();
  v2(v3, v4, v5);
  v6 = sub_E6964();
  v7 = sub_E74D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 320);
    v9 = *(v1 + 168);
    v56 = v7;
    v10 = *(v1 + 160);
    v12 = *(v1 + 136);
    v11 = *(v1 + 144);
    v60 = *(v1 + 80);
    v62 = *(v1 + 176);
    v57 = *(v1 + 56);
    v59 = *(v1 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v63 = v14;
    *v13 = 136315138;
    v8(v10, v9, v12);
    v15 = sub_E7084();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v9, v12);
    v19 = sub_23E64(v15, v17, &v63);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_0, v6, v56, "Deleting PlayAudioIntent with identifier %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);

    (*(v57 + 8))(v60, v59);
    v18(v62, v12);
  }

  else
  {
    v21 = *(v1 + 168);
    v20 = *(v1 + 176);
    v22 = *(v1 + 136);
    v23 = *(v1 + 144);
    v24 = *(v1 + 80);
    v25 = *(v1 + 48);
    v26 = *(v1 + 56);

    v27 = *(v23 + 8);
    v27(v21, v22);
    (*(v26 + 8))(v24, v25);
    v27(v20, v22);
  }

  v28 = *(v1 + 328) + 1;
  if (v28 == *(v1 + 304))
  {

    sub_E6884();
    v29 = sub_E6894();
    sub_E68D4();
    v30 = sub_E7664();
    if (sub_E77F4())
    {
      v32 = *(v1 + 32);
      v31 = *(v1 + 40);
      v33 = *(v1 + 24);

      sub_E6904();

      if ((*(v32 + 88))(v31, v33) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v34 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
        v34 = "";
      }

      v61 = *(v1 + 288);
      v48 = *(v1 + 272);
      v58 = *(v1 + 240);
      v49 = *(v1 + 224);
      v50 = *(v1 + 200);
      v51 = *(v1 + 184);
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v29, v30, v53, "PlayAudioIntent.deleteOldIntents", v34, v52, 2u);

      v48(v50, v51);
      v61(v58, v49);
    }

    else
    {
      v42 = *(v1 + 288);
      v43 = *(v1 + 272);
      v44 = *(v1 + 240);
      v45 = *(v1 + 224);
      v46 = *(v1 + 200);
      v47 = *(v1 + 184);

      v43(v46, v47);
      v42(v44, v45);
    }

    v54 = *(v1 + 8);

    return v54();
  }

  else
  {
    v35 = *(v1 + 320);
    v36 = *(v1 + 176);
    v37 = *(v1 + 136);
    v38 = *(v1 + 256) + ((*(v1 + 360) + 32) & ~*(v1 + 360)) + *(v1 + 312) * v28;
    v39 = (*(v1 + 144) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v1 + 328) = v28;
    *(v1 + 336) = v39;
    v35(v36, v38, v37);
    sub_E56D4();
    sub_E5834();
    v40 = swift_task_alloc();
    *(v1 + 344) = v40;
    *v40 = v1;
    v40[1] = sub_8B1E8;
    v41 = *(v1 + 104);

    return IntentDonationManager.deleteDonations(matching:)(v41);
  }
}