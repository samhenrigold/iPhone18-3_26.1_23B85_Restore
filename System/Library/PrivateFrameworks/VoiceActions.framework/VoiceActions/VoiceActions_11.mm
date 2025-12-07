void *VAA2AAudioEnroller.init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_272376E5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v4 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v14 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_floatArr) = MEMORY[0x277D84F90];
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v14;
  sub_272376E4C();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_id, v12, v9);
  v15 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  swift_beginAccess();
  sub_2722E48E4(a4, v4 + v15);
  swift_endAccess();
  return v4;
}

uint64_t sub_2722E4CDC(objc_class *a1)
{
  v2 = v1;
  v4 = type metadata accessor for VASingleEnrollmentData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ((*v1)[24])(&v29);
  v8.super.super.isa = a1;
  VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v8, v9);
  if (v10)
  {
    return v7(&v29, 1);
  }

  v12 = v7(&v29, 0);
  v13 = ((*v2)[22])(v12);
  v14 = ((*v2)[18])(&v29);
  sub_272207944(v13);
  v15 = v14(&v29, 0);
  v16 = (*(*v2[2] + 168))(v15);
  v17 = (*v2)[16];
  v18 = *(v17() + 16);

  if (v16 >= v18)
  {
    goto LABEL_9;
  }

  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  result = (v17)(result);
  v19 = *(result + 16);
  if (v19 < v16)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v19 != v16)
  {
    sub_272241D34(result, result + 32, 0, (2 * v16) | 1);
    v21 = v20;

    result = v21;
  }

  result = ((*v2)[17])(result);
LABEL_9:
  v22 = *((v17)(result) + 16);

  if (v22 == v16)
  {
    ((*v2)[19])(&v29, result);
    if (*(&v30 + 1))
    {
      sub_27221629C(&v29, v26);
      sub_27227B688(&v29);
      v23 = v27;
      v24 = v28;
      sub_27220300C(v26, v27);
      ((*v2)[28])();
      (*(v24 + 8))(v6, v23, v24);
      sub_272204FB8(v6);
      sub_2722039C8(v26);
    }

    else
    {
      sub_27227B688(&v29);
    }

    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    return ((*v2)[20])(&v29);
  }

  return result;
}

uint64_t sub_2722E5074@<X0>(uint64_t a1@<X8>)
{
  v3 = (*v1)[16];
  v4 = *(v3() + 16);

  v6 = *(*v1[2] + 168);
  v7 = v6(v5);
  v8 = *(v3() + 16);

  v10 = v8 >= v6(v9);

  return sub_2722AFC10(v4, v7, v10, a1);
}

void sub_2722E5160(uint64_t a1@<X8>)
{
  v3 = v1;
  v53 = a1;
  v4 = sub_272376E5C();
  v58 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[2];
  v9 = *(*v1 + 128);
  v10 = *v1 + 128;
  v9(v5);
  v11 = (*(*v8 + 160))();

  if (!v2)
  {
    v52 = v7;
    v56 = v9;
    v57 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v50 = v3;
      v51 = 0;
      v48 = v4;
      v49 = v11;
      v14 = &selRef_environment;
      v15 = [v12 shape];
      sub_27223EE54();
      v16 = sub_272377AFC();

      if ((v16 & 0xC000000000000001) != 0)
      {
        goto LABEL_34;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        for (i = *(v16 + 32); ; i = MEMORY[0x2743C5370](0, v16))
        {

          v18 = [v13 v14[4]];
          v19 = sub_272377AFC();

          if ((v19 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x2743C5370](1, v19);
            v20 = v56;
          }

          else
          {
            v20 = v56;
            if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
              goto LABEL_38;
            }

            v21 = *(v19 + 40);
          }

          v16 = &selRef_environment;
          v22 = [i integerValue];
          if ((v22 & 0x8000000000000000) != 0)
          {
            break;
          }

          v14 = v22;
          v47 = i;
          v23 = v58;
          if (!v22)
          {
            v59 = MEMORY[0x277D84F90];
LABEL_29:
            v37 = v50;
            v38 = v52;
            (*(v23 + 16))(v52, v50 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_id, v48);
            v39 = v21;
            v40 = v37[3];
            v41 = v37[4];

            v43 = v20(v42);
            v61 = 1;
            v44 = sub_2722AFA60();
            v45 = sub_2722AFA60();
            sub_2722AFA68(v38, v59, v40, v41, v43, v44, v45, &v61, v53);
            swift_unknownObjectRelease();

            return;
          }

          v24 = 0;
          v60 = xmmword_27237E500;
          v59 = MEMORY[0x277D84F90];
          v54 = v22;
          v55 = v21;
          while (1)
          {
            v25 = [v21 *(v16 + 1224)];
            if ((v25 & 0x8000000000000000) != 0)
            {
              break;
            }

            if (v25)
            {
              v14 = v25;
              v26 = sub_272377B5C();
              *(v26 + 16) = v14;
              bzero((v26 + 32), 4 * v14);
            }

            else
            {
              v26 = MEMORY[0x277D84F90];
            }

            v27 = [v21 *(v16 + 1224)];
            if ((v27 & 0x8000000000000000) != 0)
            {
              goto LABEL_33;
            }

            v14 = v27;
            if (v27)
            {
              v28 = 0;
              while (1)
              {
                sub_2721F065C(&qword_280882098, &qword_27237E8B0);
                v29 = swift_allocObject();
                *(v29 + 16) = v60;
                *(v29 + 32) = sub_272377DBC();
                *(v29 + 40) = sub_272377DBC();
                v30 = sub_272377AEC();

                v16 = [v13 objectForKeyedSubscript_];

                [v16 floatValue];
                v32 = v31;

                if (v28 >= *(v26 + 16))
                {
                  break;
                }

                *(v26 + 32 + 4 * v28++) = v32;
                if (v14 == v28)
                {
                  goto LABEL_21;
                }
              }

              __break(1u);
              break;
            }

LABEL_21:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_272241E04(0, v59[2] + 1, 1, v59);
            }

            v20 = v56;
            v34 = v59[2];
            v33 = v59[3];
            v21 = v55;
            if (v34 >= v33 >> 1)
            {
              v59 = sub_272241E04((v33 > 1), v34 + 1, 1, v59);
            }

            v24 = (v24 + 1);
            v23 = v58;
            v35 = v59;
            v59[2] = v34 + 1;
            v35[v34 + 4] = v26;
            v14 = v54;
            v16 = 0x279E41000;
            if (v24 == v54)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          ;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_38:
      __break(1u);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_2722032B4();
      swift_allocError();
      *v36 = 0xD00000000000001ELL;
      v36[1] = 0x800000027238B8F0;
      swift_willThrow();
    }
  }
}

unint64_t sub_2722E56C0()
{
  result = (*(**(v0 + 16) + 168))();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

char *VAA2AAudioEnroller.deinit()
{

  v1 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_id;
  v2 = sub_272376E5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_27227B688(v0 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate);

  return v0;
}

uint64_t VAA2AAudioEnroller.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_id;
  v2 = sub_272376E5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_27227B688(v0 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate);

  return swift_deallocClassInstance();
}

uint64_t sub_2722E59DC(uint64_t a1)
{
  swift_beginAccess();
  sub_2722E48E4(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t VAA2AAudioEnrollerFactory.__allocating_init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 16) = a1;
  swift_beginAccess();
  sub_2722E48E4(a2, v4 + 24);
  swift_endAccess();
  return v4;
}

uint64_t VAA2AAudioEnrollerFactory.init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 16) = a1;
  swift_beginAccess();
  sub_2722E48E4(a2, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_2722E5B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_272376E5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = (*(*v3 + 96))(v9);
  v13 = *(*v3 + 120);

  v13(v22, v14);
  v15 = type metadata accessor for VAA2AAudioEnroller(0);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v16 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_floatArr) = MEMORY[0x277D84F90];
  v16[2] = v12;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = v18;
  sub_272376E4C();
  (*(v8 + 32))(v16 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_id, v11, v7);
  v19 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  swift_beginAccess();
  sub_2722E48E4(v22, v16 + v19);
  result = swift_endAccess();
  a3[3] = v15;
  a3[4] = &protocol witness table for VAA2AAudioEnroller;
  *a3 = v16;
  return result;
}

uint64_t VAA2AAudioEnrollerFactory.deinit()
{

  sub_27227B688(v0 + 24);
  return v0;
}

uint64_t VAA2AAudioEnrollerFactory.__deallocating_deinit()
{

  sub_27227B688(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VAA2AAudioEnroller(uint64_t a1)
{
  result = qword_28088ECF0;
  if (!qword_28088ECF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2722E5E0C(uint64_t a1)
{
  result = sub_272376E5C();
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

uint64_t sub_2722E6028()
{
  v1 = (v0 + OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelFilename);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2722E6080(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelFilename);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2722E60F8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_samplesPerPredictionWindow;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E613C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_samplesPerPredictionWindow;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E618C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelInputSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E61D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelInputSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E6220()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E6264(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E62B4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldStride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E62F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldStride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E6348()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_useCMVN;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E638C(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_useCMVN;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E640C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_vadGated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E6450(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_vadGated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E64A0()
{
  v1 = *((*((*MEMORY[0x277D85000] & *v0) + 0xB8))() + 16);

  return v1;
}

uint64_t sub_2722E64FC()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x190))();
  v2 = __OFADD__(v1, 3);
  result = v1 + 3;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2722E6558(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x726F4E726579616CLL;
    v6 = 0x726F4E726579616CLL;
    if (a1 != 8)
    {
      v6 = 0x6465746147646176;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 != 5)
    {
      v7 = 0x4E564D43657375;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6C69466C65646F6DLL;
    v2 = 0xD00000000000001ALL;
    v3 = 0x706E496C65646F6DLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2722E66DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2722E7B10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2722E6710(uint64_t a1)
{
  v2 = sub_2722E87B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722E674C(uint64_t a1)
{
  v2 = sub_2722E87B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VAFixedSpotterModelConfiguration.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882B30, &qword_272383BA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - v7;
  sub_27220300C(a1, a1[3]);
  sub_2722E87B8();
  sub_2723787AC();
  if (v2)
  {
    sub_2722039C8(a1);
LABEL_4:
    type metadata accessor for VAFixedSpotterModelConfiguration();
    swift_deallocPartialClassInstance();
    return v3;
  }

  LOBYTE(v26) = 0;
  v9 = sub_27237843C();
  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v10)
  {
    v13 = v10;
  }

  v14 = &v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelFilename];
  *v14 = v12;
  v14[1] = v13;
  LOBYTE(v26) = 2;
  result = sub_27237847C();
  if (v15)
  {
    __break(1u);
    goto LABEL_23;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_samplesPerPredictionWindow] = result;
  LOBYTE(v26) = 3;
  result = sub_27237847C();
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelInputSize] = result;
  sub_2721F065C(&qword_280882B38, &unk_272383BA8);
  v25 = 1;
  sub_2722E8830(&qword_280882B40, MEMORY[0x277D83BB8], MEMORY[0x277D83808], MEMORY[0x277D83528]);
  result = sub_27237848C();
  if (!v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_keywordsTrainedFor] = v26;
  LOBYTE(v26) = 4;
  result = sub_27237847C();
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldLength] = result;
  LOBYTE(v26) = 5;
  result = sub_27237847C();
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldStride] = result;
  LOBYTE(v26) = 6;
  result = sub_27237844C();
  v23 = 0;
  if (result == 2)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_useCMVN] = result & 1;
  sub_2721F065C(&qword_280881858, &unk_27237C260);
  v25 = 7;
  v22[1] = sub_2722B00A0(&qword_280882820, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
  v19 = v23;
  result = sub_27237848C();
  if (v19)
  {
    (*(v6 + 8))(v8, v5);
    sub_2722039C8(a1);

    goto LABEL_4;
  }

  if (!v26)
  {
    goto LABEL_28;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_layerNormScale] = v26;
  v25 = 8;
  result = sub_27237848C();
  if (v26)
  {
    *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_layerNormOffset] = v26;
    LOBYTE(v26) = 9;
    v20 = sub_27237844C();
    (*(v6 + 8))(v8, v5);
    v3[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_vadGated] = v20 & 1;
    v21 = type metadata accessor for VAFixedSpotterModelConfiguration();
    v24.receiver = v3;
    v24.super_class = v21;
    v3 = objc_msgSendSuper2(&v24, sel_init);
    sub_2722039C8(a1);
    return v3;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2722E6DF0(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882B48, &qword_272383BB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  sub_27220300C(a1, a1[3]);
  sub_2722E87B8();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(v9);
  LOBYTE(v24) = 0;
  sub_27237858C();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    (*((*v10 & *v3) + 0xD0))(v12);
    LOBYTE(v24) = 2;
    v13 = sub_2723785CC();
    (*((*v10 & *v3) + 0xE8))(v13);
    LOBYTE(v24) = 3;
    v14 = sub_2723785CC();
    v24 = (*((*v10 & *v3) + 0xB8))(v14);
    v23 = 1;
    sub_2721F065C(&qword_280882B38, &unk_272383BA8);
    sub_2722E8830(&qword_280882B50, MEMORY[0x277D83B90], MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_2723785DC();

    (*((*v10 & *v3) + 0x100))(v15);
    LOBYTE(v24) = 4;
    v16 = sub_2723785CC();
    (*((*v10 & *v3) + 0x118))(v16);
    LOBYTE(v24) = 5;
    v17 = sub_2723785CC();
    (*((*v10 & *v3) + 0x130))(v17);
    LOBYTE(v24) = 6;
    v18 = sub_27237859C();
    v24 = (*((*v10 & *v3) + 0x148))(v18);
    v23 = 7;
    v19 = sub_2721F065C(&qword_280881858, &unk_27237C260);
    sub_2722B00A0(&qword_2808827F0, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    v22 = v19;
    sub_2723785DC();

    v24 = (*((*v10 & *v3) + 0x160))(v20);
    v23 = 8;
    sub_2723785DC();

    (*((*v10 & *v3) + 0x178))(v21);
    LOBYTE(v24) = 9;
    sub_27237859C();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_2722E7418(uint64_t a1, uint64_t a2)
{
  sub_2722E88A0(&qword_280882B58, a2, type metadata accessor for VAFixedSpotterModelConfiguration, &protocol conformance descriptor for VAFixedSpotterModelConfiguration);
  result = sub_2722E74F0(v2);
  if (v5)
  {
    if (result == 0x8000000000000000)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      v6 = result;
      v7 = v4;
      sub_27237836C();
      sub_27222F3E8(v6, v7, 1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2722E74F0(uint64_t a1)
{
  v1 = sub_27237788C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272376AFC();
  MEMORY[0x28223BE20](v2);
  sub_272376B3C();
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  *(swift_allocObject() + 16) = xmmword_27237AF90;
  sub_272376ADC();
  sub_272376ACC();
  sub_2722E88A0(&qword_280881C78, 255, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_27222F414();
  sub_27237815C();
  sub_272376B0C();
  type metadata accessor for VAFixedSpotterModelConfiguration();
  sub_2722E88A0(&qword_280882B60, v3, type metadata accessor for VAFixedSpotterModelConfiguration, &protocol conformance descriptor for VAFixedSpotterModelConfiguration);
  v4 = sub_272376B1C();
  v6 = v5;
  sub_27237787C();
  v7 = sub_27237784C();
  if (v8)
  {
    v9 = v7;
    sub_2721F05C8(v4, v6);

    return v9;
  }

  else
  {
    sub_2721F05C8(v4, v6);

    return 0;
  }
}

id VAFixedSpotterModelConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAFixedSpotterModelConfiguration.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VAFixedSpotterModelConfiguration();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2722E7918@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 424))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id static VAFixedSpotterModelConfiguration.buildForFixedA2T(modelFilepath:modelConfigJsonFilepath:vadGated:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for VAFixedSpotterModelConfiguration());

  return sub_2722E83C8(a1, a2, a3, a4);
}

id static VAFixedSpotterModelConfiguration.buildForFixedA2TDefault(vadGated:)()
{
  v0 = sub_27235D4A8();
  v1 = *v0;
  v2 = v0[1];

  v3 = sub_27235D4D0();
  v4 = *v3;
  v5 = v3[1];
  v6 = objc_allocWithZone(type metadata accessor for VAFixedSpotterModelConfiguration());

  return sub_2722E83C8(v1, v2, v4, v5);
}

uint64_t sub_2722E7B10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C69466C65646F6DLL && a2 == 0xED0000656D616E65;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238F340 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000027238F360 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x706E496C65646F6DLL && a2 == 0xEE00657A69537475 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000272389E50 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000272389E70 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E564D43657375 && a2 == 0xE700000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F4E726579616CLL && a2 == 0xEE00656C6163536DLL || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F4E726579616CLL && a2 == 0xEF74657366664F6DLL || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6465746147646176 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_2722E7E5C(uint64_t a1, unint64_t a2)
{
  v38 = sub_27237728C();
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  v7 = sub_2723777FC();
  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
  }

  else
  {
    v9 = sub_2723777FC();
    v10 = [v9 pathExtension];

    v11 = sub_27237782C();
    v13 = v12;

    v14 = sub_2723777FC();
    v15 = [v14 stringByDeletingPathExtension];

    v16 = sub_27237782C();
    v18 = v17;

    sub_2722560E0(v16, v18, v11, v13);
    v20 = v19;
    v22 = v21;

    if (!v22)
    {
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_27237820C();

      v40 = 0xD00000000000002DLL;
      v41 = 0x800000027238F3F0;
      MEMORY[0x2743C4AD0](a1, a2);
LABEL_10:
      v34 = v40;
      v35 = v41;
      sub_2722032B4();
      swift_allocError();
      *v36 = v34;
      v36[1] = v35;
      swift_willThrow();
      return a1;
    }

    a1 = v20;
    a2 = v22;
  }

  v23 = [v5 defaultManager];
  v24 = sub_2723777FC();
  v25 = [v23 isReadableFileAtPath_];

  v26 = v42;
  v27 = v39;
  if ((v25 & 1) == 0)
  {
    v28 = sub_2722C389C();
    v29 = v38;
    (*(v26 + 16))(v27, v28, v38);

    v30 = sub_27237725C();
    v31 = sub_272377E8C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_2721FFD04(a1, a2, &v40);
      _os_log_impl(&dword_2721E4000, v30, v31, "File not readable in %s", v32, 0xCu);
      sub_2722039C8(v33);
      MEMORY[0x2743C69C0](v33, -1, -1);
      MEMORY[0x2743C69C0](v32, -1, -1);
    }

    (*(v26 + 8))(v27, v29);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_27237820C();

    v40 = 0xD000000000000023;
    v41 = 0x800000027238F420;
    MEMORY[0x2743C4AD0](a1, a2);

    goto LABEL_10;
  }

  return a1;
}

unint64_t sub_2722E827C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VAFixedSpotterModelConfiguration();
  v5 = sub_2722E88A0(&qword_280882B58, v4, type metadata accessor for VAFixedSpotterModelConfiguration, &protocol conformance descriptor for VAFixedSpotterModelConfiguration);
  sub_272254F78(v5, &v10);
  v6 = v10;
  if (v11)
  {
    if (v10 == 0x8000000000000000)
    {
      sub_27237820C();

      MEMORY[0x2743C4AD0](a1, a2);
      v6 = 0x800000027238F3C0;
      sub_2722032B4();
      swift_allocError();
      *v7 = 0xD000000000000029;
      v7[1] = 0x800000027238F3C0;
    }

    else
    {
      sub_272204304();
      swift_allocError();
      *v8 = v6;
    }

    swift_willThrow();
  }

  return v6;
}

id sub_2722E83C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v24 = a1;
    v25 = a2;

    MEMORY[0x2743C4AD0](0x2E6769666E6F632FLL, 0xEC0000006E6F736ALL);
    a3 = v24;
    v9 = v25;
  }

  v10 = sub_2722E7E5C(a3, v9);
  if (v5)
  {

    type metadata accessor for VAFixedSpotterModelConfiguration();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v11;
    v13 = v10;

    v14 = sub_2722E7E5C(a1, a2);
    v16 = v15;
    v17 = v14;

    v18 = sub_2722E827C(v13, v12);

    v20 = &v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelFilename];
    *v20 = v17;
    v20[1] = v16;
    v21 = MEMORY[0x277D85000];
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_samplesPerPredictionWindow] = (*((*MEMORY[0x277D85000] & *v18) + 0xD0))(v19);
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_keywordsTrainedFor] = (*((*v21 & *v18) + 0xB8))();
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelInputSize] = (*((*v21 & *v18) + 0xE8))();
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldLength] = (*((*v21 & *v18) + 0x100))();
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldStride] = (*((*v21 & *v18) + 0x118))();
    v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_useCMVN] = (*((*v21 & *v18) + 0x130))() & 1;
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_layerNormScale] = (*((*v21 & *v18) + 0x148))();
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_layerNormOffset] = (*((*v21 & *v18) + 0x160))();
    LOBYTE(v21) = (*((*v21 & *v18) + 0x178))();

    v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_vadGated] = v21 & 1;
    v23.receiver = v6;
    v23.super_class = type metadata accessor for VAFixedSpotterModelConfiguration();
    return objc_msgSendSuper2(&v23, sel_init);
  }
}

unint64_t sub_2722E87B8()
{
  result = qword_28088ED00[0];
  if (!qword_28088ED00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088ED00);
  }

  return result;
}

uint64_t sub_2722E8830(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882B38, &unk_272383BA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2722E88A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VAFixedSpotterModelConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VAFixedSpotterModelConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2722E8B44()
{
  result = qword_28088EF10[0];
  if (!qword_28088EF10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088EF10);
  }

  return result;
}

unint64_t sub_2722E8B9C()
{
  result = qword_28088F020;
  if (!qword_28088F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F020);
  }

  return result;
}

unint64_t sub_2722E8BF4()
{
  result = qword_28088F028[0];
  if (!qword_28088F028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088F028);
  }

  return result;
}

uint64_t sub_2722E8C48()
{
  v1 = OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_processedAudioSamples;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E8C8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_processedAudioSamples;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E8D3C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_newSamples;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E8D80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_newSamples;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E903C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void *VAAVSAudioEnroller.__allocating_init(encoder:keywordIdentifier:endpointerConfig:delegate:maxSamplesPerEnrollment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 4);
  v15 = a4[3];
  v16 = a4[4];
  v17 = MEMORY[0x277D84F90];
  *(v11 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_embeddings) = MEMORY[0x277D84F90];
  *(v11 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_silProbs) = v17;
  *(v11 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_floatArr) = v17;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v17;

  sub_272376E4C();
  sub_272277044(a5, v11 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_delegate);
  *(v11 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment) = a6;
  *(v11 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_processedAudioSamples) = 0;
  *(v11 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_newSamples) = 0;
  type metadata accessor for AVSEndpointer();
  v22[0] = v12;
  v22[1] = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  AVSEndpointer.__allocating_init(config:)(v22);
  v19 = v18;

  sub_27227B688(a5);
  *(v11 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_endpointer) = v19;
  return v11;
}

void *VAAVSAudioEnroller.init(encoder:keywordIdentifier:endpointerConfig:delegate:maxSamplesPerEnrollment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v27 = a5;
  v28 = a6;
  v12 = sub_272376E5C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  v16 = a4[1];
  v18 = *(a4 + 4);
  v19 = a4[3];
  v20 = a4[4];
  v26 = v19;
  v21 = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_embeddings) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_silProbs) = v21;
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_floatArr) = v21;
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = v21;

  sub_272376E4C();
  (*(v13 + 32))(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_id, v15, v12);
  v22 = v27;
  sub_272277044(v27, v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_delegate);
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment) = v28;
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_processedAudioSamples) = 0;
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_newSamples) = 0;
  type metadata accessor for AVSEndpointer();
  v29[0] = v17;
  v29[1] = v16;
  v30 = v18;
  v31 = v26;
  v32 = v20;
  AVSEndpointer.__allocating_init(config:)(v29);
  v24 = v23;

  sub_27227B688(v22);
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_endpointer) = v24;
  return v7;
}

uint64_t sub_2722E9424(objc_class *a1)
{
  v3 = (*(*v1 + 336))(v21);
  v4.super.super.isa = a1;
  VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v4, v5);
  if (v6)
  {
    return v3(v21, 1);
  }

  v8 = v3(v21, 0);
  v9 = (*v1 + 320);
  v10 = *v9;
  v11 = *((*v9)(v8) + 16);

  v20 = v11;
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = v12 + 640;
      if (__OFADD__(v12, 640))
      {
        break;
      }

      v11 = *(v10(result) + 16);

      if (v11 >= v13)
      {
        v11 = v12 + 640;
      }

      if (v11 < v12)
      {
        goto LABEL_24;
      }

      result = v10(result);
      v14 = *(result + 16);
      if (v14 < v12 || v14 < v11)
      {
        goto LABEL_25;
      }

      v16 = sub_2722E9620(result, result + 32, v12, (2 * v11) | 1);

      if (v16)
      {
        return result;
      }

      v12 += 640;
      if (v13 >= v20)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_15:
  v17 = *(v10(result) + 16);

  if (v17 < v11)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  result = v10(result);
  v18 = *(result + 16);
  if (v18 < v11 || v18 < v17)
  {
    goto LABEL_27;
  }

  sub_2722E9620(result, result + 32, v11, (2 * v17) | 1);
}

uint64_t (*sub_2722E9620(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4))(void *, void)
{
  v5 = v4;
  v9 = type metadata accessor for VASingleEnrollmentData(0);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_27237728C();
  v49 = *(v54 - 8);
  v11 = MEMORY[0x28223BE20](v54);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = (*(*v4 + 192))(v50);
  v16 = swift_unknownObjectRetain();
  sub_27222291C(v16, a2, a3, a4);
  result = v15(v50, 0);
  v18 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_22;
  }

  result = (*(*v4 + 240))(v50);
  if (__OFADD__(*v19, v18))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *v19 += v18;
  v20 = result(v50, 0);
  v21 = *(*v4 + 176);
  v22 = *((v21)(v20) + 16);

  v24 = *(v4 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment);
  if (v24 < v22)
  {
    v25 = sub_2722C389C();
    (*(v49 + 16))(v14, v25, v54);

    v26 = sub_27237725C();
    v27 = sub_272377E8C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      v29 = *(v21() + 16);

      if (__OFSUB__(v29, v24))
      {
LABEL_24:
        __break(1u);
        return result;
      }

      *(v28 + 4) = v29 - v24;

      _os_log_impl(&dword_2721E4000, v26, v27, "Enrollment is running long, need to reduce %ld samples", v28, 0xCu);
      MEMORY[0x2743C69C0](v28, -1, -1);
    }

    else
    {
    }

    v30 = (*(v49 + 8))(v14, v54);
    v31 = (v21)(v30);
    v32 = (*(*v5 + 200))();
    v33 = __OFSUB__(v24, v32);
    result = (v24 - v32);
    if (!v33)
    {
      v34 = sub_272222744(result, v31);
      (*(*v5 + 184))(v34);
      v23 = (*(*v5 + 208))(0);
      goto LABEL_10;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_10:
  (*(*v5 + 368))(v50, v23);
  v35 = v51;
  if (v51 == 1)
  {
    v36 = sub_2722C389C();
    v37 = v46;
    (*(v49 + 16))(v46, v36, v54);
    v38 = sub_27237725C();
    v39 = sub_272377E7C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2721E4000, v38, v39, "Enrollment audio capture completed", v40, 2u);
      MEMORY[0x2743C69C0](v40, -1, -1);
    }

    (*(v49 + 8))(v37, v54);
    sub_272277044(v5 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_delegate, v50);
    v41 = v52;
    v42 = v47;
    if (v52)
    {
      v43 = v53;
      sub_27220300C(v50, v52);
      v44 = v48;
      (*(*v5 + 384))();
      if (!v44)
      {
        (*(v43 + 8))(v42, v41, v43);
        sub_2722EBA90(v42, type metadata accessor for VASingleEnrollmentData);
      }

      sub_2722039C8(v50);
    }

    else
    {
      sub_27227B688(v50);
    }
  }

  return v35;
}

uint64_t sub_2722E9BDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_27237728C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  (*(*v1 + 376))(v7);
  v10 = 1;
  v12 = v11;
  v23 = a1;
  v13 = (*(*v1 + 296))();
  v14 = (*(*v13 + 440))(v12);

  if (v14)
  {
    v16 = sub_2722C389C();
    (*(v5 + 16))(v9, v16, v4);
    v17 = sub_27237725C();
    v18 = sub_272377E7C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = 1;
      _os_log_impl(&dword_2721E4000, v17, v18, "%{BOOL}d", v19, 8u);
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    v20 = v23;

    v15 = (*(v5 + 8))(v9, v4);
  }

  else
  {
    v10 = 0;
    v20 = v23;
  }

  v21 = *((*(*v2 + 176))(v15) + 16);

  return sub_2722AFC10(v21, *(v2 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment), v10, v20);
}

uint64_t sub_2722E9F5C()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for VAStrideConfiguration();
  v4 = static VAStrideConfiguration.forFlexibleAVS()();
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0xB8))();
  v7 = (*((*v5 & *v4) + 0xD0))();
  v8 = ((*v0)[25])();
  v45 = (*v0)[22];
  v9 = *(v45() + 16);

  v47 = v9 - v6;
  if (__OFSUB__(v9, v6))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    result = swift_unknownObjectRelease();
    __break(1u);
    return result;
  }

  if (!v7)
  {
    goto LABEL_51;
  }

  v40 = v4;
  v11 = v47 >= v8;
  if (v7 > 0)
  {
    v11 = v8 >= v47;
  }

  if (!v11)
  {
    v12 = v6;
    v42 = v6;
    v43 = v7;
    v39 = 4 * v6;
    while (1)
    {
      v15 = __OFADD__(v8, v7) ? ((v8 + v7) >> 63) ^ 0x8000000000000000 : v8 + v7;
      v16 = v8 + v12;
      if (__OFADD__(v8, v12))
      {
        break;
      }

      if (v16 < v8)
      {
        goto LABEL_46;
      }

      v17 = (v45)(v10);
      if (v8 < 0)
      {
        goto LABEL_47;
      }

      v18 = v17;
      v19 = *(v17 + 16);
      if (v19 < v8 || v19 < v16)
      {
        goto LABEL_48;
      }

      if (v19 != v12)
      {
        v35 = MEMORY[0x277D84F90];
        if (v16 != v8)
        {
          if (v42 < 1)
          {
            v36 = v39;
          }

          else
          {
            sub_2721F065C(&qword_280881848, &unk_27237C250);
            v36 = v39;
            v35 = swift_allocObject();
            v37 = j__malloc_size(v35);
            v38 = v37 - 32;
            if (v37 < 32)
            {
              v38 = v37 - 29;
            }

            v35[2] = v42;
            v35[3] = 2 * (v38 >> 2);
          }

          memcpy(v35 + 4, v18 + 4 * v8 + 32, v36);
        }

        v18 = v35;
        v12 = v42;
      }

      if (v18[2] == v12)
      {
        (*(*v3[2] + 264))(v18);
        if (v2)
        {

          return v12;
        }

        type metadata accessor for EncoderPredictionAVS();
        v21 = swift_dynamicCastClass();
        if (!v21)
        {
          goto LABEL_52;
        }

        v22 = v21;
        v23 = *(v21 + 16);
        if (*(v23 + 16))
        {
          v24 = (*v3)[33];

          v44 = v24(v46);
          v26 = v25;
          v27 = *v25;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v26 = v27;
          v41 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v27 = sub_272241E04(0, v27[2] + 1, 1, v27);
            *v26 = v27;
          }

          v30 = v27[2];
          v29 = v27[3];
          if (v30 >= v29 >> 1)
          {
            v27 = sub_272241E04((v29 > 1), v30 + 1, 1, v27);
            *v41 = v27;
          }

          v27[2] = v30 + 1;
          v27[v30 + 4] = v23;
          v44(v46, 0);
          swift_unknownObjectRetain();

          v31 = *(v22 + 24);

          swift_unknownObjectRelease();
          v32 = ((*v3)[36])(v46);
          sub_272207944(v31);
          v32(v46, 0);
          v12 = v42;
        }

        else
        {
        }

        v33 = ((*v3)[27])(v46);
        v7 = v43;
        if (__OFADD__(*v34, v43))
        {
          goto LABEL_49;
        }

        *v34 += v43;
        v33(v46, 0);
        v10 = swift_unknownObjectRelease();
      }

      else
      {
      }

      v14 = v47 >= v15;
      if (v7 > 0)
      {
        v14 = v15 >= v47;
      }

      v8 = v15;
      if (v14)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_6:
  v12 = ((*v3)[31])(v10);
  ((*v3)[34])();

  return v12;
}

uint64_t sub_2722EA4EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_272376E5C();
  v5 = *(v4 - 8);
  v93 = v4;
  v94 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27237728C();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v88 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v79 - v12;
  v13 = (*v1 + 272);
  v14 = *v13;
  (*v13)(v11);

  v86 = v14;
  v87 = v13;
  v16 = (v14)(v15);
  v17 = (*v1 + 296);
  v18 = *v17;
  v19 = (*v17)();
  v20 = (*(*v19 + 216))(v19);

  v22 = (v18)(v21);
  v23 = (*(*v22 + 240))(v22);

  v24 = sub_2722436FC();
  v25 = sub_272243704();
  v26 = sub_272243714();
  v27 = sub_27224371C(v16, v23, v24, v26, v20, v25);
  v29 = v28;

  v31 = *(*v2 + 248);
  v90 = *v2 + 248;
  v32 = v31(v30);
  v33 = *(v27 + 2);
  v95 = a1;
  v96 = v32;
  if (!v33 || !*(v29 + 16))
  {
    v97 = v29;

    v63 = 2;
    v39 = -1;
    v37 = -1;
    goto LABEL_28;
  }

  v84 = v31;
  v85 = v7;
  v34 = sub_27223FF5C();
  v35 = sub_272243EC0(v27, v29, v34);
  v7 = v36;

  v37 = sub_272244258(v35, v7);
  v39 = v38;

  v40 = swift_bridgeObjectRelease_n();
  v97 = v39;
  v41 = *(v39 + 16);
  if (!v41)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (!*(v37 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = (v97 + 32);
  v42 = *(v97 + 32 + 8 * v41 - 8);
  v43 = *(v37 + 32);
  v44 = v42 - v43;
  if (__OFSUB__(v42, v43))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v45 = (v18)(v40);
  v46 = (*(*v45 + 192))(v45);

  if (v46 >= v44)
  {

    v63 = 2;
    v39 = -1;
    v37 = -1;
    v7 = v85;
    goto LABEL_28;
  }

  v39 = *(v37 + 32);

  v47 = *(v97 + 16);
  if (!v47)
  {
    goto LABEL_32;
  }

  v7 = *&v7[8 * v47 - 8];
  v48 = *(v18)(v40);
  v37 = (*(v48 + 288))();

  v49 = __OFSUB__(v39, v37);
  v39 -= v37;
  v50 = v92;
  if (v49)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v51 = (v18)(v40);
  v37 = (*(*v51 + 312))(v51);

  v52 = &v7[v37];
  if (__OFADD__(v7, v37))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v96 = v39;
  v37 = v39 & ~(v39 >> 63);
  v53 = *(v84(v40) + 16);

  if (v53 >= v52)
  {
    v39 = v52;
  }

  else
  {
    v39 = v53;
  }

  v83 = v39 - v37;
  v7 = v91;
  v54 = v89;
  if (__OFSUB__(v39, v37))
  {
    goto LABEL_35;
  }

  v55 = sub_2722C389C();
  v56 = *(v7 + 2);
  v81 = v55;
  v82 = v7 + 16;
  v80 = v56;
  (v56)(v54);

  v57 = sub_27237725C();
  v58 = sub_272377E7C();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v79 = v52;
    v60 = v98;
    *v59 = 136316162;
    *(v59 + 4) = sub_2721FFD04(v2[3], v2[4], &v98);
    *(v59 + 12) = 2048;
    *(v59 + 14) = v37;
    *(v59 + 22) = 2048;
    *(v59 + 24) = v39;
    *(v59 + 32) = 2048;
    *(v59 + 34) = v83;
    *(v59 + 42) = 2048;
    v61 = *(v86() + 16);

    *(v59 + 44) = v61;
    v50 = v92;

    _os_log_impl(&dword_2721E4000, v57, v58, "Enrollment %s clipping to [%ld , %ld](%ld total) frames from original %ld frames", v59, 0x34u);
    sub_2722039C8(v60);
    v62 = v60;
    v52 = v79;
    MEMORY[0x2743C69C0](v62, -1, -1);
    MEMORY[0x2743C69C0](v59, -1, -1);

    v17 = *(v91 + 1);
    v40 = (v17)(v89, v50);
  }

  else
  {

    v17 = *(v7 + 1);
    v40 = (v17)(v54, v50);
  }

  v7 = v85;
  if (v39 < v37)
  {
    goto LABEL_36;
  }

  v40 = v84(v40);
  v64 = *(v40 + 16);
  if (v96 > v64 || v64 < v39)
  {
    goto LABEL_37;
  }

  if (v52 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v64 != v83)
  {
LABEL_39:
    sub_272202180(v40, v40 + 32, v37, (2 * v39) | 1);
    v78 = v77;

    v96 = v78;
    v50 = v92;
    goto LABEL_25;
  }

  v96 = v40;
LABEL_25:
  v65 = v88;
  v80(v88, v81, v50);
  v66 = sub_27237725C();
  v67 = sub_272377E7C();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 134217984;
    *(v68 + 4) = v83;
    _os_log_impl(&dword_2721E4000, v66, v67, "[Enroll] (clusterWindows+getMetaClusters): %ld", v68, 0xCu);
    v69 = v68;
    v7 = v85;
    MEMORY[0x2743C69C0](v69, -1, -1);
  }

  (v17)(v65, v92);
  v63 = 1;
LABEL_28:
  (*(v94 + 16))(v7, v2 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_id, v93);
  v70 = v7;
  v71 = v2[3];
  v72 = v2[4];
  v73 = *(*v2 + 176);

  v75 = v73(v74);
  v99 = v63;
  sub_2722AFA68(v70, v96, v71, v72, v75, v37, v39, &v99, v95);
}

unint64_t sub_2722EAD90()
{
  result = *(v0 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

char *VAAVSAudioEnroller.deinit()
{

  v1 = OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_id;
  v2 = sub_272376E5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_27227B688(v0 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_delegate);

  return v0;
}

uint64_t VAAVSAudioEnroller.__deallocating_deinit()
{
  VAAVSAudioEnroller.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2722EB04C(uint64_t a1)
{
  swift_beginAccess();
  sub_2722E48E4(a1, v1 + 64);
  return swift_endAccess();
}

uint64_t VAAVSAudioEnrollerFactory.__allocating_init(encoder:endpointerConfig:delegate:maxSamplesPerEnrollment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  v11 = *(a2 + 16);
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 64) = 0u;
  *(v10 + 16) = a1;
  *(v10 + 24) = *a2;
  *(v10 + 40) = v11;
  *(v10 + 48) = *(a2 + 24);
  swift_beginAccess();

  sub_2722EB770(a3, v10 + 64);
  swift_endAccess();
  sub_27227B688(a3);
  if (a5)
  {
    a4 = *(a1 + 120);
  }

  *(v10 + 104) = a4;
  return v10;
}

uint64_t VAAVSAudioEnrollerFactory.init(encoder:endpointerConfig:delegate:maxSamplesPerEnrollment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *(a2 + 16);
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = *a2;
  *(v5 + 40) = v10;
  *(v5 + 48) = *(a2 + 24);
  swift_beginAccess();

  sub_2722EB770(a3, v5 + 64);
  swift_endAccess();
  sub_27227B688(a3);
  if (a5)
  {
    a4 = *(a1 + 120);
  }

  *(v5 + 104) = a4;
  return v5;
}

uint64_t sub_2722EB244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a1;
  v39 = a3;
  v31 = sub_27237728C();
  v30[2] = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30[1] = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VARuntimeParameters(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_272376E5C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*v3 + 112);
  v36 = *v14;
  v37 = v14;
  v15 = v36(v11);
  v16 = *(v3 + 24);
  v34 = *(v3 + 32);
  v35 = v16;
  v17 = *(v3 + 40);
  v18 = *(v3 + 48);
  v32 = *(v3 + 56);
  v33 = v18;
  (*(*v3 + 136))(v44);
  v19 = *(v3 + 104);
  v20 = type metadata accessor for VAAVSAudioEnroller(0);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D84F90];
  *(v21 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_embeddings) = MEMORY[0x277D84F90];
  *(v21 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_silProbs) = v22;
  *(v21 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_floatArr) = v22;
  v23 = v38;
  v21[2] = v15;
  v21[3] = v23;
  v21[4] = a2;
  v21[5] = v22;

  sub_272376E4C();
  (*(v10 + 32))(v21 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_id, v13, v9);
  sub_272277044(v44, v21 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_delegate);
  *(v21 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment) = v19;
  *(v21 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_processedAudioSamples) = 0;
  *(v21 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_newSamples) = 0;
  type metadata accessor for AVSEndpointer();
  v40[0] = v35;
  v40[1] = v34;
  v41 = v17;
  v42 = v33;
  v43 = v32;
  AVSEndpointer.__allocating_init(config:)(v40);
  v25 = v24;

  sub_27227B688(v44);
  *(v21 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_endpointer) = v25;
  v26 = VARuntimeParameters.init()(v8);
  v27 = v36(v26);
  (*(*v27 + 96))(v8);

  v28 = v39;
  v39[3] = v20;
  v28[4] = &protocol witness table for VAAVSAudioEnroller;
  *v28 = v21;
  return sub_2722EBA90(v8, type metadata accessor for VARuntimeParameters);
}

uint64_t VAAVSAudioEnrollerFactory.deinit()
{

  sub_27227B688(v0 + 64);
  return v0;
}

uint64_t VAAVSAudioEnrollerFactory.__deallocating_deinit()
{

  sub_27227B688(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_2722EB770(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882228, &qword_27237F4D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for VAAVSAudioEnroller(uint64_t a1)
{
  result = qword_28088F0B0;
  if (!qword_28088F0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2722EB834(uint64_t a1)
{
  result = sub_272376E5C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2722EBA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2722EBAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_2723019C4(a2, v6 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_runtimeParams, type metadata accessor for VARuntimeParameters);
  *(v6 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_kwsDelegate) = a3;
  return v6;
}

uint64_t sub_2722EBB70(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_2722EBB98, 0, 0);
}

uint64_t sub_2722EBB98()
{
  v1 = *((*MEMORY[0x277D85000] & **(v0[2] + 16)) + 0xB0);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_2722EBCC8;
  v4 = v0[3];
  v3 = v0[4];

  return v6(v4, v3);
}

uint64_t sub_2722EBCC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2722EBE40()
{
  v1 = *((*MEMORY[0x277D85000] & **(*(v0 + 16) + 16)) + 0xB8);
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2722EBF68;

  return v4();
}

uint64_t sub_2722EBF68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2722EC07C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_runtimeParams;
  v3 = *((*MEMORY[0x277D85000] & **(v1 + 16)) + 0x268);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2722EC1C4;

  return v6(v1 + v2);
}

uint64_t sub_2722EC1C4(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_2722EC2CC()
{
  sub_2723025AC(v0 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_runtimeParams, type metadata accessor for VARuntimeParameters);

  return swift_deallocClassInstance();
}

uint64_t sub_2722EC35C(uint64_t a1)
{
  v6 = (*(**v1 + 112) + **(**v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_272219D80;

  return v6(a1);
}

uint64_t sub_2722EC4C4()
{
  v4 = (*(**v0 + 128) + **(**v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_272211DBC;

  return v4();
}

uint64_t sub_2722EC5D8()
{
  v4 = (*(**v0 + 136) + **(**v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2722EC6EC;

  return v4();
}

uint64_t sub_2722EC6EC(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_2722EC7F4(void *a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2722C389C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_27237725C();
  v9 = sub_272377E8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_2723786CC();
    v14 = sub_2721FFD04(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2721E4000, v8, v9, "VANRErrorDelegateDefault: %s", v10, 0xCu);
    sub_2722039C8(v11);
    MEMORY[0x2743C69C0](v11, -1, -1);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

char *sub_2722ECA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 5) = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated;
  v15 = sub_27237832C();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  sub_27237833C();
  swift_unknownObjectRelease();
  swift_beginAccess();
  *(v13 + 3) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v13 + 6) = a5;
  *(v13 + 7) = a6;
  *(v13 + 8) = a7;
  *(v13 + 9) = a8;
  return v13;
}

uint64_t sub_2722ECB6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2722ECBCC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2722ECC60;
}

void sub_2722ECC60(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

uint64_t sub_2722ECD20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2722ECD80(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2722ECE14;
}

void sub_2722ECE14(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
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

uint64_t sub_2722ECE98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated;
  swift_beginAccess();
  return sub_2721F07F4(v1 + v3, a1, &qword_280882B68, &unk_2723863E0);
}

uint64_t sub_2722ECF00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated;
  swift_beginAccess();
  sub_27221D3B4(a1, v1 + v3, &qword_280882B68, &unk_2723863E0);
  return swift_endAccess();
}

uint64_t sub_2722ECFD0()
{
  v1 = v0;
  v26 = sub_27237832C();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v24 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - v13;
  v15 = (*(*v0[8] + 784))(v12);
  if ((v17 & 1) == 0)
  {
    v24[0] = v15;
    v24[1] = v16;
    v25 = (*v0)[25];
    v25(v15, v16, v17);
    v18 = *(v2 + 48);
    v19 = v18(v14, 1, v26);
    sub_2721F40F0(v14, &qword_280882B68, &unk_2723863E0);
    if (v19 != 1)
    {
      v20 = sub_27237830C();
      (v25)(v20);
      result = v18(v11, 1, v26);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_27237831C();
      v22 = *(v2 + 8);
      v23 = v26;
      v22(v4, v26);
      v22(v11, v23);
      if ((sub_27237881C() & 1) == 0)
      {
        return 1;
      }
    }

    sub_27237830C();
    (*(v2 + 56))(v8, 0, 1, v26);
    ((*v1)[26])(v8);
  }

  return 0;
}

void sub_2722ED2F0(void *a1)
{
  v77 = sub_272376E5C();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for VANRCollectedEnrollment(0);
  v78 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v79 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v74 - v6;
  v8 = type metadata accessor for VANRNameConfiguration(0);
  v80 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v81 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v74 - v11;
  v13 = sub_27237728C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = (&v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v18 = &v74 - v17;
  v19 = sub_2722C389C();
  v82 = *(v14 + 16);
  v82(v18, v19, v13);
  v20 = a1;
  v21 = sub_27237725C();
  v22 = sub_272377E6C();

  v23 = os_log_type_enabled(v21, v22);
  v85 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v74 = v7;
    v25 = v24;
    v26 = v12;
    v27 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v85;
    *v27 = v85;
    v28 = v85;
    _os_log_impl(&dword_2721E4000, v21, v22, "Matched VAKeywordSpottedEvent: %@", v25, 0xCu);
    sub_2721F40F0(v27, &qword_280881A40, &unk_27237D620);
    v29 = v27;
    v12 = v26;
    v20 = v85;
    MEMORY[0x2743C69C0](v29, -1, -1);
    v30 = v25;
    v7 = v74;
    MEMORY[0x2743C69C0](v30, -1, -1);
  }

  v31 = *(v14 + 8);
  v31(v18, v13);
  if (sub_2722ECFD0())
  {
    v82(v83, v19, v13);
    v32 = sub_27237725C();
    v33 = sub_272377E8C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2721E4000, v32, v33, "Skipping due to debounce", v34, 2u);
      MEMORY[0x2743C69C0](v34, -1, -1);
    }

    v31(v83, v13);
  }

  if (*&v20[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassKeywordMatched + 8])
  {
    v35 = *&v20[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassKeywordMatched];
    v36 = *&v20[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassKeywordMatched + 8];
  }

  else
  {
    v35 = *&v20[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword];
    v36 = *&v20[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword + 8];
  }

  v37 = ObjectType;
  v38 = *(ObjectType + 48);
  v39 = *(v38 + 16);

  if (v39 && (v40 = sub_27220038C(v35, v36), (v41 & 1) != 0))
  {
    v42 = v81;
    sub_27230260C(*(v38 + 56) + *(v80 + 72) * v40, v81, type metadata accessor for VANRNameConfiguration);
    v43 = sub_2723019C4(v42, v12, type metadata accessor for VANRNameConfiguration);
    v44 = v37[7];
    if (*(v44 + 16) && (v43 = sub_27220038C(v35, v36), (v45 & 1) != 0))
    {
      v46 = v79;
      sub_27230260C(*(v44 + 56) + *(v78 + 72) * v43, v79, type metadata accessor for VANRCollectedEnrollment);

      v47 = sub_2723019C4(v46, v7, type metadata accessor for VANRCollectedEnrollment);
      if ((*(*v37 + 152))(v47))
      {
        v83 = v48;
        ObjectType = swift_getObjectType();
        v82 = type metadata accessor for VANRRecognitionEvent(0);
        v49 = v85;
        v81 = *&v85[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_hostTime];
        v50 = v7;
        v51 = v76;
        v52 = v75 + 16;
        v53 = *(v75 + 16);
        v54 = v77;
        v53(v76, v12, v77);
        sub_2721F065C(&qword_280882B70, &unk_272383E80);
        v55 = (*(v52 + 64) + 32) & ~*(v52 + 64);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_27237AF80;
        v53((v56 + v55), v50, v54);
        v57 = *&v49[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_audioBytes];

        v58 = v49;
        v59 = v57;
        v7 = v50;
        sub_2722D44DC(v81, v51, v56, v58, v59);
        v83[1]();
        swift_unknownObjectRelease();
      }

      sub_2723025AC(v7, type metadata accessor for VANRCollectedEnrollment);
    }

    else
    {
      if ((*(*v37 + 176))(v43))
      {
        v68 = v67;
        v69 = swift_getObjectType();
        v86 = 0;
        v87 = 0xE000000000000000;
        sub_27237820C();
        MEMORY[0x2743C4AD0](v35, v36);

        MEMORY[0x2743C4AD0](0xD00000000000003FLL, 0x800000027238F570);
        v70 = v86;
        v71 = v87;
        sub_2722032B4();
        v72 = swift_allocError();
        *v73 = v70;
        v73[1] = v71;
        (*(v68 + 8))(v72, v69, v68);
        swift_unknownObjectRelease();
        sub_2723025AC(v12, type metadata accessor for VANRNameConfiguration);

        return;
      }
    }

    sub_2723025AC(v12, type metadata accessor for VANRNameConfiguration);
  }

  else if ((*(*v37 + 176))(v40))
  {
    v61 = v60;
    v62 = swift_getObjectType();
    v86 = 0;
    v87 = 0xE000000000000000;
    sub_27237820C();
    MEMORY[0x2743C4AD0](v35, v36);

    MEMORY[0x2743C4AD0](0xD000000000000038, 0x800000027238F530);
    v63 = v86;
    v64 = v87;
    sub_2722032B4();
    v65 = swift_allocError();
    *v66 = v63;
    v66[1] = v64;
    (*(v61 + 8))(v65, v62, v61);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_2722EDC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*v4 + 152))();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(a1, a2, a3, a4, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2722EDF10()
{
  sub_272216300(v0 + 16);
  sub_272216300(v0 + 32);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated, &qword_280882B68, &unk_2723863E0);
  v1 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_clock;
  v2 = sub_27237834C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

_OWORD *sub_2722EDFFC(_OWORD *a1)
{
  v2 = swift_allocObject();
  v2[5] = 0u;
  v2[6] = 0u;
  v2[4] = 0u;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();
  sub_27221D3B4(v5, (v2 + 4), &qword_280882B78, qword_272383E90);
  swift_endAccess();
  return v2;
}

uint64_t sub_2722EE0A4()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(**(v0 + 16) + 664))(v4))
  {
    v7 = qword_28088F0C0;
    if (qword_28088F0C0)
    {

      v8 = sub_2722C389C();
      (*(v3 + 16))(v6, v8, v2);
      v9 = sub_27237725C();
      v10 = sub_272377E6C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_2721E4000, v9, v10, "✅ Using static instance", v11, 2u);
        MEMORY[0x2743C69C0](v11, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return v7;
    }

    else
    {
      qword_28088F0C0 = v0;
      swift_retain_n();
    }
  }

  else
  {
  }

  return v1;
}

uint64_t sub_2722EE280(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[17] = v1;
  v2[18] = v3;
  v2[19] = v4;
  return MEMORY[0x2822009F8](sub_2722EE2A8, 0, 0);
}

uint64_t sub_2722EE2A8()
{
  v1 = sub_2722EE0A4();
  swift_beginAccess();
  sub_2721F07F4(v1 + 64, (v0 + 2), &qword_280882B78, qword_272383E90);

  if (v0[5])
  {
    v3 = v0[18];
    v2 = v0[19];
    sub_27221629C((v0 + 2), (v0 + 7));
    sub_2721F40F0((v0 + 2), &qword_280882B78, qword_272383E90);
    v4 = v0[10];
    v5 = v0[11];
    sub_27220300C(v0 + 7, v4);
    v0[15] = v3;
    v0[16] = v2;
    v9 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_2722EE4B8;

    return v9(v0 + 15, v4, v5);
  }

  else
  {
    sub_2721F40F0((v0 + 2), &qword_280882B78, qword_272383E90);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2722EE4B8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2722EE630;
  }

  else
  {
    v2 = sub_2722EE5CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2722EE5CC()
{
  sub_2722039C8((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722EE630()
{
  sub_2722039C8((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722EE694@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_27237728C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = sub_2722EE0A4();
  swift_beginAccess();
  sub_2721F07F4(v8 + 64, v20, &qword_280882B78, qword_272383E90);

  if (*(&v21 + 1))
  {
    v9 = v20;
    return sub_2721F41B4(v9, a1);
  }

  v24 = v5;
  sub_2721F40F0(v20, &qword_280882B78, qword_272383E90);
  type metadata accessor for VANRNameRecognizerBuilder(0);
  v11 = *(v1 + 24);
  v20[0] = *(v1 + 16);
  v20[1] = v11;
  v12 = *(v1 + 48);
  v21 = *(v1 + 32);
  v22 = v12;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_2722EE954(v20, v23);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!v2)
  {
    v13 = sub_2722EE0A4();
    sub_27221629C(v23, v20);
    swift_beginAccess();
    sub_27221D3B4(v20, v13 + 64, &qword_280882B78, qword_272383E90);
    swift_endAccess();

    v14 = sub_2722C389C();
    v15 = v24;
    (*(v24 + 16))(v7, v14, v4);
    v16 = sub_27237725C();
    v17 = sub_272377E7C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2721E4000, v16, v17, "Built a new recognizer", v18, 2u);
      MEMORY[0x2743C69C0](v18, -1, -1);
    }

    (*(v15 + 8))(v7, v4);
    v9 = v23;
    return sub_2721F41B4(v9, a1);
  }

  return result;
}

uint64_t sub_2722EE954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for VANRValidationError(0);
  *&v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_27237728C();
  v53 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v49 - v10;
  v12 = *(a1 + 8);
  *&v58[0] = *a1;
  *(&v58[0] + 1) = v12;
  v13 = *(a1 + 16);
  v55 = *(a1 + 32);
  v56 = v13;
  v58[1] = v13;
  v58[2] = v55;
  type metadata accessor for VANRNameRecognizerBuilder(0);
  v14 = swift_allocObject();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v15 = sub_2722EFE50(v58);
  v16 = v59;
  v17 = (*(*v14 + 288))(v15);
  if (!v16)
  {
    v59 = v5;
    v18 = v53;
    v51 = v3;
    v52 = v6;
    v19 = *(*v14 + 224);
    v20 = *(v19(v17) + 16);

    if (v20)
    {
      v49[2] = 0;
      v49[3] = v14;
      v21 = sub_2722C389C();
      v22 = v18;
      v23 = *(v18 + 16);
      v57 = v21;
      v24 = v52;
      *&v56 = v18 + 16;
      *&v55 = v23;
      v23(v11);
      v25 = sub_27237725C();
      v26 = sub_272377E8C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2721E4000, v25, v26, "Encountered validation errors when building name recognizer.", v27, 2u);
        v28 = v27;
        v22 = v18;
        MEMORY[0x2743C69C0](v28, -1, -1);
      }

      v30 = *(v22 + 8);
      v29 = v22 + 8;
      v54 = v30;
      v31 = (v30)(v11, v24);
      v32 = v19(v31);
      v34 = *(v32 + 16);
      if (v34)
      {
        v35 = *(v50 + 80);
        v49[1] = v32;
        v36 = v32 + ((v35 + 32) & ~v35);
        v37 = *(v50 + 72);
        *&v33 = 138412290;
        v50 = v33;
        v38 = v59;
        v53 = v29;
        do
        {
          (v55)(v9, v57, v24);
          sub_27230260C(v36, v38, type metadata accessor for VANRValidationError);
          v39 = sub_27237725C();
          v40 = sub_272377E8C();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = v50;
            sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError, &protocol conformance descriptor for VANRValidationError);
            swift_allocError();
            v43 = v9;
            v44 = v37;
            sub_27230260C(v59, v45, type metadata accessor for VANRValidationError);
            v46 = _swift_stdlib_bridgeErrorToNSError();
            sub_2723025AC(v59, type metadata accessor for VANRValidationError);
            *(v41 + 4) = v46;
            *v42 = v46;
            v37 = v44;
            v9 = v43;
            _os_log_impl(&dword_2721E4000, v39, v40, "%@", v41, 0xCu);
            sub_2721F40F0(v42, &qword_280881A40, &unk_27237D620);
            v47 = v42;
            v24 = v52;
            MEMORY[0x2743C69C0](v47, -1, -1);
            v38 = v59;
            MEMORY[0x2743C69C0](v41, -1, -1);
          }

          else
          {

            sub_2723025AC(v38, type metadata accessor for VANRValidationError);
          }

          v54(v9, v24);
          v36 += v37;
          --v34;
        }

        while (v34);
      }
    }
  }
}

uint64_t sub_2722EEECC()
{
  v1 = sub_27237728C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_2722EE0A4() + 104);

  if (v5)
  {
    v6 = sub_2722C389C();
    (*(v2 + 16))(v4, v6, v1);
    v7 = sub_27237725C();
    v8 = sub_272377E7C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2721E4000, v7, v8, "start() called and there is already a listening task", v9, 2u);
      MEMORY[0x2743C69C0](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_2722EE694(v14);
    if (!v0)
    {
      v10 = v15;
      v11 = v16;
      sub_27220300C(v14, v15);
      v5 = (*(v11 + 16))(v10, v11);
      sub_2722039C8(v14);
      *(sub_2722EE0A4() + 104) = v5;
    }
  }

  return v5;
}

uint64_t sub_2722EF110()
{
  v1 = sub_2722EE0A4();
  swift_beginAccess();
  sub_2721F07F4(v1 + 64, v0 + 16, &qword_280882B78, qword_272383E90);

  if (*(v0 + 40))
  {
    sub_27221629C(v0 + 16, v0 + 96);
    sub_2721F40F0(v0 + 16, &qword_280882B78, qword_272383E90);
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    sub_27220300C((v0 + 96), v2);
    v8 = (*(v3 + 24) + **(v3 + 24));
    v4 = swift_task_alloc();
    *(v0 + 192) = v4;
    *v4 = v0;
    v4[1] = sub_2722EF360;

    return v8(v2, v3);
  }

  else
  {
    sub_2721F40F0(v0 + 16, &qword_280882B78, qword_272383E90);
    v6 = sub_2722EE0A4();
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_beginAccess();
    sub_27221D3B4(v0 + 56, v6 + 64, &qword_280882B78, qword_272383E90);
    swift_endAccess();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2722EF360()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2722EF538;
  }

  else
  {
    v2 = sub_2722EF474;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2722EF474()
{
  sub_2722039C8((v0 + 96));
  v1 = sub_2722EE0A4();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_beginAccess();
  sub_27221D3B4(v0 + 56, v1 + 64, &qword_280882B78, qword_272383E90);
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722EF538()
{
  sub_2722039C8((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722EF5BC()
{
  sub_2722EE694((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_27220300C(v0 + 2, v1);
  v5 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2722EF730;

  return v5(v1, v2);
}

uint64_t sub_2722EF730(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_2722EF8C4;
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v5 = sub_2722EF85C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2722EF85C()
{
  sub_2722039C8((v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_2722EF8C4()
{
  sub_2722039C8((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2722EF92C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_2721F40F0(v0 + 64, &qword_280882B78, qword_272383E90);

  return swift_deallocClassInstance();
}

uint64_t sub_2722EF9B4(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_272219D80;

  return v6(a1);
}

uint64_t sub_2722EFB1C()
{
  v4 = (*(**v0 + 192) + **(**v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_272219D80;

  return v4();
}

uint64_t sub_2722EFC30()
{
  v4 = (*(**v0 + 200) + **(**v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_27230277C;

  return v4();
}

double sub_2722EFD44()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2722EFD8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_validationErrors;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2722EFE50(__int128 *a1)
{
  v155 = type metadata accessor for VANRValidationError(0);
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v161 = &v144 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_272376EBC();
  v4 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v160 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_27237728C();
  v6 = *(v184 - 8);
  v7 = MEMORY[0x28223BE20](v184);
  v9 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v169 = &v144 - v11;
  MEMORY[0x28223BE20](v10);
  v171 = &v144 - v12;
  v13 = type metadata accessor for VANRCollectedEnrollment(0);
  v144 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v174 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v164 = &v144 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v144 - v19;
  MEMORY[0x28223BE20](v18);
  v183 = &v144 - v21;
  v151 = type metadata accessor for VANRNameConfiguration(0);
  v22 = *(v151 - 8);
  v23 = MEMORY[0x28223BE20](v151);
  v170 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v153 = &v144 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v163 = &v144 - v28;
  MEMORY[0x28223BE20](v27);
  v182 = &v144 - v29;
  v30 = type metadata accessor for VARuntimeParameters(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x277D84F90];
  *(v1 + 64) = sub_2723015D0(MEMORY[0x277D84F90]);
  v175 = (v1 + 64);
  *(v1 + 72) = sub_2723017B8(v33);
  v162 = (v1 + 72);
  *(v1 + 80) = 0;
  *(v1 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_validationErrors) = v33;
  v34 = *a1;
  v35 = a1[2];
  *(v1 + 32) = a1[1];
  *(v1 + 48) = v35;
  *(v1 + 16) = v34;
  VARuntimeParameters.init()(v32);
  v36 = sub_2723019C4(v32, v1 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams, type metadata accessor for VARuntimeParameters);
  v37 = *(*v1 + 264);
  v165 = v1;
  v37(&v185, v36);
  v39 = v185;
  v148 = *(v185 + 16);
  if (v148)
  {
    v40 = 0;
    v41 = 0;
    v42 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v152 = OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_validationErrors;
    v147 = v185 + v42;
    v180 = (v6 + 8);
    v181 = (v6 + 16);
    v156 = (v4 + 8);
    *&v38 = 134218242;
    v158 = v38;
    *&v38 = 136315650;
    v150 = v38;
    v159 = v9;
    v43 = v169;
    v44 = v171;
    v157 = v20;
    v45 = v183;
    v146 = v22;
    v145 = v185;
    while (v40 < *(v39 + 16))
    {
      v46 = *(v22 + 72);
      v149 = v40;
      v167 = v46;
      v47 = v147 + v46 * v40;
      v48 = v182;
      sub_27230260C(v47, v182, type metadata accessor for VANRNameConfiguration);
      v49 = *(v48 + *(v151 + 24));
      v50 = *(v49 + 16);
      if (v50)
      {
        v166 = *(v151 + 28);
        v51 = v49 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
        v176 = *(v144 + 72);
        while (1)
        {
          v172 = v51;
          v173 = v50;
          sub_27230260C(v51, v45, type metadata accessor for VANRCollectedEnrollment);
          v185 = 0x656D6C6C6F726E65;
          v186 = 0xEB000000005F746ELL;
          v187 = v41;
          v52 = sub_27237862C();
          MEMORY[0x2743C4AD0](v52);

          v54 = v185;
          v53 = v186;
          v55 = sub_2722C389C();
          v56 = *v181;
          v177 = v55;
          v178 = v56;
          (v56)(v44);
          sub_27230260C(v45, v20, type metadata accessor for VANRCollectedEnrollment);
          v57 = sub_27237725C();
          v58 = sub_272377E7C();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v185 = v60;
            *v59 = v158;
            *(v59 + 4) = v41;
            *(v59 + 12) = 2080;
            sub_272376E5C();
            sub_272302674(&qword_280881BA8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v61 = sub_27237862C();
            v63 = v62;
            sub_2723025AC(v20, type metadata accessor for VANRCollectedEnrollment);
            v64 = sub_2721FFD04(v61, v63, &v185);

            *(v59 + 14) = v64;
            _os_log_impl(&dword_2721E4000, v57, v58, "Enrollment number: %ld - Name configuration UUID: %s", v59, 0x16u);
            sub_2722039C8(v60);
            v65 = v60;
            v43 = v169;
            MEMORY[0x2743C69C0](v65, -1, -1);
            MEMORY[0x2743C69C0](v59, -1, -1);

            v66 = *v180;
            v67 = v171;
          }

          else
          {

            sub_2723025AC(v20, type metadata accessor for VANRCollectedEnrollment);
            v66 = *v180;
            v67 = v44;
          }

          v179 = v66;
          v66(v67, v184);
          v178(v43, v177, v184);
          v68 = v164;
          sub_27230260C(v183, v164, type metadata accessor for VANRCollectedEnrollment);
          v69 = sub_27237725C();
          v70 = sub_272377E7C();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v185 = v72;
            *v71 = v158;
            *(v71 + 4) = v41;
            *(v71 + 12) = 2080;
            sub_272376E5C();
            v73 = v68;
            sub_272302674(&qword_280881BA8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v74 = sub_27237862C();
            v76 = v75;
            sub_2723025AC(v73, type metadata accessor for VANRCollectedEnrollment);
            v77 = v74;
            v20 = v157;
            v78 = sub_2721FFD04(v77, v76, &v185);

            *(v71 + 14) = v78;
            _os_log_impl(&dword_2721E4000, v69, v70, "Enrollment number: %ld - Collected enrollment UUID: %s", v71, 0x16u);
            sub_2722039C8(v72);
            v79 = v72;
            v43 = v169;
            MEMORY[0x2743C69C0](v79, -1, -1);
            MEMORY[0x2743C69C0](v71, -1, -1);
          }

          else
          {

            sub_2723025AC(v68, type metadata accessor for VANRCollectedEnrollment);
          }

          v179(v43, v184);
          v80 = v159;
          v81 = v175;
          swift_beginAccess();
          v82 = v163;
          sub_27230260C(v182, v163, type metadata accessor for VANRNameConfiguration);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v187 = *v81;
          v84 = v187;
          *v81 = 0x8000000000000000;
          v85 = sub_27220038C(v54, v53);
          v87 = v84[2];
          v88 = (v86 & 1) == 0;
          v89 = __OFADD__(v87, v88);
          v90 = v87 + v88;
          if (v89)
          {
            break;
          }

          v91 = v86;
          if (v84[3] >= v90)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v141 = v85;
              sub_272300E38();
              v85 = v141;
            }
          }

          else
          {
            sub_2723002EC(v90, isUniquelyReferenced_nonNull_native);
            v85 = sub_27220038C(v54, v53);
            if ((v91 & 1) != (v92 & 1))
            {
              goto LABEL_51;
            }
          }

          v93 = v183;
          v94 = v187;
          if (v91)
          {
            sub_272302710(v82, v187[7] + v85 * v167, type metadata accessor for VANRNameConfiguration);
          }

          else
          {
            v187[(v85 >> 6) + 8] |= 1 << v85;
            v95 = (v94[6] + 16 * v85);
            *v95 = v54;
            v95[1] = v53;
            sub_2723019C4(v82, v94[7] + v85 * v167, type metadata accessor for VANRNameConfiguration);
            v96 = v94[2];
            v89 = __OFADD__(v96, 1);
            v97 = v96 + 1;
            if (v89)
            {
              goto LABEL_48;
            }

            v94[2] = v97;
          }

          *v175 = v94;
          swift_endAccess();
          v98 = v162;
          swift_beginAccess();
          sub_27230260C(v93, v174, type metadata accessor for VANRCollectedEnrollment);
          v99 = swift_isUniquelyReferenced_nonNull_native();
          v187 = *v98;
          v100 = v187;
          *v98 = 0x8000000000000000;
          v101 = sub_27220038C(v54, v53);
          v103 = v100[2];
          v104 = (v102 & 1) == 0;
          v89 = __OFADD__(v103, v104);
          v105 = v103 + v104;
          if (v89)
          {
            goto LABEL_46;
          }

          v106 = v102;
          if (v100[3] >= v105)
          {
            if ((v99 & 1) == 0)
            {
              v142 = v101;
              sub_272300BE0();
              v101 = v142;
            }
          }

          else
          {
            sub_2722FFF74(v105, v99);
            v101 = sub_27220038C(v54, v53);
            if ((v106 & 1) != (v107 & 1))
            {
              goto LABEL_51;
            }
          }

          v45 = v183;
          v108 = v187;
          if (v106)
          {
            sub_272302710(v174, v187[7] + v101 * v176, type metadata accessor for VANRCollectedEnrollment);
          }

          else
          {
            v187[(v101 >> 6) + 8] |= 1 << v101;
            v109 = (v108[6] + 16 * v101);
            *v109 = v54;
            v109[1] = v53;
            sub_2723019C4(v174, v108[7] + v101 * v176, type metadata accessor for VANRCollectedEnrollment);
            v110 = v108[2];
            v89 = __OFADD__(v110, 1);
            v111 = v110 + 1;
            if (v89)
            {
              goto LABEL_49;
            }

            v108[2] = v111;
          }

          *v98 = v108;
          swift_endAccess();
          v112 = v170;
          if (v41 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_47;
          }

          v113 = v160;
          sub_272376E6C();
          sub_272302674(&qword_280882BA8, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
          v114 = v168;
          v115 = sub_2723777DC();
          (*v156)(v113, v114);
          if ((v115 & 1) == 0)
          {
            v178(v80, v177, v184);
            v116 = v182;
            v117 = v153;
            sub_27230260C(v182, v153, type metadata accessor for VANRNameConfiguration);
            sub_27230260C(v116, v112, type metadata accessor for VANRNameConfiguration);
            v118 = sub_27237725C();
            v119 = sub_272377E8C();
            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              v121 = swift_slowAlloc();
              v185 = v121;
              *v120 = v150;
              sub_272376E5C();
              sub_272302674(&qword_280881BA8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v122 = sub_27237862C();
              v124 = v123;
              sub_2723025AC(v117, type metadata accessor for VANRNameConfiguration);
              v125 = sub_2721FFD04(v122, v124, &v185);

              *(v120 + 4) = v125;
              *(v120 + 12) = 2080;
              sub_272302674(&qword_280882BC8, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
              v126 = sub_27237862C();
              v128 = v127;
              v43 = v169;
              sub_2723025AC(v170, type metadata accessor for VANRNameConfiguration);
              v129 = sub_2721FFD04(v126, v128, &v185);

              *(v120 + 14) = v129;
              *(v120 + 22) = 2080;
              v130 = MEMORY[0x2743C4C60](&unk_28818E500, MEMORY[0x277D837D0]);
              v132 = sub_2721FFD04(v130, v131, &v185);

              *(v120 + 24) = v132;
              _os_log_impl(&dword_2721E4000, v118, v119, "Name %s untested locale: %s. We have only tested %s", v120, 0x20u);
              swift_arrayDestroy();
              v133 = v121;
              v45 = v183;
              MEMORY[0x2743C69C0](v133, -1, -1);
              MEMORY[0x2743C69C0](v120, -1, -1);
            }

            else
            {

              sub_2723025AC(v112, type metadata accessor for VANRNameConfiguration);
              sub_2723025AC(v117, type metadata accessor for VANRNameConfiguration);
            }

            v179(v80, v184);
            v134 = sub_272376E5C();
            (*(*(v134 - 8) + 16))(v161, v182, v134);
            swift_storeEnumTagMultiPayload();
            v135 = v165;
            v136 = v152;
            swift_beginAccess();
            v137 = *(v135 + v136);
            v138 = swift_isUniquelyReferenced_nonNull_native();
            *(v135 + v136) = v137;
            v20 = v157;
            if ((v138 & 1) == 0)
            {
              v137 = sub_2722FFD78(0, v137[2] + 1, 1, v137);
              *(v165 + v136) = v137;
            }

            v140 = v137[2];
            v139 = v137[3];
            if (v140 >= v139 >> 1)
            {
              v137 = sub_2722FFD78((v139 > 1), v140 + 1, 1, v137);
            }

            v137[2] = v140 + 1;
            sub_2723019C4(v161, v137 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v140, type metadata accessor for VANRValidationError);
            *(v165 + v136) = v137;
            swift_endAccess();
          }

          sub_2723025AC(v45, type metadata accessor for VANRCollectedEnrollment);
          v51 = v172 + v176;
          v41 = (v41 + 1);
          v50 = v173 - 1;
          v44 = v171;
          if (v173 == 1)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        break;
      }

LABEL_3:
      v40 = v149 + 1;
      sub_2723025AC(v182, type metadata accessor for VANRNameConfiguration);
      v22 = v146;
      v39 = v145;
      if (v40 == v148)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_51:
    result = sub_2723786BC();
    __break(1u);
  }

  else
  {
LABEL_44:

    return v165;
  }

  return result;
}

double sub_2722F1130@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 24);

  return result;
}

uint64_t static VANRNameRecognizerBuilder.buildNameRecognizer(systemConfig:userConfig:delegate:errorDelegate:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v36 = a4;
  v37 = a6;
  v39 = a7;
  v11 = sub_27237728C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = *a2;
  v19 = *(*a1 + 352);
  v38 = a5;
  v20 = v18;
  swift_unknownObjectRetain();

  v40 = a3;
  v21 = swift_unknownObjectRetain();
  LOBYTE(a2) = v19(v21);
  v22 = sub_2722C389C();
  v23 = *(v12 + 16);
  if (a2)
  {
    v23(v17, v22, v11);
    v24 = sub_27237725C();
    v25 = sub_272377E7C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2721E4000, v24, v25, "Returning a VANRNameRecognizer that reconstructs on start()", v26, 2u);
      MEMORY[0x2743C69C0](v26, -1, -1);
    }

    (*(v12 + 8))(v17, v11);
    v27 = type metadata accessor for VANRNameRecognizerBuilderRebuilding();
    v28 = swift_allocObject();
    *(v28 + 80) = 0u;
    *(v28 + 96) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 16) = a1;
    *(v28 + 24) = v20;
    v30 = v36;
    v29 = v37;
    *(v28 + 32) = v40;
    *(v28 + 40) = v30;
    *(v28 + 48) = v38;
    *(v28 + 56) = v29;
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    swift_beginAccess();

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_27221D3B4(&v41, v28 + 64, &qword_280882B78, qword_272383E90);
    swift_endAccess();
    v31 = v39;
    v39[3] = v27;
    v31[4] = &off_28818E6B8;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *v31 = v28;
  }

  else
  {
    v23(v15, v22, v11);
    v33 = sub_27237725C();
    v34 = sub_272377E7C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2721E4000, v33, v34, "Returning a VANRNameRecognizer that will start() and stop() based on the underlying VAKeywordSpotter", v35, 2u);
      MEMORY[0x2743C69C0](v35, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    *&v41 = a1;
    *(&v41 + 1) = v20;
    *&v42 = v40;
    *(&v42 + 1) = v36;
    v43 = v38;
    v44 = v37;
    sub_2722EE954(&v41, v39);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t static VANRNameRecognizerBuilder.validate(systemConfig:userConfig:)(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2721F065C(&qword_280882B88, &unk_272383EB0);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for VANRValidationError(0);
  MEMORY[0x28223BE20](v5);
  v6 = *a2;
  *&v12[0] = a1;
  *(&v12[0] + 1) = v6;
  type metadata accessor for VANRNameRecognizerBuilder(0);
  memset(&v12[1], 0, 32);
  v7 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v8 = sub_2722EFE50(v12);
  v7[80] = 1;
  (*(*v7 + 288))(v12, v8);
  v9 = sub_2722039C8(v12);
  v10 = (*(*v7 + 224))(v9);

  return v10;
}

void sub_2722F18D8(uint64_t *a1@<X8>)
{
  v3 = *(*(*v1 + 256))();
  (*(v3 + 376))(&v4);

  if (v4 == 3)
  {
    sub_2722F19B4(a1);
  }

  else
  {
    sub_2722F2674(a1);
  }
}

void sub_2722F19B4(uint64_t *a1@<X8>)
{
  v3 = v1;
  v82 = a1;
  v4 = sub_27237728C();
  v81 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v83 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_272376EBC();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v88 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for VARuntimeParameters(0);
  v7 = MEMORY[0x28223BE20](v85);
  v80 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v79 - v9;
  v11 = sub_272376D5C();
  v90 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*v1 + 280))(v12);
  v84 = v4;
  v91 = v10;
  if (!v15)
  {
    type metadata accessor for VANRErrorDelegateDefault();
    v15 = swift_allocObject();
  }

  v95 = v15;
  v16 = (*v1 + 256);
  v17 = *v16;
  v18 = v16;
  v19 = (*v16)();
  v20 = (*(*v19 + 640))(v19);

  v93 = v18;
  if (v20)
  {
    type metadata accessor for VANRDebugInfo(0);
    v22 = sub_272315248();

    v24 = *(v17)(v23);
    v25 = (*(v24 + 1176))();
    if (v2)
    {
      swift_unknownObjectRelease();

      return;
    }

    v92 = v17;
    v49 = v25;
    v50 = v26;

    (*(*v22 + 264))(v49, v50);
    sub_272318968();
    (*(*v22 + 312))(v14);
    v89 = 0;
    (*(v90 + 8))(v14, v11);

    v27 = v22;
  }

  else
  {
    v92 = v17;
    v89 = v2;
    v27 = 0;
  }

  (*(*v3 + 272))(v21);
  v29 = v28;
  swift_beginAccess();
  v30 = v3[8];
  swift_beginAccess();
  v31 = v3[9];
  v32 = v3[2];
  type metadata accessor for VANRDelegateBridge(0);
  v33 = swift_allocObject();
  *(v33 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v33 + 5) = 0;
  swift_unknownObjectWeakInit();
  v34 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated;
  v35 = sub_27237832C();
  (*(*(v35 - 8) + 56))(&v33[v34], 1, 1, v35);

  sub_27237833C();
  swift_beginAccess();
  *(v33 + 3) = v29;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v33 + 6) = v30;
  *(v33 + 7) = v31;
  *(v33 + 8) = v32;
  *(v33 + 9) = v27;
  type metadata accessor for VASpeechAPISpotterV2();
  v36 = swift_retain_n();
  v37 = v92;
  v38 = *v92(v36);
  v39 = (*(v38 + 496))();

  v40 = v89;
  v41 = VASpeechAPISpotterV2.__allocating_init(delegate:asrDelegate:speechDetectorDelegate:stringMatchingStrategy:)(v33, v33, 0, v39);
  if (v40)
  {
    swift_unknownObjectRelease();

    return;
  }

  v42 = v41;
  v43 = v91;
  (*((*MEMORY[0x277D85000] & *v41) + 0xC0))();
  v44 = v3 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams;
  swift_beginAccess();
  v91 = v44;
  sub_272302710(v43, v44, type metadata accessor for VARuntimeParameters);
  swift_endAccess();
  v45 = v3[8];
  v46 = *(v45 + 16);
  if (v46)
  {
    v90 = v27;
    v47 = sub_2722702A8(v46, 0);
    v89 = sub_2722DD9D8(v94, v47 + 4, v46, v45);
    v48 = v94[0];
    v79[2] = v94[2];
    v79[1] = v94[3];
    v79[0] = v94[4];

    sub_272270484(v48);
    if (v89 != v46)
    {
      __break(1u);
      return;
    }

    v27 = v90;
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  v51 = v91;
  *v91 = v47;

  v53 = v37(v52);
  swift_beginAccess();
  (*(*v53 + 1168))(v51);
  swift_endAccess();

  v55 = v88;
  (*(*v3 + 320))(v54);
  swift_beginAccess();
  (*(v86 + 40))(&v51[*(v85 + 108)], v55, v87);
  swift_endAccess();
  v56 = *(*v3 + 312);
  v57 = v42;
  v56();
  v58 = sub_2722C389C();
  v59 = v81;
  v60 = v83;
  (*(v81 + 16))(v83, v58, v84);

  v61 = sub_27237725C();
  LODWORD(v53) = sub_272377E7C();

  LODWORD(v93) = v53;
  v62 = v53;
  v63 = v61;
  if (os_log_type_enabled(v61, v62))
  {
    v64 = swift_slowAlloc();
    v89 = v64;
    v92 = swift_slowAlloc();
    v94[0] = v92;
    *v64 = 136315138;

    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    v65 = sub_27237773C();
    v90 = v27;
    v66 = v65;
    v67 = v59;
    v69 = v68;

    v70 = sub_2721FFD04(v66, v69, v94);

    v71 = v89;
    *(v89 + 4) = v70;
    v72 = v91;
    v73 = v71;
    _os_log_impl(&dword_2721E4000, v63, v93, "%s", v71, 0xCu);
    v74 = v92;
    sub_2722039C8(v92);
    MEMORY[0x2743C69C0](v74, -1, -1);
    MEMORY[0x2743C69C0](v73, -1, -1);

    (*(v67 + 8))(v83, v84);
  }

  else
  {

    (*(v59 + 8))(v60, v84);
    v72 = v91;
  }

  v75 = v80;
  sub_27230260C(v72, v80, type metadata accessor for VARuntimeParameters);
  v76 = type metadata accessor for VANRSpotterBridge(0);
  v77 = swift_allocObject();
  *(v77 + 16) = v57;
  sub_2723019C4(v75, v77 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_runtimeParams, type metadata accessor for VARuntimeParameters);
  *(v77 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_kwsDelegate) = v33;
  v78 = v82;
  v82[3] = v76;
  v78[4] = &off_28818E680;
  swift_unknownObjectRelease();

  *v78 = v77;
}

void *sub_2722F25E4(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2722702A8(a1[2], 0);
  v4 = sub_2722DD9D8(&v6, v3 + 4, v2, a1);
  sub_272270484(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_2722F2674(uint64_t *a1@<X8>)
{
  v467 = a1;
  v472 = sub_272376EBC();
  v471 = *(v472 - 8);
  MEMORY[0x28223BE20](v472);
  v473 = &v437 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VASingleEnrollmentData(0);
  v465 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v464 = &v437 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v461 = &v437 - v7;
  v470 = type metadata accessor for VARuntimeParameters(0);
  v8 = MEMORY[0x28223BE20](v470);
  v466 = &v437 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v474 = &v437 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v437 - v12;
  v478 = sub_272376D5C();
  v477 = *(v478 - 8);
  MEMORY[0x28223BE20](v478);
  v476 = &v437 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v487 = type metadata accessor for VANRValidationError(0);
  v486 = *(v487 - 8);
  v15 = MEMORY[0x28223BE20](v487);
  v485 = (&v437 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v490 = (&v437 - v17);
  v500 = sub_27237728C();
  v484 = *(v500 - 8);
  v18 = MEMORY[0x28223BE20](v500);
  v469 = &v437 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v463 = &v437 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v460 = &v437 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v459 = &v437 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v462 = &v437 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v468 = &v437 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v437 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v437 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  *&v482 = &v437 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  *&v481 = &v437 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v483 = &v437 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v498 = &v437 - v43;
  MEMORY[0x28223BE20](v42);
  v499 = &v437 - v44;
  v497 = type metadata accessor for VANRCollectedEnrollment(0);
  v494 = *(v497 - 8);
  v45 = MEMORY[0x28223BE20](v497);
  v493 = &v437 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v492 = &v437 - v48;
  MEMORY[0x28223BE20](v47);
  v502 = (&v437 - v49);
  v50 = type metadata accessor for VANRNameConfiguration(0);
  v489 = *(v50 - 8);
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v491 = &v437 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v501 = &v437 - v54;
  MEMORY[0x28223BE20](v53);
  v488 = (&v437 - v55);
  v56 = sub_2721F065C(&qword_280882BD0, &unk_272384178);
  v57 = MEMORY[0x28223BE20](v56 - 8);
  v496 = &v437 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v495 = (&v437 - v60);
  v503 = (*v1 + 256);
  v61 = *v503;
  v62 = *(*v503)(v59);
  (*(v62 + 376))(v513);

  v63 = sub_2722D07AC(v513[0], 4u);
  type metadata accessor for VAConfiguration();
  v479 = v13;
  v475 = v32;
  v480 = v35;
  if (v63)
  {
    v64 = static VAConfiguration.buildForVADShortPredictionWindow()();
  }

  else
  {
    v64 = static VAConfiguration.buildForFlexibleA2Av3()();
  }

  v65 = v64;
  type metadata accessor for VASilenceModel();
  v66 = *((*MEMORY[0x277D85000] & *v65) + 0xE8);
  v67 = v65;
  v68 = v66();
  v70 = v69;

  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v513);
  LOBYTE(v510) = v513[0];
  v71 = sub_27228DC9C(v68, v70, &v510);
  v514 = v2;
  if (v2)
  {
    goto LABEL_9;
  }

  v457 = v4;
  v458 = v71;
  type metadata accessor for VAFeatureExtract();
  v72 = VAFeatureExtract.__allocating_init()();
  v73 = type metadata accessor for VAA2AVerifierModelDTW();
  v74 = sub_27229CFD0();
  v75 = *v61();
  (*(v75 + 376))(&v507);

  if (sub_2722D07AC(v507, 1u) & 1) != 0 || (v76 = v61(), (*(*v76 + 376))(&v507), , (sub_2722D07AC(v507, 2u)))
  {
    v77 = type metadata accessor for VAA2AAudioEncoderModelV3();
    sub_27225A39C(v505);
    v506[0] = v505[0];
    v78 = v514;
    v79 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(v506);
    v514 = v78;
    if (v78)
    {
LABEL_8:

LABEL_9:

      return;
    }

    *(&v508 + 1) = v77;
    v509 = &protocol witness table for VAA2AAudioEncoderModelV3;
    *&v507 = v79;
    sub_2721F41B4(&v507, v513);
    v511 = v73;
    v512 = &protocol witness table for VAA2AVerifierModelDTW;
    v510 = v74;
    v80 = swift_retain_n();
    v81 = *(v61)(v80);
    (*(v81 + 376))(&v507);

    v82 = sub_2722D07AC(v507, 2u);
    (*(*v74 + 288))(v82 & 1);
    v83 = v74;
  }

  else
  {
    v90 = v61();
    (*(*v90 + 376))(&v507);

    if (sub_2722D07AC(v507, 0))
    {
      v91 = type metadata accessor for VAA2AAudioEncoderModelV3();
      sub_27225A39C(v505);
      v506[0] = v505[0];
      v92 = v514;
      v93 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(v506);
      v514 = v92;
      if (v92)
      {
        goto LABEL_8;
      }

      *(&v508 + 1) = v91;
      v509 = &protocol witness table for VAA2AAudioEncoderModelV3;
      *&v507 = v93;
      sub_2721F41B4(&v507, v513);
      v94 = type metadata accessor for VAA2AVerifierModelV3();
      v95 = *v61();
      (*(v95 + 400))(&v507);

      LOBYTE(v505[0]) = v507;
      v96 = v514;
      v97 = VAA2AVerifierModelV3.__allocating_init(computeUnits:)(v505);
      v514 = v96;
      if (v96)
      {
        sub_2722039C8(v513);
        goto LABEL_8;
      }

      v83 = v97;
      v511 = v94;
      v512 = &protocol witness table for VAA2AVerifierModelV3;
      v510 = v97;

      v240 = *(v61)(v239);
      v241 = (*(v240 + 424))();

      if (v241)
      {
        type metadata accessor for VAResultGeneratorVerifier(0);
        *(&v508 + 1) = v94;
        v509 = &protocol witness table for VAA2AVerifierModelV3;
        *&v507 = v83;
        v83 = VAResultGeneratorVerifier.__allocating_init(subVerifier:config:)(&v507, v67);
      }
    }

    else
    {
      v105 = v61();
      (*(*v105 + 376))(&v507);

      if ((sub_2722D07AC(v507, 4u) & 1) == 0)
      {
        *&v507 = 0;
        *(&v507 + 1) = 0xE000000000000000;
        sub_27237820C();
        v111 = MEMORY[0x2743C4AD0](0xD000000000000027, 0x800000027238F880);
        v112 = *(v61)(v111);
        (*(v112 + 376))(v505);

        sub_27237836C();
        v113 = v507;
        sub_2722032B4();
        v114 = swift_allocError();
        *v115 = v113;
        v514 = v114;
        swift_willThrow();
        goto LABEL_8;
      }

      v106 = type metadata accessor for VANoopEncoder();
      v107 = sub_2722043D8();
      v513[3] = v106;
      v513[4] = &protocol witness table for VANoopEncoder;
      v513[0] = v107;
      v108 = type metadata accessor for VAVADVerifier();
      v83 = sub_272204C60();
      v511 = v108;
      v512 = &protocol witness table for VAVADVerifier;
      v510 = v83;

      v110 = *(v61)(v109);
      (*(v110 + 1080))(0);
    }
  }

  type metadata accessor for VAFeatureExtractingEncoder();
  sub_27221629C(v513, &v507);
  v84 = v67;
  v85 = v72;
  v86 = v458;

  v87 = sub_2721F7EE4();
  v88 = v514;
  v89 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(&v507, v85, v86, v84, v87 & 1);
  v514 = v88;
  if (v88)
  {

LABEL_13:

LABEL_14:
    sub_2722039C8(v513);
    sub_2722039C8(&v510);
    return;
  }

  v441 = v85;
  v442 = v89;
  v98 = type metadata accessor for VAA2ABuilderEnrollerDelegate();
  v99 = sub_27227B020();
  *(&v508 + 1) = v98;
  v509 = &off_28817F048;
  *&v507 = v99;

  v101 = v504;
  v102 = *(v61)(v100);
  (*(v102 + 400))(v505);

  v506[0] = v505[0];
  v103 = v514;
  v104 = VAA2ABuildEnrollmentFactoryV3(delegate:computeUnits:)(&v507);
  v514 = v103;
  if (v103)
  {

    sub_2722039C8(v513);
    sub_2722039C8(&v510);
    sub_2721F40F0(&v507, &qword_280882228, &qword_27237F4D0);
    return;
  }

  v437 = v84;
  v448 = v61;
  v439 = v99;
  v438 = v83;
  v447 = v104;
  v440 = v74;
  sub_2721F40F0(&v507, &qword_280882228, &qword_27237F4D0);
  v453 = sub_27229D258(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v116 = *(v101 + 8);
  v117 = *(v116 + 64);
  v446 = v116 + 64;
  v118 = 1 << *(v116 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v120 = v119 & v117;
  v444 = v116;

  v121 = swift_beginAccess();
  v122 = 0;
  v123 = (v118 + 63) >> 6;
  v454 = (v484 + 2);
  v449 = (v484 + 1);
  *&v124 = 136315394;
  v445 = v124;
  v125 = v500;
  v126 = v496;
  for (i = v123; ; v123 = i)
  {
    if (!v120)
    {
      if (v123 <= v122 + 1)
      {
        v128 = v122 + 1;
      }

      else
      {
        v128 = v123;
      }

      v129 = v128 - 1;
      while (1)
      {
        v127 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          break;
        }

        if (v127 >= v123)
        {
          v191 = sub_2721F065C(&qword_280882BD8, &qword_272384188);
          (*(*(v191 - 8) + 56))(v126, 1, 1, v191);
          v120 = 0;
          v122 = v129;
          goto LABEL_41;
        }

        v120 = *(v446 + 8 * v127);
        v122 = (v122 + 1);
        if (v120)
        {
          v122 = v127;
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_113;
    }

    v127 = v122;
LABEL_40:
    v130 = __clz(__rbit64(v120));
    v120 &= v120 - 1;
    v131 = v130 | (v127 << 6);
    v132 = (*(v444 + 48) + 16 * v131);
    v134 = *v132;
    v133 = v132[1];
    v135 = v488;
    sub_27230260C(*(v444 + 56) + *(v489 + 72) * v131, v488, type metadata accessor for VANRNameConfiguration);
    v136 = sub_2721F065C(&qword_280882BD8, &qword_272384188);
    v137 = *(v136 + 48);
    *v126 = v134;
    v126[1] = v133;
    sub_2723019C4(v135, v126 + v137, type metadata accessor for VANRNameConfiguration);
    (*(*(v136 - 8) + 56))(v126, 0, 1, v136);

LABEL_41:
    v138 = v495;
    sub_272302544(v126, v495, &qword_280882BD0, &unk_272384178);
    v139 = sub_2721F065C(&qword_280882BD8, &qword_272384188);
    if ((*(*(v139 - 8) + 48))(v138, 1, v139) == 1)
    {
      break;
    }

    v140 = *v138;
    v141 = v138[1];
    sub_2723019C4(v138 + *(v139 + 48), v501, type metadata accessor for VANRNameConfiguration);
    v142 = *(v504 + 9);
    if (!*(v142 + 16))
    {
      goto LABEL_83;
    }

    v143 = sub_27220038C(v140, v141);
    if ((v144 & 1) == 0)
    {

LABEL_83:

      *&v507 = 0;
      *(&v507 + 1) = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000023, 0x800000027238F8F0);
      MEMORY[0x2743C4AD0](v140, v141);

      MEMORY[0x2743C4AD0](0xD000000000000013, 0x800000027238F920);
      v256 = v507;
      sub_27230206C();
      v257 = swift_allocError();
      *v258 = v256;
      v514 = v257;
      swift_willThrow();

      sub_2723025AC(v501, type metadata accessor for VANRNameConfiguration);
      goto LABEL_14;
    }

    v484 = v140;
    v145 = v492;
    sub_27230260C(*(v142 + 56) + v494[9] * v143, v492, type metadata accessor for VANRCollectedEnrollment);

    v146 = v502;
    sub_2723019C4(v145, v502, type metadata accessor for VANRCollectedEnrollment);
    v456 = *(v146 + *(v497 + 20));
    v147 = sub_2722C389C();
    v148 = *v454;
    v149 = v499;
    v451 = v147;
    v452 = v148;
    (v148)(v499);
    v150 = v491;
    sub_27230260C(v501, v491, type metadata accessor for VANRNameConfiguration);

    v151 = sub_27237725C();
    v152 = sub_272377E7C();

    v153 = os_log_type_enabled(v151, v152);
    v455 = v141;
    if (v153)
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *&v507 = v155;
      *v154 = v445;
      *(v154 + 4) = sub_2721FFD04(v484, v141, &v507);
      *(v154 + 12) = 2080;
      sub_272376E5C();
      sub_272302674(&qword_280881BA8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v156 = sub_27237862C();
      v158 = v157;
      sub_2723025AC(v150, type metadata accessor for VANRNameConfiguration);
      v159 = sub_2721FFD04(v156, v158, &v507);
      v141 = v455;
      v160 = v500;

      *(v154 + 14) = v159;
      _os_log_impl(&dword_2721E4000, v151, v152, "Keyword: %s - Name configuration UUID: %s", v154, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743C69C0](v155, -1, -1);
      MEMORY[0x2743C69C0](v154, -1, -1);

      v161 = v160;
      v450 = *v449;
      (v450)(v499, v160);
      v162 = v498;
    }

    else
    {

      sub_2723025AC(v150, type metadata accessor for VANRNameConfiguration);
      v450 = *v449;
      (v450)(v149, v125);
      v162 = v498;
      v161 = v125;
    }

    v452(v162, v451, v161);
    v163 = v493;
    sub_27230260C(v502, v493, type metadata accessor for VANRCollectedEnrollment);

    v164 = sub_27237725C();
    v165 = sub_272377E7C();

    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      *&v507 = v167;
      *v166 = v445;
      *(v166 + 4) = sub_2721FFD04(v484, v141, &v507);
      *(v166 + 12) = 2080;
      sub_272376E5C();
      sub_272302674(&qword_280881BA8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v168 = sub_27237862C();
      v170 = v169;
      sub_2723025AC(v163, type metadata accessor for VANRCollectedEnrollment);
      v171 = sub_2721FFD04(v168, v170, &v507);
      v172 = v500;

      *(v166 + 14) = v171;
      _os_log_impl(&dword_2721E4000, v164, v165, "Keyword: %s - Collected enrollment UUID: %s", v166, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743C69C0](v167, -1, -1);
      MEMORY[0x2743C69C0](v166, -1, -1);

      (v450)(v498, v172);
      v173 = v514;
    }

    else
    {

      sub_2723025AC(v163, type metadata accessor for VANRCollectedEnrollment);
      (v450)(v162, v161);
      v173 = v514;
      v172 = v161;
    }

    type metadata accessor for VAKeywordSpotterBase();
    v174 = [v456 format];
    v175 = static VAKeywordSpotterBase.isSupportedAudioFormat(_:)(v174);

    if ((v175 & 1) == 0)
    {

      sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError, &protocol conformance descriptor for VANRValidationError);
      v259 = swift_allocError();
      v261 = v260;
      v262 = sub_272376E5C();
      v263 = v502;
      (*(*(v262 - 8) + 16))(v261, v502, v262);
      swift_storeEnumTagMultiPayload();
      v514 = v259;
      swift_willThrow();

      sub_2723025AC(v501, type metadata accessor for VANRNameConfiguration);
      sub_2722039C8(v513);
      sub_2722039C8(&v510);
      sub_2723025AC(v263, type metadata accessor for VANRCollectedEnrollment);
      return;
    }

    v176 = v448();
    v177 = (*(*v176 + 472))(v176);

    v178 = v455;
    if (v177 != 1.0 && (sub_2722F77FC(*(v502 + *(v497 + 24)), 1) & 1) != 0)
    {
      v179 = v448();
      v180 = (*(*v179 + 472))(v179);

      sub_272254228(v180);
      v181 = v483;
      v452(v483, v451, v172);

      v182 = sub_27237725C();
      v183 = sub_272377E7C();

      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        *&v507 = v185;
        *v184 = v445;
        *(v184 + 4) = sub_2721FFD04(v484, v455, &v507);
        *(v184 + 12) = 2048;
        v186 = *v448();
        v187 = (*(v186 + 472))();

        *(v184 + 14) = v187;
        _os_log_impl(&dword_2721E4000, v182, v183, "Keyword: %s - Applying gain: %f", v184, 0x16u);
        sub_2722039C8(v185);
        v178 = v455;
        MEMORY[0x2743C69C0](v185, -1, -1);
        v188 = v184;
        v173 = v514;
        MEMORY[0x2743C69C0](v188, -1, -1);

        v189 = v181;
        v190 = v500;
      }

      else
      {

        v189 = v181;
        v190 = v172;
      }

      (v450)(v189, v190);
    }

    v192 = v484;
    (*(*v447 + 104))(&v507, v484, v178);
    v193 = *(&v508 + 1);
    v194 = v509;
    v195 = v178;
    sub_27220300C(&v507, *(&v508 + 1));
    v196 = mach_absolute_time();
    v197 = v173;
    v198 = v456;
    (v194[1])(v456, v196, v193, v194);
    v514 = v197;
    if (v197)
    {

      sub_2723025AC(v501, type metadata accessor for VANRNameConfiguration);

LABEL_92:
      sub_2722039C8(v513);
      sub_2722039C8(&v510);
      sub_2722039C8(&v507);
      sub_2723025AC(v502, type metadata accessor for VANRCollectedEnrollment);
      return;
    }

    v199 = v453;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v505[0] = v199;
    sub_272300A84(v192, v195, isUniquelyReferenced_nonNull_native, 1.0);
    v201 = v505[0];
    v202 = [v198 frameLength];
    v203 = *(&v508 + 1);
    v101 = v509;
    sub_27220300C(&v507, *(&v508 + 1));
    if (v202 < (*(v101 + 4))(v203, v101))
    {
      v204 = &selRef_environment;
      v205 = [v198 frameLength];
      v206 = *(&v508 + 1);
      v207 = v509;
      sub_27220300C(&v507, *(&v508 + 1));
      v208 = v205 / (v207[4])(v206, v207);
      v209 = swift_isUniquelyReferenced_nonNull_native();
      v505[0] = v201;
      sub_272300A84(v484, v195, v209, v208);

      v210 = v505[0];
      v211 = *(&v508 + 1);
      v212 = v509;
      sub_27220300C(&v507, *(&v508 + 1));
      LODWORD(v211) = (v212[4])(v211, v212);
      v213 = [v198 frameLength];
      v214 = v211 >= v213;
      v215 = v211 - v213;
      if (!v214)
      {
        __break(1u);
        goto LABEL_126;
      }

      v216 = [v198 format];
      v217 = v514;
      v218 = sub_27227B050(v215, v216);
      v514 = v217;
      if (v217)
      {

        sub_2723025AC(v501, type metadata accessor for VANRNameConfiguration);
        goto LABEL_91;
      }

      v219 = v218;

      v220 = sub_272376E5C();
      (*(*(v220 - 8) + 16))(v490, v502, v220);
      swift_storeEnumTagMultiPayload();
      v221 = (*(*v504 + 240))(v505);
      v101 = v222;
      v223 = *v222;
      v224 = swift_isUniquelyReferenced_nonNull_native();
      *v101 = v223;
      v453 = v210;
      v225 = v514;
      if ((v224 & 1) == 0)
      {
        v223 = sub_2722FFD78(0, v223[2] + 1, 1, v223);
        *v101 = v223;
      }

      v227 = v223[2];
      v226 = v223[3];
      if (v227 >= v226 >> 1)
      {
        v223 = sub_2722FFD78((v226 > 1), v227 + 1, 1, v223);
        *v101 = v223;
      }

      v223[2] = v227 + 1;
      sub_2723019C4(v490, v223 + ((*(v486 + 80) + 32) & ~*(v486 + 80)) + *(v486 + 72) * v227, type metadata accessor for VANRValidationError);
      v221(v505, 0);
      v228 = *(&v508 + 1);
      v74 = v509;
      sub_27220300C(&v507, *(&v508 + 1));
      v229 = mach_absolute_time();
      (*(v74 + 8))(v219, v229, v228, v74);
      v514 = v225;
      if (v225)
      {

        sub_2723025AC(v501, type metadata accessor for VANRNameConfiguration);
LABEL_91:

        goto LABEL_92;
      }

LABEL_28:
      v125 = v500;
      v126 = v496;
      goto LABEL_29;
    }

    v453 = v201;

    v230 = [v198 frameLength];
    v231 = *(&v508 + 1);
    v74 = v509;
    sub_27220300C(&v507, *(&v508 + 1));
    if ((*(v74 + 32))(v231, v74) >= v230)
    {
      goto LABEL_28;
    }

    v232 = sub_272376E5C();
    (*(*(v232 - 8) + 16))(v485, v502, v232);
    swift_storeEnumTagMultiPayload();
    v233 = (*(*v504 + 240))(v505);
    v235 = v234;
    v236 = *v234;
    v237 = swift_isUniquelyReferenced_nonNull_native();
    *v235 = v236;
    v126 = v496;
    if ((v237 & 1) == 0)
    {
      v236 = sub_2722FFD78(0, v236[2] + 1, 1, v236);
      *v235 = v236;
    }

    v74 = v236[2];
    v238 = v236[3];
    v101 = (v74 + 1);
    if (v74 >= v238 >> 1)
    {
      v236 = sub_2722FFD78((v238 > 1), v74 + 1, 1, v236);
      *v235 = v236;
    }

    v236[2] = v101;
    sub_2723019C4(v485, v236 + ((*(v486 + 80) + 32) & ~*(v486 + 80)) + *(v486 + 72) * v74, type metadata accessor for VANRValidationError);
    v233(v505, 0);
    v125 = v500;
LABEL_29:
    sub_2723025AC(v501, type metadata accessor for VANRNameConfiguration);
    sub_2722039C8(&v507);
    v121 = sub_2723025AC(v502, type metadata accessor for VANRCollectedEnrollment);
  }

  v243 = v504;
  v244 = *(v448)(v242);
  v245 = (*(v244 + 688))();

  v246 = sub_2722F78B4(v245);

  v247 = v440;
  if (v246)
  {
    v248 = sub_2722C389C();
    v249 = v481;
    (*v454)(v481, v248, v125);
    v250 = sub_27237725C();
    v251 = sub_272377E6C();
    if (os_log_type_enabled(v250, v251))
    {
      v252 = swift_slowAlloc();
      *v252 = 0;
      _os_log_impl(&dword_2721E4000, v250, v251, "Setting keywordToEmbeddingFraction to reduce non-speech embeddings considered by 1st pass model", v252, 2u);
      v253 = v252;
      v243 = v504;
      MEMORY[0x2743C69C0](v253, -1, -1);
    }

    v254 = v125;
    (*v449)(v249, v125);
    v255 = (*(*v247 + 264))(v453);
  }

  else
  {
    v254 = v125;
  }

  v264 = v439;
  v502 = *(*v439 + 96);
  v265 = *(v502(v255) + 16);

  if (v265)
  {
    v267 = sub_2722C389C();
    (*v454)(v482, v267, v254);
    swift_retain_n();
    v268 = sub_27237725C();
    v269 = v264;
    v270 = sub_272377E7C();
    if (os_log_type_enabled(v268, v270))
    {
      v271 = swift_slowAlloc();
      *v271 = 134217984;
      v272 = v502;
      v273 = *((v502)() + 16);

      *(v271 + 4) = v273;
      v254 = v500;

      _os_log_impl(&dword_2721E4000, v268, v270, "Successfully enrolled %ld enrollments.", v271, 0xCu);
      MEMORY[0x2743C69C0](v271, -1, -1);
    }

    else
    {

      v272 = v502;
    }

    (*v449)(v482, v254);
    v274 = v512;
    sub_27220300C(&v510, v511);
    v272();
    v275 = v514;
    (v274[1])();
    v514 = v275;
    if (v275)
    {

      goto LABEL_13;
    }

    v264 = v269;
    v243 = v504;
  }

  v276 = *(*v264 + 120);
  v277 = *((v276)(v266) + 16);

  if (v277)
  {
    v279 = sub_2722C389C();
    v280 = v480;
    (*v454)(v480, v279, v500);

    v281 = sub_27237725C();
    v282 = sub_272377E7C();
    if (os_log_type_enabled(v281, v282))
    {
      v283 = swift_slowAlloc();
      *v283 = 134217984;
      v284 = *(v276() + 16);

      *(v283 + 4) = v284;

      _os_log_impl(&dword_2721E4000, v281, v282, "Failed to enroll %ld enrollments.", v283, 0xCu);
      MEMORY[0x2743C69C0](v283, -1, -1);
    }

    else
    {
    }

    v303 = v441;
    v304 = v437;
    (*v449)(v280, v500);
    *&v507 = 0;
    *(&v507 + 1) = 0xE000000000000000;
    sub_27237820C();

    *&v507 = 0xD000000000000011;
    *(&v507 + 1) = 0x800000027238BD10;
    v306 = *((v276)(v305) + 16);

    v505[0] = v306;
    v307 = sub_27237862C();
    MEMORY[0x2743C4AD0](v307);

    MEMORY[0x2743C4AD0](0x6D6C6C6F726E6520, 0xED00002E73746E65);
    v308 = v507;
    sub_2722032B4();
    v309 = swift_allocError();
    *v310 = v308;
    v514 = v309;
    swift_willThrow();

    goto LABEL_121;
  }

  v285 = *(v502(v278) + 16);

  if (!v285)
  {
    v287 = *((v276)(v286) + 16);

    if (!v287)
    {
      v347 = sub_2722C389C();
      v348 = v475;
      v349 = v500;
      (*v454)(v475, v347, v500);
      v350 = sub_27237725C();
      v351 = sub_272377E8C();
      if (os_log_type_enabled(v350, v351))
      {
        v352 = swift_slowAlloc();
        *v352 = 0;
        _os_log_impl(&dword_2721E4000, v350, v351, "0 enrollments found", v352, 2u);
        MEMORY[0x2743C69C0](v352, -1, -1);
      }

      (*v449)(v348, v349);
      sub_2722032B4();
      v353 = swift_allocError();
      *v354 = 0xD000000000000015;
      v354[1] = 0x800000027238BCF0;
      v514 = v353;
      swift_willThrow();

      goto LABEL_120;
    }
  }

  type metadata accessor for VAStrideConfiguration();
  v288 = static VAStrideConfiguration.forFlexibleA2Av3()();
  v289 = type metadata accessor for VAStrategyProviderDefault();
  v290 = v288;
  v291 = VAStrategyProviderDefault.__allocating_init(strideConfig:)(v290);
  v292 = (*(*v243 + 280))();
  v499 = v290;
  if (!v292)
  {
    type metadata accessor for VANRErrorDelegateDefault();
    v292 = swift_allocObject();
  }

  v501 = v292;
  v293 = v448;
  v294 = v448();
  v295 = (*(*v294 + 640))(v294);

  if (v295)
  {
    type metadata accessor for VANRDebugInfo(0);
    v297 = sub_272315248();

    v299 = *(v293)(v298);
    v300 = v514;
    v301 = (*(v299 + 1176))();
    v514 = v300;
    if (v300)
    {

      swift_unknownObjectRelease();

LABEL_121:

      goto LABEL_13;
    }

    v343 = v301;
    v344 = v302;

    (*(*v297 + 264))(v343, v344);
    v345 = v476;
    sub_272318968();
    v346 = v514;
    (*(*v297 + 312))(v345);
    v514 = v346;
    if (v346)
    {
      (*(v477 + 8))(v345, v478);

      swift_unknownObjectRelease();

      goto LABEL_13;
    }

    v497 = v289;
    v498 = v291;
    (*(v477 + 8))(v345, v478);

    v311 = v297;
  }

  else
  {
    v497 = v289;
    v498 = v291;
    v311 = 0;
  }

  v122 = v504;
  (*(*v504 + 272))(v296);
  v496 = v312;
  v313 = v122[8];
  v314 = v122[9];
  v315 = v122[2];
  type metadata accessor for VANRDelegateBridge(0);
  v316 = swift_allocObject();
  *(v316 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v316 + 5) = 0;
  swift_unknownObjectWeakInit();
  v317 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated;
  v318 = sub_27237832C();
  (*(*(v318 - 8) + 56))(&v316[v317], 1, 1, v318);
  v74 = v311;

  sub_27237833C();
  swift_beginAccess();
  *(v316 + 3) = v496;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v316 + 6) = v313;
  *(v316 + 7) = v314;
  v101 = v316;
  *(v316 + 8) = v315;
  *(v316 + 9) = v311;
  type metadata accessor for VAFlexibleKeywordSpotter();
  *(&v508 + 1) = v497;
  v509 = &protocol witness table for VAStrategyProviderDefault;
  *&v507 = v498;
  memset(v505, 0, sizeof(v505));
  v125 = v437;

  v319 = v438;

  v320 = v442;

  v321 = v320;
  v322 = v514;
  v121 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(v316, 0, v319, v321, v125, &v507, v505);
  v514 = v322;
  if (v322)
  {

    swift_unknownObjectRelease();

LABEL_120:

    goto LABEL_121;
  }

LABEL_113:
  v495 = v125;
  v496 = v101;
  v323 = MEMORY[0x277D85000];
  v324 = *((*MEMORY[0x277D85000] & *v121) + 0x430);
  v325 = v121;

  v327 = v324(v326);
  v497 = v74;
  v328 = v448;
  v329 = *(v448)(v327);
  v330 = (*(v329 + 448))();

  v331 = (*((*v323 & *v325) + 0x3D0))(v330 & 1);
  v332 = *(v328)(v331);
  v333 = (*(v332 + 472))();

  v335 = (*((*v323 & *v325) + 0x3E8))(v334, v333);
  v336 = *(v328)(v335);
  v337 = (*(v336 + 496))();

  v338 = (*((*v323 & *v325) + 0x400))(v337);
  v339 = *(v328)(v338);
  LOBYTE(v337) = (*(v339 + 544))();

  v340 = (*((*v323 & *v325) + 0x418))(v337 & 1);
  v341 = v479;
  v342 = v514;
  (*((*v323 & *v325) + 0xC0))(v340);
  v514 = v342;
  if (v342)
  {

    swift_unknownObjectRelease();

    goto LABEL_121;
  }

  v494 = v325;
  v204 = (v122 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams);
  swift_beginAccess();
  sub_272302710(v341, v204, type metadata accessor for VARuntimeParameters);
  swift_endAccess();

  *v204 = sub_2722F25E4(v355);

  v357 = *(v328)(v356);
  v358 = (*(v357 + 520))();

  if (v358)
  {
    v360 = v474;
    sub_27230260C(v204, v474, type metadata accessor for VARuntimeParameters);
    v361 = v514;
    (*(*v438 + 88))(v360);
    v122 = v361;
    if (v361)
    {
      sub_2723025AC(v474, type metadata accessor for VARuntimeParameters);

      swift_unknownObjectRelease();

      goto LABEL_172;
    }

LABEL_126:
    sub_2723025AC(v474, type metadata accessor for VARuntimeParameters);
    type metadata accessor for VAA2AAudioEnrollerV3(0);
    v509 = 0;
    v507 = 0u;
    v508 = 0u;

    v363 = VAA2AAudioEnrollerV3.__allocating_init(encoder:keywordIdentifier:delegate:)(v362, 0x65636E656C6973, 0xE700000000000000, &v507);
    v364 = (*(*v363 + 288))();
    v365 = static VAKeywordSpotterBase.getDefaultAudioFormat()();
    v493 = sub_27227B050(v364, v365);
    if (v122)
    {

      swift_unknownObjectRelease();

      goto LABEL_173;
    }

    v366 = mach_absolute_time();
    v367 = (*(*v363 + 256))(v493, v366);
    (*(*v363 + 272))(&v507, v367);
    if ((v508 & 1) == 0)
    {
      sub_2722032B4();
      v369 = swift_allocError();
      *v370 = 0xD00000000000003ALL;
      v370[1] = 0x800000027238F8B0;
      v514 = v369;
      swift_willThrow();

      swift_unknownObjectRelease();

LABEL_131:

      goto LABEL_13;
    }

    sub_2721F065C(&qword_280881840, &unk_27237E830);
    v368 = swift_allocObject();
    *(v368 + 16) = xmmword_27237AF80;
    (*(*v363 + 280))();
    v514 = 0;
    type metadata accessor for VAFeatureExtractingEncoderOutput();
    v371 = v461;
    v372 = *&v461[*(v457 + 20)];

    sub_2723025AC(v371, type metadata accessor for VASingleEnrollmentData);
    *(v368 + 32) = v372;
    v373 = VAFeatureExtractingEncoderOutput.__allocating_init(hasNewFeature:featureExtractionBuffer:vadBuffer:encoderOutput:)(1, 0, 0, v368);
    sub_2721F065C(&qword_280882098, &qword_27237E8B0);
    v374 = swift_allocObject();
    *(v374 + 16) = xmmword_27237E510;
    *(v374 + 32) = v373;
    v375 = *(*v438 + 80);
    v480 = v373;

    v376 = v514;
    v375(&v507, v374, 0);
    v514 = v376;
    if (v376)
    {

      swift_unknownObjectRelease();

      goto LABEL_131;
    }

    v488 = v507;
    v489 = v502(v377);
    v487 = *(v489 + 16);
    if (v487)
    {
      v492 = 0;
      v486 = v464 + *(v457 + 24);
      v379 = (*v488 + 104);
      v485 = *v379;
      v484 = v379;
      v483 = (v489 + ((*(v465 + 80) + 32) & ~*(v465 + 80)));
      v491 = MEMORY[0x277D84F90];
      *&v378 = 136315138;
      v482 = v378;
      *&v378 = 136315650;
      v481 = v378;
      while (v492 < *(v489 + 16))
      {
        v380 = v464;
        sub_27230260C(&v483[*(v465 + 72) * v492], v464, type metadata accessor for VASingleEnrollmentData);
        v381 = *(v486 + 8);
        v502 = *v486;

        sub_2723025AC(v380, type metadata accessor for VASingleEnrollmentData);
        v382 = sub_2722C389C();
        v383 = *v454;
        v384 = v382;
        (*v454)(v468);

        v385 = sub_27237725C();
        v386 = sub_272377E7C();
        v387 = v381;

        if (os_log_type_enabled(v385, v386))
        {
          v388 = swift_slowAlloc();
          v389 = swift_slowAlloc();
          *&v507 = v389;
          *v388 = v482;
          *(v388 + 4) = sub_2721FFD04(v502, v387, &v507);
          _os_log_impl(&dword_2721E4000, v385, v386, "Inferring threshold for keyword %s", v388, 0xCu);
          sub_2722039C8(v389);
          MEMORY[0x2743C69C0](v389, -1, -1);
          MEMORY[0x2743C69C0](v388, -1, -1);
        }

        v490 = *v449;
        (v490)(v468, v500);
        ++v492;

        v391 = v485(v390);

        v392 = (v391 + 48);
        v393 = *(v391 + 16) + 1;
        do
        {
          if (!--v393)
          {

            v383(v463, v384, v500);

            v401 = sub_27237725C();
            v402 = sub_272377E8C();

            if (os_log_type_enabled(v401, v402))
            {
              v403 = swift_slowAlloc();
              v404 = swift_slowAlloc();
              *&v507 = v404;
              *v403 = v482;
              *(v403 + 4) = sub_2721FFD04(v502, v387, &v507);
              _os_log_impl(&dword_2721E4000, v401, v402, "Could not infer threshold for %s. Did not find a score against silence. Using default threshold.", v403, 0xCu);
              sub_2722039C8(v404);
              MEMORY[0x2743C69C0](v404, -1, -1);
              MEMORY[0x2743C69C0](v403, -1, -1);
            }

            v405 = &v493;
            goto LABEL_161;
          }

          v394 = *v392;
          if (*(v392 - 2) == v502 && *(v392 - 1) == v387)
          {
            break;
          }

          v392 += 20;
        }

        while ((sub_27237865C() & 1) == 0);

        if (v394 < 0.0)
        {
          v383(v462, v384, v500);

          v396 = sub_27237725C();
          v397 = sub_272377E7C();

          if (os_log_type_enabled(v396, v397))
          {
            v398 = swift_slowAlloc();
            v399 = swift_slowAlloc();
            *&v507 = v399;
            *v398 = v481;
            *(v398 + 4) = sub_2721FFD04(v502, v387, &v507);
            *(v398 + 12) = 2048;
            *(v398 + 14) = v394;
            *(v398 + 22) = 2048;
            *(v398 + 24) = (v394 * 0.5);
            _os_log_impl(&dword_2721E4000, v396, v397, "Compared keyword %s to silence, got score = %f. Score is negative, inferring this is a DTW model. Using silenceScore / 2 = %f", v398, 0x20u);
            sub_2722039C8(v399);
            MEMORY[0x2743C69C0](v399, -1, -1);
            MEMORY[0x2743C69C0](v398, -1, -1);
          }

          v400 = &v492;
LABEL_157:
          (v490)(*(v400 - 32), v500);
          *&v507 = 0;
          *(&v507 + 1) = 0xE000000000000000;
          MEMORY[0x2743C4AD0](v502, v387);

          MEMORY[0x2743C4AD0](58, 0xE100000000000000);
          sub_272377D5C();
          v387 = *(&v507 + 1);
          v502 = v507;
          goto LABEL_162;
        }

        if (v394 < 1.0)
        {
          v383(v459, v384, v500);

          v406 = sub_27237725C();
          v407 = sub_272377E7C();

          if (os_log_type_enabled(v406, v407))
          {
            v408 = swift_slowAlloc();
            v409 = swift_slowAlloc();
            *&v507 = v409;
            *v408 = v481;
            *(v408 + 4) = sub_2721FFD04(v502, v387, &v507);
            *(v408 + 12) = 2048;
            *(v408 + 14) = v394;
            *(v408 + 22) = 2048;
            *(v408 + 24) = (v394 + ((1.0 - v394) * 0.5));
            _os_log_impl(&dword_2721E4000, v406, v407, "Compared keyword %s to silence, got score = %f. Score is between 0 and 1, inferring this is a model on that scale. Using halfway from silenceScore to 1.0 = %f", v408, 0x20u);
            sub_2722039C8(v409);
            MEMORY[0x2743C69C0](v409, -1, -1);
            MEMORY[0x2743C69C0](v408, -1, -1);
          }

          v400 = &v489;
          goto LABEL_157;
        }

        v383(v460, v384, v500);

        v410 = sub_27237725C();
        v411 = sub_272377E8C();

        if (os_log_type_enabled(v410, v411))
        {
          v412 = swift_slowAlloc();
          v413 = swift_slowAlloc();
          *&v507 = v413;
          *v412 = v482;
          *(v412 + 4) = sub_2721FFD04(v502, v387, &v507);
          _os_log_impl(&dword_2721E4000, v410, v411, "Could not infer threshold for %s. Silence score is >1.0, not sure how to score this model. Using default threshold.", v412, 0xCu);
          sub_2722039C8(v413);
          MEMORY[0x2743C69C0](v413, -1, -1);
          MEMORY[0x2743C69C0](v412, -1, -1);
        }

        v405 = &v490;
LABEL_161:
        (v490)(*(v405 - 32), v500);
LABEL_162:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v491 = sub_2721FFBF8(0, *(v491 + 2) + 1, 1, v491);
        }

        v415 = *(v491 + 2);
        v414 = *(v491 + 3);
        if (v415 >= v414 >> 1)
        {
          v491 = sub_2721FFBF8((v414 > 1), v415 + 1, 1, v491);
        }

        v416 = v491;
        *(v491 + 2) = v415 + 1;
        v417 = &v416[16 * v415];
        *(v417 + 4) = v502;
        *(v417 + 5) = v387;
        if (v492 == v487)
        {
          goto LABEL_169;
        }
      }

      __break(1u);
      return;
    }

    v491 = MEMORY[0x277D84F90];
LABEL_169:

    *v204 = v491;
  }

  v418 = v504;
  v419 = (v448)(v359);
  swift_beginAccess();
  (*(*v419 + 1168))(v204);
  swift_endAccess();

  v421 = v514;
  (*(*v418 + 320))(v420);
  v122 = v421;
  if (!v421)
  {
    swift_beginAccess();
    (*(v471 + 40))(v204 + *(v470 + 108), v473, v472);
    *(v204 + 12) = 1;
    swift_endAccess();
    v422 = *(*v504 + 312);
    v423 = v494;
    v422();
    v514 = 0;
    v424 = sub_2722C389C();
    (*v454)(v469, v424, v500);

    v425 = sub_27237725C();
    v426 = sub_272377E7C();

    if (os_log_type_enabled(v425, v426))
    {
      v427 = swift_slowAlloc();
      v428 = swift_slowAlloc();
      *&v507 = v428;
      *v427 = 136315138;

      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      v429 = sub_27237773C();
      v431 = v430;

      v432 = sub_2721FFD04(v429, v431, &v507);

      *(v427 + 4) = v432;
      _os_log_impl(&dword_2721E4000, v425, v426, "%s", v427, 0xCu);
      sub_2722039C8(v428);
      MEMORY[0x2743C69C0](v428, -1, -1);
      MEMORY[0x2743C69C0](v427, -1, -1);
    }

    (*v449)(v469, v500);
    v433 = v466;
    sub_27230260C(v204, v466, type metadata accessor for VARuntimeParameters);
    v434 = type metadata accessor for VANRSpotterBridge(0);
    v435 = swift_allocObject();
    *(v435 + 16) = v423;
    sub_2723019C4(v433, v435 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_runtimeParams, type metadata accessor for VARuntimeParameters);
    *(v435 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_kwsDelegate) = v496;
    v436 = v467;
    v467[3] = v434;
    v436[4] = &off_28818E680;

    *v436 = v435;

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
LABEL_172:

LABEL_173:

  sub_2722039C8(v513);
  sub_2722039C8(&v510);
  v514 = v122;
}

uint64_t sub_2722F77FC(char a1, char a2)
{
  sub_2723026BC();
  sub_272377A8C();
  sub_272377A8C();
  if (v7 == v5 && v8 == v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_27237865C();
  }

  return v3 & 1;
}

BOOL sub_2722F78B4(uint64_t a1)
{
  v1 = *(a1 + 16) + 1;
  do
  {
    if (!--v1)
    {
      break;
    }

    sub_2722D4AA0();
  }

  while ((sub_2723777DC() & 1) == 0);
  return v1 != 0;
}

void sub_2722F7904(void *a1)
{
  v2 = v1;
  v310 = a1;
  v342 = sub_272376EBC();
  v301 = *(v342 - 8);
  MEMORY[0x28223BE20](v342);
  v341 = &v299 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for VANRValidationError(0);
  v311 = *(v312 - 8);
  v4 = MEMORY[0x28223BE20](v312);
  v315 = &v299 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v307 = &v299 - v6;
  v340 = type metadata accessor for VARuntimeParameters(0);
  MEMORY[0x28223BE20](v340);
  v8 = &v299 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_27237728C();
  v304 = *(v332 - 8);
  v9 = MEMORY[0x28223BE20](v332);
  v320 = &v299 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v314 = &v299 - v11;
  v12 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v323 = &v299 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v345 = &v299 - v15;
  v335 = type metadata accessor for VANRNameConfiguration(0);
  v336 = *(v335 - 8);
  v16 = *(v336 + 64);
  v17 = MEMORY[0x28223BE20](v335);
  v309 = &v299 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v324 = &v299 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v322 = &v299 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v337 = (&v299 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = &v299 - v24;
  v308 = type metadata accessor for VANRCollectedEnrollment(0);
  v334 = *(v308 - 8);
  v26 = MEMORY[0x28223BE20](v308);
  v326 = &v299 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v333 = &v299 - v28;
  v29 = sub_2721F065C(&qword_280882B98, &qword_272383ED0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v316 = (&v299 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v313 = (&v299 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = (&v299 - v35);
  MEMORY[0x28223BE20](v34);
  v38 = (&v299 - v37);
  v39 = sub_2722A0548(MEMORY[0x277D84F90]);
  v40 = v2 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams;
  swift_beginAccess();
  v352 = v40;
  *(v40 + 80) = v39;

  swift_beginAccess();
  v41 = v2[9];
  v42 = *(v41 + 64);
  v319 = v41 + 64;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v42;
  v338 = v41;

  swift_beginAccess();
  v46 = 0;
  v318 = (v43 + 63) >> 6;
  *&v321 = v16 + 7;
  v348 = v2;
  v317 = v8;
  v339 = v25;
  v347 = v36;
  v346 = v38;
  if (!v45)
  {
LABEL_5:
    if (v318 <= v46 + 1)
    {
      v48 = v46 + 1;
    }

    else
    {
      v48 = v318;
    }

    while (1)
    {
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v47 >= v318)
      {
        v349 = (v48 - 1);
        v110 = sub_2721F065C(&qword_280882BA0, &unk_272383ED8);
        (*(*(v110 - 8) + 56))(v36, 1, 1, v110);
        v45 = 0;
        goto LABEL_12;
      }

      v45 = *(v319 + 8 * v47);
      v46 = (v46 + 1);
      if (v45)
      {
        goto LABEL_11;
      }
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  while (1)
  {
    v47 = v46;
LABEL_11:
    v49 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v50 = v49 | (v47 << 6);
    v51 = (*(v338 + 48) + 16 * v50);
    v53 = *v51;
    v52 = v51[1];
    v54 = v333;
    sub_27230260C(*(v338 + 56) + *(v334 + 72) * v50, v333, type metadata accessor for VANRCollectedEnrollment);
    v55 = sub_2721F065C(&qword_280882BA0, &unk_272383ED8);
    v56 = *(v55 + 48);
    v57 = v347;
    *v347 = v53;
    v57[1] = v52;
    v36 = v57;
    sub_2723019C4(v54, v57 + v56, type metadata accessor for VANRCollectedEnrollment);
    (*(*(v55 - 8) + 56))(v36, 0, 1, v55);

    v349 = v47;
    v38 = v346;
LABEL_12:
    sub_272302544(v36, v38, &qword_280882B98, &qword_272383ED0);
    v58 = sub_2721F065C(&qword_280882BA0, &unk_272383ED8);
    v59 = *(v58 - 8);
    v60 = *(v59 + 48);
    if (v60(v38, 1, v58) == 1)
    {
      break;
    }

    v62 = *v38;
    v61 = v38[1];
    sub_2723025AC(v38 + *(v58 + 48), type metadata accessor for VANRCollectedEnrollment);
    v63 = v2[8];
    if (!*(v63 + 16))
    {
      goto LABEL_121;
    }

    v64 = sub_27220038C(v62, v61);
    if ((v65 & 1) == 0)
    {

LABEL_121:
      v357 = 0;
      v358 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000038, 0x800000027238F5B0);
      MEMORY[0x2743C4AD0](v62, v61);

      v243 = v357;
      v244 = v358;
      sub_2722032B4();
      v245 = swift_allocError();
      *v246 = v243;
      v246[1] = v244;
      v325 = v245;
      swift_willThrow();
LABEL_122:

LABEL_178:
      sub_2722FA2AC(v2);
      return;
    }

    v66 = v337;
    sub_27230260C(*(v63 + 56) + *(v336 + 72) * v64, v337, type metadata accessor for VANRNameConfiguration);

    sub_2723019C4(v66, v25, type metadata accessor for VANRNameConfiguration);
    v67 = v2 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams;
    swift_beginAccess();
    v68 = *(v67 + 10);
    v69 = *(v68 + 16);
    v351 = v61;
    v350 = v62;
    if (v69 && (v70 = sub_27220038C(v62, v61), (v71 & 1) != 0))
    {
      v72 = *(*(v68 + 56) + 8 * v70);
    }

    else
    {
      v72 = MEMORY[0x277D84F90];
    }

    v73 = sub_272301A2C(v72);

    v362 = v73;
    v74 = sub_2723778AC();
    sub_2722AB1B4(&v357, v74, v75);

    v76 = v362;
    v77 = *(v362 + 16);
    if (v77)
    {
      v78 = sub_2722702A8(*(v362 + 16), 0);
      v79 = sub_2722A02C4(&v357, v78 + 4, v77, v76);
      v80 = v357;

      sub_272270484(v80);
      if (v79 != v77)
      {
        goto LABEL_185;
      }

      v2 = v348;
      v25 = v339;
      v81 = v351;
    }

    else
    {
      v81 = v351;

      v78 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v361 = *(v67 + 10);
    *(v67 + 10) = 0x8000000000000000;
    sub_272300908(v78, v350, v81, isUniquelyReferenced_nonNull_native);

    *(v67 + 10) = v361;
    v83 = swift_endAccess();
    v84 = *(*v2 + 256);
    v85 = *v84(v83);
    v86 = (*(v85 + 592))();

    v88 = *v84(v87);
    v89 = (*(v88 + 616))();

    if (v86 > 0 || v89 >= 1)
    {
      v90 = swift_allocObject();
      v344 = v90;
      *(v90 + 16) = 0;
      v331 = (v90 + 16);
      v343 = dispatch_semaphore_create(0);
      v329 = sub_272377C3C();
      v330 = *(v329 - 8);
      (*(v330 + 56))(v345, 1, 1, v329);
      v328 = v89;
      v91 = v322;
      sub_27230260C(v25, v322, type metadata accessor for VANRNameConfiguration);
      v92 = (*(v336 + 80) + 48) & ~*(v336 + 80);
      v93 = (v321 + v92) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
      v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
      v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
      v97 = swift_allocObject();
      v327 = v86;
      v98 = v348;
      v99 = v97;
      v97[2] = 0;
      v97[3] = 0;
      v100 = v328;
      v97[4] = v343;
      v97[5] = v100;
      sub_2723019C4(v91, v97 + v92, type metadata accessor for VANRNameConfiguration);
      v101 = (v99 + v93);
      v102 = v351;
      *v101 = v350;
      v101[1] = v102;
      *(v99 + v94) = v98;
      *(v99 + v95) = v327;
      v103 = v329;
      *(v99 + v96) = v344;
      v104 = v323;
      sub_2721F07F4(v345, v323, &qword_2808819D8, &qword_27237CB50);
      v105 = v330;
      LODWORD(v98) = (*(v330 + 48))(v104, 1, v103);
      v351 = v343;

      if (v98 == 1)
      {
        sub_2721F40F0(v104, &qword_2808819D8, &qword_27237CB50);
      }

      else
      {
        sub_272377C2C();
        (*(v105 + 8))(v104, v103);
      }

      v106 = v99[2];
      swift_unknownObjectRetain();

      if (v106)
      {
        swift_getObjectType();
        v107 = sub_272377BDC();
        v109 = v108;
        swift_unknownObjectRelease();
      }

      else
      {
        v107 = 0;
        v109 = 0;
      }

      v36 = v347;
      sub_2721F40F0(v345, &qword_2808819D8, &qword_27237CB50);
      v111 = swift_allocObject();
      *(v111 + 16) = &unk_272383EF0;
      *(v111 + 24) = v99;
      if (v109 | v107)
      {
        v354 = 0;
        v353 = 0;
        v355 = v107;
        v356 = v109;
      }

      v2 = v348;
      v38 = v346;
      v112 = v351;
      swift_task_create();

      sub_272377F5C();
      v113 = v331;
      swift_beginAccess();
      v114 = *v113;
      if (v114)
      {
        swift_willThrow();
        v247 = v114;

        sub_2723025AC(v339, type metadata accessor for VANRNameConfiguration);

        v325 = v114;
        goto LABEL_178;
      }

      v25 = v339;
      sub_2723025AC(v339, type metadata accessor for VANRNameConfiguration);

      v46 = v349;
      if (!v45)
      {
        goto LABEL_5;
      }
    }

    else
    {

      sub_2723025AC(v25, type metadata accessor for VANRNameConfiguration);
      v46 = v349;
      v36 = v347;
      v38 = v346;
      v2 = v348;
      if (!v45)
      {
        goto LABEL_5;
      }
    }
  }

  v306 = v60;
  v318 = v59 + 48;
  v319 = v58;

  v116 = (*v2 + 256);
  v350 = *v116;
  v349 = v116;
  v117 = *(v350)(v115);
  v118 = (*(v117 + 568))();

  if (v118 > 0 || *(v2 + 80) == 1)
  {
    v119 = v2[9];
    v120 = v119 + 64;
    v121 = 1 << *(v119 + 32);
    if (v121 < 64)
    {
      v122 = ~(-1 << v121);
    }

    else
    {
      v122 = -1;
    }

    v123 = v122 & *(v119 + 64);
    v300 = (v121 + 63) >> 6;
    v305 = (v59 + 56);
    v331 = (v304 + 16);
    v330 = v304 + 8;
    v344 = (v301 + 16);
    v337 = (v301 + 8);
    v304 = v119;

    v124 = 0;
    *&v125 = 136315138;
    v321 = v125;
    v303 = xmmword_27237AF80;
    v126 = v316;
    v302 = v120;
    while (v123)
    {
      v322 = v124;
      v127 = v124;
LABEL_57:
      v323 = (v123 - 1) & v123;
      v130 = __clz(__rbit64(v123)) | (v127 << 6);
      v131 = (*(v304 + 48) + 16 * v130);
      v133 = *v131;
      v132 = v131[1];
      v134 = v333;
      sub_27230260C(*(v304 + 56) + *(v334 + 72) * v130, v333, type metadata accessor for VANRCollectedEnrollment);
      v135 = v319;
      v136 = *(v319 + 48);
      v137 = v316;
      *v316 = v133;
      v137[1] = v132;
      v126 = v137;
      sub_2723019C4(v134, v137 + v136, type metadata accessor for VANRCollectedEnrollment);
      (*v305)(v126, 0, 1, v135);

LABEL_58:
      v138 = v313;
      sub_272302544(v126, v313, &qword_280882B98, &qword_272383ED0);
      v139 = v306(v138, 1, v135);
      v140 = v332;
      v141 = v314;
      if (v139 == 1)
      {

        goto LABEL_125;
      }

      v142 = *v138;
      v143 = v138[1];
      sub_2723019C4(v138 + *(v135 + 48), v326, type metadata accessor for VANRCollectedEnrollment);
      v144 = v2[8];
      if (!*(v144 + 16))
      {
        goto LABEL_175;
      }

      v145 = sub_27220038C(v142, v143);
      if ((v146 & 1) == 0)
      {

LABEL_175:
        v357 = 0;
        v358 = 0xE000000000000000;
        sub_27237820C();
        MEMORY[0x2743C4AD0](0xD000000000000038, 0x800000027238F5B0);
        MEMORY[0x2743C4AD0](v142, v143);

        v295 = v357;
        v296 = v358;
        sub_2722032B4();
        v297 = swift_allocError();
        *v298 = v295;
        v298[1] = v296;
        v325 = v297;
        swift_willThrow();

LABEL_177:
        sub_2723025AC(v326, type metadata accessor for VANRCollectedEnrollment);
        goto LABEL_178;
      }

      v147 = v309;
      sub_27230260C(*(v144 + 56) + *(v336 + 72) * v145, v309, type metadata accessor for VANRNameConfiguration);

      sub_2723019C4(v147, v324, type metadata accessor for VANRNameConfiguration);
      v148 = sub_2722C389C();
      v149 = *v331;
      v329 = v148;
      v328 = v149;
      v149(v141);

      v150 = sub_27237725C();
      v151 = sub_272377E7C();

      v152 = os_log_type_enabled(v150, v151);
      v346 = v143;
      v345 = v142;
      if (v152)
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v357 = v154;
        *v153 = v321;
        *(v153 + 4) = sub_2721FFD04(v142, v143, &v357);
        _os_log_impl(&dword_2721E4000, v150, v151, "Asking ASR for nBest because systemConfig.listenToAsrForEnrollments is >0 or as part of a validation. Will look for these nBest when matching this keyword: %s", v153, 0xCu);
        sub_2722039C8(v154);
        MEMORY[0x2743C69C0](v154, -1, -1);
        MEMORY[0x2743C69C0](v153, -1, -1);
      }

      v327 = *v330;
      (v327)(v141, v140);
      v155 = *(v326 + *(v308 + 20));
      sub_2721F065C(&qword_280881860, &unk_27237C340);
      v156 = swift_allocObject();
      *(v156 + 16) = v303;
      v157 = v324 + *(v335 + 20);
      v158 = *(v157 + 8);
      v347 = *v157;
      *(v156 + 32) = v347;
      *(v156 + 40) = v158;
      v159 = v317;
      sub_27230260C(v352, v317, type metadata accessor for VARuntimeParameters);
      v160 = *((*MEMORY[0x277D85000] & *v310) + 0x260);

      v161 = v325;
      v160(&v357, v155, v156, v159);
      v325 = v161;
      if (v161)
      {
        sub_2723025AC(v317, type metadata accessor for VARuntimeParameters);

        sub_2723025AC(v324, type metadata accessor for VANRNameConfiguration);
        goto LABEL_177;
      }

      sub_2723025AC(v317, type metadata accessor for VARuntimeParameters);

      v162 = v359;

      v163 = v162[2];
      v351 = v162;
      if (v163)
      {
        v164 = 0;
        v165 = 0;
        v166 = -v163;
        v167 = v162 + 5;
LABEL_66:
        LODWORD(v343) = v164;
        v168 = &v167[2 * v165++];
        while ((v165 - 1) < v351[2])
        {
          v170 = *(v168 - 1);
          v169 = *v168;

          v172 = *(v350)(v171);
          v173 = (*(v172 + 496))();

          v174 = (*(*v173 + 280))(v347, v158, v170, v169);

          if (v174)
          {
            v164 = 1;
            if (v166 + v165)
            {
              goto LABEL_66;
            }

            goto LABEL_85;
          }

          ++v165;
          v168 += 2;
          if (v166 + v165 == 1)
          {
            if ((v343 & 1) == 0)
            {
              goto LABEL_80;
            }

            goto LABEL_85;
          }
        }

        goto LABEL_181;
      }

      v176 = sub_272376E5C();
      (*(*(v176 - 8) + 16))(v307, v326, v176);
      swift_storeEnumTagMultiPayload();
      v177 = (*(*v2 + 240))(&v357);
      v179 = v178;
      v180 = *v178;
      v181 = swift_isUniquelyReferenced_nonNull_native();
      *v179 = v180;
      if ((v181 & 1) == 0)
      {
        v180 = sub_2722FFD78(0, v180[2] + 1, 1, v180);
        *v179 = v180;
      }

      v183 = v180[2];
      v182 = v180[3];
      if (v183 >= v182 >> 1)
      {
        v180 = sub_2722FFD78((v182 > 1), v183 + 1, 1, v180);
        *v179 = v180;
      }

      v180[2] = v183 + 1;
      sub_2723019C4(v307, v180 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v183, type metadata accessor for VANRValidationError);
      v177(&v357, 0);
LABEL_80:
      v184 = sub_272376E5C();
      (*(*(v184 - 8) + 16))(v315, v326, v184);
      swift_storeEnumTagMultiPayload();
      v185 = (*(*v348 + 240))(&v357);
      v187 = v186;
      v188 = *v186;
      v189 = swift_isUniquelyReferenced_nonNull_native();
      *v187 = v188;
      if ((v189 & 1) == 0)
      {
        v188 = sub_2722FFD78(0, v188[2] + 1, 1, v188);
        *v187 = v188;
      }

      v191 = v188[2];
      v190 = v188[3];
      if (v191 >= v190 >> 1)
      {
        v188 = sub_2722FFD78((v190 > 1), v191 + 1, 1, v188);
        *v187 = v188;
      }

      v188[2] = v191 + 1;
      sub_2723019C4(v315, v188 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v191, type metadata accessor for VANRValidationError);
      v175 = v185(&v357, 0);
LABEL_85:
      v2 = v348;
      v192 = v350;
      v193 = (v350)(v175);
      v194 = (*(*v193 + 568))(v193);

      if (v194 < 1)
      {
        goto LABEL_45;
      }

      v196 = v192(v195);
      v197 = (*(*v196 + 568))(v196);

      if ((v197 & 0x8000000000000000) != 0)
      {
        goto LABEL_188;
      }

      v198 = v351[2] >= v197 ? v197 : v351[2];
      if (v197 && v198)
      {
        v347 = v351 + 4;
        v343 = type metadata accessor for VACommonWords();
        v199 = 0;
        v339 = *v344;
        v338 = v198;
        do
        {
          v203 = &v347[2 * v199];
          v205 = *v203;
          v204 = v203[1];
          v206 = v341;
          v207 = v342;
          (v339)(v341, v352 + *(v340 + 108), v342);

          v208 = sub_27229712C(v206);
          v210 = v209;
          (*v337)(v206, v207, v208);
          v211 = sub_2723778AC();
          v213 = v212;
          if (*(v210 + 16) && (v214 = v211, sub_27237874C(), sub_27237790C(), v215 = sub_27237878C(), v216 = -1 << *(v210 + 32), v217 = v215 & ~v216, ((*(v210 + 56 + ((v217 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v217) & 1) != 0))
          {
            v218 = ~v216;
            while (1)
            {
              v219 = (*(v210 + 48) + 16 * v217);
              v220 = *v219 == v214 && v219[1] == v213;
              if (v220 || (sub_27237865C() & 1) != 0)
              {
                break;
              }

              v217 = (v217 + 1) & v218;
              if (((*(v210 + 56 + ((v217 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v217) & 1) == 0)
              {
                goto LABEL_105;
              }
            }

            v226 = v320;
            v227 = v332;
            v328(v320, v329, v332);

            v228 = sub_27237725C();
            v229 = sub_272377E8C();

            if (os_log_type_enabled(v228, v229))
            {
              v230 = swift_slowAlloc();
              v231 = swift_slowAlloc();
              v357 = v231;
              *v230 = v321;
              v232 = sub_2721FFD04(v205, v204, &v357);

              *(v230 + 4) = v232;
              _os_log_impl(&dword_2721E4000, v228, v229, "Not including %s in listenToAsrForEnrollments because it is a common word", v230, 0xCu);
              sub_2722039C8(v231);
              MEMORY[0x2743C69C0](v231, -1, -1);
              MEMORY[0x2743C69C0](v230, -1, -1);

              v233 = v226;
              v234 = v332;
            }

            else
            {

              v233 = v226;
              v234 = v227;
            }

            (v327)(v233, v234);
          }

          else
          {
LABEL_105:

            v221 = *(v352 + 80);
            if (*(v221 + 16))
            {
              v222 = v346;
              v223 = sub_27220038C(v345, v346);
              if (v224)
              {
                v225 = *(*(v221 + 56) + 8 * v223);
              }

              else
              {
                v225 = MEMORY[0x277D84F90];
              }
            }

            else
            {
              v225 = MEMORY[0x277D84F90];
              v222 = v346;
            }

            v235 = sub_272301A2C(v225);

            v362 = v235;
            v236 = sub_2723778AC();
            v238 = v237;

            sub_2722AB1B4(&v357, v236, v238);

            v239 = v362;
            v240 = *(v362 + 16);
            if (v240)
            {
              v200 = sub_2722702A8(*(v362 + 16), 0);
              v241 = sub_2722A02C4(&v357, v200 + 4, v240, v239);
              v242 = v357;

              sub_272270484(v242);
              if (v241 != v240)
              {
                goto LABEL_184;
              }
            }

            else
            {

              v200 = MEMORY[0x277D84F90];
            }

            v201 = v352;
            swift_beginAccess();
            v202 = swift_isUniquelyReferenced_nonNull_native();
            v361 = *(v201 + 80);
            *(v201 + 80) = 0x8000000000000000;
            sub_272300908(v200, v345, v222, v202);

            *(v201 + 80) = v361;
            swift_endAccess();
          }

          ++v199;
        }

        while (v199 != v338);

        v2 = v348;
      }

      else
      {
LABEL_45:
      }

      sub_2723025AC(v324, type metadata accessor for VANRNameConfiguration);
      sub_2723025AC(v326, type metadata accessor for VANRCollectedEnrollment);
      v126 = v316;
      v120 = v302;
      v123 = v323;
      v124 = v322;
    }

    if (v300 <= v124 + 1)
    {
      v128 = v124 + 1;
    }

    else
    {
      v128 = v300;
    }

    v129 = v128 - 1;
    while (1)
    {
      v127 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
        break;
      }

      if (v127 >= v300)
      {
        v135 = v319;
        (*v305)(v126, 1, 1, v319);
        v323 = 0;
        v322 = v129;
        goto LABEL_58;
      }

      v123 = *(v120 + 8 * v127);
      ++v124;
      if (v123)
      {
        v322 = v127;
        goto LABEL_57;
      }
    }

LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

LABEL_125:
  v248 = v2[9];
  v249 = v248 + 64;
  v250 = 1 << *(v248 + 32);
  if (v250 < 64)
  {
    v251 = ~(-1 << v250);
  }

  else
  {
    v251 = -1;
  }

  v335 = v251 & *(v248 + 64);
  v333 = (v250 + 63) >> 6;
  v331 = (v301 + 16);
  v330 = v301 + 8;
  v332 = v248;

  v252 = 0;
  v329 = v249;
  while (v335)
  {
    v253 = v252;
LABEL_136:
    v254 = *(v332 + 48);
    v334 = v253;
    v255 = v254 + ((v253 << 10) | (16 * __clz(__rbit64(v335))));
    v256 = *v255;
    v257 = *(v255 + 8);
    type metadata accessor for VACommonWords();
    v258 = v352;
    v259 = v341;
    v260 = v342;
    (*v331)(v341, v352 + *(v340 + 108), v342);

    v261 = sub_272297150(v259);
    v350 = v262;
    (*v330)(v259, v260, v261);
    v263 = *(v258 + 80);
    if (*(v263 + 16) && (v264 = sub_27220038C(v256, v257), (v265 & 1) != 0))
    {
      v266 = *(*(v263 + 56) + 8 * v264);
    }

    else
    {
      v266 = MEMORY[0x277D84F90];
    }

    sub_272301A2C(v266);

    v267 = *(v352 + 80);
    if (*(v267 + 16) && (v268 = sub_27220038C(v256, v257), (v269 & 1) != 0))
    {
      v270 = *(*(v267 + 56) + 8 * v268);
    }

    else
    {
      v270 = MEMORY[0x277D84F90];
    }

    v338 = *(v270 + 16);
    v335 &= v335 - 1;
    if (v338)
    {
      v271 = 0;
      v351 = *(v350 + 16);
      v337 = (v270 + 32);
      v349 = (v350 + 32);
      v347 = v256;
      v336 = v270;
      while (v271 < *(v270 + 16))
      {
        if (v351)
        {
          v339 = v271;
          v272 = &v337[2 * v271];
          v273 = *v272;
          v274 = v272[1];

          v275 = 0;
          while (v275 < *(v350 + 16))
          {
            v276 = v349[v275];
            if (*(v276 + 16))
            {
              sub_27237874C();

              sub_27237790C();
              v277 = sub_27237878C();
              v278 = -1 << *(v276 + 32);
              v279 = v277 & ~v278;
              if ((*(v276 + 56 + ((v279 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v279))
              {
                v280 = ~v278;
                while (1)
                {
                  v281 = (*(v276 + 48) + 16 * v279);
                  v282 = *v281 == v273 && v281[1] == v274;
                  if (v282 || (sub_27237865C() & 1) != 0)
                  {
                    break;
                  }

                  v279 = (v279 + 1) & v280;
                  if (((*(v276 + 56 + ((v279 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v279) & 1) == 0)
                  {
                    goto LABEL_151;
                  }
                }

                v283 = *(v352 + 80);
                if (*(v283 + 16) && (v284 = sub_27220038C(v347, v257), (v285 & 1) != 0))
                {
                  v286 = *(*(v283 + 56) + 8 * v284);
                }

                else
                {
                  v286 = MEMORY[0x277D84F90];
                }

                v287 = sub_272301A2C(v286);

                v362 = v287;

                sub_2722FA4E4(v288);
                v289 = v362;
                v290 = *(v362 + 16);
                if (v290)
                {
                  v291 = sub_2722702A8(*(v362 + 16), 0);
                  v346 = sub_2722A02C4(&v357, v291 + 4, v290, v289);
                  v292 = v357;
                  v345 = v358;
                  v344 = v359;
                  v343 = v360;

                  sub_272270484(v292);
                  if (v346 != v290)
                  {
                    goto LABEL_182;
                  }
                }

                else
                {

                  v291 = MEMORY[0x277D84F90];
                }

                v293 = v352;
                swift_beginAccess();
                v294 = swift_isUniquelyReferenced_nonNull_native();
                v361 = *(v293 + 80);
                *(v293 + 80) = 0x8000000000000000;
                sub_272300908(v291, v347, v257, v294);

                *(v293 + 80) = v361;
                swift_endAccess();
              }

              else
              {
LABEL_151:
              }
            }

            if (++v275 == v351)
            {

              v2 = v348;
              v270 = v336;
              v271 = v339;
              goto LABEL_147;
            }
          }

          __break(1u);
          goto LABEL_180;
        }

LABEL_147:
        if (++v271 == v338)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_186;
    }

LABEL_129:

    v252 = v334;
    v249 = v329;
  }

  while (1)
  {
    v253 = v252 + 1;
    if (__OFADD__(v252, 1))
    {
      break;
    }

    if (v253 >= v333)
    {
      goto LABEL_122;
    }

    ++v252;
    if (*(v249 + 8 * v253))
    {
      v335 = *(v249 + 8 * v253);
      goto LABEL_136;
    }
  }

LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
}

uint64_t sub_2722FA2AC(uint64_t a1)
{
  v1 = sub_27237728C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2722C389C();
  (*(v2 + 16))(v4, v5, v1);

  v6 = sub_27237725C();
  v7 = sub_272377E6C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    swift_beginAccess();

    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    v10 = sub_27237773C();
    v12 = v11;

    v13 = sub_2721FFD04(v10, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2721E4000, v6, v7, "setEnrollmentsToAsrMatch: %s", v8, 0xCu);
    sub_2722039C8(v9);
    MEMORY[0x2743C69C0](v9, -1, -1);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2722FA4E4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2722AB1B4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2722FA5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v13;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  v9 = sub_27237728C();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722FA6DC, 0, 0);
}

uint64_t sub_2722FA6DC(uint64_t a1)
{
  if (v1[6] < 1)
  {
    if (v1[11] < 1)
    {
      sub_272377F6C();

      v19 = v1[1];

      return v19();
    }

    else
    {
      v11 = v1[7];
      type metadata accessor for VASpeechAPI();
      v12 = type metadata accessor for VANRNameConfiguration(0);
      v13 = (v11 + *(v12 + 20));
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v12 + 28);
      v17 = swift_task_alloc();
      v1[21] = v17;
      *v17 = v1;
      v17[1] = sub_2722FAD04;
      v18 = v1[11];

      return static VASpeechAPI.nearestGraphemeBasedOnGrapheme(_:neighborsOf:locale:)(v18, v14, v15, v11 + v16);
    }
  }

  else
  {
    v2 = v1[7];
    type metadata accessor for VASpeechAPI();
    v3 = type metadata accessor for VANRNameConfiguration(0);
    v4 = (v2 + *(v3 + 20));
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v3 + 28);
    v8 = swift_task_alloc();
    v1[18] = v8;
    *v8 = v1;
    v8[1] = sub_2722FA8DC;
    v9 = v1[6];

    return static VASpeechAPI.nearestGraphemeBasedOnPhoneme(_:neighborsOf:locale:)(v9, v5, v6, v2 + v7);
  }
}

uint64_t sub_2722FA8DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_2722FB06C;
  }

  else
  {
    v4 = sub_2722FA9F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2722FA9F0()
{
  v32 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v4 = sub_2722C389C();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_27237725C();
  v6 = sub_272377E7C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[19];
    v8 = v0[14];
    v29 = v0[13];
    v30 = v0[17];
    v10 = v0[8];
    v9 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315394;
    v13 = MEMORY[0x2743C4C60](v7, MEMORY[0x277D837D0]);
    v15 = sub_2721FFD04(v13, v14, &v31);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2721FFD04(v10, v9, &v31);
    _os_log_impl(&dword_2721E4000, v5, v6, "Will add %s to namesToSearchForIn2ndPass for keyword %s from nearestGraphemeBasedOnPhoneme", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C69C0](v12, -1, -1);
    MEMORY[0x2743C69C0](v11, -1, -1);

    (*(v8 + 8))(v30, v29);
  }

  else
  {
    v16 = v0[17];
    v17 = v0[13];
    v18 = v0[14];

    (*(v18 + 8))(v16, v17);
  }

  sub_2723011F8(v0[8], v0[9], v0[19], v0[10]);

  if (v0[11] < 1)
  {
    sub_272377F6C();

    v28 = v0[1];

    return v28();
  }

  else
  {
    v19 = v0[7];
    type metadata accessor for VASpeechAPI();
    v20 = type metadata accessor for VANRNameConfiguration(0);
    v21 = (v19 + *(v20 + 20));
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v20 + 28);
    v25 = swift_task_alloc();
    v0[21] = v25;
    *v25 = v0;
    v25[1] = sub_2722FAD04;
    v26 = v0[11];

    return static VASpeechAPI.nearestGraphemeBasedOnGrapheme(_:neighborsOf:locale:)(v26, v22, v23, v19 + v24);
  }
}

uint64_t sub_2722FAD04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_2722FB23C;
  }

  else
  {
    v4 = sub_2722FAE18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2722FAE18()
{
  v24 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = sub_2722C389C();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_27237725C();
  v6 = sub_272377E7C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v8 = v0[14];
    v21 = v0[13];
    v22 = v0[16];
    v10 = v0[8];
    v9 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315394;
    v13 = MEMORY[0x2743C4C60](v7, MEMORY[0x277D837D0]);
    v15 = sub_2721FFD04(v13, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2721FFD04(v10, v9, &v23);
    _os_log_impl(&dword_2721E4000, v5, v6, "Will add %s to namesToSearchForIn2ndPass for keyword %s from addNBestPronunciationsBasedOnGrapheme", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C69C0](v12, -1, -1);
    MEMORY[0x2743C69C0](v11, -1, -1);

    (*(v8 + 8))(v22, v21);
  }

  else
  {
    v16 = v0[16];
    v17 = v0[13];
    v18 = v0[14];

    (*(v18 + 8))(v16, v17);
  }

  sub_2723011F8(v0[8], v0[9], v0[22], v0[10]);

  sub_272377F6C();

  v19 = v0[1];

  return v19();
}

uint64_t sub_2722FB06C()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error in addNBest: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v14 = v0[14];
  v13 = v0[15];
  v16 = v0[12];
  v15 = v0[13];

  (*(v14 + 8))(v13, v15);
  swift_beginAccess();
  v17 = *(v16 + 16);
  *(v16 + 16) = v1;

  sub_272377F6C();

  v18 = v0[1];

  return v18();
}

uint64_t sub_2722FB23C()
{
  v1 = v0[23];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error in addNBest: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v14 = v0[14];
  v13 = v0[15];
  v16 = v0[12];
  v15 = v0[13];

  (*(v14 + 8))(v13, v15);
  swift_beginAccess();
  v17 = *(v16 + 16);
  *(v16 + 16) = v1;

  sub_272377F6C();

  v18 = v0[1];

  return v18();
}

void sub_2722FB40C(uint64_t a1@<X8>)
{
  v3 = v2;
  v134 = a1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v4 - 8);
  v143 = v119 - v5;
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v137 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v141 = v119 - v10;
  v11 = sub_272376E5C();
  v12 = *(v11 - 8);
  v145 = v11;
  v146 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_272376EBC();
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v119 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v119 - v21;
  MEMORY[0x28223BE20](v20);
  v27 = v119 - v26;
  v138 = v1;
  v28 = *(v1 + 24);
  v29 = *(v28 + 16);
  if (!v29)
  {
    type metadata accessor for VANRValidationError(0);
    sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError, &protocol conformance descriptor for VANRValidationError);
    swift_allocError();
    *v45 = 0xD00000000000002FLL;
    v45[1] = 0x800000027238F650;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v132 = v19;
  v133 = v25;
  v136 = v7;
  v140 = v6;
  v142 = v23;
  v131 = v3;
  v30 = v24;
  v31 = type metadata accessor for VANRNameConfiguration(0);
  v32 = v27;
  v33 = v31;
  v34 = *(v31 - 8);
  v35 = (v28 + ((*(v34 + 80) + 32) & ~*(v34 + 80)));
  v36 = *(v31 + 28);
  v144 = v30;
  v37 = *(v30 + 16);
  v150 = v32;
  v151 = v15;
  v147 = v37;
  v37(v32, &v35[v36], v15);
  v38 = *(v146 + 16);
  v135 = v14;
  v130 = v146 + 16;
  v129 = v38;
  v38(v14, v35, v145);
  v148 = v30 + 16;
  v149 = (v30 + 8);
  v139 = v28;

  v39 = 1;
  while (v29 != v39)
  {
    v40 = v39 + 1;
    v41 = v151;
    v147(v22, &v35[*(v34 + 72) * v39 + *(v33 + 28)], v151);
    sub_272302674(&qword_280882BA8, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
    v42 = sub_2723777DC();
    v43 = *v149;
    (*v149)(v22, v41);
    v39 = v40;
    if ((v42 & 1) == 0)
    {
      type metadata accessor for VANRValidationError(0);
      sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError, &protocol conformance descriptor for VANRValidationError);
      swift_allocError();
      *v44 = 0xD00000000000002ELL;
      v44[1] = 0x800000027238F5F0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v146 + 8))(v135, v145);
      v43(v150, v151);
      return;
    }
  }

  v46 = sub_2722C389C();
  v47 = v136;
  v48 = *(v136 + 16);
  v49 = v141;
  v126 = v46;
  v50 = v140;
  v127 = v136 + 16;
  v125 = v48;
  (v48)(v141);
  v51 = v132;
  v52 = v151;
  v53 = v150;
  (v147)(v132);
  v54 = sub_27237725C();
  v55 = sub_272377E7C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v158 = v57;
    *v56 = 136315138;
    v58 = sub_272376E7C();
    v60 = v59;
    v139 = *v149;
    v139(v51, v151);
    v61 = sub_2721FFD04(v58, v60, &v158);
    v62 = v150;

    *(v56 + 4) = v61;
    _os_log_impl(&dword_2721E4000, v54, v55, "Got locale: %s Checking for Speech asset...", v56, 0xCu);
    sub_2722039C8(v57);
    v63 = v57;
    v52 = v151;
    MEMORY[0x2743C69C0](v63, -1, -1);
    MEMORY[0x2743C69C0](v56, -1, -1);

    v124 = *(v47 + 8);
    v124(v141, v140);
  }

  else
  {

    v139 = *v149;
    v139(v51, v52);
    v124 = *(v47 + 8);
    v124(v49, v50);
    v62 = v53;
  }

  v64 = swift_allocObject();
  *(v64 + 16) = MEMORY[0x277D84F90];
  v122 = v64 + 16;
  v65 = dispatch_semaphore_create(0);
  v66 = swift_allocObject();
  v141 = v66;
  *(v66 + 16) = 0;
  v120 = (v66 + 16);
  v67 = swift_allocObject();
  v132 = v67;
  *(v67 + 16) = 0;
  v123 = (v67 + 16);
  v128 = mach_absolute_time();
  v68 = sub_272377C3C();
  (*(*(v68 - 8) + 56))(v143, 1, 1, v68);
  v147(v22, v62, v52);
  v69 = v144;
  v70 = (*(v144 + 80) + 56) & ~*(v144 + 80);
  v71 = (v133 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v121 = *(v144 + 80);
  v72 = swift_allocObject();
  v72[2] = 0;
  v72[3] = 0;
  v72[4] = v65;
  v72[5] = v64;
  v72[6] = v138;
  v73 = *(v69 + 32);
  v74 = v72 + v70;
  v75 = v151;
  v119[1] = v69 + 32;
  v119[0] = v73;
  v73(v74, v22, v151);
  *(v72 + v71) = v141;
  *(v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8)) = v132;
  v76 = v65;
  v133 = v64;

  sub_27222A1F0(0, 0, v143, &unk_272383F10, v72);

  sub_272377F5C();
  type metadata accessor for VARequestContext(0);
  v77 = mach_absolute_time();
  v78 = v77 >= v128;
  v79 = v77 - v128;
  if (!v78)
  {
    goto LABEL_32;
  }

  v128 = v76;
  v80 = sub_2722310BC(v79);
  v81 = v137;
  v82 = v140;
  v125(v137, v126, v140);
  v83 = sub_27237725C();
  v84 = sub_272377E7C();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 134217984;
    *(v85 + 4) = v80;
    _os_log_impl(&dword_2721E4000, v83, v84, "Took %f seconds to check Speech asset availability", v85, 0xCu);
    MEMORY[0x2743C69C0](v85, -1, -1);
  }

  v124(v81, v82);
  v86 = v123;
  swift_beginAccess();
  v87 = *v86;
  v88 = v146;
  if (v87)
  {
    swift_willThrow();
    v89 = v87;

    (*(v88 + 8))(v135, v145);
    v139(v150, v75);

    return;
  }

  v90 = v122;
  swift_beginAccess();
  v91 = *v90;
  v138 = *(*v90 + 16);
  if (v138)
  {
    v143 = v91 + ((v121 + 32) & ~v121);

    v93 = 0;
    v94 = v142;
    v140 = v92;
    while (v93 < *(v92 + 16))
    {
      v147(v94, v143 + *(v144 + 72) * v93, v75);
      sub_272376E7C();
      v95 = sub_2723778AC();
      v97 = v96;

      v152 = v95;
      v153 = v97;
      v156 = 95;
      v157 = 0xE100000000000000;
      v154 = 45;
      v155 = 0xE100000000000000;
      sub_272203AC4();
      v98 = sub_2723780FC();
      v100 = v99;

      sub_272376E7C();
      v101 = sub_2723778AC();
      v103 = v102;

      v152 = v101;
      v153 = v103;
      v156 = 95;
      v157 = 0xE100000000000000;
      v154 = 45;
      v155 = 0xE100000000000000;
      v104 = sub_2723780FC();
      v106 = v105;

      if (v98 == v104 && v100 == v106)
      {

LABEL_26:

        v112 = v142;
        v113 = v120;
        swift_beginAccess();
        v114 = v150;
        if (*v113)
        {

          (*(v146 + 8))(v135, v145);
          v115 = v151;
          v139(v114, v151);
          (v119[0])(v134, v112, v115);
        }

        else
        {
          type metadata accessor for VANRValidationError(0);
          sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError, &protocol conformance descriptor for VANRValidationError);
          swift_allocError();
          v116 = v151;
          v147(v117, v114, v151);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v118 = v139;
          v139(v112, v116);
          (*(v146 + 8))(v135, v145);
          v118(v114, v116);
        }

LABEL_29:

        goto LABEL_30;
      }

      v107 = sub_27237865C();

      if (v107)
      {
        goto LABEL_26;
      }

      ++v93;
      v94 = v142;
      v75 = v151;
      v139(v142, v151);
      v92 = v140;
      if (v138 == v93)
      {

        type metadata accessor for VANRValidationError(0);
        sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError, &protocol conformance descriptor for VANRValidationError);
        swift_allocError();
        v108 = v135;
        v109 = v145;
        v129(v110, v135, v145);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v146 + 8))(v108, v109);
        v139(v150, v75);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  sub_27230206C();
  swift_allocError();
  *v111 = 0xD00000000000002CLL;
  v111[1] = 0x800000027238F620;
  swift_willThrow();

  (*(v146 + 8))(v135, v145);
  v139(v150, v75);

LABEL_30:
}

uint64_t sub_2722FC560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v16;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v9 = sub_272376EBC();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();
  v10 = sub_27237728C();
  v8[32] = v10;
  v8[33] = *(v10 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  type metadata accessor for VASpeechBiasData(0);
  v8[37] = swift_task_alloc();
  v11 = sub_27237768C();
  v8[38] = v11;
  v8[39] = *(v11 - 8);
  v8[40] = swift_task_alloc();
  v12 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v8[41] = v12;
  v8[42] = *(v12 - 8);
  v8[43] = swift_task_alloc();
  v13 = sub_2723774FC();
  v8[44] = v13;
  v8[45] = *(v13 - 8);
  v8[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722FC7F0, 0, 0);
}

uint64_t sub_2722FC7F0()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v0[47] = sub_27237750C();
  v0[48] = sub_2723774EC();
  (*(v2 + 104))(v1, *MEMORY[0x277CDCC60], v3);
  v7 = (*MEMORY[0x277CDCC50] + MEMORY[0x277CDCC50]);
  v4 = swift_task_alloc();
  v0[49] = v4;
  *v4 = v0;
  v4[1] = sub_2722FC8EC;
  v5 = v0[46];

  return v7(v5);
}

uint64_t sub_2722FC8EC(uint64_t a1)
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 360);
  v4 = *(*v1 + 352);
  *(*v1 + 400) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2722FCA68, 0, 0);
}

uint64_t sub_2722FCA68()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 320);
  v3 = *(v0 + 192);
  swift_beginAccess();
  *(v3 + 16) = v1;

  type metadata accessor for VASpeechAPI();
  swift_beginAccess();
  VATaskHintCommand.speechTaskHint()(v2);
  *(v0 + 576) = 0;
  VASpeechBiasData.init()();
  v4 = swift_task_alloc();
  *(v0 + 408) = v4;
  *v4 = v0;
  v4[1] = sub_2722FCBA8;
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 296);
  v8 = *(v0 + 208);

  return static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(v5, v6, &unk_28818E530, v8, (v0 + 576), v7);
}

uint64_t sub_2722FCBA8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[52] = a2;
  v4[53] = v2;

  if (v2)
  {
    v6 = v4[39];
    v5 = v4[40];
    v7 = v4[38];
    sub_2723025AC(v4[37], type metadata accessor for VASpeechBiasData);
    (*(v6 + 8))(v5, v7);
    v8 = sub_2722FDC80;
  }

  else
  {
    v10 = v4[42];
    v9 = v4[43];
    v12 = v4[40];
    v11 = v4[41];
    v13 = v4[38];
    v14 = v4[39];
    sub_2723025AC(v4[37], type metadata accessor for VASpeechBiasData);
    (*(v14 + 8))(v12, v13);
    (*(v10 + 8))(v9, v11);

    v8 = sub_2722FCD70;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2722FCD70()
{
  v1 = v0[52];
  v0[54] = sub_2723774EC();
  v0[55] = sub_2721F065C(&qword_280881FF8, &qword_272381B90);
  v2 = swift_allocObject();
  v0[56] = v2;
  *(v2 + 16) = xmmword_27237AF80;
  v3 = sub_272302674(&qword_280882000, MEMORY[0x277CDCB98], MEMORY[0x277CDCB88]);
  v0[57] = v3;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v6 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_2722FCEB4;

  return v6(v2);
}

uint64_t sub_2722FCEB4(char a1)
{
  *(*v1 + 577) = a1;

  return MEMORY[0x2822009F8](sub_2722FCFF0, 0, 0);
}

uint64_t sub_2722FCFF0()
{
  v1 = *(v0 + 577);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = swift_beginAccess();
  *(v2 + 16) = v1;
  v5 = *(*(*v3 + 256))(v4);
  v6 = (*(v5 + 1096))();

  if (v6 == 2 || (v6 & 1) == 0 || (v7 = *(v0 + 216), swift_beginAccess(), (*(v7 + 16) & 1) != 0))
  {

    sub_272377F6C();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 288);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = sub_2722C389C();
    *(v0 + 472) = v13;
    v14 = *(v12 + 16);
    *(v0 + 480) = v14;
    *(v0 + 488) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v10, v13, v11);
    v15 = sub_27237725C();
    v16 = sub_272377E8C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2721E4000, v15, v16, "Speech API assets not yet installed. Downloading with assetsInstallationRequest", v17, 2u);
      MEMORY[0x2743C69C0](v17, -1, -1);
    }

    v18 = *(v0 + 456);
    v19 = *(v0 + 416);
    v20 = *(v0 + 288);
    v21 = *(v0 + 256);
    v22 = *(v0 + 264);

    v23 = *(v22 + 8);
    *(v0 + 496) = v23;
    v23(v20, v21);
    *(v0 + 504) = sub_2723774EC();
    v24 = swift_allocObject();
    *(v0 + 512) = v24;
    *(v24 + 16) = xmmword_27237AF80;
    *(v24 + 32) = v19;
    *(v24 + 40) = v18;
    v26 = (*MEMORY[0x277CDCC58] + MEMORY[0x277CDCC58]);

    v25 = swift_task_alloc();
    *(v0 + 520) = v25;
    *v25 = v0;
    v25[1] = sub_2722FD368;

    return v26(v24, 0x7463416563696F56, 0xEC000000736E6F69);
  }
}

uint64_t sub_2722FD368(uint64_t a1)
{
  *(*v1 + 528) = a1;

  return MEMORY[0x2822009F8](sub_2722FD4A4, 0, 0);
}

uint64_t sub_2722FD4A4(uint64_t a1)
{
  if (v1[66])
  {
    v2 = swift_task_alloc();
    v1[67] = v2;
    *v2 = v1;
    v2[1] = sub_2722FD61C;

    return MEMORY[0x28212C1E0]();
  }

  else
  {
    v3 = v1[57];
    v4 = v1[52];
    v1[69] = sub_2723774EC();
    v5 = swift_allocObject();
    v1[70] = v5;
    *(v5 + 16) = xmmword_27237AF80;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;
    v8 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

    v6 = swift_task_alloc();
    v1[71] = v6;
    *v6 = v1;
    v6[1] = sub_2722FD838;

    return v8(v5);
  }
}

uint64_t sub_2722FD61C()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_2722FDE9C;
  }

  else
  {

    v3 = sub_2722FD738;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2722FD738(uint64_t a1)
{
  v2 = v1[57];
  v3 = v1[52];
  v1[69] = sub_2723774EC();
  v4 = swift_allocObject();
  v1[70] = v4;
  *(v4 + 16) = xmmword_27237AF80;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  v7 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v5 = swift_task_alloc();
  v1[71] = v5;
  *v5 = v1;
  v5[1] = sub_2722FD838;

  return v7(v4);
}

uint64_t sub_2722FD838(char a1)
{
  *(*v1 + 578) = a1;

  return MEMORY[0x2822009F8](sub_2722FD974, 0, 0);
}

uint64_t sub_2722FD974()
{
  v29 = v0;
  v1 = *(v0 + 578);
  v2 = *(v0 + 216);
  swift_beginAccess();
  *(v2 + 16) = v1;
  if (v1)
  {
  }

  else
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    v6 = *(v0 + 208);
    (*(v0 + 480))(*(v0 + 280), *(v0 + 472), *(v0 + 256));
    (*(v5 + 16))(v3, v6, v4);
    v7 = sub_27237725C();
    v8 = sub_272377E8C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 496);
    v11 = *(v0 + 280);
    v12 = *(v0 + 256);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 232);
    if (v9)
    {
      v27 = *(v0 + 256);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      sub_272302674(&qword_280882BC8, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v25 = v11;
      v26 = v10;
      v18 = sub_27237862C();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_2721FFD04(v18, v20, &v28);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2721E4000, v7, v8, "Started an ASR asset download request for %s but ASR reports that the assets are not yet available. Will continue but this may cause errors later on.", v16, 0xCu);
      sub_2722039C8(v17);
      MEMORY[0x2743C69C0](v17, -1, -1);
      MEMORY[0x2743C69C0](v16, -1, -1);

      v26(v25, v27);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
      v10(v11, v12);
    }

    v22 = *(v0 + 216);
    swift_beginAccess();
    *(v22 + 16) = 1;
  }

  sub_272377F6C();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2722FDC80()
{
  v1 = v0[53];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error in checking assets: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v14 = v0[33];
  v13 = v0[34];
  v15 = v0[32];
  v16 = v0[28];

  (*(v14 + 8))(v13, v15);
  swift_beginAccess();
  v17 = *(v16 + 16);
  *(v16 + 16) = v1;

  sub_272377F6C();

  v18 = v0[1];

  return v18();
}

uint64_t sub_2722FDE9C()
{
  v1 = v0[66];

  v2 = v0[68];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = sub_2722C389C();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_27237725C();
  v9 = sub_272377E8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2721E4000, v8, v9, "Error in checking assets: %@", v10, 0xCu);
    sub_2721F40F0(v11, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v11, -1, -1);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  v15 = v0[33];
  v14 = v0[34];
  v16 = v0[32];
  v17 = v0[28];

  (*(v15 + 8))(v14, v16);
  swift_beginAccess();
  v18 = *(v17 + 16);
  *(v17 + 16) = v2;

  sub_272377F6C();

  v19 = v0[1];

  return v19();
}

uint64_t static VANRNameRecognizerBuilder.prepareLocale(systemConfig:locale:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_27237728C();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  type metadata accessor for VASpeechBiasData(0);
  v4[21] = swift_task_alloc();
  v6 = sub_27237768C();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v8 = sub_272376EBC();
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  sub_2721F065C(&qword_280882BB8, &unk_272386DF0);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v9 = sub_2723774FC();
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722FE384, 0, 0);
}

uint64_t sub_2722FE384()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v0[37] = sub_27237750C();
  v0[38] = sub_2723774EC();
  (*(v2 + 104))(v1, *MEMORY[0x277CDCC60], v3);
  v7 = (*MEMORY[0x277CDCC50] + MEMORY[0x277CDCC50]);
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_2722FE480;
  v5 = v0[36];

  return v7(v5);
}

uint64_t sub_2722FE480(uint64_t a1)
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 272);
  *(*v1 + 320) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2722FE5FC, 0, 0);
}

uint64_t sub_2722FE5FC()
{
  v45 = v0;
  v1 = *(v0 + 320);
  v40 = *(*(v0 + 232) + 56);
  v40(*(v0 + 264), 1, 1, *(v0 + 224));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 232);
    v42 = *(v3 + 16);
    v4 = *(v0 + 320) + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v41 = *(v3 + 72);
    v38 = (v3 + 8);
    v39 = (v3 + 32);
    while (1)
    {
      v43 = v2;
      v42(*(v0 + 248), v4, *(v0 + 224));
      sub_272376E7C();
      v5 = sub_2723778AC();
      v7 = v6;

      *(v0 + 16) = v5;
      *(v0 + 24) = v7;
      *(v0 + 32) = 95;
      *(v0 + 40) = 0xE100000000000000;
      *(v0 + 48) = 45;
      *(v0 + 56) = 0xE100000000000000;
      sub_272203AC4();
      v8 = sub_2723780FC();
      v10 = v9;

      sub_272376E7C();
      v11 = sub_2723778AC();
      v13 = v12;

      *(v0 + 64) = v11;
      *(v0 + 72) = v13;
      *(v0 + 80) = 95;
      *(v0 + 88) = 0xE100000000000000;
      *(v0 + 96) = 45;
      *(v0 + 104) = 0xE100000000000000;
      v14 = sub_2723780FC();
      v16 = v15;

      if (v8 == v14 && v10 == v16)
      {
        break;
      }

      v17 = sub_27237865C();

      if (v17)
      {
        goto LABEL_9;
      }

      (*v38)(*(v0 + 248), *(v0 + 224));
LABEL_4:
      v4 += v41;
      v2 = v43 - 1;
      if (v43 == 1)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v18 = *(v0 + 264);
    v19 = *(v0 + 248);
    v20 = *(v0 + 224);
    sub_2721F40F0(v18, &qword_280882BB8, &unk_272386DF0);
    (*v39)(v18, v19, v20);
    v40(v18, 0, 1, v20);
    goto LABEL_4;
  }

LABEL_10:

  v21 = *(v0 + 256);
  v22 = *(v0 + 224);
  v23 = *(v0 + 232);
  sub_2721F07F4(*(v0 + 264), v21, &qword_280882BB8, &unk_272386DF0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v24 = *(v0 + 264);
    sub_2721F40F0(*(v0 + 256), &qword_280882BB8, &unk_272386DF0);
    sub_27237820C();

    v44[0] = 0xD00000000000001DLL;
    v44[1] = 0x800000027238F680;
    v25 = sub_272376E7C();
    MEMORY[0x2743C4AD0](v25);

    sub_27230206C();
    swift_allocError();
    *v26 = 0xD00000000000001DLL;
    v26[1] = 0x800000027238F680;
    swift_willThrow();
    sub_2721F40F0(v24, &qword_280882BB8, &unk_272386DF0);

    v27 = *(v0 + 8);

    return v27(0);
  }

  else
  {
    v29 = *(v0 + 192);
    v30 = *(v0 + 112);
    v31 = (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 256), *(v0 + 224));
    (*(*v30 + 976))(v44, v31);
    if (LOBYTE(v44[0]) == 16)
    {
      v32 = 3;
    }

    else
    {
      v32 = v44[0];
    }

    type metadata accessor for VASpeechAPI();
    LOBYTE(v44[0]) = v32;
    VATaskHintCommand.speechTaskHint()(v29);
    *(v0 + 464) = 0;
    VASpeechBiasData.init()();
    v33 = swift_task_alloc();
    *(v0 + 328) = v33;
    *v33 = v0;
    v33[1] = sub_2722FEB8C;
    v34 = *(v0 + 240);
    v35 = *(v0 + 216);
    v36 = *(v0 + 192);
    v37 = *(v0 + 168);

    return static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(v35, v36, &unk_28818E560, v34, (v0 + 464), v37);
  }
}

uint64_t sub_2722FEB8C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = (*v3)[23];
  v4[42] = a2;
  v4[43] = v2;

  v6 = (v5 + 8);
  if (v2)
  {
    v7 = v4[24];
    v8 = v4[22];
    sub_2723025AC(v4[21], type metadata accessor for VASpeechBiasData);
    (*v6)(v7, v8);
    v9 = sub_2722FF9E4;
  }

  else
  {
    v11 = v4[26];
    v10 = v4[27];
    v13 = v4[24];
    v12 = v4[25];
    v14 = v4[22];
    sub_2723025AC(v4[21], type metadata accessor for VASpeechBiasData);
    (*v6)(v13, v14);
    (*(v11 + 8))(v10, v12);

    v9 = sub_2722FED68;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2722FED68(uint64_t a1)
{
  v2 = v1[42];
  v1[44] = sub_2723774EC();
  v1[45] = sub_2721F065C(&qword_280881FF8, &qword_272381B90);
  v3 = swift_allocObject();
  v1[46] = v3;
  *(v3 + 16) = xmmword_27237AF80;
  v4 = sub_272302674(&qword_280882000, MEMORY[0x277CDCB98], MEMORY[0x277CDCB88]);
  v1[47] = v4;
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
  v7 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v5 = swift_task_alloc();
  v1[48] = v5;
  *v5 = v1;
  v5[1] = sub_2722FEEAC;

  return v7(v3);
}

uint64_t sub_2722FEEAC(char a1)
{
  *(*v1 + 465) = a1;

  return MEMORY[0x2822009F8](sub_2722FEFE8, 0, 0);
}

uint64_t sub_2722FEFE8()
{
  if (*(v0 + 465) == 1)
  {

    v1 = *(v0 + 264);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    sub_2721F40F0(v1, &qword_280882BB8, &unk_272386DF0);

    v2 = *(v0 + 8);

    return v2(1);
  }

  else
  {
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 144);
    v7 = sub_2722C389C();
    (*(v5 + 16))(v4, v7, v6);
    v8 = sub_27237725C();
    v9 = sub_272377E8C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2721E4000, v8, v9, "Speech API assets not yet installed. Downloading with assetsInstallationRequest", v10, 2u);
      MEMORY[0x2743C69C0](v10, -1, -1);
    }

    v11 = *(v0 + 376);
    v12 = *(v0 + 336);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 144);

    (*(v14 + 8))(v13, v15);
    *(v0 + 392) = sub_2723774EC();
    v16 = swift_allocObject();
    *(v0 + 400) = v16;
    *(v16 + 16) = xmmword_27237AF80;
    *(v16 + 32) = v12;
    *(v16 + 40) = v11;
    v20 = (*MEMORY[0x277CDCC58] + MEMORY[0x277CDCC58]);

    v17 = swift_task_alloc();
    *(v0 + 408) = v17;
    *v17 = v0;
    v17[1] = sub_2722FF2A0;
    v18 = *(v0 + 128);
    v19 = *(v0 + 136);

    return v20(v16, v18, v19);
  }
}

uint64_t sub_2722FF2A0(uint64_t a1)
{
  *(*v1 + 416) = a1;

  return MEMORY[0x2822009F8](sub_2722FF3DC, 0, 0);
}

uint64_t sub_2722FF3DC(uint64_t a1)
{
  if (v1[52])
  {
    v2 = swift_task_alloc();
    v1[53] = v2;
    *v2 = v1;
    v2[1] = sub_2722FF554;

    return MEMORY[0x28212C1E0]();
  }

  else
  {
    v3 = v1[47];
    v4 = v1[42];
    v1[55] = sub_2723774EC();
    v5 = swift_allocObject();
    v1[56] = v5;
    *(v5 + 16) = xmmword_27237AF80;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;
    v8 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

    v6 = swift_task_alloc();
    v1[57] = v6;
    *v6 = v1;
    v6[1] = sub_2722FF788;

    return v8(v5);
  }
}

uint64_t sub_2722FF554()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_2722FFAF4;
  }

  else
  {
    v3 = sub_2722FF688;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2722FF688(uint64_t a1)
{
  v2 = v1[47];
  v3 = v1[42];
  v1[55] = sub_2723774EC();
  v4 = swift_allocObject();
  v1[56] = v4;
  *(v4 + 16) = xmmword_27237AF80;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  v7 = (*MEMORY[0x277CDCC40] + MEMORY[0x277CDCC40]);

  v5 = swift_task_alloc();
  v1[57] = v5;
  *v5 = v1;
  v5[1] = sub_2722FF788;

  return v7(v4);
}

uint64_t sub_2722FF788(char a1)
{
  *(*v1 + 466) = a1;

  return MEMORY[0x2822009F8](sub_2722FF8C4, 0, 0);
}

uint64_t sub_2722FF8C4()
{

  v4 = *(v0 + 466);
  v1 = *(v0 + 264);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  sub_2721F40F0(v1, &qword_280882BB8, &unk_272386DF0);

  v2 = *(v0 + 8);

  return v2(v4);
}

uint64_t sub_2722FF9E4()
{
  v1 = v0[33];
  (*(v0[29] + 8))(v0[30], v0[28]);
  sub_2721F40F0(v1, &qword_280882BB8, &unk_272386DF0);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_2722FFAF4()
{
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  (*(v3 + 8))(v2, v4);
  sub_2721F40F0(v1, &qword_280882BB8, &unk_272386DF0);

  v5 = v0[1];

  return v5(0);
}

void *VANRNameRecognizerBuilder.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_2723025AC(v0 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams, type metadata accessor for VARuntimeParameters);

  return v0;
}

uint64_t VANRNameRecognizerBuilder.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_2723025AC(v0 + OBJC_IVAR____TtC12VoiceActions25VANRNameRecognizerBuilder_runtimeParams, type metadata accessor for VARuntimeParameters);

  return swift_deallocClassInstance();
}

void *sub_2722FFD78(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2721F065C(&qword_280882B90, &unk_272383EC0);
  v10 = *(type metadata accessor for VANRValidationError(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for VANRValidationError(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2722FFF74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for VANRCollectedEnrollment(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2721F065C(&qword_280882BF0, &qword_2723841A0);
  v40 = v4;
  result = sub_2723783DC();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_2723019C4(v28, v41, type metadata accessor for VANRCollectedEnrollment);
      }

      else
      {
        sub_27230260C(v28, v41, type metadata accessor for VANRCollectedEnrollment);
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_2723019C4(v41, *(v9 + 56) + v27 * v17, type metadata accessor for VANRCollectedEnrollment);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2723002EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for VANRNameConfiguration(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2721F065C(&qword_280882C00, &unk_2723841B0);
  v40 = v4;
  result = sub_2723783DC();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_2723019C4(v28, v41, type metadata accessor for VANRNameConfiguration);
      }

      else
      {
        sub_27230260C(v28, v41, type metadata accessor for VANRNameConfiguration);
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_2723019C4(v41, *(v9 + 56) + v27 * v17, type metadata accessor for VANRNameConfiguration);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_272300664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_2808826E0, &qword_272384190);
  v33 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_272300908(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27220038C(a2, a3);
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
      sub_27229FEAC(v16, a4 & 1);
      v11 = sub_27220038C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2723786BC();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_2722A0154();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_272300A84(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27220038C(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_272300664(v16, a3 & 1);
      v11 = sub_27220038C(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_2723786BC();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_272301090();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * v11) = a4;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 4 * v11) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_272300BE0()
{
  v1 = v0;
  v2 = type metadata accessor for VANRCollectedEnrollment(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2721F065C(&qword_280882BF0, &qword_2723841A0);
  v4 = *v0;
  v5 = sub_2723783CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_27230260C(*(v4 + 56) + v26, v30, type metadata accessor for VANRCollectedEnrollment);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_2723019C4(v25, *(v27 + 56) + v26, type metadata accessor for VANRCollectedEnrollment);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

void sub_272300E38()
{
  v1 = v0;
  v2 = type metadata accessor for VANRNameConfiguration(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2721F065C(&qword_280882C00, &unk_2723841B0);
  v4 = *v0;
  v5 = sub_2723783CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_27230260C(*(v4 + 56) + v26, v30, type metadata accessor for VANRNameConfiguration);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_2723019C4(v25, *(v27 + 56) + v26, type metadata accessor for VANRNameConfiguration);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

void sub_272301090()
{
  v1 = v0;
  sub_2721F065C(&qword_2808826E0, &qword_272384190);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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
}