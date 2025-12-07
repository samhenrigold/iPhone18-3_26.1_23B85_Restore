uint64_t FaceQueueState.queuedRequestCount.getter()
{
  if (*v0 >> 62)
  {
    return sub_25B0E3CC0();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *FaceQueueState.queuedRequests.getter()
{

  v2 = sub_25B057C2C(v0);
  sub_25B056820(&v2);
  return v2;
}

uint64_t FaceQueueState.currentRequests.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t FaceQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  FaceQueue.init()();
  return v0;
}

uint64_t FaceQueue.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25B0E6410;
  type metadata accessor for FaceHandler();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *(v1 + 32) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31320, &qword_25B0E6420);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = MEMORY[0x277D84F98];
  *(v4 + 112) = MEMORY[0x277D84F98];
  *(v4 + 120) = v5;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = v1;
  *(v0 + 16) = v4;
  return v0;
}

uint64_t FaceQueue.add(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25B05602C, 0, 0);
}

uint64_t sub_25B05602C()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_25B056050, v1, 0);
}

uint64_t sub_25B056050()
{
  sub_25B053238(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t FaceQueue.set(paused:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B056154, 0, 0);
}

uint64_t sub_25B056154()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_25B056178, v1, 0);
}

uint64_t sub_25B056178()
{
  v1 = *(v0 + 32);
  *(v1 + 145) = *(v0 + 40);
  v2 = *(v1 + 128);
  if (v2)
  {
    v3 = *(*(v0 + 32) + 136);

    sub_25B052524();
    v2();

    sub_25B043E90(v2, v3);
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = sub_25B0E3940();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = sub_25B058150(&qword_27FA31328, &qword_27FA31320, &qword_25B0E6420, &unk_25B0E5E20);
    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = v7;
    v8[4] = v4;
    swift_retain_n();
    sub_25B052F48(0, 0, v5, &unk_25B0E6440, v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t FaceQueue.set(stateCallback:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25B05633C, 0, 0);
}

uint64_t sub_25B05633C()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v1)
  {
    v3 = v0[3];
    v4 = *(v2 + 16);
    v0[5] = v4;
    v5 = swift_allocObject();
    v0[6] = v5;
    *(v5 + 16) = v1;
    *(v5 + 24) = v3;
    sub_25B057D7C(v1, v3);
    sub_25B057D7C(v1, v3);

    v6 = sub_25B056418;
    v7 = v4;
  }

  else
  {
    v7 = *(v2 + 16);
    v0[7] = v7;
    v6 = sub_25B056550;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_25B056418()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  *(v2 + 128) = sub_25B057D74;
  *(v2 + 136) = v1;
  sub_25B043E90(v5, v6);

  v7 = sub_25B052524();
  sub_25B0565B8(v7, v8, v9, v4);

  sub_25B043E90(v4, v3);

  return MEMORY[0x2822009F8](sub_25B0564F0, 0, 0);
}

uint64_t sub_25B0564F0()
{
  sub_25B043E90(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_25B056550()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  sub_25B043E90(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25B0565B8(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t *))
{

  v9[0] = sub_25B057C2C(v7);
  sub_25B056820(v9);
  v9[1] = a2;
  v10 = a3;

  a4(v9);
}

uint64_t FaceQueue.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25B0566C0()
{
  type metadata accessor for FaceQueue();
  v0 = swift_allocObject();
  result = FaceQueue.init()();
  qword_27FA31318 = v0;
  return result;
}

uint64_t static FaceQueue.sharedNanoTimeKitQueue.getter()
{
  if (qword_27FA30C90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25B056758(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25B065DD0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25B069C7C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_25B0E2750();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_25B06827C(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_25B056820(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_25B0D4090(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_25B05689C(v6);
  return sub_25B0E3C40();
}

uint64_t sub_25B05689C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25B0E3E10();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for FaceRequest(0);
        v6 = sub_25B0E3820();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_25B056C0C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25B0569A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B0569A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
    v28 = *a4;
LABEL_6:
    v26 = v5;
    v27 = a3;
    v7 = *(v4 + 8 * a3);
    v25 = v6;
    while (1)
    {
      if (*(v7 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) != *(*v5 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
      {
        if (!*(v7 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }

      v8 = v7 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v9 = *v5 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v10 = *(type metadata accessor for FacePlacement(0) + 20);
      v11 = (v8 + v10);
      v12 = (v9 + v10);
      v13 = *(v8 + v10);
      v14 = *v12;
      if (v13 != v14)
      {
        break;
      }

      type metadata accessor for FacePlacement.Location(0);

      if ((sub_25B0E2520() & 1) == 0)
      {
        v13 = *v11;
        v14 = *v12;
        if (v13 == v14)
        {
          type metadata accessor for FacePlacement.Location(0);
          v21 = sub_25B0E2510();

          v4 = v28;
          if ((v21 & 1) == 0)
          {
            goto LABEL_5;
          }

          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v15 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v17 = v16;
      if (v15 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v17 == v18)
      {

        v4 = v28;
LABEL_5:
        a3 = v27 + 1;
        v5 = v26 + 1;
        v6 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v20 = sub_25B0E3E30();

      v4 = v28;
      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_23:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v22 = *v5;
      v7 = v5[1];
      *v5 = v7;
      v5[1] = v22;
      --v5;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

LABEL_22:

    v4 = v28;
    if (v13 >= v14)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_25B056C0C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v122 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_137:
    v9 = v8;
    v8 = *v122;
    if (!*v122)
    {
      goto LABEL_175;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_139;
    }

    goto LABEL_169;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (2)
  {
    v9 = v7 + 1;
    v134 = v8;
    v123 = v7;
    if (v7 + 1 >= v6)
    {
      goto LABEL_53;
    }

    v120 = v5;
    v10 = *a3;
    v11 = *(*a3 + 8 * v9);
    v12 = *(*a3 + 8 * v7);
    v13 = *(v11 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
    v127 = v6;
    if (v13 == *(v12 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
    {
      v130 = v9;
      v14 = v11 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v15 = v12 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v16 = *(type metadata accessor for FacePlacement(0) + 20);
      v17 = (v14 + v16);
      v18 = (v15 + v16);
      v19 = *(v14 + v16);
      v13 = *(v15 + v16);
      if (v19 == v13)
      {
        type metadata accessor for FacePlacement.Location(0);

        if (sub_25B0E2520())
        {
          v20 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
          v22 = v21;
          if (v20 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v22 == v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = sub_25B0E3E30();
          }

          v9 = v130;
          v6 = v127;

          LOBYTE(v13) = v25;
          goto LABEL_21;
        }

        v19 = *v17;
        v13 = *v18;
      }

      else
      {
      }

      v9 = v130;
      if (v19 == v13)
      {
        type metadata accessor for FacePlacement.Location(0);
        LOBYTE(v13) = sub_25B0E2510();
      }

      else
      {

        LOBYTE(v13) = v19 < v13;
      }

      v6 = v127;
    }

LABEL_21:
    v5 = (v10 + 8 * v123 + 16);
    v26 = 8 * v123 + 8;
    v125 = v13;
    do
    {
      v28 = v9;
      v8 = v26;
      if (++v9 >= v6)
      {
        break;
      }

      v29 = *(v5 - 1);
      v27 = *(*v5 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
      if (v27 != *(v29 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
      {
        goto LABEL_25;
      }

      v131 = v9;
      v30 = *v5 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v31 = v29 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v32 = *(type metadata accessor for FacePlacement(0) + 20);
      v33 = (v30 + v32);
      v34 = (v31 + v32);
      v35 = *v33;
      v36 = *(v31 + v32);
      if (v35 == v36)
      {
        type metadata accessor for FacePlacement.Location(0);

        if (sub_25B0E2520())
        {
          v37 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
          v39 = v38;
          if (v37 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v39 == v40)
          {
            LOBYTE(v27) = 0;
          }

          else
          {
            LOBYTE(v27) = sub_25B0E3E30();
          }

          v9 = v131;
          v6 = v127;

          goto LABEL_24;
        }

        v35 = *v33;
        v36 = *v34;
        if (v35 == v36)
        {
          type metadata accessor for FacePlacement.Location(0);
          LOBYTE(v27) = sub_25B0E2510();

          goto LABEL_23;
        }
      }

      else
      {
      }

      LOBYTE(v27) = v35 < v36;
LABEL_23:
      v9 = v131;
      v6 = v127;
LABEL_24:
      LOBYTE(v13) = v125;
LABEL_25:
      ++v5;
      v26 = (v8 + 8);
    }

    while ((v13 & 1) == (v27 & 1));
    if (v13)
    {
      v42 = v123;
      if (v9 < v123)
      {
        goto LABEL_166;
      }

      if (v123 < v9)
      {
        v5 = v120;
        v43 = 8 * v123;
        while (1)
        {
          if (v42 != v28)
          {
            v46 = *a3;
            if (!*a3)
            {
              goto LABEL_172;
            }

            v44 = *(v46 + v43);
            *(v46 + v43) = *&v8[v46];
            *&v8[v46] = v44;
          }

          ++v42;
          v8 -= 8;
          v43 += 8;
          if (v42 >= v28--)
          {
            goto LABEL_51;
          }
        }
      }

      v5 = v120;
      v8 = v134;
      v7 = v123;
    }

    else
    {
      v5 = v120;
LABEL_51:
      v8 = v134;
      v7 = v123;
    }

LABEL_53:
    v47 = a3[1];
    if (v9 >= v47)
    {
      goto LABEL_86;
    }

    if (__OFSUB__(v9, v7))
    {
      goto LABEL_165;
    }

    if (v9 - v7 >= a4)
    {
      goto LABEL_86;
    }

    v48 = v7 + a4;
    if (__OFADD__(v7, a4))
    {
      goto LABEL_167;
    }

    if (v48 >= v47)
    {
      v48 = a3[1];
    }

    if (v48 < v7)
    {
LABEL_168:
      __break(1u);
LABEL_169:
      result = sub_25B0D3F4C(v9);
      v9 = result;
LABEL_139:
      v115 = *(v9 + 16);
      if (v115 < 2)
      {
      }

      while (*a3)
      {
        v116 = *(v9 + 16 * v115);
        v117 = *(v9 + 16 * (v115 - 1) + 40);
        sub_25B05767C((*a3 + 8 * v116), (*a3 + 8 * *(v9 + 16 * (v115 - 1) + 32)), (*a3 + 8 * v117), v8);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_162;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25B0D3F4C(v9);
        }

        if (v115 - 2 >= *(v9 + 16))
        {
          goto LABEL_163;
        }

        v118 = (v9 + 16 * v115);
        *v118 = v116;
        v118[1] = v117;
        result = sub_25B0D3EC0(v115 - 1);
        v115 = *(v9 + 16);
        if (v115 <= 1)
        {
        }
      }

LABEL_173:
      __break(1u);
      break;
    }

    if (v9 == v48)
    {
      goto LABEL_86;
    }

    v121 = v5;
    v49 = *a3;
    v50 = (*a3 + 8 * v9 - 8);
    v51 = v7 - v9;
    v124 = v48;
    v133 = *a3;
    while (2)
    {
      v132 = v9;
      v52 = *(v49 + 8 * v9);
      v126 = v51;
      v128 = v50;
      while (2)
      {
        if (*(v52 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) != *(*v50 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
        {
          if (!*(v52 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
          {
            goto LABEL_63;
          }

          goto LABEL_81;
        }

        v53 = v52 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
        v54 = *v50 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
        v55 = *(type metadata accessor for FacePlacement(0) + 20);
        v56 = (v53 + v55);
        v57 = (v54 + v55);
        v58 = *(v53 + v55);
        v59 = *v57;
        if (v58 != v59)
        {

          goto LABEL_80;
        }

        type metadata accessor for FacePlacement.Location(0);

        if ((sub_25B0E2520() & 1) == 0)
        {
          v58 = *v56;
          v59 = *v57;
          if (v58 == v59)
          {
            type metadata accessor for FacePlacement.Location(0);
            v66 = sub_25B0E2510();

            v49 = v133;
            v8 = v134;
            if ((v66 & 1) == 0)
            {
              goto LABEL_63;
            }

LABEL_81:
            if (v49)
            {
              v68 = *v50;
              v52 = v50[1];
              *v50 = v52;
              v50[1] = v68;
              --v50;
              v67 = __CFADD__(v51++, 1);
              if (v67)
              {
                goto LABEL_63;
              }

              continue;
            }

            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

LABEL_80:

          v67 = v58 >= v59;
          v49 = v133;
          v8 = v134;
          if (v67)
          {
            goto LABEL_63;
          }

          goto LABEL_81;
        }

        break;
      }

      v60 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v62 = v61;
      if (v60 != _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() || v62 != v63)
      {
        v65 = sub_25B0E3E30();

        v49 = v133;
        v8 = v134;
        if ((v65 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_81;
      }

      v49 = v133;
      v8 = v134;
LABEL_63:
      v9 = v132 + 1;
      v50 = v128 + 1;
      v51 = v126 - 1;
      if (v132 + 1 != v124)
      {
        continue;
      }

      break;
    }

    v9 = v124;
    v5 = v121;
    v7 = v123;
LABEL_86:
    if (v9 < v7)
    {
      goto LABEL_164;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25B08993C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v70 = *(v8 + 2);
    v69 = *(v8 + 3);
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      result = sub_25B08993C((v69 > 1), v70 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v71;
    v72 = &v8[16 * v70];
    *(v72 + 4) = v123;
    *(v72 + 5) = v9;
    v7 = v9;
    v9 = *v122;
    if (*v122)
    {
      if (!v70)
      {
LABEL_3:
        v6 = a3[1];
        if (v7 >= v6)
        {
          goto LABEL_137;
        }

        continue;
      }

      while (2)
      {
        v73 = v71 - 1;
        if (v71 >= 4)
        {
          v78 = &v8[16 * v71 + 32];
          v79 = *(v78 - 64);
          v80 = *(v78 - 56);
          v84 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          if (v84)
          {
            goto LABEL_151;
          }

          v83 = *(v78 - 48);
          v82 = *(v78 - 40);
          v84 = __OFSUB__(v82, v83);
          v76 = v82 - v83;
          v77 = v84;
          if (v84)
          {
            goto LABEL_152;
          }

          v85 = &v8[16 * v71];
          v87 = *v85;
          v86 = *(v85 + 1);
          v84 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v84)
          {
            goto LABEL_154;
          }

          v84 = __OFADD__(v76, v88);
          v89 = v76 + v88;
          if (v84)
          {
            goto LABEL_157;
          }

          if (v89 >= v81)
          {
            v107 = &v8[16 * v73 + 32];
            v109 = *v107;
            v108 = *(v107 + 1);
            v84 = __OFSUB__(v108, v109);
            v110 = v108 - v109;
            if (v84)
            {
              goto LABEL_161;
            }

            if (v76 < v110)
            {
              v73 = v71 - 2;
            }
          }

          else
          {
LABEL_106:
            if (v77)
            {
              goto LABEL_153;
            }

            v90 = &v8[16 * v71];
            v92 = *v90;
            v91 = *(v90 + 1);
            v93 = __OFSUB__(v91, v92);
            v94 = v91 - v92;
            v95 = v93;
            if (v93)
            {
              goto LABEL_156;
            }

            v96 = &v8[16 * v73 + 32];
            v98 = *v96;
            v97 = *(v96 + 1);
            v84 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v84)
            {
              goto LABEL_159;
            }

            if (__OFADD__(v94, v99))
            {
              goto LABEL_160;
            }

            if (v94 + v99 < v76)
            {
              goto LABEL_120;
            }

            if (v76 < v99)
            {
              v73 = v71 - 2;
            }
          }
        }

        else
        {
          if (v71 == 3)
          {
            v74 = *(v8 + 4);
            v75 = *(v8 + 5);
            v84 = __OFSUB__(v75, v74);
            v76 = v75 - v74;
            v77 = v84;
            goto LABEL_106;
          }

          v100 = &v8[16 * v71];
          v102 = *v100;
          v101 = *(v100 + 1);
          v84 = __OFSUB__(v101, v102);
          v94 = v101 - v102;
          v95 = v84;
LABEL_120:
          if (v95)
          {
            goto LABEL_155;
          }

          v103 = &v8[16 * v73];
          v105 = *(v103 + 4);
          v104 = *(v103 + 5);
          v84 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v84)
          {
            goto LABEL_158;
          }

          if (v106 < v94)
          {
            goto LABEL_3;
          }
        }

        v111 = v73 - 1;
        if (v73 - 1 >= v71)
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (!*a3)
        {
          goto LABEL_171;
        }

        v112 = *&v8[16 * v111 + 32];
        v113 = *&v8[16 * v73 + 40];
        sub_25B05767C((*a3 + 8 * v112), (*a3 + 8 * *&v8[16 * v73 + 32]), (*a3 + 8 * v113), v9);
        if (v5)
        {
        }

        if (v113 < v112)
        {
          goto LABEL_149;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25B0D3F4C(v8);
        }

        if (v111 >= *(v8 + 2))
        {
          goto LABEL_150;
        }

        v114 = &v8[16 * v111];
        *(v114 + 4) = v112;
        *(v114 + 5) = v113;
        result = sub_25B0D3EC0(v73);
        v71 = *(v8 + 2);
        if (v71 <= 1)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_175:
  __break(1u);
  return result;
}

uint64_t sub_25B05767C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 < 8 || v6 <= __dst)
    {
      goto LABEL_73;
    }

    v60 = v4;
LABEL_44:
    v54 = v6;
    v31 = v6 - 8;
    v32 = v5;
    v33 = v14;
    v52 = v31;
    while (1)
    {
      v35 = *(v33 - 1);
      v33 -= 8;
      v34 = v35;
      v36 = *(v35 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
      if (v36 == *(*v31 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
      {
        v58 = v14;
        v37 = v34 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
        v38 = *v31 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
        v39 = *(type metadata accessor for FacePlacement(0) + 20);
        v40 = (v37 + v39);
        v41 = (v38 + v39);
        v42 = *(v37 + v39);
        v43 = *v41;
        if (v42 != v43)
        {

LABEL_60:

          v5 = v32 - 8;
          v4 = v60;
          v14 = v58;
          v31 = v52;
          if (v42 < v43)
          {
            goto LABEL_66;
          }

          goto LABEL_64;
        }

        type metadata accessor for FacePlacement.Location(0);

        if (sub_25B0E2520())
        {
          v44 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
          v46 = v45;
          if (v44 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v46 == v47)
          {
            v49 = 0;
          }

          else
          {
            v49 = sub_25B0E3E30();
          }

          v4 = v60;

          v5 = v32 - 8;
          v14 = v58;
          v31 = v52;
          if (v49)
          {
LABEL_66:
            if (v32 != v54)
            {
              *v5 = *v31;
            }

            if (v14 <= v4 || (v6 = v31, v31 <= __dst))
            {
              v6 = v31;
              goto LABEL_73;
            }

            goto LABEL_44;
          }

          goto LABEL_64;
        }

        v42 = *v40;
        v43 = *v41;
        if (v42 != v43)
        {
          goto LABEL_60;
        }

        type metadata accessor for FacePlacement.Location(0);
        v50 = sub_25B0E2510();

        v5 = v32 - 8;
        v4 = v60;
        v14 = v58;
        v31 = v52;
        if (v50)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v5 = v32 - 8;
        if (v36)
        {
          goto LABEL_66;
        }
      }

LABEL_64:
      if (v14 != v32)
      {
        *v5 = *v33;
      }

      v14 = v33;
      v32 = v5;
      if (v33 <= v4)
      {
        v14 = v33;
        v6 = v54;
        goto LABEL_73;
      }
    }
  }

  if (a4 != __dst || &__dst[8 * v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v14 = &v4[8 * v10];
  if (v8 < 8)
  {
    v6 = __dst;
    goto LABEL_73;
  }

  v15 = __dst;
  if (v6 < v5)
  {
    v57 = &v4[8 * v10];
    do
    {
      if (*(*v6 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) != *(*v4 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
      {
        if (!*(*v6 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      v53 = v6;
      v55 = v15;
      v59 = v4;
      v16 = *v6 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v17 = *v4 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v18 = *(type metadata accessor for FacePlacement(0) + 20);
      v19 = (v16 + v18);
      v20 = (v17 + v18);
      v21 = *(v16 + v18);
      v22 = *(v17 + v18);
      if (v21 == v22)
      {
        type metadata accessor for FacePlacement.Location(0);

        if (sub_25B0E2520())
        {
          v23 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
          v25 = v24;
          v27 = v23 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v25 == v26;
          if (v27)
          {

            v4 = v59;
            v6 = v53;
            v15 = v55;
            v14 = v57;
LABEL_33:
            v30 = v4;
            v27 = v15 == v4;
            v4 += 8;
            if (v27)
            {
              goto LABEL_35;
            }

LABEL_34:
            *v15 = *v30;
            goto LABEL_35;
          }

          v28 = sub_25B0E3E30();

          v4 = v59;
          goto LABEL_26;
        }

        v21 = *v19;
        v22 = *v20;
      }

      else
      {
      }

      v4 = v59;
      if (v21 == v22)
      {
        type metadata accessor for FacePlacement.Location(0);
        v28 = sub_25B0E2510();

LABEL_26:
        v6 = v53;
        v15 = v55;
        v14 = v57;
        if ((v28 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      v29 = v21 >= v22;
      v6 = v53;
      v15 = v55;
      v14 = v57;
      if (v29)
      {
        goto LABEL_33;
      }

LABEL_29:
      v30 = v6;
      v27 = v15 == v6;
      v6 += 8;
      if (!v27)
      {
        goto LABEL_34;
      }

LABEL_35:
      v15 += 8;
    }

    while (v4 < v14 && v6 < v5);
  }

  v6 = v15;
LABEL_73:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

void *sub_25B057C2C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_25B0E3CC0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_25B0B32DC(v3, 0);
  sub_25B057E54((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_25B057CC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25B05859C;

  return sub_25B0529B8();
}

uint64_t sub_25B057D7C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25B057D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31330;
  if (!qword_27FA31330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31330);
  }

  return result;
}

uint64_t sub_25B057E54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25B0E3CC0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_25B0E3CC0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25B058150(&qword_27FA31340, &qword_27FA31338, &qword_25B0E6568, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31338, &qword_25B0E6568);
            v9 = sub_25B057FF8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FaceRequest(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_25B057FF8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F860730](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_25B058078;
  }

  __break(1u);
  return result;
}

uint64_t sub_25B058080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v12 = *a5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25B05859C;

  return sub_25B0554F8(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_25B058150(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B058198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B058208(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B05859C;

  return sub_25B065938(a1, v4);
}

uint64_t sub_25B0582C0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25B05859C;

  return sub_25B054FF8(a1, a2, v2);
}

uint64_t sub_25B05836C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B05859C;

  return sub_25B058080(a1, v4, v5, v6, v1 + 5, v7);
}

uint64_t sub_25B058448(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B0584E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25B0498DC;

  return sub_25B053670();
}

uint64_t FaceRequest.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
  v4 = sub_25B0E2750();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_25B058618(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 cachedFile];
  if (v4)
  {
    v5 = [a1 snapshotKey];
    v6 = sub_25B0E3740();
    v8 = v7;

    v9 = [a1 rawSnapshotKey];
    v10 = sub_25B0E3740();
    v12 = v11;

    v13 = [a1 snapshotContext];
    v14 = [a1 snapshot];

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {

    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    *a2 = 0;
    a2[1] = 0;
  }

  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v4;
  a2[6] = v14;
}

uint64_t static FaceRequest.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) == *(a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    return _s15NanoFaceGallery0B9PlacementV1loiySbAC_ACtFZ_0(a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement, a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  }

  else
  {
    return *(a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
  }
}

uint64_t FaceRequest.Result.key.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 FaceRequest.Result.key.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t sub_25B058924@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t FaceRequest.__allocating_init(placement:visible:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  v5 = v4 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  *v5 = 0;
  v6 = MEMORY[0x277D84F90];
  *(v5 + 8) = 0;
  *(v5 + 16) = v6;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  sub_25B059744(a1, v4 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  *(v4 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) = a2;
  return v4;
}

uint64_t FaceRequest.init(placement:visible:)(uint64_t a1, char a2)
{
  v4 = v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  *v4 = 0;
  v5 = MEMORY[0x277D84F90];
  *(v4 + 8) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  sub_25B059744(a1, v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  *(v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) = a2;
  return v2;
}

uint64_t FaceRequest.deinit()
{
  v1 = (v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
  sub_25B058B40(&v1[2]);
  os_unfair_lock_unlock(v1);
  sub_25B0597A8(v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  sub_25B059804(&v1[2]);
  return v0;
}

uint64_t sub_25B058B40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31348, &unk_25B0E6870);
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = v19 - v5;
  v7 = *(a1 + 8);
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v14 = v10(v6, v12, v2);
      sub_25B0598AC(v14, v15, v16);
      v17 = swift_allocError();
      *v18 = 0;
      v19[3] = v17;
      sub_25B0E3870();
      result = (*(v9 - 8))(v6, v2);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t FaceRequest.__deallocating_deinit()
{
  v1 = (v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
  sub_25B058B40(&v1[2]);
  os_unfair_lock_unlock(v1);
  sub_25B0597A8(v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  sub_25B059804(&v1[2]);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t sub_25B058D54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31348, &unk_25B0E6870);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  *a1 = 1;
  v19 = a1;
  v20 = *(a1 + 8);
  v6 = *(v20 + 16);
  if (v6)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v7 = v9;
    v10 = v20 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v11 = *(v8 + 56);
    do
    {
      v12 = v7(v5, v10, v2);
      sub_25B0598AC(v12, v13, v14);
      v15 = swift_allocError();
      *v16 = 1;
      v21 = v15;
      sub_25B0E3870();
      (*(v8 - 8))(v5, v2);
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  *(v19 + 8) = MEMORY[0x277D84F90];
  return result;
}

uint64_t FaceRequest.result.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25B058F08, 0, 0);
}

uint64_t sub_25B058F08()
{
  v1 = v0[3] + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  os_unfair_lock_lock(v1);
  if (*(v1 + 8) == 1)
  {
    sub_25B0598AC(v2, v3, v4);
    swift_allocError();
    *v5 = 1;
LABEL_3:
    swift_willThrow();
    os_unfair_lock_unlock(v1);
    v6 = v0[1];
LABEL_8:

    return v6();
  }

  v7 = *(v1 + 24);
  v0[4] = v7;
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v0[5] = v8;
  v10 = *(v1 + 48);
  v0[6] = v10;
  v11 = *(v1 + 56);
  v0[7] = v11;
  v12 = *(v1 + 64);
  v0[8] = v12;
  v13 = *(v1 + 72);
  v0[9] = v13;
  if (v9)
  {
    *&v14 = v10;
    *(&v14 + 1) = v11;
    v24 = v14;
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v23 = v14;
    v15 = v7;
    v16 = v8;
  }

  else
  {
    v16 = *(v1 + 80);
    if (v16)
    {
      v19 = v16;
      goto LABEL_3;
    }

    v15 = 0;
    v23 = 0u;
    v24 = 0u;
  }

  sub_25B059834(v7, v9, v8, v10, v11, v12, v13);
  os_unfair_lock_unlock(v1);
  if (v9)
  {
    v17 = v0[2];
    *v17 = v15;
    *(v17 + 8) = v9;
    *(v17 + 16) = v16;
    *(v17 + 40) = v23;
    *(v17 + 24) = v24;
    v6 = v0[1];
    goto LABEL_8;
  }

  v20 = swift_task_alloc();
  v0[10] = v20;
  *v20 = v0;
  v20[1] = sub_25B059130;
  v21 = v0[2];
  v22 = v0[3];

  return MEMORY[0x2822008A0](v21, 0, 0, 0x746C75736572, 0xE600000000000000, sub_25B0598A4, v22, &type metadata for FaceRequest.Result);
}

uint64_t sub_25B059130()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_25B0592B4;
  }

  else
  {
    v2 = sub_25B059244;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B059244()
{
  sub_25B0505A8(*(v0 + 32), 0, *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B0592B4()
{
  sub_25B0505A8(*(v0 + 32), 0, *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

void sub_25B059324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31348, &unk_25B0E6870);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  os_unfair_lock_lock(v8);
  (*(v5 + 16))(v7, a1, v4);
  v9 = *(v8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_25B089A64(0, v9[2] + 1, 1, v9);
    *(v8 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_25B089A64((v11 > 1), v12 + 1, 1, v9);
    *(v8 + 16) = v9;
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  os_unfair_lock_unlock(v8);
}

uint64_t sub_25B0594C0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = *(*a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
  if (result == *(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    return _s15NanoFaceGallery0B9PlacementV1loiySbAC_ACtFZ_0(v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement, *a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  }

  return result;
}

BOOL sub_25B0594F8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
  if (v3 == *(v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    LOBYTE(v3) = _s15NanoFaceGallery0B9PlacementV1loiySbAC_ACtFZ_0(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement, v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  }

  return (v3 & 1) == 0;
}

BOOL sub_25B05954C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
  if (v3 == *(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    LOBYTE(v3) = _s15NanoFaceGallery0B9PlacementV1loiySbAC_ACtFZ_0(v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement, *a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  }

  return (v3 & 1) == 0;
}

uint64_t sub_25B0595A0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = *(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
  if (result == *(v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    return _s15NanoFaceGallery0B9PlacementV1loiySbAC_ACtFZ_0(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement, v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  }

  return result;
}

BOOL _s15NanoFaceGallery0B7RequestC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
  v5 = *(v4 + 8);
  os_unfair_lock_unlock(v4);
  v6 = a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
  v7 = *(v6 + 8);
  os_unfair_lock_unlock(v6);
  result = 0;
  if (v5 == v7 && *(a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) == *(a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    v8 = a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
    v9 = a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
    if (MEMORY[0x25F85F260](v8, v9))
    {
      v10 = type metadata accessor for FacePlacement(0);
      if (*(v8 + *(v10 + 20)) == *(v9 + *(v10 + 20)))
      {
        type metadata accessor for FacePlacement.Location(0);
        if (sub_25B0E2520())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25B0596E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FacePlacement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B059744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FacePlacement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0597A8(uint64_t a1)
{
  v2 = type metadata accessor for FacePlacement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25B059834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {

    v9 = a5;
    v10 = a6;

    v11 = a7;
  }
}

unint64_t sub_25B0598AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31358;
  if (!qword_27FA31358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31358);
  }

  return result;
}

uint64_t sub_25B059948(uint64_t a1)
{
  result = sub_25B059A34(&qword_27FA31360, type metadata accessor for FaceRequest, &protocol conformance descriptor for FaceRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for FaceRequest(uint64_t a1)
{
  result = qword_27FA31370;
  if (!qword_27FA31370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B059A34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B059A84(uint64_t a1)
{
  result = type metadata accessor for FacePlacement(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
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

uint64_t sub_25B059B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25B059BB8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_15NanoFaceGallery0B7RequestC6ResultVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_25B059C58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_25B059CA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B059D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31388;
  if (!qword_27FA31388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31388);
  }

  return result;
}

uint64_t sub_25B059D60()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31390);
  __swift_project_value_buffer(v0, qword_27FA31390);
  return sub_25B0E2960();
}

uint64_t sub_25B059DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v5[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[39] = v8;
  *v8 = v5;
  v8[1] = sub_25B059F7C;

  return sub_25B05F058(v8, v9);
}

uint64_t sub_25B059F7C(uint64_t a1)
{
  *(*v2 + 320) = a1;

  if (v1)
  {

    v3 = sub_25B05C52C;
  }

  else
  {
    v3 = sub_25B05A098;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B05A098()
{
  if (v0[40])
  {
    if (sub_25B0E39F0())
    {
      v1 = swift_task_alloc();
      v0[49] = v1;
      *v1 = v0;
      v2 = sub_25B05AD80;
    }

    else
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      v0[41] = Strong;
      v1 = swift_task_alloc();
      v0[42] = v1;
      *v1 = v0;
      if (Strong)
      {
        v2 = sub_25B05A370;
      }

      else
      {
        v2 = sub_25B05AAA8;
      }
    }

    v1[1] = v2;
    v14 = v0[30];

    return sub_25B05CA70(v14);
  }

  else
  {
    v3 = v0[36];
    v4 = v0[37];
    v5 = v0[35];
    v6 = v0[30];
    v7 = v6[10];
    v8 = v6[11];
    __swift_project_boxed_opaque_existential_1(v6 + 7, v7);
    (*(v8 + 32))(v7, v8);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_25B058448(v0[35], &qword_27FA313B8, &unk_25B0E72A0);

      v9 = v0[1];

      return v9();
    }

    else
    {
      (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
      sub_25B0E39A0();
      swift_beginAccess();
      v12 = swift_task_alloc();
      v0[52] = v12;
      *v12 = v0;
      v12[1] = sub_25B05B058;
      v13 = v0[32];

      return MEMORY[0x2822003E8](v0 + 72, 0, 0, v13);
    }
  }
}

uint64_t sub_25B05A370(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = a2;

  return MEMORY[0x2822009F8](sub_25B05A470, 0, 0);
}

uint64_t sub_25B05A470()
{
  v19 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31390);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[44];
  if (v4)
  {
    v6 = v0[43];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = sub_25B04BE04(v6, v5, &v18);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_25B03D000, v2, v3, "Auto-updating provider for %s storing initial update", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[40];
  v11 = v0[30];
  v12 = v11[15];
  v13 = v11[16];
  __swift_project_boxed_opaque_existential_1(v11 + 12, v12);
  v0[22] = type metadata accessor for PreloadedSnapshot();
  v0[23] = &off_286C5A298;
  v0[19] = v10;
  v14 = *(v13 + 16);

  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[45] = v15;
  *v15 = v0;
  v15[1] = sub_25B05A718;

  return (v17)(v0 + 8, v0 + 19, v12, v13);
}

uint64_t sub_25B05A718()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {

    v3 = sub_25B05C6FC;
  }

  else
  {
    v4 = v2[12];
    v5 = v2[13];

    __swift_destroy_boxed_opaque_existential_1(v2 + 19);
    v3 = sub_25B05A864;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_25B05A864()
{
  v1 = v0[46];
  v2 = v0[41];
  os_unfair_lock_lock(v2 + 4);
  sub_25B05D300(&v2[6]);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v2 + 4);

    v3 = v0[36];
    v4 = v0[37];
    v5 = v0[35];
    v6 = v0[30];
    v7 = v6[10];
    v8 = v6[11];
    __swift_project_boxed_opaque_existential_1(v6 + 7, v7);
    (*(v8 + 32))(v7, v8);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_25B058448(v0[35], &qword_27FA313B8, &unk_25B0E72A0);

      v9 = v0[1];

      v9();
    }

    else
    {
      (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
      sub_25B0E39A0();
      swift_beginAccess();
      v10 = swift_task_alloc();
      v0[52] = v10;
      *v10 = v0;
      v10[1] = sub_25B05B058;
      v11 = v0[32];

      MEMORY[0x2822003E8](v0 + 72, 0, 0, v11);
    }
  }
}

uint64_t sub_25B05AAA8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = a2;

  return MEMORY[0x2822009F8](sub_25B05ABA8, 0, 0);
}

uint64_t sub_25B05ABA8()
{
  v13 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31390);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[48];
  if (v4)
  {
    v6 = v0[47];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_25B04BE04(v6, v5, &v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_25B03D000, v2, v3, "Initial auto-updating provider for %s vanished", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_25B05AD80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = a2;

  return MEMORY[0x2822009F8](sub_25B05AE80, 0, 0);
}

uint64_t sub_25B05AE80()
{
  v13 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31390);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[51];
  if (v4)
  {
    v6 = v0[50];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_25B04BE04(v6, v5, &v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_25B03D000, v2, v3, "Initial provider updates for %s cancelled", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_25B05B058()
{

  return MEMORY[0x2822009F8](sub_25B05B154, 0, 0);
}

uint64_t sub_25B05B154()
{
  if (*(v0 + 576) == 1)
  {
    v2 = *(v0 + 296);
    v1 = *(v0 + 304);
    v3 = *(v0 + 288);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    (*(v2 + 8))(v1, v3);

    v4 = *(v0 + 8);

    return v4();
  }

  if (sub_25B0E39F0())
  {
    v6 = swift_task_alloc();
    *(v0 + 552) = v6;
    *v6 = v0;
    v7 = sub_25B05C1DC;
LABEL_12:
    v6[1] = v7;
    v11 = *(v0 + 240);

    return sub_25B05CA70(v11);
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 424) = Strong;
  if (!Strong)
  {
    v6 = swift_task_alloc();
    *(v0 + 528) = v6;
    *v6 = v0;
    v7 = sub_25B05BE8C;
    goto LABEL_12;
  }

  v9 = swift_task_alloc();
  *(v0 + 432) = v9;
  *v9 = v0;
  v9[1] = sub_25B05B34C;

  return sub_25B05F058(v9, v10);
}

uint64_t sub_25B05B34C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 440) = a1;

  if (v1)
  {

LABEL_3:

    return MEMORY[0x2822009F8](sub_25B05BAF0, 0, 0);
  }

  if (!a1)
  {
    goto LABEL_3;
  }

  v6 = swift_task_alloc();
  *(v4 + 448) = v6;
  *v6 = v5;
  v6[1] = sub_25B05B4DC;
  v7 = *(v4 + 240);

  return sub_25B05CA70(v7);
}

uint64_t sub_25B05B4DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 456) = a1;
  *(v3 + 464) = a2;

  return MEMORY[0x2822009F8](sub_25B05B5DC, 0, 0);
}

uint64_t sub_25B05B5DC()
{
  v19 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31390);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[58];
  if (v4)
  {
    v6 = v0[57];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = sub_25B04BE04(v6, v5, &v18);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_25B03D000, v2, v3, "Auto-updating provider for %s storing snapshot", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[55];
  v11 = v0[30];
  v12 = v11[15];
  v13 = v11[16];
  __swift_project_boxed_opaque_existential_1(v11 + 12, v12);
  v0[17] = type metadata accessor for PreloadedSnapshot();
  v0[18] = &off_286C5A298;
  v0[14] = v10;
  v14 = *(v13 + 16);

  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[59] = v15;
  *v15 = v0;
  v15[1] = sub_25B05B884;

  return (v17)(v0 + 2, v0 + 14, v12, v13);
}

uint64_t sub_25B05B884()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {

    v3 = sub_25B05C948;
  }

  else
  {
    v4 = v2[6];
    v5 = v2[7];

    __swift_destroy_boxed_opaque_existential_1(v2 + 14);
    v3 = sub_25B05B9D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_25B05B9D0()
{
  v1 = v0[60];
  v2 = v0[53];
  os_unfair_lock_lock(v2 + 4);
  sub_25B05D300(&v2[6]);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v2 + 4);

    v3 = swift_task_alloc();
    v0[52] = v3;
    *v3 = v0;
    v3[1] = sub_25B05B058;
    v4 = v0[32];

    MEMORY[0x2822003E8](v0 + 72, 0, 0, v4);
  }
}

uint64_t sub_25B05BAF0()
{
  v0[61] = __swift_project_boxed_opaque_existential_1((v0[30] + 16), *(v0[30] + 40));
  sub_25B0E3900();
  v0[62] = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05BB98, v2, v1);
}

uint64_t sub_25B05BB98()
{
  v1 = v0[61];

  v2 = *v1;
  v3 = [v2 dailySnapshotKey];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3;
  sub_25B0E3740();
  v8 = v7;

  v3 = [v2 unsafeDailySnapshotKey];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v9 = v3;
  v0[63] = v8;
  v10 = sub_25B0E3740();
  v12 = v11;

  v0[64] = v10;
  v0[65] = v12;
  v3 = sub_25B05BC7C;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25B05BC7C()
{
  v14 = v0;

  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31390);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[65];
  if (v4)
  {
    v6 = v0[64];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_25B04BE04(v6, v5, &v13);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_25B03D000, v2, v3, "Provider snapshot for %s failed to fetch", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v0[52] = v10;
  *v10 = v0;
  v10[1] = sub_25B05B058;
  v11 = v0[32];

  return MEMORY[0x2822003E8](v0 + 72, 0, 0, v11);
}

uint64_t sub_25B05BE8C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 536) = a1;
  *(v3 + 544) = a2;

  return MEMORY[0x2822009F8](sub_25B05BF90, 0, 0);
}

uint64_t sub_25B05BF90()
{
  v25 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31390);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[68];
  if (v4)
  {
    v6 = v0[67];
    v7 = v0[37];
    v22 = v0[36];
    v23 = v0[38];
    v8 = v0[33];
    v21 = v0[34];
    v9 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v12 = sub_25B04BE04(v6, v5, &v24);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_25B03D000, v2, v3, "Auto-updating provider for %s vanished", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v10, -1, -1);

    (*(v8 + 8))(v21, v9);
    (*(v7 + 8))(v23, v22);
  }

  else
  {
    v14 = v0[37];
    v13 = v0[38];
    v15 = v0[36];
    v17 = v0[33];
    v16 = v0[34];
    v18 = v0[32];

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_25B05C1DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 560) = a1;
  *(v3 + 568) = a2;

  return MEMORY[0x2822009F8](sub_25B05C2E0, 0, 0);
}

uint64_t sub_25B05C2E0()
{
  v25 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31390);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[71];
  if (v4)
  {
    v6 = v0[70];
    v7 = v0[37];
    v22 = v0[36];
    v23 = v0[38];
    v8 = v0[33];
    v21 = v0[34];
    v9 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v12 = sub_25B04BE04(v6, v5, &v24);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_25B03D000, v2, v3, "Provider updates for %s cancelled", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v10, -1, -1);

    (*(v8 + 8))(v21, v9);
    (*(v7 + 8))(v23, v22);
  }

  else
  {
    v14 = v0[37];
    v13 = v0[38];
    v15 = v0[36];
    v17 = v0[33];
    v16 = v0[34];
    v18 = v0[32];

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_25B05C52C()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[30];
  v5 = v4[10];
  v6 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v5);
  (*(v6 + 32))(v5, v6);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25B058448(v0[35], &qword_27FA313B8, &unk_25B0E72A0);

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
    sub_25B0E39A0();
    swift_beginAccess();
    v9 = swift_task_alloc();
    v0[52] = v9;
    *v9 = v0;
    v9[1] = sub_25B05B058;
    v10 = v0[32];

    return MEMORY[0x2822003E8](v0 + 72, 0, 0, v10);
  }
}

uint64_t sub_25B05C6FC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  v1 = v0[41];
  os_unfair_lock_lock(v1 + 4);
  sub_25B05D300(&v1[6]);
  os_unfair_lock_unlock(v1 + 4);

  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[35];
  v5 = v0[30];
  v6 = v5[10];
  v7 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v6);
  (*(v7 + 32))(v6, v7);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_25B058448(v0[35], &qword_27FA313B8, &unk_25B0E72A0);

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
    sub_25B0E39A0();
    swift_beginAccess();
    v10 = swift_task_alloc();
    v0[52] = v10;
    *v10 = v0;
    v10[1] = sub_25B05B058;
    v11 = v0[32];

    return MEMORY[0x2822003E8](v0 + 72, 0, 0, v11);
  }
}

uint64_t sub_25B05C948()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v1 = v0[53];
  os_unfair_lock_lock(v1 + 4);
  sub_25B05D300(&v1[6]);
  os_unfair_lock_unlock(v1 + 4);

  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_25B05B058;
  v3 = v0[32];

  return MEMORY[0x2822003E8](v0 + 72, 0, 0, v3);
}

uint64_t sub_25B05CA90()
{
  v0[3] = __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  sub_25B0E3900();
  v0[4] = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05CB38, v2, v1);
}

uint64_t sub_25B05CB38()
{
  v1 = v0[3];

  v2 = *v1;
  v3 = [v2 dailySnapshotKey];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3;
  sub_25B0E3740();
  v8 = v7;

  v3 = [v2 unsafeDailySnapshotKey];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v9 = v3;
  v0[5] = v8;
  v10 = sub_25B0E3740();
  v12 = v11;

  v0[6] = v10;
  v0[7] = v12;
  v3 = sub_25B05CC18;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25B05CC18()
{

  v1 = v0[1];
  v2 = v0[6];
  v3 = v0[7];

  return v1(v2, v3);
}

uint64_t sub_25B05CC7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v8 - v2;
  sub_25B049F48(*(v0 + 40) + 16, v9);
  v4 = sub_25B0E3940();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_25B049F48(v9, v8);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_25B03F164(v8, v5 + 32);
  sub_25B052F48(0, 0, v3, &unk_25B0E6958, v5);

  os_unfair_lock_lock((v0 + 16));
  sub_25B05D12C((v0 + 24));
  os_unfair_lock_unlock((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_25B05EB70(v0 + 24);

  return v0;
}

uint64_t sub_25B05CDFC()
{
  *(v0 + 24) = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_25B0E3900();
  *(v0 + 32) = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05CEA0, v2, v1);
}

uint64_t sub_25B05CEA0()
{
  v1 = v0[3];

  v2 = *v1;
  v3 = [v2 dailySnapshotKey];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3;
  sub_25B0E3740();
  v8 = v7;

  v3 = [v2 unsafeDailySnapshotKey];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v9 = v3;
  v0[5] = v8;
  v10 = sub_25B0E3740();
  v12 = v11;

  v0[6] = v10;
  v0[7] = v12;
  v3 = sub_25B05CF80;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25B05CF80()
{
  v13 = v0;

  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31390);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_25B04BE04(v6, v5, &v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_25B03D000, v2, v3, "Auto-updating provider %s went away", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_25B05D12C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  result = *a1;
  if (*a1)
  {
    result = sub_25B0E39E0();
  }

  v7 = a1[1];
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v5, v12, v2);
      sub_25B0E3990();
      result = (*(v9 - 8))(v5, v2);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_25B05D28C()
{
  sub_25B05CC7C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25B05D300(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v2 = *(v42 - 8);
  v3 = MEMORY[0x28223BE20](v42);
  v41 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = MEMORY[0x28223BE20](v6);
  v44 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v27 = a1;
  result = *(a1 + 8);
  v39 = *(result + 16);
  if (v39)
  {
    v13 = 0;
    v35 = (v2 + 32);
    v36 = v9 + 16;
    v34 = (v2 + 88);
    v33 = *MEMORY[0x277D85758];
    v32 = *MEMORY[0x277D85750];
    v30 = *MEMORY[0x277D85748];
    v28 = (v9 + 8);
    v29 = (v2 + 8);
    v43 = (v9 + 32);
    v14 = MEMORY[0x277D84F90];
    v31 = v6;
    v37 = result;
    v38 = v9;
    while (1)
    {
      if (v13 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = *(v9 + 72);
      (*(v9 + 16))(v11, result + v15 + v16 * v13, v6);
      v17 = v40;
      sub_25B0E3970();
      v19 = v41;
      v18 = v42;
      (*v35)(v41, v17, v42);
      v20 = (*v34)(v19, v18);
      if (v20 == v33 || v20 == v32)
      {
        goto LABEL_12;
      }

      if (v20 != v30)
      {
        break;
      }

      (*v28)(v11, v6);
LABEL_4:
      ++v13;
      v9 = v38;
      result = v37;
      if (v39 == v13)
      {
        goto LABEL_18;
      }
    }

    (*v29)(v41, v42);
LABEL_12:
    v22 = *v43;
    (*v43)(v44, v11, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B08C168(0, *(v14 + 16) + 1, 1);
      v14 = v45;
    }

    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_25B08C168((v24 > 1), v25 + 1, 1);
      v14 = v45;
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + v15 + v25 * v16;
    v6 = v31;
    v22(v26, v44, v31);
    goto LABEL_4;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  *(v27 + 8) = v14;
  return result;
}

uint64_t sub_25B05D6D0(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[8] = sub_25B0E3900();
  v3[9] = sub_25B0E38F0();
  v5 = sub_25B0E3850();
  v3[10] = v5;
  v3[11] = v4;

  return MEMORY[0x2822009F8](sub_25B05D76C, v5, v4);
}

uint64_t sub_25B05D76C()
{
  v1 = *(v0[7] + 40);
  v0[12] = v1;
  sub_25B049F48(v1 + 16, (v0 + 2));
  v0[13] = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[14] = sub_25B0E38F0();
  v3 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05D81C, v3, v2);
}

uint64_t sub_25B05D81C()
{
  v1 = v0[13];

  v2 = *v1;
  v3 = [v2 dailySnapshotKey];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3;
  sub_25B0E3740();
  v8 = v7;

  v3 = [v2 unsafeDailySnapshotKey];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v9 = v3;
  v0[15] = v8;
  v10 = sub_25B0E3740();
  v12 = v11;

  v0[16] = v10;
  v0[17] = v12;
  v4 = v0[10];
  v5 = v0[11];
  v3 = sub_25B05D8F8;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25B05D8F8()
{
  v12 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  v0[18] = __swift_project_value_buffer(v1, qword_27FA31390);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_25B04BE04(v5, v4, &v11);
    _os_log_impl(&dword_25B03D000, v2, v3, "Auto-updating provider for %s wants snapshot", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_25B05DAC8;

  return sub_25B05F058(v8, v9);
}

uint64_t sub_25B05DAC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  if (v1)
  {
    v7 = sub_25B05DDC4;
  }

  else
  {
    v7 = sub_25B05DC0C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25B05DC0C()
{
  v13 = v0;

  swift_retain_n();

  v1 = sub_25B0E2950();
  v2 = sub_25B0E3A50();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v5 = v0[16];
    v4 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    v8 = sub_25B04BE04(v5, v4, &v12);

    *(v6 + 4) = v8;
    *(v6 + 12) = 1024;

    *(v6 + 14) = v3 != 0;

    _os_log_impl(&dword_25B03D000, v1, v2, "Auto-updating provider for %s vending snapshot %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  else
  {
  }

  v9 = v0[1];
  v10 = v0[20];

  return v9(v10);
}

uint64_t sub_25B05DDC4()
{
  v17 = v0;
  v1 = v0[21];

  v2 = v1;
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v7 = v0[16];
    v6 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315394;
    v11 = sub_25B04BE04(v7, v6, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_25B03D000, v3, v4, "Auto-updating provider for %s failed to vend snapshot %@", v8, 0x16u);
    sub_25B058448(v9, &unk_27FA31850, &qword_25B0E74B0);
    MEMORY[0x25F8613E0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25F8613E0](v10, -1, -1);
    MEMORY[0x25F8613E0](v8, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_25B05DFAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v33 - v5);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v39 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v9);
  v38 = (&v33 - v11);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v33 - v15;
  v17 = sub_25B0E3940();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v1;

  sub_25B052F48(0, 0, v16, &unk_25B0E6930, v18);

  *v6 = 1;
  (*(v4 + 104))(v6, *MEMORY[0x277D85768], v3);
  v34 = v13;
  sub_25B0E3950();
  (*(v4 + 8))(v6, v3);
  v19 = *(v7 + 16);
  v20 = v38;
  v21 = v13;
  v22 = v36;
  v19(v38, v21, v36);
  v23 = *(v7 + 80);
  v24 = swift_allocObject();
  v37 = v7;
  v35 = *(v7 + 32);
  v35(v24 + ((v23 + 16) & ~v23), v20, v22);
  v25 = v34;
  sub_25B0E3960();
  os_unfair_lock_lock(v2 + 4);
  v19(v39, v25, v22);
  v26 = *&v2[8]._os_unfair_lock_opaque;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v2;
  *&v2[8]._os_unfair_lock_opaque = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_25B089A40(0, v26[2] + 1, 1, v26);
    *&v38[8]._os_unfair_lock_opaque = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_25B089A40((v28 > 1), v29 + 1, 1, v26);
    *&v38[8]._os_unfair_lock_opaque = v26;
  }

  v26[2] = v29 + 1;
  v30 = v37;
  v35(v26 + ((v23 + 32) & ~v23) + *(v37 + 72) * v29, v39, v22);
  os_unfair_lock_unlock(v38 + 4);
  (*(v30 + 8))(v25, v22);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  return (*(*(v31 - 8) + 56))(v40, 0, 1, v31);
}

uint64_t sub_25B05E490()
{
  sub_25B049F48(*(v0[7] + 40) + 16, (v0 + 2));
  v0[8] = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_25B0E3900();
  v0[9] = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05E548, v2, v1);
}

uint64_t sub_25B05E548()
{
  v1 = v0[8];

  v2 = *v1;
  v3 = [v2 dailySnapshotKey];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3;
  sub_25B0E3740();
  v8 = v7;

  v3 = [v2 unsafeDailySnapshotKey];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v9 = v3;
  v0[10] = v8;
  v10 = sub_25B0E3740();
  v12 = v11;

  v0[11] = v10;
  v0[12] = v12;
  v3 = sub_25B05E628;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25B05E628()
{
  v13 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31390);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  if (v4)
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_25B04BE04(v6, v5, &v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_25B03D000, v2, v3, "Auto-updating updates requested for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_25B05E7DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_25B05E870;

  return sub_25B05D6D0(v2, v3);
}

uint64_t sub_25B05E870(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_25B05E9A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B0498DC;

  return sub_25B05E470(a1, v4, v5, v6);
}

uint64_t sub_25B05EAC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B05859C;

  return sub_25B05CDDC(a1, v4, v5, v1 + 32);
}

uint64_t sub_25B05EBA0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  *(v1 + 16) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v1 + 24) = 0;
  *(v1 + 32) = v6;
  *(v1 + 40) = a1;

  os_unfair_lock_lock((v1 + 16));
  v7 = sub_25B0E3940();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = v8;

  *(v1 + 24) = sub_25B052F48(0, 0, v5, &unk_25B0E6968, v9);

  os_unfair_lock_unlock((v1 + 16));
  return v1;
}

uint64_t sub_25B05ED18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B05859C;

  return sub_25B059DE0(a1, v4, v5, v7, v6);
}

uint64_t sub_25B05EDD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_25B068A88(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_25B065D8C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_25B069B20();
        v11 = v13;
      }

      result = sub_25B06810C(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_25B05EE98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25B068DA0(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_25B0E23C0();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_25B065C64(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_25B069EFC();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_25B0E23C0();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_25B06859C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_25B0E23C0();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_25B05F058(uint64_t a1, uint64_t a2)
{
  v3[24] = v2;
  v3[25] = sub_25B0E3900();
  v3[26] = sub_25B0E38F0();
  v4 = swift_task_alloc();
  v3[27] = v4;
  *v4 = v3;
  v4[1] = sub_25B05F108;

  return sub_25B062484();
}

uint64_t sub_25B05F108(uint64_t a1)
{
  v2 = *v1;
  v2[28] = a1;

  v4 = sub_25B0E3850();
  v2[29] = v4;
  v2[30] = v3;

  return MEMORY[0x2822009F8](sub_25B05F254, v4, v3);
}

uint64_t sub_25B05F254()
{
  v0[31] = __swift_project_boxed_opaque_existential_1((v0[24] + 16), *(v0[24] + 40));
  v0[32] = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05F2F0, v2, v1);
}

uint64_t sub_25B05F2F0()
{
  v1 = v0[31];

  v2 = *v1;
  v3 = [v2 dailySnapshotKey];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3;
  sub_25B0E3740();
  v8 = v7;

  v0[33] = v8;
  v3 = [v2 unsafeDailySnapshotKey];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v9 = v3;
  v10 = sub_25B0E3740();
  v12 = v11;

  v0[34] = v10;
  v0[35] = v12;
  v4 = v0[29];
  v5 = v0[30];
  v3 = sub_25B05F3CC;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25B05F3CC()
{
  v22 = v0;
  if (v0[28])
  {

    if (qword_27FA30CA0 != -1)
    {
      swift_once();
    }

    v1 = sub_25B0E2970();
    __swift_project_value_buffer(v1, qword_27FA313C0);

    v2 = sub_25B0E2950();
    v3 = sub_25B0E3A50();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[35];
    if (v4)
    {
      v6 = v0[34];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;

      v9 = sub_25B04BE04(v6, v5, &v21);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_25B03D000, v2, v3, "Using preloaded snapshot for %s…", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x25F8613E0](v8, -1, -1);
      MEMORY[0x25F8613E0](v7, -1, -1);
    }

    else
    {
    }

    v18 = v0[28];
    v19 = v0[1];

    return v19(v18);
  }

  else
  {
    v10 = v0[24];
    v11 = v10[10];
    v0[36] = v11;
    v12 = v10[11];
    v0[37] = v12;
    __swift_project_boxed_opaque_existential_1(v10 + 7, v11);
    v13 = *(v12 + 24);
    v0[38] = swift_getAssociatedTypeWitness();
    v14 = sub_25B0E3B10();
    v0[39] = v14;
    v0[40] = *(v14 - 8);
    v15 = swift_task_alloc();
    v0[41] = v15;
    v20 = (v13 + *v13);
    v16 = swift_task_alloc();
    v0[42] = v16;
    *v16 = v0;
    v16[1] = sub_25B05F754;

    return v20(v15, v11, v12);
  }
}

uint64_t sub_25B05F754()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {

    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_25B060644;
  }

  else
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_25B05F87C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25B05F87C()
{
  v27 = v0;
  v1 = v0[41];
  v2 = v0[38];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[39];
    v5 = v0[40];

    (*(v5 + 8))(v1, v4);

    if (qword_27FA30CA0 != -1)
    {
      swift_once();
    }

    v6 = sub_25B0E2970();
    __swift_project_value_buffer(v6, qword_27FA313C0);

    v7 = sub_25B0E2950();
    v8 = sub_25B0E3A50();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[35];
    if (v9)
    {
      v11 = v0[34];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315138;

      v14 = sub_25B04BE04(v11, v10, &v26);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_25B03D000, v7, v8, "Generator didn't generate snapshot for %s…", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x25F8613E0](v13, -1, -1);
      MEMORY[0x25F8613E0](v12, -1, -1);
    }

    else
    {
    }

    v24 = v0[1];

    return v24(0);
  }

  else
  {
    v0[22] = v2;
    v0[23] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 19);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

    sub_25B03F164((v0 + 19), (v0 + 14));
    if (qword_27FA30CA0 != -1)
    {
      swift_once();
    }

    v16 = sub_25B0E2970();
    v0[44] = __swift_project_value_buffer(v16, qword_27FA313C0);

    v17 = sub_25B0E2950();
    v18 = sub_25B0E3A50();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[34];
      v19 = v0[35];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;

      v23 = sub_25B04BE04(v20, v19, &v26);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_25B03D000, v17, v18, "Storing snapshot for %s…", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x25F8613E0](v22, -1, -1);
      MEMORY[0x25F8613E0](v21, -1, -1);
    }

    return MEMORY[0x2822009F8](sub_25B05FCC8, 0, 0);
  }
}

uint64_t sub_25B05FCC8()
{
  v1 = *(v0 + 192);
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *v4 = v0;
  v4[1] = sub_25B05FDFC;

  return v6(v0 + 16, v0 + 112, v2, v3);
}

uint64_t sub_25B05FDFC()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_25B060148;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *(v2 + 232);
    v5 = *(v2 + 240);
    v3 = sub_25B05FF18;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25B05FF18(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(v1 + 376) = v3;
  *(v1 + 384) = v5;
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *(v1 + 64) = v2;
  *(v1 + 392) = v6;
  *(v1 + 400) = v7;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 96) = v6;
  *(v1 + 104) = v7;
  type metadata accessor for PreloadedSnapshot();
  swift_allocObject();

  v8 = v6;
  v9 = v7;
  v10 = swift_task_alloc();
  *(v1 + 408) = v10;
  *v10 = v1;
  v10[1] = sub_25B06001C;

  return sub_25B060778((v1 + 64));
}

uint64_t sub_25B06001C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_25B060448;
  }

  else
  {
    v4[52] = a1;
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_25B060224;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_25B060148()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return MEMORY[0x2822009F8](sub_25B0601B8, v1, v2);
}

uint64_t sub_25B0601B8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B060224()
{
  v17 = v0;
  v1 = v0[52];

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[35];
  if (v4)
  {
    v13 = v0[34];
    v15 = v0[50];
    v8 = swift_slowAlloc();
    v14 = v6;
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 67109378;
    *(v8 + 4) = v1 != 0;

    *(v8 + 8) = 2080;

    v10 = sub_25B04BE04(v13, v7, &v16);

    *(v8 + 10) = v10;
    _os_log_impl(&dword_25B03D000, v2, v3, "Returning snapshot %{BOOL}d for %s…", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25F8613E0](v9, -1, -1);
    MEMORY[0x25F8613E0](v8, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v11 = v0[1];

  return v11(v1);
}

uint64_t sub_25B060448()
{
  v16 = v0;

  v1 = sub_25B0E2950();
  v2 = sub_25B0E3A50();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[35];
  if (v3)
  {
    v14 = v0[49];
    v7 = v0[34];
    v13 = v0[50];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 67109378;
    *(v8 + 8) = 2080;

    v10 = sub_25B04BE04(v7, v6, &v15);

    *(v8 + 10) = v10;
    _os_log_impl(&dword_25B03D000, v1, v2, "Returning snapshot %{BOOL}d for %s…", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25F8613E0](v9, -1, -1);
    MEMORY[0x25F8613E0](v8, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v11 = v0[1];

  return v11(0);
}

uint64_t sub_25B060644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B0606B4()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA313C0);
  __swift_project_value_buffer(v0, qword_27FA313C0);
  return sub_25B0E2960();
}

id sub_25B060734()
{
  result = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
  dword_27FA313D8 = 0;
  qword_27FA313E0 = result;
  unk_27FA313E8 = MEMORY[0x277D84F98];
  return result;
}

uint64_t sub_25B060778(_OWORD *a1)
{
  v3 = v1;
  *(v2 + 120) = a1;
  *(v2 + 128) = v3;
  *(v2 + 136) = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  *(v2 + 144) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 48) = a1[2];

  return MEMORY[0x2822009F8](sub_25B060850, 0, 0);
}

uint64_t sub_25B060850()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *v4;
  v6 = v4[1];
  *(v3 + 56) = v4[2];
  *(v3 + 40) = v6;
  *(v3 + 24) = v5;
  v7 = sub_25B0E3940();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v9 = *(v0 + 32);
  *(v8 + 32) = *(v0 + 16);
  *(v8 + 48) = v9;
  *(v8 + 64) = *(v0 + 48);
  *(v8 + 80) = v2;
  sub_25B065BE8(v0 + 16, v0 + 64);
  v10 = sub_25B06143C(0, 0, v1, &unk_25B0E6B18, v8);
  *(v0 + 152) = v10;
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  v12 = sub_25B046E60(0, &qword_27FA313F0, 0x277D755B8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F40, &unk_25B0E6060);
  *v11 = v0;
  v11[1] = sub_25B0609FC;
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 112, v10, v12, v13, v14);
}

uint64_t sub_25B0609FC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_25B060B8C;
  }

  else
  {
    v2 = sub_25B060B10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B060B10()
{
  v1 = v0[16];

  *(v1 + 16) = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2(v3);
}

uint64_t sub_25B060B8C()
{
  v1 = *(v0 + 128);

  v2 = *(v1 + 56);
  v3 = *(v1 + 64);

  swift_deallocPartialClassInstance();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25B060C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = sub_25B0E23C0();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B060D00, 0, 0);
}

uint64_t sub_25B060D00()
{
  v10 = v0;
  v1 = [*(v0[4] + 40) fileURL];
  sub_25B0E23A0();

  if (qword_27FA30CA8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  os_unfair_lock_lock(&dword_27FA313D8);
  sub_25B060E7C(&qword_27FA313E0, v2, v0 + 2, &v9);
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = v0[3];
  os_unfair_lock_unlock(&dword_27FA313D8);
  (*(v4 + 8))(v3, v5);
  *v6 = v9;

  v7 = v0[1];

  return v7();
}

void sub_25B060E7C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X8>)
{
  v66 = a3;
  v68 = a4;
  v6 = sub_25B0E23C0();
  v67 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v59 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v59 - v13;
  v15 = *a1;
  v16 = sub_25B0E2360();
  v17 = [v15 countForObject_];

  if (v17)
  {
    v18 = v68;
    v19 = sub_25B0E2360();
    [v15 addObject_];

    v20 = *(a1 + 8);
    if (*(v20 + 16))
    {
      v21 = sub_25B065C64(a2);
      if (v22)
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        *v18 = v23;
        v24 = v23;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  v64 = v12;
  v65 = v6;
  v63 = v9;
  if (qword_27FA30CA0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v25 = sub_25B0E2970();
  v26 = __swift_project_value_buffer(v25, qword_27FA313C0);
  v27 = v67;
  v28 = v14;
  v29 = v14;
  v30 = a2;
  v31 = v65;
  v60 = *(v67 + 16);
  v61 = v67 + 16;
  v60(v29, a2, v65);
  v59[1] = v26;
  v32 = sub_25B0E2950();
  v33 = sub_25B0E3A50();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v70 = v35;
    *v34 = 136315138;
    sub_25B06B48C(&qword_27FA31400, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v36 = sub_25B0E3E20();
    v38 = v37;
    v62 = *(v67 + 8);
    v62(v28, v65);
    v39 = sub_25B04BE04(v36, v38, &v70);
    v31 = v65;

    *(v34 + 4) = v39;
    _os_log_impl(&dword_25B03D000, v32, v33, "Preloading %s…", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x25F8613E0](v35, -1, -1);
    MEMORY[0x25F8613E0](v34, -1, -1);
  }

  else
  {

    v62 = *(v27 + 8);
    v62(v28, v31);
  }

  v40 = sub_25B0E2360();
  v41 = [objc_opt_self() imageFromSnapshotResultFileURL_];

  v45 = v66;
  v46 = v64;
  if (v41)
  {
    v47 = v60;
    v60(v64, v30, v31);
    v66 = v41;
    sub_25B05EE98(v41, v46);
    v48 = v63;
    v47(v63, v30, v31);
    v49 = sub_25B0E2950();
    v50 = sub_25B0E3A50();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v70 = v52;
      *v51 = 136315138;
      sub_25B06B48C(&qword_27FA31400, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v53 = sub_25B0E3E20();
      v55 = v54;
      v62(v48, v31);
      v56 = sub_25B04BE04(v53, v55, &v70);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_25B03D000, v49, v50, "Preloaded %s!", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x25F8613E0](v52, -1, -1);
      MEMORY[0x25F8613E0](v51, -1, -1);

      v57 = v66;
    }

    else
    {

      v57 = v66;
      v62(v48, v31);
    }

    *v68 = v57;
  }

  else
  {
    sub_25B065D38(v42, v43, v44);
    v58 = swift_allocError();
    swift_willThrow();
    *v45 = v58;
    v69 = 1;
  }
}

uint64_t sub_25B06143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25B058198(a3, v22 - v9);
  v11 = sub_25B0E3940();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25B058448(v10, &qword_27FA31990, &qword_25B0E6920);
  }

  else
  {
    sub_25B0E3930();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25B0E3850();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a3;
      v18 = sub_25B0E3770() + 32;
      sub_25B046E60(0, &qword_27FA313F0, 0x277D755B8);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_25B058448(v22[0], &qword_27FA31990, &qword_25B0E6920);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25B058448(a3, &qword_27FA31990, &qword_25B0E6920);
  sub_25B046E60(0, &qword_27FA313F0, 0x277D755B8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25B061704()
{
  v1 = v0;
  v2 = sub_25B0E23C0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = [*(v0 + 64) fileURL];
  sub_25B0E23A0();

  if (qword_27FA30CA8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27FA313D8);
  v10 = qword_27FA313E0;
  v11 = sub_25B0E2360();
  [v10 removeObject_];

  v12 = qword_27FA313E0;
  v13 = sub_25B0E2360();
  v14 = [v12 countForObject_];

  if (!v14)
  {
    (*(v3 + 16))(v6, v8, v2);
    sub_25B05EE98(0, v6);
  }

  os_unfair_lock_unlock(&dword_27FA313D8);
  (*(v3 + 8))(v8, v2);

  v15 = *(v1 + 56);

  return v1;
}

uint64_t sub_25B061920()
{
  sub_25B061704();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_25B061978@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  *a1 = *(*v1 + 24);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_25B061A08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7955819;
  }

  else
  {
    v3 = 0x6465766968637261;
  }

  if (v2)
  {
    v4 = 0xEC00000061746144;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7955819;
  }

  else
  {
    v5 = 0x6465766968637261;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xEC00000061746144;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25B0E3E30();
  }

  return v8 & 1;
}

uint64_t sub_25B061AB0()
{
  sub_25B0E3F10();
  sub_25B0E3780();

  return sub_25B0E3F50();
}

uint64_t sub_25B061B34(uint64_t a1)
{
  sub_25B0E3780();
}

uint64_t sub_25B061BA4(uint64_t a1)
{
  sub_25B0E3F10();
  sub_25B0E3780();

  return sub_25B0E3F50();
}

uint64_t sub_25B061C24@<X0>(char *a2@<X8>)
{
  v3 = sub_25B0E3D50();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25B061C84(uint64_t *a1@<X8>)
{
  v2 = 7955819;
  if (!*v1)
  {
    v2 = 0x6465766968637261;
  }

  v3 = 0xEC00000061746144;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25B061CC4()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x6465766968637261;
  }
}

uint64_t sub_25B061D00@<X0>(char *a3@<X8>)
{
  v4 = sub_25B0E3D50();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25B061D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B06A9F0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_25B061DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B06A9F0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_25B061DDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31420, &qword_25B0E6B30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B06A9F0(v9, v10, v11);
  v12 = sub_25B0E3F60();
  if (!v2)
  {
    v36 = 0;
    sub_25B06AA44(v12, v13, v14);
    sub_25B0E3DA0();
    v15 = v33;
    v16 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_25B06AB58(v15, *(&v15 + 1));
    v17 = sub_25B06AA98();
    sub_25B06ABAC(v15, *(&v15 + 1));
    [v17 setRequiresSecureCoding_];
    sub_25B046E60(0, &qword_27FA31438, 0x277D2C030);
    v30 = sub_25B0E3AC0();
    sub_25B046E60(0, &qword_27FA31440, 0x277D2C040);
    v32 = v17;
    v18 = sub_25B0E3AC0();
    v21 = v18;
    v31 = (v6 + 8);
    v22 = v30;
    if (v30)
    {
      v23 = v18 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      sub_25B06AC00(v18, v19, v20);
      swift_allocError();
      swift_willThrow();

      sub_25B06ABAC(v15, *(&v15 + 1));
      (*v31)(v8, v5);
    }

    else
    {
      v36 = 1;
      v29 = sub_25B06AC54(v18, v19, v20);
      v30 = v22;
      v24 = v21;
      sub_25B0E3DA0();
      (*v31)(v8, v5);
      sub_25B06ABAC(v15, *(&v15 + 1));

      v25 = v30;
      v26 = v34;
      v27 = v35;
      *a2 = v33;
      *(a2 + 16) = v26;
      *(a2 + 24) = v27;
      *(a2 + 32) = v25;
      *(a2 + 40) = v24;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25B062180(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31458, &qword_25B0E6B38);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = v1[1];
  v30 = *v1;
  v31 = v7;
  v8 = v1[3];
  v29 = v1[2];
  v32 = v8;
  v10 = v1[4];
  v9 = v1[5];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B06A9F0(v11, v12, v13);
  sub_25B0E3F70();
  v14 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v15 = sub_25B0E3730();
  [v14 encodeObject:v10 forKey:v15];

  v16 = sub_25B0E3730();
  [v14 encodeObject:v9 forKey:v16];

  v17 = [v14 encodedData];
  v18 = sub_25B0E23F0();
  v20 = v19;

  v34 = v18;
  v35 = v20;
  v38 = 0;
  sub_25B06ACA8(v21, v22, v23);
  v24 = sub_25B0E3DF0();
  if (v2)
  {
    (*(v33 + 8))(v6, v4);

    return sub_25B06ABAC(v18, v20);
  }

  else
  {
    v34 = v30;
    v35 = v31;
    v36 = v29;
    v37 = v32;
    v38 = 1;
    sub_25B06ACFC(v24, v25, v26);

    sub_25B0E3DF0();
    sub_25B06ABAC(v18, v20);

    return (*(v33 + 8))(v6, v4);
  }
}

uint64_t sub_25B0624A4()
{
  v1 = v0[18];
  v2 = v1[15];
  v0[19] = v2;
  v0[20] = v1[16];
  v0[21] = __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v0[22] = __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_25B0E3900();
  v0[23] = sub_25B0E38F0();
  v4 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B062568, v4, v3);
}

id sub_25B062568()
{
  v1 = v0[22];

  v2 = *v1;
  result = [*v1 dailySnapshotKey];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = sub_25B0E3740();
  v7 = v6;

  result = [v2 unsafeDailySnapshotKey];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  v16 = v0[20];
  v9 = sub_25B0E3740();
  v11 = v10;

  v0[14] = v5;
  v0[15] = v7;
  v0[16] = v9;
  v0[17] = v11;
  v15 = (*(v16 + 8) + **(v16 + 8));
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_25B06271C;
  v13 = v0[20];
  v14 = v0[19];

  return v15(v0 + 2, v0 + 14, v14, v13);
}

uint64_t sub_25B06271C()
{

  return MEMORY[0x2822009F8](sub_25B062850, 0, 0);
}

uint64_t sub_25B062850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  *(v0 + 216) = v3;
  *(v0 + 224) = v4;
  *(v0 + 232) = v5;
  *(v0 + 240) = v6;
  if (v2)
  {
    *(v0 + 64) = v1;
    *(v0 + 72) = v2;
    *(v0 + 80) = v3;
    *(v0 + 88) = v4;
    *(v0 + 96) = v5;
    *(v0 + 104) = v6;
    type metadata accessor for PreloadedSnapshot();
    swift_allocObject();

    v7 = v5;
    v8 = v6;
    v9 = swift_task_alloc();
    *(v0 + 248) = v9;
    *v9 = v0;
    v9[1] = sub_25B0629A0;

    return sub_25B060778((v0 + 64));
  }

  else
  {
    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_25B0629A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_25B062B38;
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = sub_25B062AC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25B062AC8()
{
  v1 = *(v0 + 264);
  sub_25B04C538(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25B062B38()
{
  v1 = *(v0 + 256);
  sub_25B04C538(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_25B062BB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  sub_25B049F48((v1 + 56), v38);
  sub_25B049F48((v1 + 96), v35);
  v15 = v39;
  v14 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v14 + 32))(v15, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(v13, 1, v16);
  v20 = sub_25B058448(v13, &qword_27FA313B8, &unk_25B0E72A0);
  if (v19 == 1 && (v21 = v36, v22 = v37, __swift_project_boxed_opaque_existential_1(v35, v36), (*(v22 + 24))(v21, v22), LODWORD(v21) = v18(v11, 1, v16), v20 = sub_25B058448(v11, &qword_27FA313B8, &unk_25B0E72A0), v21 == 1))
  {
    v23 = sub_25B0E3940();
    v24 = v31;
    (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v2;

    sub_25B052F48(0, 0, v24, &unk_25B0E6B50, v25);

    v26 = 1;
    v27 = v34;
  }

  else
  {
    MEMORY[0x28223BE20](v20);
    *(&v31 - 6) = v2;
    *(&v31 - 5) = v38;
    *(&v31 - 4) = v28;
    *(&v31 - 3) = v29;
    *(&v31 - 2) = v35;
    (*(v32 + 104))(v7, *MEMORY[0x277D85778], v33);
    v27 = v34;
    sub_25B0E39C0();
    v26 = 0;
  }

  (*(v17 + 56))(v27, v26, 1, v16);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_25B063008()
{
  v0[3] = __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  sub_25B0E3900();
  v0[4] = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B0630B0, v2, v1);
}

uint64_t sub_25B0630B0()
{
  v1 = v0[3];

  v2 = *v1;
  v3 = [v2 dailySnapshotKey];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3;
  sub_25B0E3740();
  v8 = v7;

  v0[5] = v8;
  v3 = [v2 unsafeDailySnapshotKey];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v9 = v3;
  v10 = sub_25B0E3740();
  v12 = v11;

  v0[6] = v10;
  v0[7] = v12;
  v3 = sub_25B063190;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25B063190()
{
  v13 = v0;
  if (qword_27FA30CA0 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA313C0);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;

    v9 = sub_25B04BE04(v6, v5, &v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_25B03D000, v2, v3, "Generator and store do not vend streams for %s…", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_25B06335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v26 = a6;
  v28 = a4;
  v29 = a5;
  v27 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v22 = *(v10 + 16);
  v22(&v22 - v12, a1, v9);
  v14 = *(v10 + 80);
  v15 = swift_allocObject();
  v23 = *(v10 + 32);
  v23(v15 + ((v14 + 16) & ~v14), v13, v9);
  sub_25B0E3960();
  v16 = sub_25B0E3940();
  v17 = v24;
  (*(*(v16 - 8) + 56))(v24, 1, 1, v16);
  sub_25B049F48(v25, v31);
  v22(v13, a1, v9);
  sub_25B049F48(v26, v30);
  v18 = (v14 + 96) & ~v14;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v27;
  sub_25B03F164(v31, (v19 + 5));
  v20 = v29;
  v19[10] = v28;
  v19[11] = v20;
  v23(v19 + v18, v13, v9);
  sub_25B03F164(v30, v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_25B052F48(0, 0, v17, &unk_25B0E6B68, v19);
}

uint64_t sub_25B063638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_25B063668, 0, 0);
}

uint64_t sub_25B063668()
{
  v0[8] = __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  sub_25B0E3900();
  v0[9] = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B063710, v2, v1);
}

uint64_t sub_25B063710()
{
  v1 = v0[8];

  v2 = *v1;
  v3 = [v2 dailySnapshotKey];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3;
  v7 = sub_25B0E3740();
  v9 = v8;

  v0[10] = v9;
  v3 = [v2 unsafeDailySnapshotKey];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v10 = v3;
  v0[11] = v7;
  v11 = sub_25B0E3740();
  v13 = v12;

  v0[12] = v11;
  v0[13] = v13;
  v3 = sub_25B0637F8;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_25B0637F8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 40);
  v13 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = *(v0 + 48);
  *(v6 + 16) = v13;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  *(v6 + 48) = v4;
  *(v6 + 56) = v2;
  *(v6 + 64) = v1;
  *(v6 + 72) = v7;
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_25B06391C;
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v8, v9, v10, 0, 0, &unk_25B0E6B78, v6, v11);
}

uint64_t sub_25B06391C()
{

  return MEMORY[0x2822009F8](sub_25B063A34, 0, 0);
}

uint64_t sub_25B063A34()
{
  v13 = v0;
  if (qword_27FA30CA0 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA313C0);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  if (v4)
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;

    v9 = sub_25B04BE04(v6, v5, &v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_25B03D000, v2, v3, "Update streams for %s finished…", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  sub_25B0E3990();
  v10 = v0[1];

  return v10();
}

uint64_t sub_25B063C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v16;
  *(v8 + 72) = v15;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  *(v8 + 96) = v9;
  v10 = *(v9 - 8);
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 + 64);
  *(v8 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  *(v8 + 152) = v11;
  v12 = *(v11 - 8);
  *(v8 + 160) = v12;
  *(v8 + 168) = *(v12 + 64);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B063E18, 0, 0);
}

uint64_t sub_25B063E18()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 32))(v5, v6);
  v7 = *(v2 + 48);
  if (v7(v3, 1, v1) == 1)
  {
    sub_25B058448(v0[18], &qword_27FA313B8, &unk_25B0E72A0);
  }

  else
  {
    v9 = v0[23];
    v8 = v0[24];
    v65 = v0[21];
    v68 = v0[20];
    v10 = v0[19];
    v11 = v0[15];
    v12 = v0[16];
    v56 = v12;
    v46 = v11;
    v13 = v0[13];
    v70 = v0[12];
    v45 = v0[10];
    v58 = v0[8];
    v59 = v0[9];
    v52 = v0[6];
    v54 = v0[7];
    v48 = v0[4];
    v50 = v0[5];
    v62 = v8;
    v47 = *(v68 + 32);
    v47(v8, v0[18], v10);
    v14 = sub_25B0E3940();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = v10;
    (*(v68 + 16))(v9, v8, v10);
    (*(v13 + 16))(v11, v45, v70);
    v16 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v17 = v65 + v16 + 7;
    v66 = v7;
    v18 = v17 & 0xFFFFFFFFFFFFFFF8;
    v19 = ((v17 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = (*(v13 + 80) + v19 + 32) & ~*(v13 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v47(v21 + v16, v9, v15);
    v22 = (v21 + v18);
    v7 = v66;
    *v22 = v48;
    v22[1] = v50;
    v23 = (v21 + v19);
    *v23 = v52;
    v23[1] = v54;
    v23[2] = v58;
    v23[3] = v59;
    (*(v13 + 32))(v21 + v20, v46, v70);

    sub_25B064B60(v56, &unk_25B0E6B98, v21);
    sub_25B058448(v56, &qword_27FA31990, &qword_25B0E6920);
    (*(v68 + 8))(v62, v15);
  }

  v24 = v0[19];
  v25 = v0[17];
  v26 = v0[11];
  v27 = v26[3];
  v28 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v28 + 24))(v27, v28);
  if (v7(v25, 1, v24) == 1)
  {
    sub_25B058448(v0[17], &qword_27FA313B8, &unk_25B0E72A0);
  }

  else
  {
    v29 = v0[22];
    v30 = v0[23];
    v31 = v0[20];
    v32 = v0[19];
    v33 = v0[16];
    v34 = v0[15];
    v60 = v33;
    v36 = v0[12];
    v35 = v0[13];
    v49 = v36;
    v51 = v34;
    v53 = v0[10];
    v55 = v0[21];
    v67 = v0[9];
    v63 = v0[7];
    v64 = v0[8];
    v61 = v0[6];
    v57 = *(v31 + 32);
    v69 = v29;
    v57(v29, v0[17], v32);
    v37 = sub_25B0E3940();
    (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
    (*(v31 + 16))(v30, v29, v32);
    (*(v35 + 16))(v34, v53, v36);
    v38 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v39 = (v55 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v35 + 80) + v39 + 32) & ~*(v35 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    v57(v41 + v38, v30, v32);
    v42 = (v41 + v39);
    *v42 = v61;
    v42[1] = v63;
    v42[2] = v64;
    v42[3] = v67;
    (*(v35 + 32))(v41 + v40, v51, v49);

    sub_25B064B60(v60, &unk_25B0E6B88, v41);
    sub_25B058448(v60, &qword_27FA31990, &qword_25B0E6920);
    (*(v31 + 8))(v69, v32);
  }

  v43 = v0[1];

  return v43();
}

uint64_t sub_25B0643DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v14;
  *(v8 + 48) = v13;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  *(v8 + 96) = v10;
  *(v8 + 104) = *(v10 - 8);
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B064528, 0, 0);
}

uint64_t sub_25B064528()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_25B0645F4;
  v2 = *(v0 + 96);

  return MEMORY[0x2822003E8](v0 + 128, 0, 0, v2);
}

uint64_t sub_25B0645F4()
{

  return MEMORY[0x2822009F8](sub_25B0646F0, 0, 0);
}

uint64_t sub_25B0646F0()
{
  v32 = v0;
  if (*(v0 + 128) == 1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
LABEL_16:

    v27 = *(v0 + 8);

    return v27();
  }

  if (sub_25B0E39F0())
  {
    if (qword_27FA30CA0 != -1)
    {
      swift_once();
    }

    v1 = sub_25B0E2970();
    __swift_project_value_buffer(v1, qword_27FA313C0);

    v2 = sub_25B0E2950();
    v3 = sub_25B0E3A50();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    if (v4)
    {
      v8 = *(v0 + 48);
      v29 = *(v0 + 56);
      v10 = *(v0 + 24);
      v9 = *(v0 + 32);
      v30 = *(v0 + 112);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_25B04BE04(v10, v9, &v31);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_25B04BE04(v8, v29, &v31);
      _os_log_impl(&dword_25B03D000, v2, v3, "Generator %s task cancelled for %s…", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8613E0](v12, -1, -1);
      MEMORY[0x25F8613E0](v11, -1, -1);

      (*(v5 + 8))(v30, v7);
    }

    else
    {

      (*(v5 + 8))(v6, v7);
    }

    goto LABEL_16;
  }

  if (qword_27FA30CA0 != -1)
  {
    swift_once();
  }

  v13 = sub_25B0E2970();
  __swift_project_value_buffer(v13, qword_27FA313C0);

  v14 = sub_25B0E2950();
  v15 = sub_25B0E3A50();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v19 = *(v0 + 24);
    v18 = *(v0 + 32);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_25B04BE04(v19, v18, &v31);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_25B04BE04(v17, v16, &v31);
    _os_log_impl(&dword_25B03D000, v14, v15, "Generator %s update for %s…", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v21, -1, -1);
    MEMORY[0x25F8613E0](v20, -1, -1);
  }

  v23 = *(v0 + 80);
  v22 = *(v0 + 88);
  v24 = *(v0 + 72);
  sub_25B0E3970();
  (*(v23 + 8))(v22, v24);
  v25 = swift_task_alloc();
  *(v0 + 120) = v25;
  *v25 = v0;
  v25[1] = sub_25B0645F4;
  v26 = *(v0 + 96);

  return MEMORY[0x2822003E8](v0 + 128, 0, 0, v26);
}

uint64_t sub_25B064B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_25B058198(a1, v20 - v9);
  v11 = sub_25B0E3940();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25B058448(v10, &qword_27FA31990, &qword_25B0E6920);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_25B0E3850();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_25B0E3930();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_25B064D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_25B058198(a1, v20 - v9);
  v11 = sub_25B0E3940();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25B058448(v10, &qword_27FA31990, &qword_25B0E6920);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_25B0E3850();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_25B0E3930();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31470, &qword_25B0E6BD0);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_25B064F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v13;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0650C4, 0, 0);
}

uint64_t sub_25B0650C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_25B065190;
  v2 = *(v0 + 80);

  return MEMORY[0x2822003E8](v0 + 112, 0, 0, v2);
}

uint64_t sub_25B065190()
{

  return MEMORY[0x2822009F8](sub_25B06528C, 0, 0);
}

uint64_t sub_25B06528C()
{
  v27 = v0;
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
LABEL_9:

    v12 = *(v0 + 8);

    return v12();
  }

  if (sub_25B0E39F0())
  {
    if (qword_27FA30CA0 != -1)
    {
      swift_once();
    }

    v1 = sub_25B0E2970();
    __swift_project_value_buffer(v1, qword_27FA313C0);

    v2 = sub_25B0E2950();
    v3 = sub_25B0E3A50();

    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 80);
    if (v4)
    {
      v9 = *(v0 + 32);
      v8 = *(v0 + 40);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_25B04BE04(v9, v8, &v26);
      _os_log_impl(&dword_25B03D000, v2, v3, "Store task cancelled for %s…", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x25F8613E0](v11, -1, -1);
      MEMORY[0x25F8613E0](v10, -1, -1);
    }

    (*(v6 + 8))(v5, v7);
    goto LABEL_9;
  }

  if (qword_27FA30CA0 != -1)
  {
    swift_once();
  }

  v14 = sub_25B0E2970();
  __swift_project_value_buffer(v14, qword_27FA313C0);

  v15 = sub_25B0E2950();
  v16 = sub_25B0E3A50();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_25B04BE04(v18, v17, &v26);
    _os_log_impl(&dword_25B03D000, v15, v16, "Store update for %s…", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x25F8613E0](v20, -1, -1);
    MEMORY[0x25F8613E0](v19, -1, -1);
  }

  v22 = *(v0 + 64);
  v21 = *(v0 + 72);
  v23 = *(v0 + 56);
  sub_25B0E3970();
  (*(v22 + 8))(v21, v23);
  v24 = swift_task_alloc();
  *(v0 + 104) = v24;
  *v24 = v0;
  v24[1] = sub_25B065190;
  v25 = *(v0 + 80);

  return MEMORY[0x2822003E8](v0 + 112, 0, 0, v25);
}

uint64_t sub_25B065664()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_25B0656D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25B065720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B065788(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_25B05E870;

  return sub_25B05F058(v2, v3);
}

uint64_t sub_25B065840(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25B06B6C8;

  return v6(a1);
}

uint64_t sub_25B065938(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25B065A30;

  return v6(a1);
}

uint64_t sub_25B065A30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25B065B28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B05859C;

  return sub_25B060C40(a1, v4, v5, v1 + 32);
}

unint64_t sub_25B065C20(uint64_t a1)
{
  v2 = sub_25B0E3AE0();

  return sub_25B0693C4(a1, v2);
}

unint64_t sub_25B065C64(uint64_t a1)
{
  sub_25B0E23C0();
  v2 = MEMORY[0x277CC9260];
  sub_25B06B48C(&qword_27FA31410, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v3 = sub_25B0E36C0();
  return sub_25B069504(a1, v3, MEMORY[0x277CC9260], &qword_27FA31418, v2, MEMORY[0x277CC9278]);
}

unint64_t sub_25B065D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA313F8;
  if (!qword_27FA313F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA313F8);
  }

  return result;
}

unint64_t sub_25B065D8C(uint64_t a1)
{
  v2 = sub_25B0E3F00();

  return sub_25B069498(a1, v2);
}

unint64_t sub_25B065DD0(uint64_t a1)
{
  sub_25B0E2750();
  v2 = MEMORY[0x277D2BE00];
  sub_25B06B48C(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  v3 = sub_25B0E36C0();
  return sub_25B069504(a1, v3, MEMORY[0x277D2BE00], &qword_27FA314D0, v2, MEMORY[0x277D2BE10]);
}

unint64_t sub_25B065EA4(uint64_t a1)
{
  sub_25B0E28B0();
  v2 = MEMORY[0x277D2BE48];
  sub_25B06B48C(&qword_27FA31490, MEMORY[0x277D2BE48], MEMORY[0x277D2BE50]);
  v3 = sub_25B0E36C0();
  return sub_25B069504(a1, v3, MEMORY[0x277D2BE48], &qword_27FA31498, v2, MEMORY[0x277D2BE58]);
}

unint64_t sub_25B065F78(uint64_t *a1)
{
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3780();
  sub_25B0E3780();
  v2 = sub_25B0E3F50();

  return sub_25B0696A4(a1, v2);
}

unint64_t sub_25B066014(uint64_t a1)
{
  sub_25B0E2870();
  v2 = MEMORY[0x277D2BE30];
  sub_25B06B48C(&qword_27FA314A0, MEMORY[0x277D2BE30], MEMORY[0x277D2BE38]);
  v3 = sub_25B0E36C0();
  return sub_25B069504(a1, v3, MEMORY[0x277D2BE30], &qword_27FA314A8, v2, MEMORY[0x277D2BE40]);
}

unint64_t sub_25B0660E8(uint64_t a1, uint64_t a2)
{
  sub_25B0E3F10();
  sub_25B0E3780();
  v4 = sub_25B0E3F50();

  return sub_25B0697E8(a1, a2, v4);
}

unint64_t sub_25B066160(uint64_t a1)
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](a1);
  v2 = sub_25B0E3F50();

  return sub_25B069498(a1, v2);
}

uint64_t sub_25B0661CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25B0E23C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31478, &qword_25B0E6BD8);
  v39 = v4;
  result = sub_25B0E3D30();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25B06B48C(&qword_27FA31410, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_25B0E36C0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25B0665A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314E0, &unk_25B0E6C20);
  result = sub_25B0E3D30();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_25B0E3F00();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25B066818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25B0E2750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314C8, &qword_25B0E6C10);
  v39 = v4;
  result = sub_25B0E3D30();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25B06B48C(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
      result = sub_25B0E36C0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25B066BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25B0E23C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31408, &qword_25B0E6B28);
  v39 = v4;
  result = sub_25B0E3D30();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25B06B48C(&qword_27FA31410, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_25B0E36C0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25B066FD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314D8, &qword_25B0E6C18);
  v35 = v4;
  result = sub_25B0E3D30();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_25B0E3F10();
      sub_25B0E3780();
      result = sub_25B0E3F50();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25B067274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v48 = sub_25B0E26B0();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314B8, &qword_25B0E6C00);
  v43 = v4;
  result = sub_25B0E3D30();
  v9 = result;
  if (*(v7 + 16))
  {
    v39 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(v7 + 56);
      v25 = (*(v7 + 48) + 48 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = v25[3];
      v50 = v25[2];
      v29 = v25[5];
      v49 = v25[4];
      v30 = v24 + *(v42 + 72) * v23;
      v46 = *(v42 + 72);
      if (v43)
      {
        (*v44)(v47, v30, v48);
      }

      else
      {
        (*v40)(v47, v30, v48);
      }

      sub_25B0E3F10();
      v45 = v27;
      sub_25B0E3780();
      sub_25B0E3780();
      sub_25B0E3780();
      result = sub_25B0E3F50();
      v31 = -1 << *(v9 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v16 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v16 + 8 * v33);
          if (v37 != -1)
          {
            v17 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v32) & ~*(v16 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 48 * v17);
      *v18 = v45;
      v18[1] = v26;
      v19 = v49;
      v18[2] = v50;
      v18[3] = v28;
      v18[4] = v19;
      v18[5] = v29;
      result = (*v44)(*(v9 + 56) + v46 * v17, v47, v48);
      ++*(v9 + 16);
      v7 = v41;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v7 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v11, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_25B067660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25B0E2870();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314B0, &qword_25B0E6BF8);
  v46 = v4;
  result = sub_25B0E3D30();
  v10 = result;
  if (*(v8 + 16))
  {
    v53 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v8;
    v45 = v6;
    v48 = (v6 + 32);
    v17 = result + 64;
    v18 = v47;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v23 = (v15 - 1) & v15;
LABEL_15:
      v26 = v22 | (v11 << 6);
      v27 = *(v8 + 48) + *(v45 + 72) * v26;
      v51 = *(v45 + 72);
      v52 = v23;
      if (v46)
      {
        (*v48)(v18, v27, v53);
        v28 = (*(v8 + 56) + 32 * v26);
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[3];
        v49 = v28[2];
        v50 = v29;
      }

      else
      {
        (*v43)(v18, v27, v53);
        v32 = (*(v8 + 56) + 32 * v26);
        v33 = *v32;
        v30 = v32[1];
        v31 = v32[3];
        v49 = v32[2];
        v50 = v33;
      }

      sub_25B06B48C(&qword_27FA314A0, MEMORY[0x277D2BE30], MEMORY[0x277D2BE38]);
      result = sub_25B0E36C0();
      v34 = -1 << *(v10 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v17 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v18 = v47;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v17 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v17 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v18 = v47;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v48)(*(v10 + 48) + v51 * v19, v18, v53);
      v20 = (*(v10 + 56) + 32 * v19);
      v21 = v49;
      *v20 = v50;
      v20[1] = v30;
      v20[2] = v21;
      v20[3] = v31;
      ++*(v10 + 16);
      v8 = v44;
      v15 = v52;
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v8 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v12, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v41;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_25B067A68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25B0E28B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314C0, &qword_25B0E6C08);
  v46 = v4;
  result = sub_25B0E3D30();
  v10 = result;
  if (*(v8 + 16))
  {
    v53 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v8;
    v45 = v6;
    v48 = (v6 + 32);
    v17 = result + 64;
    v18 = v47;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v23 = (v15 - 1) & v15;
LABEL_15:
      v26 = v22 | (v11 << 6);
      v27 = *(v8 + 48) + *(v45 + 72) * v26;
      v51 = *(v45 + 72);
      v52 = v23;
      if (v46)
      {
        (*v48)(v18, v27, v53);
        v28 = (*(v8 + 56) + 32 * v26);
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[3];
        v49 = v28[2];
        v50 = v29;
      }

      else
      {
        (*v43)(v18, v27, v53);
        v32 = (*(v8 + 56) + 32 * v26);
        v33 = *v32;
        v30 = v32[1];
        v31 = v32[3];
        v49 = v32[2];
        v50 = v33;
      }

      sub_25B06B48C(&qword_27FA31490, MEMORY[0x277D2BE48], MEMORY[0x277D2BE50]);
      result = sub_25B0E36C0();
      v34 = -1 << *(v10 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v17 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v18 = v47;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v17 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v17 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v18 = v47;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v48)(*(v10 + 48) + v51 * v19, v18, v53);
      v20 = (*(v10 + 56) + 32 * v19);
      v21 = v49;
      *v20 = v50;
      v20[1] = v30;
      v20[2] = v21;
      v20[3] = v31;
      ++*(v10 + 16);
      v8 = v44;
      v15 = v52;
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v8 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v12, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v41;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_25B067E84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = sub_25B0E3D30();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      sub_25B0E3F10();
      MEMORY[0x25F860A80](v22);
      result = sub_25B0E3F50();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_25B06810C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25B0E3B60() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_25B0E3F00();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25B06827C(int64_t a1, uint64_t a2)
{
  v40 = sub_25B0E2750();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25B0E3B60();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25B06B48C(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
      v23 = sub_25B0E36C0();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_25B06859C(int64_t a1, uint64_t a2)
{
  v40 = sub_25B0E23C0();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25B0E3B60();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25B06B48C(&qword_27FA31410, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v23 = sub_25B0E36C0();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_25B0688BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25B0E23C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25B065C64(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25B0698A0();
      goto LABEL_7;
    }

    sub_25B0661CC(v17, a3 & 1);
    v22 = sub_25B065C64(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25B06930C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25B0E3E80();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_25B068A88(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25B065D8C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25B0665A8(v14, a3 & 1);
      result = sub_25B065D8C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_25B0E3E80();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25B069B20();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_25B068BD4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25B0E2750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25B065DD0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25B069C7C();
      goto LABEL_7;
    }

    sub_25B066818(v17, a3 & 1);
    v22 = sub_25B065DD0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25B069254(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25B0E3E80();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_25B068DA0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25B0E23C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25B065C64(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25B069EFC();
      goto LABEL_7;
    }

    sub_25B066BF4(v17, a3 & 1);
    v23 = sub_25B065C64(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_25B06930C(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_25B0E3E80();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

void sub_25B068F6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25B0660E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25B066FD0(v16, a4 & 1);
      v11 = sub_25B0660E8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_25B0E3E80();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_25B06A170();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

unint64_t sub_25B0690E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25B066160(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25B067E84(v14, a3 & 1, &qword_27FA31480, &qword_25B0E6BE0);
      result = sub_25B066160(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for NTKFaceCurationGroup(0);
        result = sub_25B0E3E80();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25B06A8A4(&qword_27FA31480, &qword_25B0E6BE0);
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_25B069254(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25B0E2750();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25B06930C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25B0E23C0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_25B0693C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25B0E3AF0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25B069498(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25B069504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_25B06B48C(v23, v24, v25);
      v19 = sub_25B0E3700();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_25B0696A4(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v6 = *a1;
    v5 = a1[1];
    v21 = a1[3];
    v22 = a1[2];
    v7 = a1[4];
    v8 = a1[5];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v4);
      v12 = v10[2];
      v11 = v10[3];
      v13 = v10[4];
      v14 = v10[5];
      v15 = *v10 == v6 && v10[1] == v5;
      if (v15 || (sub_25B0E3E30() & 1) != 0)
      {
        v16 = v12 == v22 && v11 == v21;
        if (v16 || (sub_25B0E3E30() & 1) != 0)
        {
          v17 = v13 == v7 && v14 == v8;
          if (v17 || (sub_25B0E3E30() & 1) != 0)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v19;
    }

    while (((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25B0697E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25B0E3E30())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_25B0698A0()
{
  v1 = v0;
  v33 = sub_25B0E23C0();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31478, &qword_25B0E6BD8);
  v3 = *v0;
  v4 = sub_25B0E3D20();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_25B069B20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314E0, &unk_25B0E6C20);
  v2 = *v0;
  v3 = sub_25B0E3D20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

char *sub_25B069C7C()
{
  v1 = v0;
  v33 = sub_25B0E2750();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314C8, &qword_25B0E6C10);
  v3 = *v0;
  v4 = sub_25B0E3D20();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_25B069EFC()
{
  v1 = v0;
  v31 = sub_25B0E23C0();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31408, &qword_25B0E6B28);
  v3 = *v0;
  v4 = sub_25B0E3D20();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_25B06A170()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314D8, &qword_25B0E6C18);
  v2 = *v0;
  v3 = sub_25B0E3D20();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

char *sub_25B06A2DC()
{
  v1 = v0;
  v41 = sub_25B0E26B0();
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314B8, &qword_25B0E6C00);
  v3 = *v0;
  v4 = sub_25B0E3D20();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v42 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v47 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 48 * v18;
        v20 = *(v3 + 56);
        v21 = (*(v3 + 48) + 48 * v18);
        v22 = v21[1];
        v46 = *v21;
        v23 = v21[3];
        v45 = v21[2];
        v24 = v21[5];
        v44 = v21[4];
        v25 = v43;
        v26 = *(v43 + 72) * v18;
        v28 = v40;
        v27 = v41;
        (*(v43 + 16))(v40, v20 + v26, v41);
        v29 = v42;
        v30 = (*(v42 + 48) + v19);
        v31 = v45;
        *v30 = v46;
        v30[1] = v22;
        v30[2] = v31;
        v30[3] = v23;
        v30[4] = v44;
        v30[5] = v24;
        v32 = *(v29 + 56);
        v33 = *(v25 + 32);
        v3 = v39;
        v33(v32 + v26, v28, v27);

        v13 = v47;
      }

      while (v47);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v35;
        v5 = v42;
        goto LABEL_18;
      }

      v17 = *(v36 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v47 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_25B06A5EC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v3;
  v11 = sub_25B0E3D20();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    v39 = v6;
    v40 = (v10 + 64);
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, v40, 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v47 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v46 + 32;
    v42 = v46 + 16;
    v43 = v10;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v50 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = v45;
        v27 = v46;
        v28 = *(v46 + 72) * v25;
        v29 = v44;
        (*(v46 + 16))(v44, *(v10 + 48) + v28, v45);
        v30 = *(v10 + 56);
        v31 = 32 * v25;
        v32 = (v30 + 32 * v25);
        v33 = *v32;
        v34 = v32[1];
        v35 = v32[3];
        v48 = v32[2];
        v49 = v33;
        v36 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v29, v26);
        v37 = (*(v36 + 56) + v31);
        v10 = v43;
        v38 = v48;
        *v37 = v49;
        v37[1] = v34;
        v37[2] = v38;
        v37[3] = v35;

        v20 = v50;
      }

      while (v50);
    }

    v23 = v16;
    v12 = v47;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        goto LABEL_21;
      }

      v24 = *(v40 + v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v50 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v12;
  }

  return result;
}

void *sub_25B06A8A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25B0E3D20();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_25B06A9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31428;
  if (!qword_27FA31428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31428);
  }

  return result;
}

unint64_t sub_25B06AA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31430;
  if (!qword_27FA31430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31430);
  }

  return result;
}

id sub_25B06AA98()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25B0E23E0();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_25B0E22D0();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_25B06AB58(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25B06ABAC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_25B06AC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31448;
  if (!qword_27FA31448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31448);
  }

  return result;
}

unint64_t sub_25B06AC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31450;
  if (!qword_27FA31450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31450);
  }

  return result;
}

unint64_t sub_25B06ACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31460;
  if (!qword_27FA31460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31460);
  }

  return result;
}

unint64_t sub_25B06ACFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31468;
  if (!qword_27FA31468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31468);
  }

  return result;
}

uint64_t sub_25B06AD50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B05859C;

  return sub_25B062FE8(a1, v4, v5, v6);
}

uint64_t sub_25B06AE14(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[10];
  v11 = v1[11];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25B05859C;

  return sub_25B063638(a1, v7, v8, v9, (v1 + 5), v10, v11, v1 + v6);
}

uint64_t sub_25B06AF70(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25B05859C;

  return sub_25B063C20(a1, a2, v6, v7, v8, v9, v10, v11);
}