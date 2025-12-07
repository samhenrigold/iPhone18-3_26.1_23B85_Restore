id static WaveformColorPalette.accent.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDA48EA0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = qword_1EDA48EA8;
  v2 = unk_1EDA48EB0;
  v4 = qword_1EDA48EB8;
  v3 = unk_1EDA48EC0;
  v10 = unk_1EDA48EC0;
  *a1 = qword_1EDA48EA8;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

void sub_1C5AFA964()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 whiteColor];
  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v0 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  qword_1EDA48ED0 = v1;
  *&xmmword_1EDA48ED8 = v2;
  *(&xmmword_1EDA48ED8 + 1) = v4;
  unk_1EDA48EE8 = v6;
}

id static WaveformColorPalette.white.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDA48EC8 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = qword_1EDA48ED0;
  v3 = xmmword_1EDA48ED8;
  v2 = unk_1EDA48EE8;
  v9 = unk_1EDA48EE8;
  *a1 = qword_1EDA48ED0;
  *(a1 + 1) = v3;
  a1[3] = v2;
  v4 = v1;
  v5 = v3;
  v6 = *(&v3 + 1);

  return v9;
}

id sub_1C5AFAAF8()
{
  if (qword_1EDA48EA0 != -1)
  {
    swift_once();
  }

  v0 = unk_1EDA48EB0;
  v1 = qword_1EDA48EB8;
  v6 = unk_1EDA48EC0;
  qword_1EDA48308 = qword_1EDA48EA8;
  unk_1EDA48310 = unk_1EDA48EB0;
  qword_1EDA48318 = qword_1EDA48EB8;
  unk_1EDA48320 = unk_1EDA48EC0;
  v2 = qword_1EDA48EA8;
  v3 = v0;
  v4 = v1;

  return v6;
}

id sub_1C5AFAB90@<X0>(void *a1@<X8>)
{
  if (qword_1EDA48300 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = qword_1EDA48308;
  v2 = unk_1EDA48310;
  v4 = qword_1EDA48318;
  v3 = unk_1EDA48320;
  v10 = unk_1EDA48320;
  *a1 = qword_1EDA48308;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

uint64_t sub_1C5AFAC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5AFAFF4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_1C5AFAC8C()
{
  sub_1C5AFAEAC();

  return sub_1C5BC8F44();
}

id sub_1C5AFACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v15 = *(v2 + 24);
  KeyPath = swift_getKeyPath(a0_11);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1978C8, &qword_1C5BE8428);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1978D0, &unk_1C5BE8430) + 36));
  *v10 = KeyPath;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v15;
  v11 = v5;
  v12 = v6;
  v13 = v7;

  return v15;
}

uint64_t _s11MediaCoreUI20WaveformColorPaletteV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  sub_1C592535C(0, &qword_1EDA45D70, 0x1E69E58C0);
  if (sub_1C5BCB744() & 1) != 0 && (sub_1C5BCB744() & 1) != 0 && (sub_1C5BCB744())
  {
    return sub_1C5BCB744() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C5AFAEAC()
{
  result = qword_1EDA482F0;
  if (!qword_1EDA482F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA482F0);
  }

  return result;
}

unint64_t sub_1C5AFAF10()
{
  result = qword_1EDA46618;
  if (!qword_1EDA46618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1978D0, &unk_1C5BE8430);
    sub_1C5924F54(&qword_1EDA46288, &qword_1EC1978C8, &qword_1C5BE8428, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA46110, &qword_1EC1978D8, &qword_1C5BE8458, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46618);
  }

  return result;
}

unint64_t sub_1C5AFAFF4()
{
  result = qword_1EDA48E90;
  if (!qword_1EDA48E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA48E90);
  }

  return result;
}

void sub_1C5AFB11C(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer_originalContent;
  v6 = *&v1[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer_originalContent];
  *&v1[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer_originalContent] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer_];
  }
}

void sub_1C5AFB1B4(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for NowPlayingArtworkMotionReplicatorLayer();
  objc_msgSendSuper2(&v8, sel_layoutSublayers);
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions_];
  v3 = *&v1[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMotionReplicatorLayer_originalContent];
  if (v3)
  {
    v4 = v3;
    [v1 bounds];
    [v4 setFrame_];
    [v1 bounds];
    Height = CGRectGetHeight(v9);
    CATransform3DMakeTranslation(&v7, 0.0, Height * 3.0, 0.0);
    CATransform3DScale(&v6, &v7, 1.0, -2.0, 1.0);
    [v1 setInstanceTransform_];
    [v2 commit];
  }
}

id sub_1C5AFB368(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NowPlayingArtworkMotionReplicatorLayer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C5AFB3E4(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = sub_1C5BCB984();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C694FD20](v9, a2);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    sub_1C592535C(0, a3, a4);
    v12 = sub_1C5BCB744();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1C5AFB4EC()
{

  return swift_deallocClassInstance();
}

double sub_1C5AFB544()
{
  type metadata accessor for AnimatedViewState();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

uint64_t sub_1C5AFB57C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197910, &qword_1C5BE88C8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - v4;
  v6 = *v1;
  v7 = *(v2 + 8);
  v21 = *(v2 + 24);
  sub_1C596693C(&v21, v20);
  type metadata accessor for AnimatedViewState();
  sub_1C5954190(&qword_1EC197918, type metadata accessor for AnimatedViewState, &unk_1C5BE8554);
  sub_1C5BC83A4();
  v8 = type metadata accessor for _CAPackageView(0);
  v9 = v8[6];
  *&v5[v9] = swift_getKeyPath(byte_1C5BE8680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40, &qword_1C5BE0130);
  swift_storeEnumTagMultiPayload();
  v10 = &v5[v8[7]];
  *v10 = swift_getKeyPath(byte_1C5BE86B8);
  v10[8] = 0;
  v11 = v8[8];
  *&v5[v11] = swift_getKeyPath(aP_11);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88, &qword_1C5BD3D30);
  swift_storeEnumTagMultiPayload();
  *v5 = v21;
  type metadata accessor for ViewState();
  sub_1C5954190(&qword_1EDA46C30, type metadata accessor for ViewState, &unk_1C5BE8554);

  *(v5 + 2) = sub_1C5BC88C4();
  *(v5 + 3) = v12;
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  sub_1C5966BDC(v6, v7);

  v13 = swift_allocObject();
  v14 = *(v2 + 16);
  v13[1] = *v2;
  v13[2] = v14;
  v13[3] = *(v2 + 32);
  *(v13 + 57) = *(v2 + 41);
  v15 = &v5[*(v3 + 36)];
  *v15 = sub_1C5AFCB3C;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  v20[63] = *(v2 + 16);
  v16 = swift_allocObject();
  v17 = *(v2 + 16);
  v16[1] = *v2;
  v16[2] = v17;
  v16[3] = *(v2 + 32);
  *(v16 + 57) = *(v2 + 41);
  sub_1C5AFCA48(v2, v20);
  sub_1C5AFCA48(v2, v20);
  sub_1C5AFCA80();
  sub_1C5BCA344();

  return sub_1C5924EF4(v5, &qword_1EC197910, &qword_1C5BE88C8);
}

void sub_1C5AFB8E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for AnimatedViewState();
  sub_1C5954190(&qword_1EC197918, type metadata accessor for AnimatedViewState, &unk_1C5BE8554);
  v2 = sub_1C5BC83A4();
  v3 = v2;
  if (v1)
  {
    sub_1C5AFBD54();
  }

  else
  {
    v4 = *(v2 + 72);
    v5 = *(v3 + 72);
    *(v3 + 72) = 0;
    [v4 invalidate];
  }
}

void sub_1C5AFBA28()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + 56);
  v29 = *(v0 + 64);
  if (!v2)
  {
    v9 = v1;
LABEL_9:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v3 = v1;
  v4 = [v2 rootLayer];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 states];

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = sub_1C5BCB054();

  v8 = sub_1C59673D0(v7);

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = sub_1C5AFB3E4(v29, v8, &qword_1EDA45DA8, 0x1E69794B8);
  v12 = v11;

  v13 = v29;
  if ((v12 & 1) == 0)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = *(v0 + 56);
      if (v15 && (v16 = [v15 rootLayer]) != 0 && (v10 = v16, v17 = objc_msgSend(v16, sel_states), v10, v17) && (v10 = sub_1C5BCB054(), v17, v18 = sub_1C59673D0(v10), , v18))
      {
        v13 = v18;
      }

      else
      {

        v13 = MEMORY[0x1E69E7CC0];
      }

      if (!(v13 >> 62))
      {
        v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v19)
        {
          goto LABEL_20;
        }

        goto LABEL_37;
      }
    }

    v10 = v13;
    v19 = sub_1C5BCB984();

    if (v19)
    {
LABEL_20:
      if (v14 == 0x8000000000000000 && v19 == -1)
      {
        goto LABEL_41;
      }

      v19 = v14 % v19;
      v20 = *(v0 + 56);
      if (!v20 || (v21 = [v20 rootLayer]) == 0 || (v22 = v21, v23 = objc_msgSend(v21, sel_states), v22, !v23) || (v24 = sub_1C5BCB054(), v23, v10 = sub_1C59673D0(v24), , !v10))
      {

        v10 = MEMORY[0x1E69E7CC0];
      }

      if ((v10 & 0xC000000000000001) == 0)
      {
        if (v19 < 0)
        {
          __break(1u);
        }

        else if (v19 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v25 = *(v10 + 8 * v19 + 32);
LABEL_31:
          v26 = v25;

          v27 = *(v0 + 64);
          *(v0 + 64) = v26;
          v28 = v26;
          sub_1C59674DC(v27);

          v13 = v27;
          goto LABEL_32;
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

LABEL_38:
      v25 = MEMORY[0x1C694FD20](v19, v10);
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_32:
}

void sub_1C5AFBD54()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1C5AFC838;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C5A07474;
  v7[3] = &block_descriptor_18;
  v3 = _Block_copy(v7);

  v4 = [v1 scheduledTimerWithTimeInterval:1 repeats:v3 block:0.5];
  _Block_release(v3);
  v5 = *(v0 + 72);
  *(v0 + 72) = v4;
  v6 = v4;
  [v5 invalidate];
}

double sub_1C5AFBE78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C5AFBA28();
  }

  return result;
}

uint64_t sub_1C5AFBED8()
{

  return swift_deallocClassInstance();
}

void sub_1C5AFBF5C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = type metadata accessor for _CAPackageView(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3[3];
  v10 = *(v9 + 40);
  if (!v10)
  {
LABEL_8:
    v25 = a3[1];
    if (!v25)
    {
      return;
    }

    goto LABEL_9;
  }

  v12 = *a1;
  v11 = a1[1];
  v14 = *a2;
  v13 = a2[1];
  v41 = *(v9 + 32);
  v15 = qword_1EDA46990;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1C5BC7D64();
  __swift_project_value_buffer(v16, qword_1EDA5DA60);
  sub_1C5967CB0(a3, v8);

  v17 = sub_1C5BC7D44();
  v18 = sub_1C5BCB4F4();

  if (!os_log_type_enabled(v17, v18))
  {

    sub_1C5972028(v8);
    goto LABEL_8;
  }

  v38 = v18;
  v39 = v12;
  v19 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v42 = v37;
  *v19 = 136446978;
  v20 = sub_1C592ADA8(v41, v10, &v42);

  *(v19 + 4) = v20;
  *(v19 + 12) = 2082;
  v21 = *(v8 + 3);
  v22 = *(v21 + 24);
  v40 = v14;
  v36 = v17;
  if (v22)
  {
    v23 = *(v21 + 16);
    v24 = v22;
  }

  else
  {
    v24 = 0xE300000000000000;
    v23 = 7104878;
  }

  sub_1C5972028(v8);
  v26 = sub_1C592ADA8(v23, v24, &v42);

  *(v19 + 14) = v26;
  *(v19 + 22) = 2082;
  if (v11)
  {
    v27 = v39;
  }

  else
  {
    v27 = 7104878;
  }

  if (v11)
  {
    v28 = v11;
  }

  else
  {
    v28 = 0xE300000000000000;
  }

  v29 = sub_1C592ADA8(v27, v28, &v42);

  *(v19 + 24) = v29;
  *(v19 + 32) = 2082;
  if (v13)
  {
    v30 = v40;
  }

  else
  {
    v30 = 7104878;
  }

  if (v13)
  {
    v31 = v13;
  }

  else
  {
    v31 = 0xE300000000000000;
  }

  v32 = sub_1C592ADA8(v30, v31, &v42);

  *(v19 + 34) = v32;
  v33 = v36;
  _os_log_impl(&dword_1C5922000, v36, v38, "%{public}s: %{public}s CAPackageView selected state changed from %{public}s to %{public}s", v19, 0x2Au);
  v34 = v37;
  swift_arrayDestroy();
  MEMORY[0x1C69510F0](v34, -1, -1);
  MEMORY[0x1C69510F0](v19, -1, -1);

  v25 = a3[1];
  if (v25)
  {
LABEL_9:
    sub_1C5972084(*a3, v25);
  }
}

void sub_1C5AFC298(uint64_t *a1)
{
  v2 = sub_1C5BC81D4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _CAPackageView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - v12;
  v14 = a1[3];
  v15 = *(v14 + 40);
  if (v15)
  {
    v39 = a1[3];
    v37 = *(v14 + 32);
    v16 = qword_1EDA46990;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1C5BC7D64();
    __swift_project_value_buffer(v17, qword_1EDA5DA60);
    sub_1C5967CB0(a1, v13);
    sub_1C5967CB0(a1, v10);
    sub_1C5967CB0(a1, v7);

    v18 = sub_1C5BC7D44();
    v19 = sub_1C5BCB4F4();

    v38 = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v36[0] = v18;
      v36[1] = v2;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v21;
      *v20 = 136446978;
      v22 = sub_1C592ADA8(v37, v15, &v40);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2082;
      v23 = *(v13 + 3);
      if (*(v23 + 24))
      {
        v24 = *(v23 + 16);
        v25 = *(v23 + 24);
      }

      else
      {
        v24 = 7104878;
        v25 = 0xE300000000000000;
      }

      sub_1C5972028(v13);
      v26 = sub_1C592ADA8(v24, v25, &v40);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2082;
      sub_1C594C72C(v4);
      v27 = sub_1C5BCAEA4();
      v29 = v28;
      sub_1C5972028(v10);
      v30 = sub_1C592ADA8(v27, v29, &v40);

      *(v20 + 24) = v30;
      *(v20 + 32) = 2082;
      if (v7[1])
      {
        v31 = *v7;
        v32 = v7[1];
      }

      else
      {
        v31 = 7104878;
        v32 = 0xE300000000000000;
      }

      sub_1C5972028(v7);
      v33 = sub_1C592ADA8(v31, v32, &v40);

      *(v20 + 34) = v33;
      v34 = v36[0];
      _os_log_impl(&dword_1C5922000, v36[0], v38, "%{public}s: %{public}s CAPackageView scene phase changed to %{public}s, updating state to %{public}s", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v21, -1, -1);
      MEMORY[0x1C69510F0](v20, -1, -1);
    }

    else
    {

      sub_1C5972028(v7);
      sub_1C5972028(v10);
      sub_1C5972028(v13);
    }
  }

  v35 = a1[1];
  if (v35)
  {
    sub_1C5972084(*a1, v35);
  }
}

id sub_1C5AFC7B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5AFC840()
{
  sub_1C59676E0();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5AFC87C(uint64_t *a1)
{
  sub_1C59676E0();

  return sub_1C5BC8F54();
}

void sub_1C5AFC914(uint64_t *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for _CAPackageView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1C5AFBF5C(a1, a2, v6);
}

uint64_t objectdestroy_91Tm()
{

  sub_1C5AFC9D8(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

unint64_t sub_1C5AFCA80()
{
  result = qword_1EC197920;
  if (!qword_1EC197920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197910, &qword_1C5BE88C8);
    sub_1C5954190(qword_1EDA4C088, type metadata accessor for _CAPackageView, &unk_1C5BE8740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197920);
  }

  return result;
}

double sub_1C5AFCB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  v16[0] = sub_1C5BC9534();
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = sub_1C5BC9544();
  MEMORY[0x1C694E550](v16, a6, v14, a8);

  return result;
}

uint64_t ToastView.init(action:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7@<X3>)
{
  v11 = type metadata accessor for ToastView(0, a4, a5, a7);
  v12 = a6 + v11[10];
  type metadata accessor for CGRect(0);
  sub_1C5BCA684();
  *v12 = v17;
  *(v12 + 16) = v18;
  *(v12 + 32) = v19;
  v13 = a6 + v11[11];
  sub_1C5BC8484();
  *v13 = v17;
  *(v13 + 8) = *(&v17 + 1);
  *(v13 + 16) = v18;
  v14 = (a6 + v11[9]);
  *v14 = a1;
  v14[1] = a2;
  v15 = sub_1C5974664(a1, a2);
  a3(v15);
  return sub_1C59A5824(a1, a2);
}

uint64_t ToastView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v181 = a2;
  v178 = sub_1C5BC90D4();
  v180 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v179 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1C5BC9304();
  MEMORY[0x1EEE9AC00](v175);
  v174 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197928, &qword_1C5BE88F0);
  MEMORY[0x1EEE9AC00](v192);
  v195 = &v127 - v5;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197930, &qword_1C5BE88F8);
  v177 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v176 = &v127 - v6;
  v197 = *(a1 - 8);
  v191 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v173 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = a1;
  v9 = *(a1 + 24);
  v193 = *(a1 + 16);
  v10 = v193;
  v11 = v9;
  v194 = v9;
  v129 = type metadata accessor for ToastView.Specs(0, v193, v9, v12);
  v157 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v127 - v13;
  v14 = type metadata accessor for ToastViewLabelStyle(0);
  v185 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v161 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v150 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C5BC8AB4();
  v160 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v127 - v19;
  v218 = v11;
  v219 = MEMORY[0x1E697E5C0];
  WitnessTable = swift_getWitnessTable();
  v184 = WitnessTable;
  v183 = sub_1C5AFED04(&qword_1EC197938, type metadata accessor for ToastViewLabelStyle, &unk_1C5BE8A78);
  v214 = v18;
  v215 = v14;
  v130 = v18;
  v216 = WitnessTable;
  v217 = v183;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v156 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v182 = &v127 - v21;
  v22 = sub_1C5BC8AB4();
  v158 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v144 = &v127 - v23;
  v133 = v22;
  v24 = sub_1C5BC8AB4();
  v159 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v145 = &v127 - v25;
  v135 = v24;
  v26 = sub_1C5BC8AB4();
  v163 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v149 = &v127 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192EE8, &unk_1C5BE8900);
  v138 = v26;
  v28 = sub_1C5BC8AB4();
  v162 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v152 = &v127 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190FC8, &qword_1C5BD6BF0);
  v139 = v28;
  v30 = sub_1C5BC8AB4();
  v164 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v153 = &v127 - v31;
  v141 = v30;
  v32 = sub_1C5BC8AB4();
  v165 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v155 = &v127 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194958, &unk_1C5BE8910);
  v143 = v32;
  v186 = sub_1C5BC8AB4();
  v172 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v190 = &v127 - v34;
  v214 = v18;
  v215 = v185;
  v216 = v184;
  v217 = v183;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v212 = OpaqueTypeConformance2;
  v213 = MEMORY[0x1E697EBF8];
  v132 = swift_getWitnessTable();
  v35 = MEMORY[0x1E697E5D8];
  v210 = v132;
  v211 = MEMORY[0x1E697E5D8];
  v134 = swift_getWitnessTable();
  v208 = v134;
  v209 = v35;
  v36 = swift_getWitnessTable();
  v136 = v36;
  v37 = sub_1C5924F54(&qword_1EC192EE0, &qword_1EC192EE8, &unk_1C5BE8900, MEMORY[0x1E6980468]);
  v206 = v36;
  v207 = v37;
  v38 = swift_getWitnessTable();
  v137 = v38;
  v39 = sub_1C5924F54(&qword_1EDA4E1A8, &qword_1EC190FC8, &qword_1C5BD6BF0, MEMORY[0x1E697DDB0]);
  v204 = v38;
  v205 = v39;
  v140 = swift_getWitnessTable();
  v202 = v140;
  v203 = MEMORY[0x1E697E280];
  v40 = swift_getWitnessTable();
  v142 = v40;
  v41 = sub_1C5924F54(&qword_1EDA46208, &qword_1EC194958, &unk_1C5BE8910, MEMORY[0x1E69802E0]);
  v200 = v40;
  v201 = v41;
  v42 = v186;
  v43 = swift_getWitnessTable();
  v148 = v43;
  v151 = sub_1C5924F54(&qword_1EC197940, &qword_1EC197930, &qword_1C5BE88F8, MEMORY[0x1E697E238]);
  v214 = v42;
  v215 = v189;
  v216 = v43;
  v217 = v151;
  v44 = swift_getOpaqueTypeMetadata2();
  v167 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v188 = &v127 - v45;
  sub_1C5BC97C4();
  v169 = v44;
  v171 = sub_1C5BC8AB4();
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v166 = &v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v168 = &v127 - v49;
  v50 = v154;
  v51 = v150;
  v52 = v193;
  (*(v154 + 16))(v150, v196, v193, v48);
  v53 = v187;
  sub_1C5AFE6CC(v187);
  v54 = v146;
  sub_1C5BCA2B4();
  (*(v50 + 8))(v51, v52);
  v55 = v128;
  sub_1C5AFE734(v53, v128);
  v56 = v129;
  v57 = v161;
  sub_1C5AFEA30(v55 + *(v129 + 40), v161);
  v58 = *(v157 + 1);
  v58(v55, v56);
  v157 = v58;
  v59 = v130;
  sub_1C5BC9D34();
  sub_1C5AFEAB4(v57);
  (*(v160 + 8))(v54, v59);
  v60 = v53;
  sub_1C5AFE734(v53, v55);
  v61 = v55;
  v58(v55, v56);
  sub_1C5BCAA54();
  v62 = OpaqueTypeMetadata2;
  v63 = v144;
  v64 = v182;
  sub_1C5BCA244();
  (*(v156 + 8))(v64, v62);
  sub_1C5BC98C4();
  sub_1C5AFE734(v53, v61);
  v65 = v61;
  v66 = v56;
  v67 = v56;
  v68 = v157;
  v157(v61, v67);
  v69 = v145;
  v70 = v133;
  sub_1C5BCA2F4();
  (*(v158 + 8))(v63, v70);
  sub_1C5BC98E4();
  sub_1C5AFE734(v60, v65);
  v68(v65, v66);
  v71 = v149;
  v72 = v135;
  sub_1C5BCA2F4();
  (*(v159 + 8))(v69, v72);
  sub_1C5AFE734(v60, v65);
  v73 = *(v65 + *(v66 + 44));

  v68(v65, v66);
  v214 = v73;
  sub_1C5BC9894();
  v74 = v152;
  v75 = v138;
  sub_1C5BC9CF4();

  (*(v163 + 8))(v71, v75);
  v76 = v196;
  sub_1C5AFE734(v60, v65);
  v68(v65, v66);
  v77 = v153;
  v78 = v139;
  sub_1C5BC9EA4();
  (*(v162 + 8))(v74, v78);
  sub_1C5BCA474();
  sub_1C5BCA4B4();

  v79 = v155;
  v80 = v141;
  sub_1C5BCA284();

  (*(v164 + 8))(v77, v80);
  type metadata accessor for CGRect(0);
  v82 = v81;
  v83 = v197;
  v184 = *(v197 + 16);
  v185 = v197 + 16;
  v84 = v173;
  v85 = v76;
  v86 = v60;
  v184(v173, v76, v60);
  v183 = *(v83 + 80);
  v87 = v83;
  v88 = (v183 + 32) & ~v183;
  v89 = swift_allocObject();
  v90 = v194;
  *(v89 + 16) = v193;
  *(v89 + 24) = v90;
  v182 = *(v87 + 32);
  v197 = v87 + 32;
  v91 = v84;
  (v182)(v89 + v88, v84, v86);
  v92 = sub_1C5AFED04(&unk_1EDA45DD0, type metadata accessor for CGRect, MEMORY[0x1E695EF78]);
  v93 = v143;
  sub_1C5AFCB44(v82, sub_1C5AFEB10, 0, sub_1C5AFEC78, v89, v143, v82, v142, v92);

  (*(v165 + 8))(v79, v93);
  sub_1C5BC9474();
  sub_1C5BC82B4();
  v94 = v86;
  LODWORD(v164) = sub_1C5AFEDB4(v86);
  v175 = v95;
  v174 = v96;
  v165 = v97;
  v98 = v184;
  v184(v91, v85, v86);
  v99 = swift_allocObject();
  v100 = v193;
  v101 = v194;
  *(v99 + 16) = v193;
  *(v99 + 24) = v101;
  v102 = v182;
  (v182)(v99 + v88, v91, v94);
  v103 = v192;
  v104 = v195;
  v105 = &v195[*(v192 + 44)];
  *v105 = v164 & 1;
  *(v105 + 1) = v175;
  *(v105 + 2) = v174;
  *(v105 + 3) = v165;
  v106 = &v104[*(v103 + 48)];
  *v106 = sub_1C5AFEEBC;
  *(v106 + 1) = v99;
  v98(v91, v196, v94);
  v107 = v148;
  v108 = swift_allocObject();
  *(v108 + 16) = v100;
  *(v108 + 24) = v101;
  v109 = v151;
  v102(v108 + v88, v91, v94);
  v110 = v189;
  sub_1C5924F54(&qword_1EC197948, &qword_1EC197928, &qword_1C5BE88F0, MEMORY[0x1E697BD70]);
  v111 = v176;
  v112 = v195;
  sub_1C5BCA8D4();

  v113 = v186;
  sub_1C5924EF4(v112, &qword_1EC197928, &qword_1C5BE88F0);
  sub_1C5BC8334();
  v114 = v190;
  sub_1C5BCA0B4();
  (*(v177 + 8))(v111, v110);
  (*(v172 + 8))(v114, v113);
  if (*(v196 + *(v187 + 36)))
  {
    v115 = v179;
    sub_1C5BC90B4();
    v116 = v178;
  }

  else
  {
    v214 = MEMORY[0x1E69E7CC0];
    sub_1C5AFED04(&unk_1EDA46330, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193270, &qword_1C5BD76D0);
    sub_1C5924F54(&qword_1EDA45EB8, &qword_1EC193270, &qword_1C5BD76D0, MEMORY[0x1E69E6328]);
    v115 = v179;
    v116 = v178;
    sub_1C5BCB8F4();
  }

  v214 = v113;
  v215 = v110;
  v216 = v107;
  v217 = v109;
  v117 = swift_getOpaqueTypeConformance2();
  v118 = v166;
  v119 = v169;
  v120 = v188;
  sub_1C5BCA134();
  (*(v180 + 8))(v115, v116);
  (*(v167 + 8))(v120, v119);
  v121 = sub_1C5AFED04(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v198 = v117;
  v199 = v121;
  v122 = v171;
  v123 = swift_getWitnessTable();
  v124 = v168;
  sub_1C593EDC0(v118, v122, v123);
  v125 = *(v170 + 8);
  v125(v118, v122);
  sub_1C593EDC0(v124, v122, v123);
  return (v125)(v124, v122);
}

uint64_t sub_1C5AFE6CC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197BC0, &qword_1C5BE8BD0);
  sub_1C5BC8494();
  return v2;
}

uint64_t sub_1C5AFE734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToastViewLabelStyle.Specs(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 >= 2)
  {
    if (v8 == 6)
    {
      sub_1C5BC9944();
      sub_1C5BC9974();
      v12 = sub_1C5BC99E4();

      v13 = sub_1C5BC9A54();
      *v6 = v12;
      v6[1] = v13;
      v29 = 0x402C000000000000;
      sub_1C5A3B53C();
      sub_1C5BC84C4();
      *(v6 + *(v4 + 28)) = 0x4020000000000000;
      v29 = sub_1C5BCA484();
      v14 = sub_1C5BC85E4();
      v15 = *(a1 + 16);
      v16 = *(a1 + 24);
      *a2 = xmmword_1C5BE88D0;
      *(a2 + 16) = 0x4038000000000000;
      v18 = type metadata accessor for ToastView.Specs(0, v15, v16, v17);
      result = sub_1C5B01718(v6, a2 + v18[10]);
      *(a2 + v18[11]) = v14;
      *(a2 + v18[12]) = 0x403E000000000000;
    }

    else
    {
      if (qword_1EC1905B0 != -1)
      {
        swift_once();
      }

      v19 = sub_1C5BC7D64();
      __swift_project_value_buffer(v19, qword_1EC1A6A20);
      v20 = sub_1C5BC7D44();
      v21 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v28 = v8;
        v29 = v23;
        *v22 = 136315138;
        type metadata accessor for UIUserInterfaceIdiom(0);
        v24 = sub_1C5BCAEA4();
        v26 = sub_1C592ADA8(v24, v25, &v29);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_1C5922000, v20, v21, "Unsupported userInterfaceIdiom=%s. Defaulting to iOS specs", v22, 0xCu);
        v27 = __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x1C69510F0](v23, -1, -1, v27);
        MEMORY[0x1C69510F0](v22, -1, -1);
      }

      return sub_1C5B0137C(*(a1 + 16), *(a1 + 24), a2);
    }
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);

    return sub_1C5B0137C(v9, v10, a2);
  }

  return result;
}

uint64_t sub_1C5AFEA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToastViewLabelStyle.Specs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5AFEAB4(uint64_t a1)
{
  v2 = type metadata accessor for ToastViewLabelStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5AFEB10@<X0>(double *a1@<X8>)
{
  v2 = sub_1C5BC9304();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC9474();
  sub_1C5BC86D4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

uint64_t sub_1C5AFEC1C(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = type metadata accessor for ToastView(0, a3, a4, a4);
  return sub_1C5AFED4C(v8, v4, v5, v6, v7);
}

uint64_t sub_1C5AFEC78(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ToastView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C5AFEC1C(a1, v9, v6, v7);
}

uint64_t sub_1C5AFED04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5AFEDB4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197BC0, &qword_1C5BE8BD0);
  sub_1C5BC84A4();
  return v2;
}

uint64_t sub_1C5AFEE24(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = type metadata accessor for ToastView(0, a5, a6, a4);
  if (*(a4 + *(result + 36)))
  {
    v9 = sub_1C5AFEF60(result);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    sub_1C5BC82E4();
    v18.x = v16;
    v18.y = v17;
    v19.origin.x = v9;
    v19.origin.y = v11;
    v19.size.width = v13;
    v19.size.height = v15;
    result = CGRectContainsPoint(v19, v18);
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C5AFEEBC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(type metadata accessor for ToastView(0, v8, v9, a4) - 8);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_1C5AFEE24(a1, a2, a3, v11, v8, v9);
}

double sub_1C5AFEF60(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197BB8, &qword_1C5BE8BC8);
  sub_1C5BCA694();
  return v2;
}

uint64_t sub_1C5AFEFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToastView(0, a3, a4, a4);
  v6 = sub_1C5AFEF60(v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1C5BC82E4();
  v17.x = v13;
  v17.y = v14;
  v18.origin.x = v6;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v12;
  result = CGRectContainsPoint(v18, v17);
  if (result)
  {
    v16 = (a2 + *(v5 + 36));
    if (*v16)
    {
      return (*v16)();
    }
  }

  return result;
}

uint64_t sub_1C5AFF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ToastView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C5AFEFC4(a1, v9, v6, v7);
}

__n128 ToastView.init<>(_:headnote:systemImage:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1C5974664(a12, a13);
  type metadata accessor for CGRect(0);
  sub_1C5BCA684();
  sub_1C5BC8484();
  v15 = sub_1C5BCA5C4();
  sub_1C59A5824(a12, a13);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a12 != 0;
  *(a9 + 72) = v15;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = v24;
  *(a9 + 112) = v25;
  *(a9 + 128) = v26;
  *(a9 + 136) = v24;
  *(a9 + 144) = *(&v24 + 1);
  result = v25;
  *(a9 + 152) = v25;
  return result;
}

uint64_t ToastView.init<A>(_:headnote:action:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v25 = a7;
  v28 = a14;
  v29 = a15;
  v30 = a1;
  v31 = a2;
  v19 = a3 & 1;
  v32 = a3 & 1;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  sub_1C5974664(a10, a11);
  v21 = type metadata accessor for ToastViewLabelContent(0, a14, a15, v20);
  WitnessTable = swift_getWitnessTable();
  ToastView.init(action:content:)(a10, a11, sub_1C5AFF5F4, v21, WitnessTable, a9, v27);
  sub_1C5953BD8(a1, a2, v19);

  sub_1C596F908(a5, a6, v25, a8);
  return sub_1C59A5824(a10, a11);
}

uint64_t sub_1C5AFF36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(__n128), uint64_t a13, uint64_t a14)
{
  v48 = a7;
  v49 = a8;
  v47 = a6;
  v40 = a5;
  v41 = a1;
  v45 = a3;
  v50 = a9;
  v51 = a2;
  v44 = a12;
  v42 = a4;
  v43 = a14;
  v17 = *(a14 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ToastViewLabelContent(0, v20, v21, v22);
  v46 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v39 - v28;
  v44(v27);
  v30 = v51;
  *v25 = a1;
  *(v25 + 1) = v30;
  v31 = v45 & 1;
  v25[16] = v45 & 1;
  *(v25 + 3) = a4;
  *(v25 + 4) = a5;
  v33 = v47;
  v32 = v48;
  *(v25 + 5) = v47;
  *(v25 + 6) = v32;
  v34 = v49;
  *(v25 + 7) = v49;
  v25[64] = a10 != 0;
  (*(v17 + 32))(&v25[*(v23 + 44)], v19, v43);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v25, v23, WitnessTable);
  sub_1C596F94C(v40, v33, v32, v34, v36);
  sub_1C59AEE34(v41, v51, v31);
  v37 = *(v46 + 8);

  v37(v25, v23);
  sub_1C593EDC0(v29, v23, WitnessTable);
  return (v37)(v29, v23);
}

uint64_t ToastViewLabelContent.body.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197950, &qword_1C5BE8920);
  v4 = *(a1 + 16);
  v5 = sub_1C5AFF834();
  v6 = *(a1 + 24);
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v7 = sub_1C5BCA614();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-v12];
  v21 = v4;
  v22 = v6;
  v23 = v1;
  v18 = v4;
  v19 = v6;
  v20 = v1;
  sub_1C5BCA604();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v10, v7, WitnessTable);
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_1C593EDC0(v13, v7, WitnessTable);
  return (v15)(v13, v7);
}

unint64_t sub_1C5AFF834()
{
  result = qword_1EC197958;
  if (!qword_1EC197958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197950, &qword_1C5BE8920);
    sub_1C5924F54(&qword_1EC197960, qword_1EC197968, &unk_1C5BE8928, MEMORY[0x1E6981870]);
    sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0, &qword_1C5BD6230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197958);
  }

  return result;
}

uint64_t sub_1C5AFF918@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC197968, &unk_1C5BE8928);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  *v10 = sub_1C5BC9144();
  *(v10 + 1) = 0xBFF0000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B60, &qword_1C5BE8B10);
  sub_1C5AFFA54(a1, a2, a3, &v10[*(v11 + 44)]);
  if (a1[7])
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  KeyPath = swift_getKeyPath(aP_31);
  sub_1C59E7D34(v10, a4, qword_1EC197968, &unk_1C5BE8928);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197950, &qword_1C5BE8920);
  v15 = a4 + *(result + 36);
  *v15 = KeyPath;
  *(v15 + 8) = v12;
  *(v15 + 16) = 0;
  return result;
}

uint64_t sub_1C5AFFA54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v46 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B68, &qword_1C5BE8B48);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37[-v12];
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v17 = a1[7];
  if (v17)
  {
    sub_1C59AEE34(a1[4], a1[5], v16 & 1);

    sub_1C5BC9A44();
    v40 = v17;
    v18 = sub_1C5BC9C14();
    v41 = a3;
    v20 = v19;
    v44 = a4;
    v45 = v9;
    v22 = v21;

    sub_1C5BC9984();
    v39 = sub_1C5BC9B44();
    v42 = a1;
    v43 = v13;
    v24 = v23;
    v26 = v25;
    sub_1C5953BD8(v18, v20, v22 & 1);

    v47[0] = sub_1C5BC9404();
    v27 = v39;
    v28 = sub_1C5BC9BC4();
    v30 = v29;
    v38 = v31;
    v17 = v32;
    v33 = v24;
    v13 = v43;
    sub_1C5953BD8(v27, v33, v26 & 1);

    sub_1C5953BD8(v14, v15, v16 & 1);

    v16 = v38 & 1;
    a4 = v44;
    sub_1C59AEE34(v28, v30, v38 & 1);

    v14 = v28;
    a3 = v41;
    v15 = v30;
    v9 = v45;
  }

  type metadata accessor for ToastViewLabelContent(0, v46, a3, v11);
  sub_1C5AFFD44(v13);
  sub_1C59400B0(v13, v9, &qword_1EC197B68, &qword_1C5BE8B48);
  *a4 = v14;
  a4[1] = v15;
  a4[2] = v16;
  a4[3] = v17;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B70, &qword_1C5BE8B50);
  sub_1C59400B0(v9, a4 + *(v34 + 48), &qword_1EC197B68, &qword_1C5BE8B48);
  sub_1C596F94C(v14, v15, v16, v17, v35);
  sub_1C596F908(v14, v15, v16, v17);
  sub_1C5924EF4(v13, &qword_1EC197B68, &qword_1C5BE8B48);
  sub_1C5924EF4(v9, &qword_1EC197B68, &qword_1C5BE8B48);
  return sub_1C596F908(v14, v15, v16, v17);
}

double sub_1C5AFFD44@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_1C5BC8FC4();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B78, &qword_1C5BE8B58);
  return sub_1C5AFFF34(v2, a2 + *(v4 + 44));
}

uint64_t sub_1C5AFFDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToastViewLabelContent(0, v9, v10, v11);
  sub_1C593EDC0(a1 + *(v12 + 44), a2, a3);
  sub_1C593EDC0(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

double sub_1C5AFFF34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B80, &qword_1C5BE8B60);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v28[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B88, &qword_1C5BE8B68);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B90, &qword_1C5BE8B70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28[-v12];
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  if (*(a1 + 64) == 1)
  {
    v30 = sub_1C5BCA5A4();
    v29 = sub_1C5BC9404();
    v18 = *(v34 + 36);
    v31 = v6;
    v19 = &v5[v18];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C78, &qword_1C5BD9590);
    v32 = v10;
    v21 = *(v20 + 28);
    v22 = *MEMORY[0x1E69816C8];
    v23 = sub_1C5BCA5D4();
    v24 = v19 + v21;
    v10 = v32;
    (*(*(v23 - 8) + 104))(v24, v22, v23);
    *v19 = swift_getKeyPath(byte_1C5BE8B88);
    *v5 = v30;
    *(v5 + 2) = v29;
    sub_1C5B015A8();
    v25 = v33;
    sub_1C5BCA094();
    sub_1C5924EF4(v5, &qword_1EC197B80, &qword_1C5BE8B60);
    sub_1C59E7D34(v25, v13, &qword_1EC197B88, &qword_1C5BE8B68);
    (*(v35 + 56))(v13, 0, 1, v31);
  }

  else
  {
    (*(v35 + 56))(&v28[-v12], 1, 1, v6);
  }

  sub_1C59400B0(v13, v10, &qword_1EC197B90, &qword_1C5BE8B70);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B98, &unk_1C5BE8B78);
  sub_1C59400B0(v10, a2 + *(v26 + 48), &qword_1EC197B90, &qword_1C5BE8B70);
  sub_1C59AEE34(v14, v15, v16);

  sub_1C59AEE34(v14, v15, v16);

  sub_1C5924EF4(v13, &qword_1EC197B90, &qword_1C5BE8B70);
  sub_1C5924EF4(v10, &qword_1EC197B90, &qword_1C5BE8B70);
  sub_1C5953BD8(v14, v15, v16);

  return result;
}

void sub_1C5B00300(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C59F4E0C(319);
    if (v2 <= 0x3F)
    {
      sub_1C5B00720(319);
      if (v3 <= 0x3F)
      {
        sub_1C5B00C1C(319, qword_1EC1979F8, MEMORY[0x1E69E6370], MEMORY[0x1E697BF20]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C5B003DC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1C5B00538(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19[2] = 0;
          v19[3] = 0;
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[2] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1C5B00720(uint64_t a1)
{
  if (!qword_1EC1979F0)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_1C5BCA6C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1979F0);
    }
  }
}

void sub_1C5B00778(uint64_t a1)
{
  sub_1C5B00C1C(319, &qword_1EC197A80, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5B00834(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 65) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v6 + 33) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C5B009C0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 65) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v9 + 33) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

void sub_1C5B00C1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5B00C94(uint64_t a1)
{
  sub_1C5A3B4E0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C5B00D40(uint64_t a1)
{
  result = type metadata accessor for ToastViewLabelStyle.Specs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C5B00DAC(uint64_t a1)
{
  sub_1C5B00E78();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ToastViewLabelStyle.Specs(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C5B00E78()
{
  if (!qword_1EC197B28)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC197B28);
    }
  }
}

uint64_t sub_1C5B00EF4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B40, &qword_1C5BE8AC0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B48, &qword_1C5BE8AC8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B50, &qword_1C5BE8AD0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  sub_1C5BC94B4();
  v22 = *a1;
  KeyPath = swift_getKeyPath(byte_1C5BE8AD8);
  v24 = &v12[*(v10 + 44)];
  *v24 = KeyPath;
  v24[1] = v22;

  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  sub_1C59E7D34(v12, v18, &qword_1EC197B48, &qword_1C5BE8AC8);
  v25 = &v18[*(v14 + 44)];
  v26 = v46;
  *(v25 + 4) = v45;
  *(v25 + 5) = v26;
  *(v25 + 6) = v47;
  v27 = v42;
  *v25 = v41;
  *(v25 + 1) = v27;
  v28 = v44;
  *(v25 + 2) = v43;
  *(v25 + 3) = v28;
  sub_1C59E7D34(v18, v21, &qword_1EC197B50, &qword_1C5BE8AD0);
  sub_1C5BC94C4();
  v29 = a1[1];
  v30 = swift_getKeyPath(byte_1C5BE8AD8);
  v31 = &v8[*(v4 + 44)];
  *v31 = v30;
  v31[1] = v29;
  v32 = v38;
  sub_1C59400B0(v21, v38, &qword_1EC197B50, &qword_1C5BE8AD0);
  v33 = v39;
  sub_1C59400B0(v8, v39, &qword_1EC197B40, &qword_1C5BE8AC0);
  v34 = v40;
  sub_1C59400B0(v32, v40, &qword_1EC197B50, &qword_1C5BE8AD0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B58, &qword_1C5BE8B08);
  sub_1C59400B0(v33, v34 + *(v35 + 48), &qword_1EC197B40, &qword_1C5BE8AC0);

  sub_1C5924EF4(v8, &qword_1EC197B40, &qword_1C5BE8AC0);
  sub_1C5924EF4(v21, &qword_1EC197B50, &qword_1C5BE8AD0);
  sub_1C5924EF4(v33, &qword_1EC197B40, &qword_1C5BE8AC0);
  return sub_1C5924EF4(v32, &qword_1EC197B50, &qword_1C5BE8AD0);
}

uint64_t sub_1C5B01274@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToastViewLabelStyle.Specs(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518, &unk_1C5BF03D0);
  sub_1C5BC84D4();
  *a1 = sub_1C5BC8FC4();
  *(a1 + 8) = v15;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B30, &qword_1C5BE8AB0);
  sub_1C5B00EF4(v1, a1 + *(v3 + 44));
  v4 = sub_1C5BC98F4();
  sub_1C5BC8174();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197B38, &qword_1C5BE8AB8);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_1C5B0137C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C5BCA9E4();
  MEMORY[0x1EEE9AC00](v6);
  v7 = type metadata accessor for ToastViewLabelStyle.Specs(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5BC9924();
  sub_1C5BC9994();
  v11 = sub_1C5BC99E4();

  sub_1C5BC9904();
  sub_1C5BC9994();
  v12 = sub_1C5BC99E4();

  *v10 = v11;
  v10[1] = v12;
  v17[1] = 0x4010000000000000;
  sub_1C5A3B53C();
  sub_1C5BC84C4();
  *(v10 + *(v8 + 36)) = 0x4020000000000000;
  sub_1C5BCA9C4();
  v13 = sub_1C5BC85E4();
  *a3 = xmmword_1C5BE88E0;
  *(a3 + 16) = 0x4034000000000000;
  v15 = type metadata accessor for ToastView.Specs(0, a1, a2, v14);
  result = sub_1C5B01718(v10, a3 + v15[10]);
  *(a3 + v15[11]) = v13;
  *(a3 + v15[12]) = 0x402C000000000000;
  return result;
}

uint64_t sub_1C5B01544@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C5BC8EE4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1C5B015A8()
{
  result = qword_1EC197BA0;
  if (!qword_1EC197BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197B80, &qword_1C5BE8B60);
    sub_1C5B01660();
    sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78, &qword_1C5BD9590, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197BA0);
  }

  return result;
}

unint64_t sub_1C5B01660()
{
  result = qword_1EC197BA8;
  if (!qword_1EC197BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197BB0, &unk_1C5BE8BB8);
    sub_1C5924F54(&qword_1EDA461E8, &qword_1EC1956C8, &unk_1C5BE0920, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197BA8);
  }

  return result;
}

uint64_t sub_1C5B01718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToastViewLabelStyle.Specs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5B0177C()
{
  result = qword_1EC197BC8;
  if (!qword_1EC197BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197B38, &qword_1C5BE8AB8);
    sub_1C5924F54(&qword_1EC197BD0, qword_1EC197BD8, &qword_1C5BE8BD8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197BC8);
  }

  return result;
}

void sub_1C5B01834(void *a1@<X8>)
{
  v3 = sub_1C5B01964();
  if (v4)
  {
    v5 = sub_1C5BCAC04();
    v6 = *(*(v5 - 8) + 16);
    v7 = v5;
    v8 = a1;
    v9 = v1;

LABEL_4:
    v6(v8, v9, v7);
    return;
  }

  v10 = v3;
  UIAnimationDragCoefficient();
  v12 = v11 * v10;
  if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v12 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v12 < 9.2234e18)
  {
    *a1 = v12;
    v13 = *MEMORY[0x1E69E7F28];
    v14 = sub_1C5BCAC04();
    v6 = *(*(v14 - 8) + 104);
    v7 = v14;
    v8 = a1;
    v9 = v13;

    goto LABEL_4;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1C5B01964()
{
  v1 = v0;
  v2 = sub_1C5BC7D64();
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCAC04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v29 - v14);
  v16 = *(v6 + 16);
  v16(&v29 - v14, v1, v5, v13);
  LODWORD(result) = (*(v6 + 88))(v15, v5);
  if (result == *MEMORY[0x1E69E7F48])
  {
    v18 = *(v6 + 96);
    v6 += 96;
    v18(v15, v5);
    result = 1000000000 * *v15;
    if ((*v15 * 1000000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E69E7F38])
  {
    v19 = *(v6 + 96);
    v6 += 96;
    v19(v15, v5);
    result = 1000000 * *v15;
    if ((*v15 * 1000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E69E7F30])
  {
    (*(v6 + 96))(v15, v5);
    result = 1000 * *v15;
    if ((*v15 * 1000) >> 64 != result >> 63)
    {
      __break(1u);
    }
  }

  else if (result == *MEMORY[0x1E69E7F28])
  {
    (*(v6 + 96))(v15, v5);
    return *v15;
  }

  else
  {
    if (result != *MEMORY[0x1E69E7F40])
    {
      sub_1C5BC7D54();
      (v16)(v11, v1, v5);
      v20 = sub_1C5BC7D44();
      v32 = sub_1C5BCB4E4();
      if (os_log_type_enabled(v20, v32))
      {
        v21 = swift_slowAlloc();
        v30 = v20;
        v22 = v21;
        v31 = swift_slowAlloc();
        v34 = v31;
        *v22 = 136315394;
        *(v22 + 4) = sub_1C592ADA8(0xD000000000000014, 0x80000001C5BFBC00, &v34);
        *(v22 + 12) = 2080;
        (v16)(v8, v11, v5);
        v29 = sub_1C5BCAEA4();
        v24 = v23;
        v25 = *(v6 + 8);
        v25(v11, v5);
        v26 = sub_1C592ADA8(v29, v24, &v34);

        *(v22 + 14) = v26;
        v27 = v30;
        _os_log_impl(&dword_1C5922000, v30, v32, "Unhandled case for %s: %s", v22, 0x16u);
        v28 = v31;
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v28, -1, -1);
        MEMORY[0x1C69510F0](v22, -1, -1);
      }

      else
      {

        v25 = *(v6 + 8);
        v25(v11, v5);
      }

      (*(v33 + 8))(v4, v2);
      v25(v15, v5);
    }

    return 0;
  }

  return result;
}

id sub_1C5B01E50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aH_9);
  sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1C5B01F08(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C5A03B48(v1);
}

uint64_t sub_1C5B01F64@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>, uint64_t a9)
{
  *a7 = a8;
  *(a7 + 8) = a1;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a9;
  type metadata accessor for MaterialChinModifier(0, v13);
  v11 = a2();
  a3(v11);
  return sub_1C5B021A8(sub_1C5B0222C, 0);
}

uint64_t sub_1C5B02044@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void (*a8)(uint64_t)@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a5;
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a8;
  v24 = a10;
  v26[0] = a6;
  v26[1] = a7;
  v26[2] = a11;
  v26[3] = a12;
  v17 = type metadata accessor for MaterialChinModifier(0, v26);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v23 - v19;
  v21 = a1;
  sub_1C5B01F64(a1, a2, v23[0], a6, a7, a11, v20, a9, a12);
  MEMORY[0x1C694E550](v20, *(v25 + 16), v17, v24);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_1C5B021A8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for MaterialMotionContentObserver(0);

  return sub_1C5BC8194();
}

uint64_t sub_1C5B0222C()
{
  type metadata accessor for MaterialMotionContentObserver(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1C5BC7BA4();
  if (*(v0 + 16))
  {
    KeyPath = swift_getKeyPath(byte_1C5BE8D38);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
    sub_1C5BC7B64();
  }

  if (*(v0 + 24))
  {
    v2 = swift_getKeyPath(aH_9);
    MEMORY[0x1EEE9AC00](v2);
    sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
    sub_1C5BC7B64();
  }

  return v0;
}

uint64_t sub_1C5B0240C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a1;
  v83 = a3;
  v81 = *(a2 - 1);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v80 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C60, &qword_1C5BE8C68);
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C68, &unk_1C5BE8C70);
  v78 = a2[2];
  sub_1C5BC8AB4();
  v76 = a2[3];
  sub_1C5BC8AB4();
  v75 = a2[5];
  v98 = v75;
  v99 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5924F54(&qword_1EC197C70, &qword_1EC197C60, &qword_1C5BE8C68, MEMORY[0x1E697DDC8]);
  v5 = sub_1C5BC87C4();
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v57 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910, &qword_1C5BDCCF0);
  v7 = sub_1C5BC8AB4();
  v77 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC194CE0, &unk_1C5BE8C80);
  v10 = sub_1C5924F54(&qword_1EC197C78, &qword_1EC197C60, &qword_1C5BE8C68, MEMORY[0x1E697DDD0]);
  WitnessTable = swift_getWitnessTable();
  v96 = v10;
  v97 = WitnessTable;
  v12 = swift_getWitnessTable();
  v59 = v12;
  v13 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910, &qword_1C5BDCCF0, MEMORY[0x1E697DDB0]);
  v94 = v12;
  v95 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_1C5B052E0();
  v90 = v7;
  v91 = v9;
  v16 = v7;
  v60 = v7;
  v63 = v9;
  v92 = v14;
  v93 = v15;
  v62 = v14;
  v17 = v15;
  v61 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = OpaqueTypeMetadata2;
  v73 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v64 = &v57 - v19;
  v20 = type metadata accessor for MaterialMotionContentObserver(255);
  v67 = v20;
  v90 = v16;
  v91 = v9;
  v92 = v14;
  v93 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = OpaqueTypeConformance2;
  v65 = sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  v90 = OpaqueTypeMetadata2;
  v91 = v20;
  v92 = OpaqueTypeConformance2;
  v93 = v65;
  v69 = MEMORY[0x1E69811C8];
  v22 = swift_getOpaqueTypeMetadata2();
  v70 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57 - v26;
  v28 = v84;
  v29 = *v84;
  v30 = a2[4];
  v31 = swift_allocObject();
  v32 = v78;
  *&v33 = v78;
  v34 = v76;
  *(&v33 + 1) = v76;
  v58 = v33;
  *&v35 = v30;
  v36 = v75;
  *(&v35 + 1) = v75;
  v57 = v35;
  *(v31 + 16) = v33;
  *(v31 + 32) = v35;
  *(v31 + 48) = v29;
  v86 = v33;
  v87 = v35;
  v88 = v79;
  v89 = v28;
  v37 = v28;
  v38 = v72;
  sub_1C5B02D8C(sub_1C5B05394, v85, v32, v34, v30, v36, v72, v29);

  v39 = v71;
  sub_1C5BCA2A4();
  (*(v74 + 8))(v38, v5);
  v40 = v37;
  v90 = *(v37 + 1);
  v41 = v90;
  v42 = v81;
  v43 = v80;
  (*(v81 + 16))(v80, v40, a2);
  v44 = (*(v42 + 80) + 48) & ~*(v42 + 80);
  v45 = swift_allocObject();
  v46 = v57;
  *(v45 + 16) = v58;
  *(v45 + 32) = v46;
  (*(v42 + 32))(v45 + v44, v43, a2);
  v47 = v41;
  v48 = v64;
  v49 = v60;
  sub_1C5BCA344();

  (*(v77 + 8))(v39, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
  sub_1C5BC81A4();
  v50 = v68;
  v51 = v67;
  v52 = v66;
  v53 = v65;
  sub_1C5BC9DE4();

  (*(v73 + 8))(v48, v50);
  v90 = v50;
  v91 = v51;
  v92 = v52;
  v93 = v53;
  v54 = swift_getOpaqueTypeConformance2();
  sub_1C593EDC0(v24, v22, v54);
  v55 = *(v70 + 8);
  v55(v24, v22);
  sub_1C593EDC0(v27, v22, v54);
  return (v55)(v27, v22);
}

uint64_t sub_1C5B02D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *&v15[4] = a8;
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  type metadata accessor for MaterialChinModifier(255, v15);
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C68, &unk_1C5BE8C70);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v11 = sub_1C5BCAB74();
  v12 = sub_1C5B055D0();
  WitnessTable = swift_getWitnessTable();
  return sub_1C59485B4(a1, a2, &type metadata for MaterialChinLayout, v11, v12, WitnessTable, a7);
}

uint64_t sub_1C5B02F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C68, &unk_1C5BE8C70);
  v43 = sub_1C5BC8AB4();
  v51 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - v13;
  v47 = sub_1C5BC8AB4();
  v72 = a6;
  v73 = MEMORY[0x1E697E040];
  v45 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v49 = sub_1C5BC8BE4();
  v44 = sub_1C5BC8AB4();
  v50 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v37 - v16;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v71 = a6;
  type metadata accessor for MaterialChinModifier(255, &v68);
  swift_getWitnessTable();
  v17 = sub_1C5BC9394();
  v38 = v17;
  v54 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v39 = &v37 - v20;
  v40 = swift_getWitnessTable();
  sub_1C593EDC0(a1, v17, v40);
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a2;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197C90, &qword_1C5BE8CC0);
  sub_1C5B05458();
  v21 = v42;
  sub_1C5BCA2C4();
  sub_1C5BCAA34();
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  v59 = a2;
  v22 = sub_1C5924F54(&qword_1EC197CD0, &qword_1EC197C68, &unk_1C5BE8C70, MEMORY[0x1E697EC18]);
  v67[4] = a5;
  v67[5] = v22;
  v23 = v43;
  v24 = swift_getWitnessTable();
  v25 = v41;
  sub_1C5BCA2C4();
  (*(v51 + 8))(v21, v23);
  v26 = swift_getWitnessTable();
  v67[2] = v24;
  v67[3] = v26;
  v27 = v44;
  v28 = swift_getWitnessTable();
  v29 = v46;
  sub_1C593EDC0(v25, v27, v28);
  v30 = v50;
  v31 = *(v50 + 8);
  v31(v25, v27);
  v32 = v53;
  v33 = v39;
  v34 = v38;
  (*(v54 + 16))(v53, v39, v38);
  v68 = v32;
  (*(v30 + 16))(v25, v29, v27);
  v69 = v25;
  v67[0] = v34;
  v67[1] = v27;
  v65 = v40;
  v66 = v28;
  sub_1C594226C(&v68, 2uLL, v67);
  v31(v29, v27);
  v35 = *(v54 + 8);
  v35(v33, v34);
  v31(v25, v27);
  return (v35)(v53, v34);
}

uint64_t sub_1C5B03568@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = a3;
  v23 = a4;
  type metadata accessor for MaterialChinModifier(0, &v21);
  sub_1C5B0370C(&v24);
  v6 = v26;
  if (v26 == 255)
  {
    v8 = 0;
    v7 = 0;
    v12 = 0;
    v17 = 0;
    v9 = 0;
    v11 = 0;
    result = 0;
    v18 = 0;
    v15 = 0;
    v13 = 0;
    v16 = 0uLL;
  }

  else
  {
    v8 = v24;
    v7 = v25;
    sub_1C59B5E3C(v24, v25, v26 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1919F8, &qword_1C5BE8CE0);
    sub_1C5BCA684();
    v20 = v21;
    KeyPath = swift_getKeyPath(asc_1C5BE8CE8);
    v9 = swift_getKeyPath(byte_1C5BE8D10);
    sub_1C5BCA684();
    v10 = v21;
    v11 = *(&v21 + 1);
    LOBYTE(v21) = v6 & 1;
    v12 = sub_1C5BCA484();
    sub_1C5A5FC9C(v8, v7, v6);
    v13 = v21;
    result = swift_getKeyPath(byte_1C5BE8D10);
    v15 = v10;
    v16 = v20;
    v17 = KeyPath;
    v18 = 2;
  }

  *a5 = v8;
  *(a5 + 8) = v7;
  *(a5 + 16) = v13;
  *(a5 + 24) = v12;
  *(a5 + 32) = v16;
  *(a5 + 48) = v17;
  *(a5 + 56) = 0;
  *(a5 + 64) = v9;
  *(a5 + 72) = 0;
  *(a5 + 80) = v15;
  *(a5 + 88) = v11;
  *(a5 + 96) = result;
  *(a5 + 104) = v18;
  return result;
}

void sub_1C5B0370C(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
  sub_1C5BC81A4();
  swift_getKeyPath(aH_9);
  sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v2 = *(v7 + 24);
  v3 = v2;

  sub_1C5BC81A4();
  swift_getKeyPath(byte_1C5BE8D38);
  sub_1C5BC7B74();

  v4 = *(v7 + 16);
  v5 = v4;

  if (v2)
  {
    v6 = v4 == 0;
  }

  else
  {

    v4 = 0;
    v6 = -1;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
}

uint64_t sub_1C5B03884(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C5BC8AB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  type metadata accessor for MaterialChinModifier(0, v20);
  sub_1C5BCAA54();
  sub_1C5BCA234();
  v19[0] = a5;
  v19[1] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v12, v9, WitnessTable);
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_1C593EDC0(v15, v9, WitnessTable);
  return (v17)(v15, v9);
}

double sub_1C5B03A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for MaterialChinModifier(0, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958A0, &qword_1C5BE8C90);
  sub_1C5BC81A4();
  v6 = v14[0];
  swift_getKeyPath(aH_9);
  v14[0] = v6;
  sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v7 = *(v6 + 24);
  v8 = v7;

  v10 = *(a1 + 8);
  if (v7)
  {
    if (v10)
    {
      sub_1C5B051EC();
      v11 = v10;
      v12 = sub_1C5BCB744();

      if (v12)
      {
        return result;
      }
    }

    else
    {
    }

LABEL_8:
    sub_1C5BC81A4();
    v13 = v10;
    sub_1C5A03B48(v10);

    return result;
  }

  if (v10)
  {
    goto LABEL_8;
  }

  return result;
}

double sub_1C5B03BCC(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, double a6)
{
  v25 = a2;
  v26 = a1;
  v8 = sub_1C5BC8944();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1C5BC8744();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24[-v17];
  sub_1C5B03E08(&v24[-v17], v15);
  v19 = *(v13 + 8);
  v19(v15, v12);
  v20 = (a4 & 1) != 0 || *&a3 == 0.0;
  v28 = v25 & 1;
  v27 = v20;
  sub_1C5BC8704();
  sub_1C5BC8924();
  v22 = v21;
  sub_1C5BC8934();
  (*(v9 + 8))(v11, v8);
  v19(v18, v12);
  return v22;
}

uint64_t sub_1C5B03E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964F0, &qword_1C5BE35D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  sub_1C5BC8894();
  sub_1C5B056F4(&qword_1EDA4E1A0, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  if (sub_1C5BCB414() == 2)
  {
    sub_1C5BC3A0C(v11);
    v12 = sub_1C5BC8744();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1C5B0568C(v11);
    }

    else
    {
      (*(v13 + 32))(a1, v11, v12);
      if ((sub_1C5BCB404() & 1) == 0)
      {
        sub_1C5BCB424();
        sub_1C5B056F4(qword_1EC197CE8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3C8]);
        sub_1C5BCAD54();
        v14 = sub_1C5BCB484();
        (*(v13 + 16))(a2);
        return v14(&v27, 0);
      }

      (*(v13 + 8))(a1, v12);
    }
  }

  v16 = 1702195828;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1C5BCBA94();
  v29 = v27;
  v30 = v28;
  MEMORY[0x1C694F170](0xD00000000000001DLL, 0x80000001C5BFBC20);
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  v27 = sub_1C5BCB414();
  v17 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v17);

  MEMORY[0x1C694F170](0xD000000000000021, 0x80000001C5BFBC40);
  sub_1C5BC3A0C(v8);
  v18 = sub_1C5BC8744();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v8, 1, v18);
  sub_1C5B0568C(v8);
  if (v20 == 1)
  {
    v21 = 0x65736C6166;
  }

  else
  {
    v21 = 1702195828;
  }

  if (v20 == 1)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x1C694F170](v21, v22);

  MEMORY[0x1C694F170](0x203A6E696863202CLL, 0xE800000000000000);
  if (sub_1C5BCB404())
  {
    (*(v19 + 56))(v26, 1, 1, v18);
    v23 = 0xE500000000000000;
    v16 = 0x65736C6166;
  }

  else
  {
    sub_1C5BCB424();
    sub_1C5B056F4(qword_1EC197CE8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3C8]);
    sub_1C5BCAD54();
    v24 = sub_1C5BCB484();
    v25 = v26;
    (*(v19 + 16))(v26);
    v24(&v27, 0);
    (*(v19 + 56))(v25, 0, 1, v18);
    v23 = 0xE400000000000000;
  }

  sub_1C5B0568C(v26);
  MEMORY[0x1C694F170](v16, v23);

  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

uint64_t sub_1C5B043C8(uint64_t a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v28 = a1;
  v29 = sub_1C5BC8944();
  v15 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C5BC8744();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v28 - v23;
  sub_1C5B03E08(&v28 - v23, v21);
  v25 = (a4 & 1) != 0 || *&a3 == 0.0;
  v35 = a2 & 1;
  v34 = v25;
  sub_1C5BC8704();
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  CGRectGetMidX(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  CGRectGetMinY(v37);
  sub_1C5BCABB4();
  sub_1C5BC8924();
  sub_1C5BC8934();
  v33 = 0;
  v32 = 0;
  sub_1C5BC8724();
  sub_1C5BC8924();
  sub_1C5BC8934();
  v38.origin.x = a5;
  v38.origin.y = a6;
  v38.size.width = a7;
  v38.size.height = a8;
  CGRectGetMidX(v38);
  v39.origin.x = a5;
  v39.origin.y = a6;
  v39.size.width = a7;
  v39.size.height = a8;
  CGRectGetMinY(v39);
  sub_1C5BC8934();
  sub_1C5BCABB4();
  v31 = 0;
  v30 = 0;
  sub_1C5BC8724();
  (*(v15 + 8))(v17, v29);
  v26 = *(v19 + 8);
  v26(v21, v18);
  return (v26)(v24, v18);
}

void (*sub_1C5B04738(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t sub_1C5B04840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double, uint64_t, uint64_t, uint64_t))
{
  v27 = a7;
  v28 = a8;
  v25 = a4;
  v26 = a5;
  v22 = a2;
  v23 = a3;
  v24 = a13;
  v16 = type metadata accessor for MCUINamespace(0, a6, a3, a4);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - v18;
  View.mcui.getter(a6, &v21 - v18);
  v24(a1, v22, v23, v25, v26, v16, v27, v28, a9, a10, a11, a12);
  return (*(v17 + 8))(v19, v16);
}

void sub_1C5B04990(uint64_t a1)
{
  sub_1C5B05238(319, &qword_1EC192F78, sub_1C5B051EC, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1C5B05238(319, &qword_1EC195788, type metadata accessor for MaterialMotionContentObserver, MEMORY[0x1E697DA80]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C5B04ABC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v36 = *(a3 + 24);
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740, &unk_1C5BE8BE0);
  v12 = *(v11 - 8);
  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  if (*(v12 + 84) <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v12 + 80) & 0xF8 | 7;
  if (v17 < a2)
  {
    v19 = ((*(*(v11 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v16 + v18 + ((v14 + v15 + ((v13 + 16) & ~v13)) & ~v15)) & ~v18) + 8;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v17 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (!v24)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (!v24)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v23)
      {
        goto LABEL_32;
      }

      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_32;
      }
    }

    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v17 + (v27 | v26) + 1;
  }

LABEL_32:
  v28 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v17 <= 0x7FFFFFFE)
  {
    v29 = *v28;
    if (*v28 >= 0xFFFFFFFF)
    {
      LODWORD(v29) = -1;
    }

    if ((v29 + 1) >= 2)
    {
      return v29;
    }

    else
    {
      return 0;
    }
  }

  v30 = (v28 + v13 + 8) & ~v13;
  if (v7 == v17)
  {
    v31 = *(v6 + 48);
    v32 = v7;
    v33 = v5;

    return v31(v30, v32, v33);
  }

  v30 = (v30 + v14 + v15) & ~v15;
  if (v9 == v17)
  {
    v31 = *(v8 + 48);
    v32 = v9;
    v33 = v36;

    return v31(v30, v32, v33);
  }

  v34 = *(v12 + 48);
  v35 = (v30 + v16 + v18) & ~v18;

  return v34(v35);
}

void sub_1C5B04E2C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v39 = *(a4 + 24);
  v40 = *(a4 + 16);
  v7 = *(v40 - 8);
  v41 = v7;
  v8 = *(v7 + 84);
  v9 = *(v39 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740, &unk_1C5BE8BE0);
  v13 = *(v12 - 8);
  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  if (*(v13 + 84) <= 0x7FFFFFFEu)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  if (v11 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v11;
  }

  v20 = *(v13 + 80) & 0xF8 | 7;
  v21 = ((*(*(v12 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = ((v17 + v20 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & ~v20) + v21;
  if (v19 >= a3)
  {
    v25 = 0;
    v26 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (v22)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    if (v22)
    {
      v28 = ~v19 + a2;
      bzero(a1, ((v17 + v20 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & ~v20) + v21);
      *a1 = v28;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        *(a1 + v22) = v27;
      }

      else
      {
        *(a1 + v22) = v27;
      }
    }

    else if (v25)
    {
      *(a1 + v22) = v27;
    }

    return;
  }

  if (v22)
  {
    v23 = 2;
  }

  else
  {
    v23 = a3 - v19 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = a2 - v19;
  if (a2 > v19)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v22) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v25)
  {
    goto LABEL_38;
  }

  *(a1 + v22) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v19 <= 0x7FFFFFFE)
  {
    *v29 = a2;
    return;
  }

  v30 = (v29 + v14 + 8) & ~v14;
  if (v8 == v19)
  {
    v31 = *(v41 + 56);
    v32 = a2;
    v33 = v8;
    v34 = v40;

LABEL_46:
    v31(v30, v32, v33, v34);
    return;
  }

  v30 = (v30 + v15 + v16) & ~v16;
  if (v10 == v19)
  {
    v31 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v34 = v39;

    goto LABEL_46;
  }

  v35 = ((v30 + v17 + v20) & ~v20);
  if (v18 >= a2)
  {
    v38 = *(v13 + 56);

    v38(v35, a2);
  }

  else if (v21)
  {
    v36 = ~v18 + a2;
    v37 = v35;
    bzero(v35, v21);
    *v37 = v36;
  }
}

unint64_t sub_1C5B051EC()
{
  result = qword_1EDA4E5E0;
  if (!qword_1EDA4E5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA4E5E0);
  }

  return result;
}

void sub_1C5B05238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C5B052E0()
{
  result = qword_1EC197C80;
  if (!qword_1EC197C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC194CE0, &unk_1C5BE8C80);
    sub_1C5B056F4(&qword_1EC197C88, sub_1C5B051EC, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197C80);
  }

  return result;
}

double sub_1C5B053A4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for MaterialChinModifier(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1C5B03A54(v6, v1, v2, v3, v4);
}

unint64_t sub_1C5B05458()
{
  result = qword_1EC197C98;
  if (!qword_1EC197C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C90, &qword_1C5BE8CC0);
    sub_1C5B054DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197C98);
  }

  return result;
}

unint64_t sub_1C5B054DC()
{
  result = qword_1EC197CA0;
  if (!qword_1EC197CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197CA8, &qword_1C5BE8CC8);
    sub_1C5924F54(&qword_1EC197CB0, &qword_1EC197CB8, &qword_1C5BE8CD0, &protocol conformance descriptor for MaterialView<A>);
    sub_1C5924F54(&qword_1EC197CC0, &qword_1EC197CC8, &qword_1C5BE8CD8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197CA0);
  }

  return result;
}

unint64_t sub_1C5B055D0()
{
  result = qword_1EC197CD8;
  if (!qword_1EC197CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197CD8);
  }

  return result;
}

unint64_t sub_1C5B05638()
{
  result = qword_1EC197CE0;
  if (!qword_1EC197CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197CE0);
  }

  return result;
}

uint64_t sub_1C5B0568C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964F0, &qword_1C5BE35D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5B056F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C5B05750()
{
  if (*(v0 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(v0 + 18) > 2u)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1C5B0586C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v33 = v4;
  v5 = sub_1C5BC8F34();
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v34 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v35 = v11;
  v36 = v12;
  sub_1C5BC9134();
  _s11ContentViewVMa(255, v11, v12, v13);
  _s13FooterButtonsVMa(255, v11, v12, v14);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7C4();
  memcpy(v53, v54, sizeof(v53));
  sub_1C5BC9884();
  v31 = v10;
  v30 = v5;
  if (v10 == 1)
  {
    v50 = v8;
    v51 = v34;
    v52 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v15 = v5;
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v17 = sub_1C59CC0D8(v8, v34, v9, 0);
    (*(v32 + 8))(v7, v15, v17);
  }

  v18 = sub_1C5BCA7D4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  memcpy(v49, v53, 0x12AuLL);
  (*(*(v18 - 8) + 8))(v49, v18);
  memcpy(v48, v55, sizeof(v48));
  sub_1C5BC98B4();
  if (v31)
  {
    v45 = v8;
    v46 = v34;
    v47 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v20 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v21 = sub_1C59CC0D8(v8, v34, v9, 0);
    (*(v32 + 8))(v7, v30, v21);
  }

  v22 = sub_1C5BC8AB4();
  v23 = MEMORY[0x1E697E5D8];
  v40 = WitnessTable;
  v41 = MEMORY[0x1E697E5D8];
  v24 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  memcpy(v42, v48, 0x159uLL);
  (*(*(v22 - 8) + 8))(v42, v22);
  memcpy(v44, v56, 0x189uLL);
  v25 = sub_1C5BC8AB4();
  v38 = v24;
  v39 = v23;
  v26 = swift_getWitnessTable();
  sub_1C593EDC0(v44, v25, v26);
  memcpy(v43, v44, 0x189uLL);
  v27 = *(*(v25 - 8) + 8);
  v27(v43, v25);
  memcpy(v37, v57, 0x189uLL);
  sub_1C593EDC0(v37, v25, v26);
  memcpy(v44, v37, 0x189uLL);
  return (v27)(v44, v25);
}

uint64_t sub_1C5B05DC4(uint64_t a1, uint64_t a2)
{
  sub_1C5B06210(&v65);
  v5 = _s11ContentViewVMa(0, a1, a2, v4);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v65, v5, WitnessTable);
  v51[8] = v72;
  v51[9] = v73;
  v52 = v74;
  v51[4] = v69;
  v51[5] = *v70;
  v51[6] = *&v70[16];
  v51[7] = v71;
  v51[0] = v65;
  v51[1] = v66;
  v51[2] = v67;
  v51[3] = v68;
  v6 = *(v5 - 8);
  v14 = *(v6 + 8);
  v14(v51, v5);
  sub_1C5B30EA8(&v65);
  v8 = _s13FooterButtonsVMa(0, a1, a2, v7);
  v9 = swift_getWitnessTable();
  sub_1C593EDC0(&v65, v8, v9);
  v53[4] = v69;
  v54[0] = *v70;
  *(v54 + 10) = *&v70[10];
  v53[0] = v65;
  v53[1] = v66;
  v53[2] = v67;
  v53[3] = v68;
  v10 = *(v8 - 8);
  v11 = *(v10 + 8);
  v11(v53, v8);
  v55[8] = v48;
  v55[9] = v49;
  v55[4] = v44;
  v55[5] = v45;
  v55[7] = v47;
  v55[6] = v46;
  v55[0] = v40;
  v55[1] = v41;
  v55[2] = v42;
  v55[3] = v43;
  v30 = v48;
  v31 = v49;
  v56 = v50;
  v32 = v50;
  v26 = v44;
  v27 = v45;
  v28 = v46;
  v29 = v47;
  v22 = v40;
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v57[4] = v38;
  v58[0] = v39[0];
  *(v58 + 10) = *(v39 + 10);
  v57[0] = v34;
  v57[1] = v35;
  v57[3] = v37;
  v57[2] = v36;
  v16 = v34;
  v17 = v35;
  v20 = v38;
  v21[0] = v39[0];
  v18 = v36;
  v19 = v37;
  *(v21 + 10) = *(v39 + 10);
  v33[0] = &v22;
  v33[1] = &v16;
  (*(v6 + 16))(&v65, v55, v5);
  (*(v10 + 16))(&v65, v57, v8);
  v15[0] = v5;
  v15[1] = v8;
  sub_1C594226C(v33, 2uLL, v15);
  v59[4] = v38;
  v60[0] = v39[0];
  *(v60 + 10) = *(v39 + 10);
  v59[0] = v34;
  v59[1] = v35;
  v59[3] = v37;
  v59[2] = v36;
  v11(v59, v8);
  v61[8] = v48;
  v61[9] = v49;
  v62 = v50;
  v61[4] = v44;
  v61[5] = v45;
  v61[7] = v47;
  v61[6] = v46;
  v61[0] = v40;
  v61[1] = v41;
  v61[3] = v43;
  v61[2] = v42;
  v14(v61, v5);
  v63[4] = v20;
  v64[0] = v21[0];
  *(v64 + 10) = *(v21 + 10);
  v63[0] = v16;
  v63[1] = v17;
  v63[3] = v19;
  v63[2] = v18;
  v11(v63, v8);
  v72 = v30;
  v73 = v31;
  v74 = v32;
  v69 = v26;
  *v70 = v27;
  v71 = v29;
  *&v70[16] = v28;
  v65 = v22;
  v66 = v23;
  v68 = v25;
  v67 = v24;
  return v14(&v65, v5);
}

uint64_t sub_1C5B06210@<X0>(uint64_t a3@<X8>)
{
  *a3 = sub_1C5BC8C84();
  *(a3 + 8) = v4;
  *(a3 + 16) = swift_getKeyPath(byte_1C5BE8FB0);
  *(a3 + 89) = 0;
  *(a3 + 96) = swift_getKeyPath(aH_10);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  type metadata accessor for WindowProperties(0);
  sub_1C5937F18(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  *(a3 + 120) = sub_1C5BC8324();
  *(a3 + 128) = v5 & 1;
  *(a3 + 136) = swift_getKeyPath(asc_1C5BE9018);
  *(a3 + 144) = 0;
  _s13TrackSectionsCMa(0);
  sub_1C5937F18(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  result = sub_1C5BC8324();
  *(a3 + 152) = result;
  *(a3 + 160) = v7 & 1;
  return result;
}

uint64_t sub_1C5B0633C@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath(byte_1C5BE8E60);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

void sub_1C5B06378(uint64_t *a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  if (*(v1 + 112) == 1)
  {
  }

  else
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v10 = sub_1C596AC58(v7, v8, 0);
    (*(v4 + 8))(v6, v3, v10);
    v7 = v12[0];
    v8 = v12[1];
  }

  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  *a1 = v11;
  a1[1] = v8;
}

double sub_1C5B064E4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = sub_1C5B065A0();
  result = -2.0;
  if (!v4)
  {
    if (v2 != 0x6575657571 || (result = -16.0, v3 != 0xE500000000000000))
    {
      v6 = sub_1C5BCBDE4();
      result = 0.0;
      if (v6)
      {
        return -16.0;
      }
    }
  }

  return result;
}

BOOL sub_1C5B065A0()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v14[3] = &type metadata for Features;
  v14[4] = sub_1C5A2E158();
  v7 = swift_allocObject();
  v14[0] = v7;
  *(v7 + 16) = "MediaCoreUI";
  *(v7 + 24) = 11;
  *(v7 + 32) = 2;
  *(v7 + 40) = "HoveringChapterPicker";
  *(v7 + 48) = 21;
  *(v7 + 56) = 2;
  v8 = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(v14);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if ((v6 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v5 = v14[0];
  }

  swift_getKeyPath(byte_1C5BE92D0);
  v14[0] = v5;
  sub_1C5937F18(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v10 = *(v5 + 16);

  if (v10 >> 62)
  {
    v11 = sub_1C5BCB984();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v11 != 0;
}

uint64_t sub_1C5B0680C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197D70, &unk_1C5BE92B0);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  _s18DefaultContentViewVMa(255, v5, v4, v6);
  _s19TrackSectionsButtonVMa(255, v5, v4, v7);
  _s28TrackSectionsPlatterModifierVMa(255, v5, v4, v8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220, &unk_1C5BEA6E0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getAssociatedTypeWitness();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  v9 = sub_1C5BCAB74();
  sub_1C5924F54(&qword_1EC197D78, &qword_1EC197D70, &unk_1C5BE92B0, MEMORY[0x1E697DDC8]);
  v10 = sub_1C5BC87C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - v15;
  v17 = *(v2 + 144);
  v35[8] = *(v2 + 128);
  v35[9] = v17;
  v36 = *(v2 + 160);
  v18 = *(v2 + 80);
  v35[4] = *(v2 + 64);
  v35[5] = v18;
  v19 = *(v2 + 112);
  v35[6] = *(v2 + 96);
  v35[7] = v19;
  v20 = *(v2 + 16);
  v35[0] = *v2;
  v35[1] = v20;
  v21 = *(v2 + 48);
  v35[2] = *(v2 + 32);
  v35[3] = v21;
  sub_1C5B099F4();
  v34 = sub_1C5BCAB44();
  v29 = v5;
  v30 = v4;
  v31 = v35;
  v22 = sub_1C5B0993C();
  WitnessTable = swift_getWitnessTable();
  sub_1C59485B4(sub_1C5B09930, v28, MEMORY[0x1E6981D78], v9, v22, WitnessTable, v13);

  v32 = sub_1C5924F54(&qword_1EC197D88, &qword_1EC197D70, &unk_1C5BE92B0, MEMORY[0x1E697DDD0]);
  v33 = WitnessTable;
  v24 = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, v24);
  v25 = *(v11 + 8);
  v25(v13, v10);
  sub_1C593EDC0(v16, v10, v24);
  return (v25)(v16, v10);
}

uint64_t sub_1C5B06C80@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v117 = a4;
  v7 = sub_1C5BC8F34();
  v97 = *(v7 - 8);
  v98 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19TrackSectionsButtonVMa(255, a2, a3, v9);
  _s28TrackSectionsPlatterModifierVMa(255, a2, a3, v10);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220, &unk_1C5BEA6E0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getAssociatedTypeWitness();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v11 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v102 = v11;
  v12 = sub_1C5BCA7D4();
  v103 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v89 - v13;
  v118 = v14;
  v15 = sub_1C5BC8AB4();
  v105 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v89 - v16;
  v120 = v18;
  v19 = sub_1C5BC8AB4();
  v107 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v89 - v20;
  v119 = v21;
  v22 = sub_1C5BC8AB4();
  v109 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v89 - v28;
  v29 = sub_1C5BCB804();
  v112 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = MEMORY[0x1EEE9AC00](v32).n128_u64[0];
  v115 = &v89 - v34;
  KeyPath = swift_getKeyPath(byte_1C5BE8FB0, v33);
  LOBYTE(v162) = 0;
  v36 = sub_1C5BC8C84();
  *&v162 = KeyPath;
  BYTE9(v166) = 0;
  *&v167 = v36;
  *(&v167 + 1) = v37;
  v39 = _s18DefaultContentViewVMa(0, a2, a3, v38);
  v111 = swift_getWitnessTable();
  sub_1C593EDC0(&v162, v39, v111);
  v181[2] = v164;
  v181[3] = v165;
  v181[4] = v166;
  v181[5] = v167;
  v181[0] = v162;
  v181[1] = v163;
  v110 = *(v39 - 8);
  v40 = *(v110 + 8);
  v116 = v39;
  v113 = v40;
  v114 = v110 + 8;
  v40(v181, v39);
  v41 = a1[9];
  v170 = a1[8];
  v171 = v41;
  v172 = *(a1 + 160);
  v42 = a1[5];
  v166 = a1[4];
  v167 = v42;
  v43 = a1[7];
  v168 = a1[6];
  v169 = v43;
  v44 = a1[1];
  v162 = *a1;
  v163 = v44;
  v45 = a1[3];
  v164 = a1[2];
  v165 = v45;
  v99 = _s11ContentViewVMa(0, a2, a3, v46);
  sub_1C5B06378(&v160);
  if (v161)
  {
    v94 = v26;
    v95 = v22;
    v92 = v31;
    v93 = v29;
    v48 = v118;
    MEMORY[0x1EEE9AC00](v47);
    *(&v89 - 6) = a2;
    *(&v89 - 5) = a3;
    *(&v89 - 4) = a1;
    *(&v89 - 3) = v49;
    v90 = v50;
    v91 = v49;
    *(&v89 - 2) = v50;
    sub_1C5BC9134();
    v51 = v100;
    sub_1C5BCA7C4();
    v52 = swift_getWitnessTable();
    v53 = v17;
    sub_1C5A45C68(v48, v52);
    (*(v103 + 8))(v51, v48);
    LODWORD(v103) = sub_1C5BC98A4();
    *(v180 + 10) = *(a1 + 74);
    v54 = a1[2];
    v179[0] = a1[1];
    v179[1] = v54;
    v55 = a1[4];
    v179[2] = a1[3];
    v180[0] = v55;
    if (BYTE9(v180[1]))
    {
      *(&v153[1] + 8) = *(a1 + 40);
      *(&v153[2] + 8) = *(a1 + 56);
      *(&v153[3] + 8) = *(a1 + 72);
      BYTE8(v153[4]) = *(a1 + 88);
      *(v153 + 8) = *(a1 + 24);
      *&v153[0] = *&v179[0];
    }

    else
    {
      sub_1C59B737C(v179, &v125);
      sub_1C5BCB4E4();
      v62 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v63 = v96;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v179, &qword_1EC191B58, &qword_1C5BE53F0);
      (*(v97 + 8))(v63, v98);
    }

    v64 = MEMORY[0x1E697E5D8];
    v127 = v153[2];
    v128[0] = v153[3];
    *(v128 + 9) = *(&v153[3] + 9);
    v125 = v153[0];
    v126 = v153[1];
    sub_1C5A5D530(&v147);
    v65 = sub_1C5B09990();
    v135 = v52;
    v136 = v65;
    v66 = v120;
    v67 = swift_getWitnessTable();
    v68 = v104;
    sub_1C5BCA2F4();
    (*(v105 + 8))(v53, v66);
    sub_1C5BC98A4();
    v69 = a1[9];
    v132 = a1[8];
    v133 = v69;
    v134 = *(a1 + 160);
    v70 = a1[5];
    v128[1] = a1[4];
    v129 = v70;
    v71 = a1[7];
    v130 = a1[6];
    v131 = v71;
    v72 = a1[1];
    v125 = *a1;
    v126 = v72;
    v73 = a1[3];
    v127 = a1[2];
    v128[0] = v73;
    *&v147 = v91;
    *(&v147 + 1) = v90;
    sub_1C5B064E4(&v147, v99);

    v123 = v67;
    v124 = v64;
    v74 = v119;
    v75 = swift_getWitnessTable();
    v76 = v94;
    sub_1C5BCA2F4();
    (*(v107 + 8))(v68, v74);
    v121 = v75;
    v122 = v64;
    v77 = v95;
    v78 = swift_getWitnessTable();
    v79 = v106;
    sub_1C593EDC0(v76, v77, v78);
    v80 = v109;
    v81 = *(v109 + 8);
    v81(v76, v77);
    v82 = v108;
    sub_1C593EDC0(v79, v77, v78);
    v81(v79, v77);
    v31 = v92;
    (*(v80 + 32))(v92, v82, v77);
    (*(v80 + 56))(v31, 0, 1, v77);
    v59 = v115;
    sub_1C5941600(v31, v115);
    v60 = v112;
    v61 = *(v112 + 8);
    v29 = v93;
    v61(v31, v93);
  }

  else
  {
    v56 = MEMORY[0x1E697E5D8];
    (*(v109 + 56))(v31, 1, 1, v22);
    v57 = swift_getWitnessTable();
    v58 = sub_1C5B09990();
    v158 = v57;
    v159 = v58;
    v156 = swift_getWitnessTable();
    v157 = v56;
    v154 = swift_getWitnessTable();
    v155 = v56;
    swift_getWitnessTable();
    v59 = v115;
    sub_1C5941600(v31, v115);
    v60 = v112;
    v61 = *(v112 + 8);
    v61(v31, v29);
  }

  v153[2] = v175;
  v153[3] = v176;
  v153[4] = v177;
  v153[5] = v178;
  v153[0] = v173;
  v153[1] = v174;
  v149 = v175;
  v150 = v176;
  v151 = v177;
  v152 = v178;
  v147 = v173;
  v148 = v174;
  v160 = &v147;
  (*(v60 + 16))(v31, v59, v29);
  v161 = v31;
  v83 = v116;
  (*(v110 + 16))(&v162, v153, v116);
  v146[0] = v83;
  v146[1] = v29;
  v144 = v111;
  v84 = swift_getWitnessTable();
  v85 = sub_1C5B09990();
  v142 = v84;
  v143 = v85;
  v140 = swift_getWitnessTable();
  v86 = MEMORY[0x1E697E5D8];
  v141 = MEMORY[0x1E697E5D8];
  v138 = swift_getWitnessTable();
  v139 = v86;
  v137 = swift_getWitnessTable();
  v145 = swift_getWitnessTable();
  sub_1C594226C(&v160, 2uLL, v146);
  v61(v59, v29);
  v127 = v175;
  v128[0] = v176;
  v128[1] = v177;
  v129 = v178;
  v125 = v173;
  v126 = v174;
  v87 = v113;
  v113(&v125, v83);
  v61(v31, v29);
  v164 = v149;
  v165 = v150;
  v166 = v151;
  v167 = v152;
  v162 = v147;
  v163 = v148;
  return v87(&v162, v83);
}

uint64_t sub_1C5B079A8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v97 = a2;
  *(&v97 + 1) = a3;
  v105 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v98 = v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  v100 = AssociatedTypeWitness;
  v106 = v11;
  v104 = sub_1C5BC8AB4();
  v101 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v108 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = v91 - v14;
  v15 = sub_1C5BC8F84();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[9];
  v170 = a1[8];
  v171 = v19;
  v172 = *(a1 + 160);
  v20 = a1[5];
  v166 = a1[4];
  v167 = v20;
  v21 = a1[7];
  v168 = a1[6];
  v169 = v21;
  v22 = a1[1];
  v162 = *a1;
  v163 = v22;
  v23 = a1[3];
  v164 = a1[2];
  v165 = v23;
  _s11ContentViewVMa(0, a4, a5, v24);
  v25 = sub_1C5B065A0();
  v102 = a4;
  v103 = a5;
  if (v25)
  {
    v27 = sub_1C5A4F994();
    v96 = v15;
    *&v138 = v27;
    BYTE8(v138) = v28 & 1;
    v29 = sub_1C5A3D634();
    v94 = v18;
    v31 = v30;
    *&v162 = v29;
    BYTE8(v162) = v32 & 1;
    *&v163 = v30;
    v34 = v33 & 1;
    BYTE8(v163) = v33 & 1;
    v35 = _s19TrackSectionsButtonVMa(0, a4, a5, v33);
    v95 = v16;
    v36 = v35;
    v38 = _s28TrackSectionsPlatterModifierVMa(0, a4, a5, v37);
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1C694E550](&v155, &v162, v36, v38, WitnessTable);

    sub_1C5942458(v31, v34);

    v40 = v157;
    v41 = BYTE8(v157);
    *&v138 = v155;
    BYTE8(v138) = BYTE8(v155);
    *&v139 = v156;
    BYTE8(v139) = BYTE8(v156);
    *&v140 = v157;
    BYTE8(v140) = BYTE8(v157);
    v42 = sub_1C5BC8AB4();
    v43 = swift_getWitnessTable();
    v123 = WitnessTable;
    v124 = v43;
    v92 = MEMORY[0x1E697E858];
    v44 = swift_getWitnessTable();
    sub_1C5B7B220(&v162, 100.0, v42, v44);

    sub_1C5942458(v40, v41);
    v45 = v164;
    LOBYTE(v38) = BYTE8(v164);
    *&v138 = v162;
    BYTE8(v138) = BYTE8(v162);
    *&v139 = v163;
    BYTE8(v139) = BYTE8(v163);
    *&v140 = v164;
    BYTE8(v140) = BYTE8(v164);
    *&v141 = v165;
    v91[3] = sub_1C5BC98B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220, &unk_1C5BEA6E0);
    sub_1C5BC8AB4();
    v93 = MEMORY[0x1E697FDC0];
    v46 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220, &unk_1C5BEA6E0, MEMORY[0x1E697FDC0]);
    v121 = v44;
    v122 = v46;
    v47 = swift_getWitnessTable();
    sub_1C5BCA2F4();

    sub_1C5942458(v45, v38);
    v142 = v159;
    v143 = v160;
    LOBYTE(v144) = v161;
    v138 = v155;
    v139 = v156;
    v140 = v157;
    v141 = v158;
    v48 = v94;
    sub_1C5BC8F74();
    v49 = sub_1C5BC8AB4();
    v119 = v47;
    v120 = MEMORY[0x1E697E5D8];
    v50 = swift_getWitnessTable();
    v51 = sub_1C5937F18(&qword_1EC197D98, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v52 = v96;
    v53 = sub_1C5B1077C(v48, v49, v96, v50, v51);
    (*(v95 + 8))(v48, v52, v53);
    v126[4] = v142;
    v126[5] = v143;
    v127 = v144;
    v126[0] = v138;
    v126[1] = v139;
    v126[2] = v140;
    v126[3] = v141;
    (*(*(v49 - 8) + 8))(v126, v49);
    v159 = v166;
    v160 = v167;
    v161 = v168;
    v155 = v162;
    v156 = v163;
    v158 = v165;
    v157 = v164;
    v54 = sub_1C5BC8AB4();
    v55 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, v93);
    v117 = v50;
    v118 = v55;
    v56 = swift_getWitnessTable();
    sub_1C593EDC0(&v155, v54, v56);
    v128[4] = v159;
    v128[5] = v160;
    v128[6] = v161;
    v128[0] = v155;
    v128[1] = v156;
    v128[2] = v157;
    v128[3] = v158;
    v57 = *(*(v54 - 8) + 8);
    v57(v128, v54);
    v166 = v125[4];
    v167 = v125[5];
    v168 = v125[6];
    v162 = v125[0];
    v163 = v125[1];
    v164 = v125[2];
    v165 = v125[3];
    sub_1C593EDC0(&v162, v54, v56);
    v142 = v166;
    v143 = v167;
    v144 = v168;
    v138 = v162;
    v139 = v163;
    v140 = v164;
    v141 = v165;
    v57(&v138, v54);
    v166 = v114;
    v167 = v115;
    v168 = v116;
    v162 = v110;
    v163 = v111;
    v164 = v112;
    v165 = v113;
    sub_1C5941600(&v162, v109);
    v159 = v166;
    v160 = v167;
    v161 = v168;
    v155 = v162;
    v156 = v163;
    v158 = v165;
    v157 = v164;
    v58 = sub_1C5BCB804();
    (*(*(v58 - 8) + 8))(&v155, v58);
    v166 = v109[4];
    v167 = v109[5];
    v168 = v109[6];
    v162 = v109[0];
    v163 = v109[1];
    v164 = v109[2];
    v165 = v109[3];
  }

  else
  {
    _s19TrackSectionsButtonVMa(255, a4, a5, v26);
    _s28TrackSectionsPlatterModifierVMa(255, a4, a5, v59);
    sub_1C5BC8AB4();
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220, &unk_1C5BEA6E0);
    sub_1C5BC8AB4();
    sub_1C5BC8AB4();
    sub_1C5BC8AB4();
    v60 = swift_getWitnessTable();
    v61 = swift_getWitnessTable();
    v153 = v60;
    v154 = v61;
    v62 = swift_getWitnessTable();
    v63 = MEMORY[0x1E697FDC0];
    v64 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220, &unk_1C5BEA6E0, MEMORY[0x1E697FDC0]);
    v151 = v62;
    v152 = v64;
    v149 = swift_getWitnessTable();
    v150 = MEMORY[0x1E697E5D8];
    v65 = swift_getWitnessTable();
    v66 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, v63);
    v147 = v65;
    v148 = v66;
    swift_getWitnessTable();
    sub_1C5941600(&v155, &v162);
  }

  v68 = v102;
  v67 = v103;
  sub_1C59498C4(*a1, *(a1 + 1), v102, *(v103 + 8));
  v69 = *(v67 + 320);
  swift_unknownObjectRetain();
  v69(&v138, v68, v67);
  swift_unknownObjectRelease();
  v128[0] = v138;
  v125[0] = v97;
  v70 = sub_1C5A36B84();
  v71 = v100;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v155 = &type metadata for NowPlayingHostedContentID;
  *(&v155 + 1) = v71;
  *&v156 = v70;
  *(&v156 + 1) = AssociatedConformanceWitness;
  v73 = type metadata accessor for ContentLookup(0, &v155);
  v74 = v98;
  sub_1C5A1EAEC(v125, v73);

  sub_1C5A399B8();
  v75 = v108;
  sub_1C5BC9D74();

  (*(v99 + 8))(v74, v71);
  *&v97 = MEMORY[0x1E697FDC0];
  *(&v97 + 1) = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
  v145 = AssociatedConformanceWitness;
  v146 = *(&v97 + 1);
  v76 = v104;
  v98 = swift_getWitnessTable();
  v77 = v107;
  sub_1C593EDC0(v75, v76, v98);
  v78 = v101;
  v79 = *(v101 + 8);
  v99 = v101 + 8;
  v100 = v79;
  v79(v75, v76);
  v142 = v166;
  v143 = v167;
  v144 = v168;
  v138 = v162;
  v139 = v163;
  v140 = v164;
  v141 = v165;
  *&v128[0] = &v138;
  (*(v78 + 16))(v75, v77, v76);
  *(&v128[0] + 1) = v75;
  _s19TrackSectionsButtonVMa(255, v68, v67, v80);
  _s28TrackSectionsPlatterModifierVMa(255, v68, v67, v81);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220, &unk_1C5BEA6E0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v106 = sub_1C5BC8AB4();
  v82 = sub_1C5BCB804();
  v83 = *(v82 - 8);
  (*(v83 + 16))(&v155, &v162, v82);
  *&v125[0] = v82;
  *(&v125[0] + 1) = v76;
  v84 = swift_getWitnessTable();
  v85 = swift_getWitnessTable();
  v136 = v84;
  v137 = v85;
  v86 = swift_getWitnessTable();
  v87 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220, &unk_1C5BEA6E0, v97);
  v134 = v86;
  v135 = v87;
  v132 = swift_getWitnessTable();
  v133 = MEMORY[0x1E697E5D8];
  v130 = swift_getWitnessTable();
  v131 = *(&v97 + 1);
  v129 = swift_getWitnessTable();
  *&v110 = swift_getWitnessTable();
  *(&v110 + 1) = v98;
  sub_1C594226C(v128, 2uLL, v125);
  v88 = *(v83 + 8);
  v88(&v162, v82);
  v89 = v100;
  v100(v107, v76);
  v89(v108, v76);
  v159 = v142;
  v160 = v143;
  v161 = v144;
  v155 = v138;
  v156 = v139;
  v158 = v141;
  v157 = v140;
  return (v88)(&v155, v82);
}

uint64_t sub_1C5B0884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[3];
  v37[2] = v2[2];
  v37[3] = v8;
  v9 = v2[5];
  v37[4] = v2[4];
  v37[5] = v9;
  v10 = v2[1];
  v37[0] = *v2;
  v37[1] = v10;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v25[4] = v11;
  v25[5] = v12;
  v25[6] = v37;
  sub_1C5BC9134();
  *&v36[0] = _s21FullScreenArtworkViewVMa(255, v11, v12, v13);
  *(&v36[0] + 1) = _s33DefaultMetadataAndContextMenuViewVMa(255, v11, v12, v14);
  *&v36[1] = _s10BannerViewVMa(255, v11, v12, v15);
  _s15TimeControlViewVMa(255, v11, v12, v16);
  *(&v36[1] + 1) = sub_1C5BC8AB4();
  *&v36[2] = _s12ControlsViewVMa(255, v11, v12, v17);
  swift_getTupleTypeMetadata();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7C4();
  memcpy(v33, v34, sizeof(v33));
  *&v39[10] = *(&v37[3] + 10);
  v38[0] = v37[0];
  v38[1] = v37[1];
  v38[2] = v37[2];
  *v39 = v37[3];
  if (BYTE9(v37[4]))
  {
    *(&v32[1] + 8) = *(&v37[1] + 8);
    *(&v32[2] + 8) = *(&v37[2] + 8);
    *(&v32[3] + 8) = *(&v37[3] + 8);
    BYTE8(v32[4]) = BYTE8(v37[4]);
    *(v32 + 8) = *(v37 + 8);
    *&v32[0] = *&v37[0];
  }

  else
  {
    sub_1C59B737C(v38, v36);
    sub_1C5BCB4E4();
    v18 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v38, &qword_1EC191B58, &qword_1C5BE53F0);
    (*(v5 + 8))(v7, v4);
  }

  v36[2] = v32[2];
  v36[3] = v32[3];
  *(&v36[3] + 9) = *(&v32[3] + 9);
  v36[1] = v32[1];
  v36[0] = v32[0];
  sub_1C5B05750();
  sub_1C5BCAA54();
  v19 = sub_1C5BCA7D4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA234();
  memcpy(v29, v33, 0x119uLL);
  (*(*(v19 - 8) + 8))(v29, v19);
  memcpy(v31, v35, sizeof(v31));
  v21 = sub_1C5BC8AB4();
  v27 = WitnessTable;
  v28 = MEMORY[0x1E697E040];
  v22 = swift_getWitnessTable();
  sub_1C593EDC0(v31, v21, v22);
  memcpy(v30, v31, sizeof(v30));
  v23 = *(*(v21 - 8) + 8);
  v23(v30, v21);
  memcpy(v26, v36, sizeof(v26));
  sub_1C593EDC0(v26, v21, v22);
  memcpy(v31, v26, sizeof(v31));
  return (v23)(v31, v21);
}

double sub_1C5B08D20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v7 = sub_1C5BC8F34();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v43 = *(a3 + 8);
  sub_1C59498C4(v9, v10, a2, v43);
  v11 = *(a3 + 224);
  swift_unknownObjectRetain();
  v11(a2, a3);
  swift_unknownObjectRelease();

  *&v99[0] = sub_1C5B4BFA0(v12);
  *(&v99[0] + 1) = v13;
  v15 = _s21FullScreenArtworkViewVMa(0, a2, a3, v14);
  WitnessTable = swift_getWitnessTable();
  v49 = v15;
  sub_1C593EDC0(v99, v15, WitnessTable);

  sub_1C5B46508(v99);
  v91 = v99[0];
  *&v92 = *&v99[1];
  BYTE8(v92) = BYTE8(v99[1]);
  v17 = _s33DefaultMetadataAndContextMenuViewVMa(0, a2, a3, v16);
  v46 = swift_getWitnessTable();
  v47 = v17;
  sub_1C593EDC0(&v91, v17, v46);
  v18 = v92;
  LOBYTE(v15) = BYTE8(v92);
  swift_unknownObjectRelease();
  sub_1C5942458(v18, v15);
  sub_1C59498C4(v9, v10, a2, v43);
  swift_unknownObjectRetain();
  v11(a2, a3);
  swift_unknownObjectRelease();

  sub_1C5B304C8(&v123);
  v131 = v125;
  v129 = v124;
  v130 = BYTE8(v124);
  v128 = v123;
  v99[0] = v123;
  v99[1] = v124;
  v99[2] = v125;
  v20 = _s10BannerViewVMa(0, a2, a3, v19);
  v44 = swift_getWitnessTable();
  v45 = v20;
  sub_1C593EDC0(v99, v20, v44);
  sub_1C5924EF4(&v128, &unk_1EC197E30, &unk_1C5BEAC60);
  sub_1C5924EF4(&v129, &qword_1EC194400, &unk_1C5BE94E0);
  v21 = sub_1C5BC8C94();
  (*(*(v21 - 8) + 8))(&v131, v21);
  CGSizeMake();
  sub_1C5BC98B4();
  *&v127[10] = *(a1 + 58);
  v22 = *(a1 + 16);
  v126[0] = *a1;
  v126[1] = v22;
  v23 = *(a1 + 48);
  v126[2] = *(a1 + 32);
  *v127 = v23;
  if (v127[25])
  {
    *(&v104[1] + 8) = *(a1 + 24);
    *(&v104[2] + 8) = *(a1 + 40);
    *(&v104[3] + 8) = *(a1 + 56);
    BYTE8(v104[4]) = *(a1 + 72);
    *(v104 + 8) = *(a1 + 8);
    *&v104[0] = *&v126[0];
  }

  else
  {
    sub_1C59B737C(v126, v99);
    sub_1C5BCB4E4();
    v24 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v25 = v40;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v126, &qword_1EC191B58, &qword_1C5BE53F0);
    (*(v41 + 8))(v25, v42);
  }

  v99[2] = v104[2];
  v100[0] = v104[3];
  *(v100 + 9) = *(&v104[3] + 9);
  v99[1] = v104[1];
  v99[0] = v104[0];
  sub_1C5B3F240();
  _s15TimeControlViewVMa(0, a2, a3, v26);
  v27 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  LOBYTE(v99[0]) = v105;
  *(v99 + 8) = v106;
  *(&v99[1] + 8) = v107;
  BYTE8(v99[2]) = v108;
  v28 = sub_1C5BC8AB4();
  v42 = v28;
  v85 = v27;
  v86 = MEMORY[0x1E697E5D8];
  v43 = swift_getWitnessTable();
  sub_1C593EDC0(v99, v28, v43);
  sub_1C5ACE348(v99);
  v30 = _s12ControlsViewVMa(0, a2, a3, v29);
  v40 = swift_getWitnessTable();
  sub_1C593EDC0(v99, v30, v40);
  v87[4] = v100[1];
  v87[5] = v101;
  v87[6] = v102;
  v88 = v103;
  v87[0] = v99[0];
  v87[1] = v99[1];
  v87[2] = v99[2];
  v87[3] = v100[0];
  v31 = *(v30 - 8);
  v41 = *(v31 + 8);
  (v41)(v87, v30);
  v75[0] = v121;
  v75[1] = v122;
  v32 = v119;
  v33 = v120;
  v73 = v119;
  v74 = v120;
  v76[0] = v75;
  v76[1] = &v72;
  v69[0] = v113;
  v69[1] = v114;
  v69[2] = v115;
  v70 = v116;
  v39 = v117;
  v71 = v117;
  v72 = v118;
  v65 = v109;
  v66 = v110;
  v67 = v111;
  v68 = v112;
  v76[2] = v69;
  v76[3] = &v65;
  v89[2] = v79;
  v89[3] = v80;
  v89[0] = v77;
  v89[1] = v78;
  v90 = v84;
  v89[5] = v82;
  v89[6] = v83;
  v89[4] = v81;
  v59 = v79;
  v60 = v80;
  v57 = v77;
  v58 = v78;
  v64 = v84;
  v62 = v82;
  v63 = v83;
  v61 = v81;
  v76[4] = &v57;
  swift_unknownObjectRetain();

  sub_1C5950E48(v32, v33);
  swift_unknownObjectRetain();

  (*(v31 + 16))(v99, v89, v30);
  v56[0] = v49;
  v56[1] = v47;
  v56[2] = v45;
  v56[3] = v42;
  v56[4] = v30;
  v51 = WitnessTable;
  v52 = v46;
  v53 = v44;
  v54 = v43;
  v55 = v40;
  sub_1C594226C(v76, 5uLL, v56);
  v95 = v81;
  v96 = v82;
  v97 = v83;
  v98 = v84;
  v91 = v77;
  v92 = v78;
  v93 = v79;
  v94 = v80;
  v34 = v41;
  (v41)(&v91, v30);
  swift_unknownObjectRelease();

  v35 = v119;
  v36 = v120;
  swift_unknownObjectRelease();
  sub_1C5942458(v35, v36);

  v100[1] = v61;
  v101 = v62;
  v102 = v63;
  v103 = v64;
  v99[0] = v57;
  v99[1] = v58;
  v99[2] = v59;
  v100[0] = v60;
  v34(v99, v30);

  swift_unknownObjectRelease();
  v37 = v73;
  LOBYTE(v35) = v74;
  swift_unknownObjectRelease();
  sub_1C5942458(v37, v35);

  return result;
}

void (*sub_1C5B09634(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t sub_1C5B096BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B09780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1C5B097F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
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

uint64_t sub_1C5B09854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1C5B0993C()
{
  result = qword_1EC197D80;
  if (!qword_1EC197D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197D80);
  }

  return result;
}

unint64_t sub_1C5B09990()
{
  result = qword_1EC197D90;
  if (!qword_1EC197D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197D90);
  }

  return result;
}

unint64_t sub_1C5B099F4()
{
  result = qword_1EC197DA0[0];
  if (!qword_1EC197DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC197DA0);
  }

  return result;
}

uint64_t sub_1C5B09A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5B09A98()
{
  result = qword_1EC197E28;
  if (!qword_1EC197E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197E28);
  }

  return result;
}

uint64_t sub_1C5B09B3C(uint64_t a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v24[1] = a3;
  v27 = *MEMORY[0x1E69E9840];
  v14 = sub_1C5BC8744();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v24 - v19;
  sub_1C5BC8894();
  sub_1C5937F18(&qword_1EDA4E1A0, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  result = sub_1C5BCB414();
  if (result == 2)
  {
    sub_1C5BC88A4();
    sub_1C5BC88A4();
    v30.origin.x = a5;
    v30.origin.y = a6;
    v30.size.width = a7;
    v30.size.height = a8;
    v22 = CGRectGetWidth(v30) * 0.5;
    if (qword_1EC1908D0 != -1)
    {
      swift_once();
    }

    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v31.origin.x = a5;
    v31.origin.y = a6;
    v31.size.width = a7;
    v31.size.height = a8;
    CGRectDivide(v31, &slice, &remainder, v22 + *&xmmword_1EC1A6D80 * -0.5, CGRectMinXEdge);
    sub_1C5BCAB94();
    LOBYTE(slice.origin.x) = 0;
    LOBYTE(remainder.origin.x) = 0;
    sub_1C5BC8724();
    sub_1C5BCAB94();
    LOBYTE(slice.origin.x) = 0;
    LOBYTE(remainder.origin.x) = 0;
    sub_1C5BC8724();
    v23 = *(v15 + 8);
    v23(v17, v14);
    return (v23)(v20, v14);
  }

  else if (result == 1)
  {
    sub_1C5BC88A4();
    v28.origin.x = a5;
    v28.origin.y = a6;
    v28.size.width = a7;
    v28.size.height = a8;
    CGRectGetMidX(v28);
    v29.origin.x = a5;
    v29.origin.y = a6;
    v29.size.width = a7;
    v29.size.height = a8;
    CGRectGetMidY(v29);
    sub_1C5BCABD4();
    LOBYTE(slice.origin.x) = a2 & 1;
    LOBYTE(remainder.origin.x) = a4 & 1;
    sub_1C5BC8724();
    return (*(v15 + 8))(v20, v14);
  }

  return result;
}

uint64_t sub_1C5B09EE0()
{
  sub_1C59B5ECC();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5B09F1C()
{
  v0 = MTLCreateSystemDefaultDevice();
  type metadata accessor for MetalRenderContext();
  swift_allocObject();
  result = sub_1C5B09F64(v0, v1);
  qword_1EC1A6D40 = result;
  return result;
}

uint64_t sub_1C5B09F64(void *a1, uint64_t a2)
{
  v3 = v2;
  cacheOut[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (qword_1EC190888 != -1)
    {
      swift_once();
    }

    v17 = sub_1C5BC7D64();
    __swift_project_value_buffer(v17, qword_1EC1A6D48);
    v18 = sub_1C5BC7D44();
    v19 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C5922000, v18, v19, "Couldn't init MetalRenderContext, device was nil", v20, 2u);
      MEMORY[0x1C69510F0](v20, -1, -1);
    }

    goto LABEL_31;
  }

  *(v2 + 16) = a1;
  v5 = [swift_unknownObjectRetain() newCommandQueue];
  if (!v5)
  {
    if (qword_1EC190888 != -1)
    {
      swift_once();
    }

    v21 = sub_1C5BC7D64();
    __swift_project_value_buffer(v21, qword_1EC1A6D48);
    v22 = sub_1C5BC7D44();
    v23 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C5922000, v22, v23, "Couldn't create command queue", v24, 2u);
      MEMORY[0x1C69510F0](v24, -1, -1);
    }

    swift_unknownObjectRelease();

    goto LABEL_30;
  }

  *(v2 + 24) = v5;
  v6 = qword_1EDA4E5D0;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  cacheOut[0] = 0;
  v7 = [a1 newDefaultLibraryWithBundle:qword_1EDA5DD00 error:cacheOut];
  v8 = cacheOut[0];
  if (!v7)
  {
    v25 = cacheOut[0];
    v26 = sub_1C5BC7914();

    swift_willThrow();
    if (qword_1EC190888 != -1)
    {
      swift_once();
    }

    v27 = sub_1C5BC7D64();
    __swift_project_value_buffer(v27, qword_1EC1A6D48);
    v28 = v26;
    v29 = sub_1C5BC7D44();
    v30 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      v33 = v26;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1C5922000, v29, v30, "Couldn't create default library: %{public}@", v31, 0xCu);
      sub_1C5B0A754(v32);
      MEMORY[0x1C69510F0](v32, -1, -1);
      MEMORY[0x1C69510F0](v31, -1, -1);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  *(v3 + 32) = v7;
  cacheOut[0] = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = v8;
  v11 = CVMetalTextureCacheCreate(v9, 0, a1, 0, cacheOut);
  v12 = v11;
  v13 = cacheOut[0];
  if (!cacheOut[0] || v11)
  {
    if (qword_1EC190888 != -1)
    {
      swift_once();
    }

    v35 = sub_1C5BC7D64();
    __swift_project_value_buffer(v35, qword_1EC1A6D48);
    v36 = sub_1C5BC7D44();
    v37 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = v12;
      _os_log_impl(&dword_1C5922000, v36, v37, "Couldn't create CVMetalTextureCache: %d", v38, 8u);
      MEMORY[0x1C69510F0](v38, -1, -1);
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_30:
    swift_unknownObjectRelease();
LABEL_31:
    type metadata accessor for MetalRenderContext();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v3 + 56) = cacheOut[0];
  v14 = objc_allocWithZone(MEMORY[0x1E6974438]);
  v15 = v13;
  *(v3 + 40) = [v14 initWithDevice_];
  v16 = sub_1C5B0A4FC();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  *(v3 + 48) = v16;

  return v3;
}

uint64_t sub_1C5B0A4FC()
{
  if ([v0 supportsFamily_] && (v1 = sub_1C5BCAE44(), v2 = MGGetBoolAnswer(), v1, v2) && MGGetProductType() != 33245053)
  {
    return 552;
  }

  else
  {
    return 80;
  }
}

uint64_t sub_1C5B0A580()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1C5B0A5FC()
{
  if (qword_1EC190878 != -1)
  {
    swift_once();
  }

  qword_1EC197E40 = qword_1EC1A6D40;

  return result;
}

double sub_1C5B0A660@<D0>(void *a1@<X8>)
{
  if (qword_1EC190880 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EC197E40;

  return result;
}

uint64_t sub_1C5B0A6D0()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1A6D48);
  __swift_project_value_buffer(v0, qword_1EC1A6D48);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5B0A754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196F30, &qword_1C5BD8940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C5B0A7BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  KeyPath = swift_getKeyPath(asc_1C5BE95A0);
  type metadata accessor for Geometry(0);
  sub_1C5B10240(&qword_1EDA46EB8, type metadata accessor for Geometry, &unk_1C5BE9818);

  v10 = KeyPath;
  v11 = 0;
  v12 = sub_1C5BC8C84();
  v13 = v8;
  v14 = v6;
  v15 = v5;
  MEMORY[0x1C694E550](&v10, a2, &type metadata for PublishGeometryModifier, a3);
  sub_1C5950E44(v10, v11);

  return result;
}

uint64_t static NowPlayingGeometryIdentifier.lookup(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  result = MEMORY[0x1C694F170](0x7274656D6F65672ELL, 0xE900000000000079);
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t static NowPlayingGeometryIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4();
  }
}

uint64_t NowPlayingGeometryIdentifier.hashValue.getter()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5B0A9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[1];
  v10 = v2[2];
  v29 = *v2;
  v30 = v9;
  v31 = v10;
  v32 = v10;
  v11 = *v2;
  v33 = *v2;
  v34 = *(v2 + 8);
  if (v34 == 1)
  {
    sub_1C5B0BA0C(&v32, v28);
  }

  else
  {
    sub_1C5B0BA0C(&v32, v28);
    sub_1C5B0BA44(&v33, v28);
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B0BAB4(&v33);
    (*(v6 + 8))(v8, v5);
    v11 = v28[0];
  }

  v13 = v32;
  v14 = sub_1C5BC9664();
  sub_1C5BCABD4();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E68, &qword_1C5BE98A8);
  (*(*(v19 - 8) + 16))(a2, a1, v19);
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E70, &qword_1C5BE98B0) + 36);
  *v20 = v13;
  *(v20 + 16) = v11;
  *(v20 + 24) = v14;
  *(v20 + 32) = v16;
  *(v20 + 40) = v18;
  *(v20 + 48) = 1;
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 1) = v29;
  *(v21 + 2) = v22;
  *(v21 + 3) = v31;
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E78, &qword_1C5BE98B8) + 36));
  *v23 = sub_1C5B0BB1C;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
  v24 = swift_allocObject();
  v25 = v30;
  v24[1] = v29;
  v24[2] = v25;
  v24[3] = v31;
  v26 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E80, &qword_1C5BE98C0) + 36));
  *v26 = 0;
  v26[1] = 0;
  v26[2] = sub_1C5B0BB24;
  v26[3] = v24;
  sub_1C5B0BB2C(&v29, v28);
  return sub_1C5B0BB2C(&v29, v28);
}

void sub_1C5B0ACE8(void *a1)
{
  if (a1[2])
  {
    v1 = a1[4];
    v2 = a1[5];
    swift_getKeyPath(asc_1C5BE98C8);
    swift_getKeyPath(asc_1C5BE98F0);

    v3 = sub_1C5BC8024();
    sub_1C5B0D4C0(&v5, v1, v2);

    v3(&v4, 0);
  }

  else
  {
    type metadata accessor for Geometry(0);
    sub_1C5B10240(&qword_1EDA46EB8, type metadata accessor for Geometry, &unk_1C5BE9818);
    sub_1C5BC8C74();
    __break(1u);
  }
}

void sub_1C5B0AE24(void *a1)
{
  if (a1[2])
  {
    v1 = a1[4];
    v2 = a1[5];
    swift_getKeyPath(asc_1C5BE98C8);
    swift_getKeyPath(asc_1C5BE98F0);

    v3 = sub_1C5BC8024();
    sub_1C5B0FB90(v1, v2, &v5);

    v3(&v4, 0);
  }

  else
  {
    type metadata accessor for Geometry(0);
    sub_1C5B10240(&qword_1EDA46EB8, type metadata accessor for Geometry, &unk_1C5BE9818);
    sub_1C5BC8C74();
    __break(1u);
  }
}

uint64_t sub_1C5B0AF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v3 = sub_1C5BC8F34();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E90, &qword_1C5BE9918);
  v6 = *(v31 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v31).n128_u64[0];
  v9 = &v26 - v8;
  if (*(v2 + 16))
  {
    v10 = *v2;
    v11 = *(v2 + 8);
    v13 = *(v2 + 32);
    v12 = *(v2 + 40);
    v29 = *(v2 + 48);
    v14 = *(v2 + 56);
    v15 = *(v2 + 64);
    swift_getKeyPath(asc_1C5BE98C8, v7);
    swift_getKeyPath(asc_1C5BE98F0);

    sub_1C5BC8034();

    v16 = v33;

    v17 = sub_1C5B52B38(v13, v12, v16);

    if (v17)
    {
      if ((v11 & 1) == 0)
      {

        sub_1C5BCB4E4();
        v18 = sub_1C5BC9844();
        sub_1C5BC7C54();

        sub_1C5BC8F24();
        swift_getAtKeyPath();
        v19 = sub_1C5950E44(v10, 0);
        (*(v27 + 8))(v5, v28, v19);
        v10 = v33;
      }

      v20 = v32;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E98, &unk_1C5BE9920);
      (*(*(v21 - 8) + 16))(v9, v30, v21);
      v22 = v31;
      v23 = &v9[*(v31 + 36)];
      *v23 = v13;
      *(v23 + 1) = v12;
      *(v23 + 2) = v10;
      *(v23 + 6) = v29;
      *(v23 + 4) = v14;
      *(v23 + 5) = v15;
      v23[48] = 0;
      sub_1C5B10184(v9, v20);
      v24 = 0;
    }

    else
    {

      v24 = 1;
      v22 = v31;
      v20 = v32;
    }

    return (*(v6 + 56))(v20, v24, 1, v22);
  }

  else
  {
    type metadata accessor for Geometry(0);
    sub_1C5B10240(&qword_1EDA46EB8, type metadata accessor for Geometry, &unk_1C5BE9818);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t MCUINamespace<A>.matchToNowPlayingView(_:properties:anchor:)(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = *a1;
  v11 = a1[1];
  KeyPath = swift_getKeyPath(asc_1C5BE95A0);
  v21 = 0;
  type metadata accessor for Geometry(0);
  sub_1C5B10240(&qword_1EDA46EB8, type metadata accessor for Geometry, &unk_1C5BE9818);

  *&v16 = KeyPath;
  BYTE8(v16) = 0;
  *&v17 = sub_1C5BC8C84();
  *(&v17 + 1) = v14;
  *&v18 = v12;
  *(&v18 + 1) = v11;
  LODWORD(v19) = a2;
  *(&v19 + 1) = a5;
  v20 = a6;
  MEMORY[0x1C694E550](&v16, *(a3 + 16), &type metadata for MatchGeometryModifier, a4);
  v22[2] = v18;
  v22[3] = v19;
  v23 = v20;
  v22[0] = v16;
  v22[1] = v17;
  return sub_1C5B0B408(v22);
}

double MCUINamespace<A>.matchToNowPlayingButton(_:properties:anchor:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = *(a1 + 16);
  v15 = *a1;
  v16 = v11;
  NowPlayingButtonID.geometryID.getter(v14);
  v13[0] = v14[0];
  v13[1] = v14[1];
  MCUINamespace<A>.matchToNowPlayingView(_:properties:anchor:)(v13, a2, a3, a4, a5, a6);

  return result;
}

uint64_t sub_1C5B0B4F4()
{
  swift_getKeyPath(asc_1C5BE98C8);
  swift_getKeyPath(asc_1C5BE98F0);
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5B0B568()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI8Geometry__visibleViews;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EA0, &qword_1C5BE9930);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B0B610@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Geometry(0);
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t View.matchToNowPlayingView(_:properties:anchor:)(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = type metadata accessor for MCUINamespace(0, a3, a3, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - v14;
  v17 = *a1;
  v16 = a1[1];
  View.mcui.getter(a3, v19 - v14);
  v19[0] = v17;
  v19[1] = v16;
  MCUINamespace<A>.matchToNowPlayingView(_:properties:anchor:)(v19, a2, v12, a4, a5, a6);
  return (*(v13 + 8))(v15, v12);
}

uint64_t View.matchToNowPlayingButton(_:properties:anchor:)(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v20 = a2;
  v11 = type metadata accessor for MCUINamespace(0, a3, a3, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19[-v13];
  v16 = *a1;
  v15 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  View.mcui.getter(a3, &v19[-v13]);
  *&v21 = v16;
  *(&v21 + 1) = v15;
  v22 = a1;
  v17 = MCUINamespace<A>.matchToNowPlayingButton(_:properties:anchor:)(&v21, v20, v11, a4, a5, a6);
  return (*(v12 + 8))(v14, v11, v17);
}

unint64_t sub_1C5B0B8C8()
{
  result = qword_1EC197E60;
  if (!qword_1EC197E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197E60);
  }

  return result;
}

uint64_t sub_1C5B0B91C(uint64_t a1, int a2)
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

uint64_t sub_1C5B0B964(uint64_t result, int a2, int a3)
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

uint64_t sub_1C5B0BA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B48, &qword_1C5BE98A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B0BAB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B48, &qword_1C5BE98A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5B0BB64(void *a2@<X8>)
{
  swift_getKeyPath(asc_1C5BE98C8);
  swift_getKeyPath(asc_1C5BE98F0);
  sub_1C5BC8034();

  *a2 = v3;
}

uint64_t sub_1C5B0BBE4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_1C5BE98C8);
  swift_getKeyPath(asc_1C5BE98F0);

  return sub_1C5BC8044();
}

void sub_1C5B0BC60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A90, &qword_1C5BD8A88);
  v4 = sub_1C5BCBA44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v21 = sub_1C5BCBF94();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1C5B0BEC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A40, &qword_1C5BD89F8);
  v4 = sub_1C5BCBA44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1C5BCB734();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1C5B0C0E8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C5BC7B04();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB8, &unk_1C5BE9950);
  v6 = sub_1C5BCBA44();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1C5B10240(&qword_1EC196A58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_1C5BCAD34();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1C5B0C444(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB0, &unk_1C5BE9940);
  v4 = sub_1C5BCBA44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1C5BCAE74();
      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v18 = sub_1C5BCBF94();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1C5B0C6C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EA8, &qword_1C5BE9938);
  v4 = sub_1C5BCBA44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1C5BCBF44();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1C5B0C8F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E88, &qword_1C5BE9910);
  v4 = sub_1C5BCBA44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1C5BCBF54();
      sub_1C5BCAF04();
      v21 = sub_1C5BCBF94();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_1C5B0CB54(uint64_t a1, uint64_t a2)
{
  sub_1C5BCB734();
  result = sub_1C5BCB924();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C5B0CBD8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v8 = sub_1C5BCBF94();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C5BCBDE4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C5B0D7F0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C5B0CD28(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C5BC7B04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1C5B10240(&qword_1EC196A58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1C5BCAD34();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1C5B10240(&qword_1EC196A60, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1C5BCADB4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1C5B0D970(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1C5B0D008(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1C5BCB994();

    if (v9)
    {

      sub_1C5B101F4();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1C5BCB984();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1C5B0D610(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1C5B0BEC0(v20 + 1);
    }

    v18 = v8;
    sub_1C5B0CB54(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1C5B101F4();
  v11 = sub_1C5BCB734();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1C5B0DC14(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1C5BCB744();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1C5B0D220(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1C5BCAE74();
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v7 = sub_1C5BCBF94();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1C5BCAE74();
      v13 = v12;
      if (v11 == sub_1C5BCAE74() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1C5BCBDE4();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1C5B0DD74(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1C5B0D3CC(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1C5BCBF44();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1C5B0DF5C(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C5B0D4C0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v8 = sub_1C5BCBF94();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C5BCBDE4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C5B0E088(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C5B0D610(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A40, &qword_1C5BD89F8);
    v2 = sub_1C5BCBA54();
    v15 = v2;
    sub_1C5BCB944();
    if (sub_1C5BCB9C4())
    {
      sub_1C5B101F4();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1C5B0BEC0(v9 + 1);
        }

        v2 = v15;
        result = sub_1C5BCB734();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1C5BCB9C4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1C5B0D7F0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C5B0BC60(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1C5B0E208();
      goto LABEL_16;
    }

    sub_1C5B0EAD8(v8 + 1);
  }

  v10 = *v4;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v11 = sub_1C5BCBF94();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1C5BCBDE4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1C5BCBE74();
  __break(1u);
}

uint64_t sub_1C5B0D970(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1C5BC7B04();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C5B0C0E8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1C5B0E4B4();
      goto LABEL_12;
    }

    sub_1C5B0EF24(v11 + 1);
  }

  v13 = *v3;
  sub_1C5B10240(&qword_1EC196A58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v14 = sub_1C5BCAD34();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1C5B10240(&qword_1EC196A60, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v22 = sub_1C5BCADB4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C5BCBE74();
  __break(1u);
  return result;
}

void sub_1C5B0DC14(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C5B0BEC0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C5B0E364();
      goto LABEL_12;
    }

    sub_1C5B0ED10(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1C5BCB734();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1C5B101F4();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1C5BCB744();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C5BCBE74();
  __break(1u);
}

void sub_1C5B0DD74(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1C5B0C444(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1C5B0E6EC();
      goto LABEL_16;
    }

    sub_1C5B0F240(v7 + 1);
  }

  v9 = *v3;
  sub_1C5BCAE74();
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v10 = sub_1C5BCBF94();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = sub_1C5BCAE74();
      v15 = v14;
      if (v13 == sub_1C5BCAE74() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1C5BCBDE4();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_1C5BCBE74();
  __break(1u);
}

unint64_t sub_1C5B0DF5C(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1C5B0C6C0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1C5B0E83C();
      result = v7;
      goto LABEL_12;
    }

    sub_1C5B0F494(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1C5BCBF44();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C5BCBE74();
  __break(1u);
  return result;
}

void sub_1C5B0E088(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C5B0C8F4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1C5B0E97C();
      goto LABEL_16;
    }

    sub_1C5B0F694(v8 + 1);
  }

  v10 = *v4;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v11 = sub_1C5BCBF94();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1C5BCBDE4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1C5BCBE74();
  __break(1u);
}

void sub_1C5B0E208()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A90, &qword_1C5BD8A88);
  v2 = *v0;
  v3 = sub_1C5BCBA34();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5B0E364()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A40, &qword_1C5BD89F8);
  v2 = *v0;
  v3 = sub_1C5BCBA34();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5B0E4B4()
{
  v1 = v0;
  v2 = sub_1C5BC7B04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB8, &unk_1C5BE9950);
  v6 = *v0;
  v7 = sub_1C5BCBA34();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1C5B0E6EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB0, &unk_1C5BE9940);
  v2 = *v0;
  v3 = sub_1C5BCBA34();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5B0E83C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EA8, &qword_1C5BE9938);
  v2 = *v0;
  v3 = sub_1C5BCBA34();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5B0E97C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E88, &qword_1C5BE9910);
  v2 = *v0;
  v3 = sub_1C5BCBA34();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C5B0EAD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A90, &qword_1C5BD8A88);
  v4 = sub_1C5BCBA44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C5BCBF54();

      sub_1C5BCAF04();
      v20 = sub_1C5BCBF94();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1C5B0ED10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193A40, &qword_1C5BD89F8);
  v4 = sub_1C5BCBA44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1C5BCB734();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1C5B0EF24(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1C5BC7B04();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB8, &unk_1C5BE9950);
  v7 = sub_1C5BCBA44();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1C5B10240(&qword_1EC196A58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_1C5BCAD34();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_1C5B0F240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EB0, &unk_1C5BE9940);
  v4 = sub_1C5BCBA44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1C5BCAE74();
      sub_1C5BCBF54();
      v18 = v17;
      sub_1C5BCAF04();
      v19 = sub_1C5BCBF94();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1C5B0F494(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197EA8, &qword_1C5BE9938);
  v4 = sub_1C5BCBA44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1C5BCBF44();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1C5B0F694(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E88, &qword_1C5BE9910);
  v4 = sub_1C5BCBA44();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C5BCBF54();

      sub_1C5BCAF04();
      v20 = sub_1C5BCBF94();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_1C5B0F8CC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v6 = sub_1C5BCBF94();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1C5BCBDE4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C5B0E208();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1C5B0FE20(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1C5B0FA08(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1C5BCB9D4();

    if (v6)
    {
      v7 = sub_1C5B0FCC8(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_1C5B101F4();
  v10 = sub_1C5BCB734();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1C5BCB744();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C5B0E364();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1C5B0FFE4(v12);
  result = v18;
  *v9 = v19;
  return result;
}

void sub_1C5B0FB90(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v8 = sub_1C5BCBF94();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a1 && v12[1] == a2;
      if (v13 || (sub_1C5BCBDE4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v19 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C5B0E97C();
      v15 = v19;
    }

    v16 = (*(v15 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    *a3 = v18;
    a3[1] = v17;
    sub_1C5B0FE20(v10);
    *v3 = v19;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_1C5B0FCC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1C5BCB984();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1C5B0D610(v5, v4);
  v15 = v6;

  v7 = sub_1C5BCB734();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1C5B101F4();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1C5BCB744();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_1C5B0FFE4(v9);
  result = sub_1C5BCB744();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5B0FE20(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C5BCB914();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C5BCBF54();

        sub_1C5BCAF04();
        v10 = sub_1C5BCBF94();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_1C5B0FFE4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C5BCB914();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1C5BCB734();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

uint64_t sub_1C5B10184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E90, &qword_1C5BE9918);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5B101F4()
{
  result = qword_1EC193A38;
  if (!qword_1EC193A38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC193A38);
  }

  return result;
}

uint64_t sub_1C5B10240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5B102B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C5B1033C()
{
  result = qword_1EC197ED0;
  if (!qword_1EC197ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197E70, &qword_1C5BE98B0);
    sub_1C5924F54(&qword_1EC197ED8, &qword_1EC197E68, &qword_1C5BE98A8, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC194680, &qword_1EC194678, &unk_1C5BDC6E0, MEMORY[0x1E697FF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197ED0);
  }

  return result;
}

unint64_t sub_1C5B10420()
{
  result = qword_1EC197EE0;
  if (!qword_1EC197EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197EE8, &unk_1C5BE9960);
    sub_1C5B104A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197EE0);
  }

  return result;
}

unint64_t sub_1C5B104A4()
{
  result = qword_1EC197EF0;
  if (!qword_1EC197EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197E90, &qword_1C5BE9918);
    sub_1C5924F54(qword_1EC197EF8, &qword_1EC197E98, &unk_1C5BE9920, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC194680, &qword_1EC194678, &unk_1C5BDC6E0, MEMORY[0x1E697FF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197EF0);
  }

  return result;
}

id sub_1C5B10588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1C5BE9BC8);
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver, &unk_1C5BD7C20);
  sub_1C5BC7B74();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1C5B10640(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C5A038DC(v1);
}

id sub_1C5B10670@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentItem];
  *a2 = result;
  return result;
}

void *sub_1C5B106AC@<X0>(_BYTE *a1@<X8>)
{
  sub_1C59C109C();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

id sub_1C5B10748@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentationSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

double sub_1C5B1077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1C5BC8674();
  sub_1C5BC9D74();

  return result;
}

void LockScreenArtworkBackground.init(asset:treatment:staticArtwork:)(void *a1@<X0>, char *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v23 - v13);
  v15 = *a2;
  if (a1)
  {
    *v14 = a1;
    v16 = type metadata accessor for MotionAsset(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for MotionAsset(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  }

  sub_1C5B10A44(v14, a6);
  v19 = type metadata accessor for LockScreenArtworkBackground(0, a4, a5, v18);
  *(a6 + *(v19 + 40)) = v15;
  v20 = a1;
  a3();
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  *(a6 + *(v19 + 44)) = v22 == 0;
}

uint64_t sub_1C5B10A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LockScreenArtworkBackground.init(videoURL:treatment:staticArtwork:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a4;
  v30 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738, &unk_1C5BE0D80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8, &qword_1C5BD71A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  v18 = *a2;
  sub_1C59400B0(a1, v14, &qword_1EC195738, &unk_1C5BE0D80);
  v19 = sub_1C5BC7A24();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    v21 = type metadata accessor for MotionAsset(0);
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  else
  {
    (*(v20 + 32))(v17, v14, v19);
    v22 = type metadata accessor for MotionAsset(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  }

  sub_1C5B10A44(v17, a7);
  v24 = type metadata accessor for LockScreenArtworkBackground(0, a5, a6, v23);
  *(a7 + *(v24 + 40)) = v18;
  v30(v24, v25);
  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 userInterfaceIdiom];

  result = sub_1C5924EF4(a1, &qword_1EC195738, &unk_1C5BE0D80);
  *(a7 + *(v24 + 44)) = v27 == 0;
  return result;
}

double LockScreenArtworkBackground.body.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  (*(v2 + 32))(v6 + v5, v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for TallAssetArtworkBackground(255, v7, v8, v9);
  type metadata accessor for SquareAssetArtworkBackground(255, v7, v8, v10);
  sub_1C5BC92D4();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v21 = WitnessTable;
  v22 = v12;
  swift_getWitnessTable();
  v27 = sub_1C5BC8864();
  v28 = v13;
  sub_1C5BC8AC4();
  sub_1C5BC9894();
  sub_1C5BC8874();
  v14 = swift_getWitnessTable();
  sub_1C5BC9F84();

  v19[0] = v23;
  v19[1] = v24;
  v19[2] = v25;
  v20 = v26;
  v15 = sub_1C5BC8AB4();
  v18[0] = v14;
  v18[1] = MEMORY[0x1E6980A30];
  v16 = swift_getWitnessTable();
  sub_1C593EDC0(v19, v15, v16);

  v23 = v27;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  sub_1C593EDC0(&v23, v15, v16);

  return result;
}