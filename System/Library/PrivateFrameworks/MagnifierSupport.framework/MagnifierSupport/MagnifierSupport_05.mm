uint64_t sub_257C269F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C26A84, 0, 0);
}

uint64_t sub_257C26A84()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_257C26B44;
  v2 = *(v0 + 24);

  return MAGPointAndSpeakEventHandler.send(_:)(v2);
}

uint64_t sub_257C26B44()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_257C32C4C;
  }

  else
  {
    v2 = sub_257C32C14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C26C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C26CE8, 0, 0);
}

uint64_t sub_257C26CE8()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_257C26B44;
  v2 = *(v0 + 24);

  return MAGPointAndSpeakEventHandler.send(_:)(v2);
}

void sub_257C26DA8()
{
  v1 = v0;
  v2 = sub_257ECCC80();
  v3 = *(v2 - 8);
  *&v8 = MEMORY[0x28223BE20](v2, v4, v5, v6, v7).n128_u64[0];
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument;
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument) || (v12 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks, *(*(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks) + 16)))
  {
    v13 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastImageCacheTime;
    swift_beginAccess();
    (*(v3 + 16))(v10, v1 + v13, v2);
    sub_257ECCC10();
    v15 = v14;
    (*(v3 + 8))(v10, v2);
    if (v15 < -0.5)
    {
      v16 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService);
      v17 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
      swift_beginAccess();
      v18 = *(v16 + v17);
      if (v18)
      {
        v19 = [v18 currentFrame];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 capturedImage];
          v22 = [v20 camera];
          sub_257ECC3F0();
          sub_257CB7AE4(v21, 0);
          v27 = v26;
          v28 = v26;
          v40 = v22;
          v29 = v28;
          sub_257C271C8(v27, v1, v21, v40, v20);

          v30 = v40;

          sub_257ECCC70();

          swift_beginAccess();
          (*(v3 + 40))(v1 + v13, v10, v2);
          swift_endAccess();
        }
      }
    }
  }

  else
  {
    v23 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame);
    if (v23)
    {
      v24 = [v23 capturedImage];
      if (v24)
      {
        v25 = v24;
        sub_257ECC3F0();
        sub_257CB7AE4(v25, 0);
        v31 = *(v1 + v11);
        *(v1 + v11) = v32;
        v33 = v32;

        *(v1 + v12) = sub_257C317E4(v33);

        v35 = sub_257C27B94(v34);

        *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks) = v35;

        v36 = [objc_opt_self() currentDevice];
        v37 = [v36 orientation];

        if ((v37 - 2) >= 3)
        {
          v38 = 1;
        }

        else
        {
          v38 = qword_257EDC490[(v37 - 2)];
        }

        *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation) = v38;
      }
    }
  }
}

void sub_257C271C8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v8 = a1;
    v9 = sub_257C317E4(v8);
    v10 = sub_257C27B94(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FB8, &qword_257EDC448);
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D837D0];
    *(v11 + 16) = xmmword_257EDC1F0;
    *(v11 + 56) = v12;
    *(v11 + 32) = 0x6675426C65786970;
    *(v11 + 40) = 0xEB00000000726566;
    type metadata accessor for CVBuffer(0);
    *(v11 + 64) = a3;
    *(v11 + 120) = v12;
    *(v11 + 88) = v13;
    *(v11 + 96) = 0x636F6C4274786574;
    *(v11 + 104) = 0xEA0000000000736BLL;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6970, &unk_257EDB140);
    *(v11 + 128) = v9;
    *(v11 + 184) = v12;
    *(v11 + 152) = v14;
    *(v11 + 160) = 0xD000000000000011;
    *(v11 + 168) = 0x8000000257EFA560;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FA0, &qword_257EDC398);
    *(v11 + 192) = v10;
    *(v11 + 248) = v12;
    *(v11 + 216) = v15;
    *(v11 + 224) = 0x6172656D6163;
    *(v11 + 232) = 0xE600000000000000;
    v16 = sub_257BD2C2C(0, &qword_27F8F5F98, 0x277CE5238);
    *(v11 + 256) = a4;
    *(v11 + 312) = v12;
    *(v11 + 280) = v16;
    *(v11 + 288) = 0x7461746E6569726FLL;
    *(v11 + 296) = 0xEB000000006E6F69;
    v17 = objc_opt_self();
    v18 = a3;
    v19 = a4;
    v20 = [v17 currentDevice];
    v21 = [v20 orientation];

    if ((v21 - 2) > 2)
    {
      v22 = 1;
    }

    else
    {
      v22 = qword_257EDC490[(v21 - 2)];
    }

    type metadata accessor for UIInterfaceOrientation(0);
    *(v11 + 344) = v23;
    *(v11 + 320) = v22;
    sub_257BD2C2C(0, &qword_27F8F5FC0, 0x277CBEB38);
    v24 = sub_257ECFB90();
    v25 = [a5 sceneDepth];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 depthMap];

      if (v27)
      {
        v28 = v27;
        [v24 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
      }
    }

    if (qword_27F8F4610 != -1)
    {
      swift_once();
    }

    v29 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
    v30 = v24;
    sub_257CEFBF8(v24, v29);
  }
}

uint64_t sub_257C27524(void *a1, uint64_t *a2)
{
  v9 = type metadata accessor for DetectedTextBlock(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x28223BE20](v17, v18, v19, v20, v21).n128_u64[0];
  v24 = &v76 - v23;
  v25 = [a1 getLines];
  v82 = sub_257BD2C2C(0, &qword_27F8F5FB0, 0x277CE2DD8);
  v26 = sub_257ECF810();

  if (v26 >> 62)
  {
    v27 = sub_257ED0210();
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_13:

    v29 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_13;
  }

LABEL_3:
  v86 = MEMORY[0x277D84F90];
  sub_257BF27A4(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v77 = a1;
  v78 = v9;
  v79 = v16;
  v80 = a2;
  v81 = v10;
  v28 = 0;
  v29 = v86;
  do
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x259C72E20](v28, v26);
    }

    else
    {
      v30 = *(v26 + 8 * v28 + 32);
    }

    v31 = v30;
    [v30 confidence];
    v33 = v32;

    v86 = v29;
    v35 = *(v29 + 16);
    v34 = *(v29 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_257BF27A4((v34 > 1), v35 + 1, 1);
      v29 = v86;
    }

    ++v28;
    *(v29 + 16) = v35 + 1;
    *(v29 + 4 * v35 + 32) = v33;
  }

  while (v27 != v28);

  a2 = v80;
  v10 = v81;
  v9 = v78;
  v16 = v79;
  a1 = v77;
LABEL_14:
  v36 = *(v29 + 16);
  if (!v36)
  {

    v6 = 0.0;
    goto LABEL_24;
  }

  if (v36 > 7)
  {
    v37 = v36 & 0x7FFFFFFFFFFFFFF8;
    v39 = v29 + 48;
    v38 = 0.0;
    v40 = v36 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v38 = (((((((v38 + COERCE_FLOAT(*(v39 - 16))) + COERCE_FLOAT(HIDWORD(*(v39 - 16)))) + COERCE_FLOAT(*(v39 - 8))) + COERCE_FLOAT(HIDWORD(*(v39 - 16)))) + COERCE_FLOAT(*v39)) + COERCE_FLOAT(HIDWORD(*v39))) + COERCE_FLOAT(*(v39 + 8))) + COERCE_FLOAT(HIDWORD(*v39));
      v39 += 32;
      v40 -= 8;
    }

    while (v40);
    if (v36 == v37)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v37 = 0;
    v38 = 0.0;
  }

  v41 = v36 - v37;
  v42 = (v29 + 4 * v37 + 32);
  do
  {
    v43 = *v42++;
    v38 = v38 + v43;
    --v41;
  }

  while (v41);
LABEL_23:

  v6 = v38;
LABEL_24:
  sub_257D11A58();
  v81 = v44;
  [a1 boundingBox];
  v2 = v45;
  v3 = v46;
  v4 = v47;
  v5 = v48;
  v49 = [a1 getLines];
  v50 = sub_257ECF810();

  if (v50 >> 62)
  {
    v51 = sub_257ED0210();
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v51)
  {
    v52 = [a1 getLines];
    v53 = sub_257ECF810();

    if (!(v53 >> 62))
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:

      v55 = v6 / v54;
      goto LABEL_31;
    }

LABEL_42:
    v54 = sub_257ED0210();
    goto LABEL_29;
  }

  [a1 confidence];
  v55 = v56;
LABEL_31:
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v57 = a1;
  v58 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
  swift_beginAccess();
  v59 = *(v58 + 8);
  v60 = *(v58 + 16);
  v83[0] = *v58;
  v83[1] = v59;
  v84 = v60;
  v61 = qword_2815447E0;

  if (v61 != -1)
  {
    v62 = swift_once();
  }

  MEMORY[0x28223BE20](v62, v63, v64, v65, v66);
  *(&v76 - 2) = v83;
  sub_257ECFD50();

  v67 = v85;
  v68 = [v57 getCROutputRegion];
  sub_257ECCCE0();
  v69 = v9[9];
  *&v24[v9[5]] = v81;
  v70 = &v24[v9[6]];
  *v70 = v2;
  *(v70 + 1) = v3;
  *(v70 + 2) = v4;
  *(v70 + 3) = v5;
  *&v24[v9[7]] = v55;
  v24[v9[8]] = v67;
  *&v24[v69] = v68;
  sub_257C31F70(v24, v16, type metadata accessor for DetectedTextBlock);
  v71 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v71;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v71 = sub_257BFD440(0, v71[2] + 1, 1, v71);
    *a2 = v71;
  }

  v74 = v71[2];
  v73 = v71[3];
  if (v74 >= v73 >> 1)
  {
    v71 = sub_257BFD440((v73 > 1), v74 + 1, 1, v71);
    *a2 = v71;
  }

  v71[2] = v74 + 1;
  sub_257C31FD8(v16, v71 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v74, type metadata accessor for DetectedTextBlock);
  return sub_257C32040(v24, type metadata accessor for DetectedTextBlock);
}

uint64_t sub_257C27B94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5250, &qword_257EDC440);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v79 = &v73 - v8;
  v78 = type metadata accessor for SpatialTextBlock(0);
  v9 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v10, v11, v12, v13);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v73 - v21;
  v23 = type metadata accessor for DetectedTextBlock(0) - 8;
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v77 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
  v36 = &v73 - v35;
  v37 = *(a1 + 16);
  if (v37)
  {
    v76 = v22;
    v38 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame;
    v39 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v74 = v15;
    v75 = (v9 + 48);
    v40 = &selRef_imageByApplyingSymbolConfiguration_;
    v41 = *(v34 + 72);
    v82 = MEMORY[0x277D84F98];
    v83 = v41;
    v80 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame;
    while (1)
    {
      sub_257C31F70(v39, v36, type metadata accessor for DetectedTextBlock);
      v42 = objc_autoreleasePoolPush();
      v43 = [objc_opt_self() v40[263]];
      v44 = [v43 orientation];

      if ((v44 - 2) > 2)
      {
        v45 = 1;
        v46 = *(v1 + v38);
        if (!v46)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v45 = qword_257EDC490[(v44 - 2)];
        v46 = *(v1 + v38);
        if (!v46)
        {
          goto LABEL_4;
        }
      }

      v47 = [v46 camera];
      if (v47)
      {
        v48 = v47;
        v49 = *(v1 + v38);
        if (v49)
        {
          v50 = [v49 capturedImage];
          if (v50)
          {
            v51 = v50;
            v52 = *(v1 + v38);
            if (v52)
            {
              v53 = [v52 sceneDepth];
              if (v53)
              {
                v54 = v53;
                v55 = [v53 depthMap];

                v81 = v55;
                if (v55)
                {
                  v56 = v77;
                  sub_257C31F70(v36, v77, type metadata accessor for DetectedTextBlock);
                  v57 = v48;
                  v58 = v51;
                  v59 = v81;
                  v60 = v56;
                  v61 = v58;
                  v62 = v58;
                  v63 = v59;
                  v64 = v45;
                  v65 = v79;
                  sub_257EACA08(v60, v57, v62, v59, v64, v79);
                  if ((*v75)(v65, 1, v78) == 1)
                  {

                    sub_257BE4084(v65, &qword_27F8F5250, &qword_257EDC440);
                  }

                  else
                  {
                    v66 = v65;
                    v67 = v76;
                    sub_257C31FD8(v66, v76, type metadata accessor for SpatialTextBlock);
                    v68 = v57;
                    v69 = v74;
                    sub_257C31F70(v67, v74, type metadata accessor for SpatialTextBlock);
                    v70 = v82;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v84 = v70;
                    sub_257EC75A0(v69, v36, isUniquelyReferenced_nonNull_native);

                    v82 = v84;
                    sub_257C32040(v76, type metadata accessor for SpatialTextBlock);
                  }
                }

                else
                {
                }

                v40 = &selRef_imageByApplyingSymbolConfiguration_;
                v38 = v80;
                goto LABEL_4;
              }
            }
          }

          else
          {
          }

          v40 = &selRef_imageByApplyingSymbolConfiguration_;
        }

        else
        {
        }
      }

LABEL_4:
      sub_257C32040(v36, type metadata accessor for DetectedTextBlock);
      objc_autoreleasePoolPop(v42);
      v39 += v83;
      if (!--v37)
      {
        return v82;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

void sub_257C2809C(uint64_t a1, uint64_t a2, char a3, char *a4, void *a5, unsigned int a6, char a7, void *a8, uint64_t a9, char a10)
{
  v11 = v10;
  v444 = a8;
  v429 = a6;
  v436 = a5;
  v439 = a4;
  v408 = sub_257ECCC80();
  v16 = *(v408 - 8);
  MEMORY[0x28223BE20](v408, v17, v18, v19, v20);
  v407 = &v388 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SpatialTextBlock(0);
  v426 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8, v23, v24, v25, v26);
  v424 = &v388 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
  v423 = &v388 - v33;
  MEMORY[0x28223BE20](v34, v35, v36, v37, v38);
  v435 = &v388 - v39;
  MEMORY[0x28223BE20](v40, v41, v42, v43, v44);
  v440 = &v388 - v45;
  MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
  v434.i64[0] = &v388 - v51;
  MEMORY[0x28223BE20](v52, v53, v54, v55, v56);
  v433.i64[0] = &v388 - v57;
  v445 = type metadata accessor for DetectedTextBlock(0);
  v443 = *(v445 - 1);
  MEMORY[0x28223BE20](v445, v58, v59, v60, v61);
  v428 = &v388 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63, v64, v65, v66, v67);
  v69 = &v388 - v68;
  v411 = v70;
  MEMORY[0x28223BE20](v71, v72, v73, v74, v75);
  v77 = &v388 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v78 - 8, v79, v80, v81, v82);
  v84 = &v388 - v83;
  if ((a3 & 1) == 0)
  {
    v85 = *&a1;
    v86 = *&a2;
    v87 = (v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint);
    v88 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint + 16);
    v409 = v84;
    v419 = (v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint);
    v393 = a1;
    v394 = a2;
    if (v88)
    {
      v89 = 1;
    }

    else
    {
      v89 = vabdd_f64(*v87, *&a1) > 0.01 && vabdd_f64(v87[1], *&a2) > 0.01;
    }

    if (sub_257E5B4BC())
    {
      v90 = *&a2;
    }

    else
    {
      v90 = 1.0 - *&a2;
    }

    v455 = 0.0;
    v456 = 0.0;
    v91 = _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0();
    v391 = v69;
    v92 = v16;
    if ((v91 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (a7)
    {
      if (a10)
      {
        goto LABEL_16;
      }

      v93 = sub_257ECF930();
      v94 = v409;
      (*(*(v93 - 8) + 56))(v409, 1, 1, v93);
      v95 = swift_allocObject();
      v95[2] = 0;
      v95[3] = 0;
      v95[4] = v444;
      v95[5] = a9;
      v95[6] = v11;
      sub_257ECC3F0();
      v96 = &unk_257EDC428;
      v97 = v94;
      v92 = v16;
      v98 = v95;
    }

    else
    {
      v99 = sub_257ECF930();
      v100 = v409;
      (*(*(v99 - 8) + 56))(v409, 1, 1, v99);
      v101 = swift_allocObject();
      *(v101 + 16) = 0;
      *(v101 + 24) = 0;
      v102 = v394;
      *(v101 + 32) = v393;
      *(v101 + 40) = v102;
      *(v101 + 48) = v90;
      *(v101 + 56) = 0;
      *(v101 + 64) = v11;
      sub_257ECC3F0();
      v96 = &unk_257EDC418;
      v97 = v100;
      v98 = v101;
    }

    sub_257E81524(0, 0, v97, v96, v98);

LABEL_16:
    v103 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument);
    v427 = v11;
    v390 = v92;
    if (v103 && (v104 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks), (v105 = *(v104 + 16)) != 0) && v89)
    {
      v414 = v105 != 1;
      if (v105 == 1)
      {
        v392 = *&a2;
        v438 = v85;
        v437 = v90;

        v399 = 0;
        v401 = 0;
        v110 = 1;
        goto LABEL_105;
      }

      v107 = sub_257EB75A8(v106);
      sub_257CCB1A8(v107, 1, v457);

      v399 = LOBYTE(v457[0]);
      CGSizeMake();
      sub_257C2E0B0(v104, &v455, v457, v108, v109);
      v110 = *(v104 + 16);
      v401 = LOBYTE(v457[0]);
      if (v110)
      {
        v392 = *&a2;
        v438 = v85;
        v437 = v90;
LABEL_105:
        v442 = objc_opt_self();
        LODWORD(v418) = 0;
        v444 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame;
        v432.i64[0] = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks;
        v405 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback;
        v406 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements;
        *&v404 = v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
        v208 = *(v443 + 80);
        v209 = (v208 + 32) & ~v208;
        v410 = v104;
        v210 = v104 + v209;
        v441 = *(v443 + 72);
        v211.i32[1] = HIDWORD(v439);
        *v212.i32 = *(&v439 + 1) / 100.0;
        *v211.i32 = *&v436 / 100.0;
        v213 = vdupq_lane_s32(v211, 0);
        v415 = v213;
        v416 = vdupq_lane_s32(v212, 0);
        v403.i64[0] = v209;
        v417 = (v411 + 7 + v209) & 0xFFFFFFFFFFFFFFF8;
        v402.i64[0] = v92 + 40;
        v400 = (v208 + 40) & ~v208;
        v398 = (v411 + 7 + v400) & 0xFFFFFFFFFFFFFFF8;
        *v213.i32 = *&v439 / 100.0;
        v413 = v213;
        v412 = v208;
        while (1)
        {
          sub_257C31F70(v210, v77, type metadata accessor for DetectedTextBlock);
          v214 = objc_autoreleasePoolPush();
          v215 = &v77[v445[6]];
          v216 = *v215;
          v217 = v215[1];
          v218 = v215[2];
          v219 = v215[3];
          v220 = [v442 currentDevice];
          v221 = [v220 orientation];

          if (v221 == 3 || v221 == 4)
          {
            CGSizeMake();
            v216 = v222;
            v224 = v223;
            v218 = v225;
            v219 = v226;
          }

          else if (1.0 - v217 - v219 > 0.0)
          {
            v224 = 1.0 - v217 - v219;
          }

          else
          {
            v224 = 0.0;
          }

          v227 = *(v444 + v11);
          if (!v227)
          {
            goto LABEL_108;
          }

          v228 = [v227 capturedImage];
          if (!v228)
          {
            goto LABEL_108;
          }

          v229 = v228;
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          v431.i64[0] = qword_281548348;
          v230 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFingerLocation;
          swift_beginAccess();
          v231 = *(v230 + 8);
          v232 = *(v230 + 16);
          *&v453 = *v230;
          *(&v453 + 1) = v231;
          LOBYTE(v454) = v232;
          v233 = qword_2815447E0;

          if (v233 != -1)
          {
            v234 = swift_once();
          }

          v239 = v216 + -0.025;
          v240 = v224 + -0.025;
          v241 = (v218 + 0.05) * 1.05;
          v242 = (v219 + 0.05) * 1.05;
          v243 = qword_2815447E8;
          MEMORY[0x28223BE20](v234, v235, v236, v237, v238);
          *(&v388 - 2) = &v453;
          v430 = v243;
          sub_257ECFD50();

          v11 = v427;
          if ((v429 & 1) != 0 || (v244 = *(v444 + v427)) == 0)
          {
            v263 = *(v427 + v432.i64[0]);
            if (*(v263 + 16))
            {

              v264 = sub_257C0422C(v77);
              if (v265)
              {
                v266 = v435;
                sub_257C31F70(*(v263 + 56) + *(v426 + 72) * v264, v435, type metadata accessor for SpatialTextBlock);

                sub_257C31FD8(v266, v440, type metadata accessor for SpatialTextBlock);
                v267 = [v442 currentDevice];
                v268 = [v267 orientation];

                if ((v268 - 2) > 2)
                {
                  v269 = 1;
                }

                else
                {
                  v269 = qword_257EDC490[(v268 - 2)];
                }

                v270 = v440;
                sub_257C2F32C(v440, v229, v269, v457);
                sub_257C32040(v270, type metadata accessor for SpatialTextBlock);
                if ((v458 & 1) == 0)
                {
                  v241 = *&v457[2];
                  v242 = *&v457[3];
                  v239 = *v457;
                  v240 = *&v457[1];
                }
              }

              else
              {
              }
            }

            CGSizeMake();
            v460.x = v271;
            v460.y = v272;
            v462.origin.x = v239;
            v462.origin.y = v240;
            v462.size.width = v241;
            v462.size.height = v242;
            v258 = CGRectContainsPoint(v462, v460);
            if ((v258 & 1) == 0)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v245 = [v244 camera];
            [v245 transform];
            v420 = v246;
            v421 = v247;
            v425 = v248;
            v422 = v249;

            v250 = *(v11 + v432.i64[0]);
            if (!*(v250 + 16))
            {
              goto LABEL_107;
            }

            v251 = sub_257C0422C(v77);
            if ((v252 & 1) == 0)
            {

              goto LABEL_107;
            }

            v253 = vaddq_f32(v422, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v420, *v413.i32), v416, v421), v415, v425));
            v253.i32[3] = 0;
            v425 = v253;
            v254 = v434.i64[0];
            sub_257C31F70(*(v250 + 56) + *(v426 + 72) * v251, v434.i64[0], type metadata accessor for SpatialTextBlock);

            v255 = v254;
            v256 = v433.i64[0];
            sub_257C31FD8(v255, v433.i64[0], type metadata accessor for SpatialTextBlock);
            v257 = sub_257EAD3F0(v425);
            v258 = sub_257C32040(v256, type metadata accessor for SpatialTextBlock);
            if ((v257 & 0x100000000) != 0 || *&v257 >= 0.25)
            {
              goto LABEL_107;
            }
          }

          v273 = *&v77[v445[5]];
          if (v273)
          {
            MEMORY[0x28223BE20](v258, v259, v260, v261, v262);
            *(&v388 - 2) = v77;
            sub_257C82C5C(sub_257C32C64, (&v388 - 4), v273);
            v275 = sub_257E5B998(v274);

            MEMORY[0x28223BE20](v276, v277, v278, v279, v280);
            *(&v388 - 2) = v77;
            sub_257C82C5C(sub_257C32C64, (&v388 - 4), v273);
            v282 = sub_257E5B998(v281);

            v283 = [v282 string];

            v284 = sub_257ECF500();
            v286 = v285;

            if (!v284 && v286 == 0xE000000000000000)
            {

LABEL_141:
              v11 = v427;
              goto LABEL_108;
            }

            v287 = sub_257ED0640();

            v11 = v427;
            if ((v287 & 1) == 0)
            {
              v288 = sub_257ECF930();
              v289 = *(v288 - 8);
              v290 = *(v289 + 56);
              v425.i64[0] = v288;
              v422.i64[0] = v290;
              v421.i64[0] = v289 + 56;
              v290(v409, 1, 1);
              v291 = v391;
              sub_257C31F70(v77, v391, type metadata accessor for DetectedTextBlock);
              v292 = swift_allocObject();
              *(v292 + 16) = 0;
              *(v292 + 24) = 0;
              sub_257C31FD8(v291, v292 + v403.i64[0], type metadata accessor for DetectedTextBlock);
              *(v292 + v417) = v11;
              sub_257ECC3F0();
              sub_257E81524(0, 0, v409, &unk_257EDC3F8, v292);

              v293 = v394;
              v294 = v419;
              *v419 = v393;
              v294[1] = v293;
              *(v294 + 16) = 0;
              v295 = v405;
              *(v11 + v406) = 0;
              *(v11 + v295) = 0;
              v296 = v407;
              sub_257ECCC70();
              v297 = v404;
              swift_beginAccess();
              (*v402.i64[0])(v297, v296, v408);
              swift_endAccess();
              v298 = v431.i64[0] + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__outlinePointSpeak;
              v299 = swift_beginAccess();
              v300 = *(v298 + 8);
              v301 = *(v298 + 16);
              *&v453 = *v298;
              *(&v453 + 1) = v300;
              LOBYTE(v454) = v301;
              MEMORY[0x28223BE20](v299, v302, v303, v304, v305);
              *(&v388 - 2) = &v453;

              sub_257ECFD50();

              if (v451 == 1)
              {
                LODWORD(v418) = 1;
                (v422.i64[0])(v409, 1, 1, v425.i64[0]);
                sub_257C31F70(v77, v391, type metadata accessor for DetectedTextBlock);
                v306 = v398;
                v307 = swift_allocObject();
                v307[2] = 0;
                v307[3] = 0;
                v11 = v427;
                v307[4] = v427;
                sub_257C31FD8(v391, v307 + v400, type metadata accessor for DetectedTextBlock);
                v308 = (v307 + v306);
                *v308 = v239;
                v308[1] = v240;
                v308[2] = v241;
                v308[3] = v242;
                sub_257ECC3F0();
                sub_257E81524(0, 0, v409, &unk_257EDC408, v307);

                goto LABEL_108;
              }

              LODWORD(v418) = 1;
              goto LABEL_141;
            }
          }

LABEL_107:

LABEL_108:
          objc_autoreleasePoolPop(v214);
          sub_257C32040(v77, type metadata accessor for DetectedTextBlock);
          v210 += v441;
          if (!--v110)
          {

            v395 = v418 ^ 1;
            v90 = v437;
            v85 = v438;
            v86 = v392;
            goto LABEL_24;
          }
        }
      }

      v414 = 1;
    }

    else
    {
      v414 = 0;
      v401 = 0;
      v399 = 0;
    }

    v395 = 1;
LABEL_24:
    v111 = v428;
    if (qword_27F8F4610 != -1)
    {
      goto LABEL_294;
    }

    while (1)
    {
      v112 = qword_27F912F78;
      swift_beginAccess();
      v421.i64[0] = v112;
      v113 = *(v112 + 24);
      if (v113 >> 62)
      {
        v114 = sub_257ED0210();
      }

      else
      {
        v114 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v114)
      {

        LODWORD(v151) = 0;
        LODWORD(v405) = 1;
        v206 = v399;
        goto LABEL_102;
      }

      v392 = v86;
      v438 = v85;
      v437 = v90;
      v116 = 0;
      v397 = 0;
      LODWORD(v398) = 0;
      v417 = v113 & 0xFFFFFFFFFFFFFF8;
      v418 = v113 & 0xC000000000000001;
      v416.i64[0] = v113 + 32;
      v117.i32[1] = HIDWORD(v439);
      *&v115 = *&v439 / 100.0;
      v404 = v115;
      *&v115 = *(&v439 + 1) / 100.0;
      v430 = 0x8000000257EFA560;
      LODWORD(v405) = 1;
      v415.i64[0] = 0xEA0000000000736BLL;
      *v117.i32 = *&v436 / 100.0;
      v413.i64[0] = 0xEB00000000726566;
      v403 = vdupq_lane_s32(*&v115, 0);
      v90 = 1.05;
      v402 = vdupq_lane_s32(v117, 0);
      v85 = 0.0;
      *&v412 = 0.01;
      v410 = v113;
      v406 = v114;
      while (1)
      {
        if (v418)
        {
          v118 = MEMORY[0x259C72E20](v116, v113);
        }

        else
        {
          if (v116 >= *(v417 + 16))
          {
            goto LABEL_293;
          }

          v118 = *(v416.i64[0] + 8 * v116);
        }

        v119 = v118;
        v120 = __OFADD__(v116, 1);
        v121 = v116 + 1;
        v11 = MEMORY[0x277D837D0];
        if (v120)
        {
          break;
        }

        v425.i64[0] = v121;
        sub_257CEFE48(v118);
        if (!v122)
        {
          goto LABEL_153;
        }

        v123 = v122;
        *&v451 = 0x636F6C4274786574;
        *(&v451 + 1) = v415.i64[0];
        v124 = [v122 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v124)
        {
          sub_257ED0160();
          swift_unknownObjectRelease();
        }

        else
        {
          v451 = 0u;
          v452 = 0u;
        }

        v453 = v451;
        v454 = v452;
        if (!*(&v452 + 1))
        {
          goto LABEL_150;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6970, &unk_257EDB140);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_152;
        }

        v444 = v449;
        *&v451 = 0x7461746E6569726FLL;
        *(&v451 + 1) = 0xEB000000006E6F69;
        v125 = [v123 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v125)
        {
          sub_257ED0160();
          swift_unknownObjectRelease();
        }

        else
        {
          v451 = 0u;
          v452 = 0u;
        }

        v453 = v451;
        v454 = v452;
        if (!*(&v452 + 1))
        {

LABEL_150:

          sub_257BE4084(&v453, &unk_27F8F62F0, &unk_257ED9D30);
          return;
        }

        type metadata accessor for UIInterfaceOrientation(0);
        if ((swift_dynamicCast() & 1) == 0)
        {

LABEL_152:

LABEL_153:

          return;
        }

        v400 = v449;
        *&v451 = 0x70614D6874706564;
        *(&v451 + 1) = 0xE800000000000000;
        v126 = [v123 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (!v126)
        {

LABEL_158:

          return;
        }

        sub_257ED0160();
        swift_unknownObjectRelease();
        *&v449 = 0x6172656D6163;
        *(&v449 + 1) = 0xE600000000000000;
        v127 = [v123 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v127)
        {
          sub_257ED0160();
          swift_unknownObjectRelease();
        }

        else
        {
          v449 = 0u;
          v450 = 0u;
        }

        v451 = v449;
        v452 = v450;
        if (!*(&v450 + 1))
        {
          __swift_destroy_boxed_opaque_existential_0(&v453);

          sub_257BE4084(&v451, &unk_27F8F62F0, &unk_257ED9D30);
          return;
        }

        sub_257BD2C2C(0, &qword_27F8F5F98, 0x277CE5238);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_0(&v453);

          goto LABEL_158;
        }

        v436 = v446;
        *&v449 = 0x6675426C65786970;
        *(&v449 + 1) = v413.i64[0];
        v128 = [v123 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (!v128)
        {
          __swift_destroy_boxed_opaque_existential_0(&v453);

          goto LABEL_158;
        }

        sub_257ED0160();
        swift_unknownObjectRelease();
        v129 = v444;
        if (v444[2])
        {
          v130 = sub_257EB75A8(v444);
          sub_257CCB1A8(v130, 1, &v449);

          LODWORD(v398) = v449;
          CGSizeMake();
          sub_257C2E0B0(v129, &v456, &v449, v131, v132);
          v397 = v449;
        }

        else
        {
          LODWORD(v405) = 0;
        }

        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v396 = qword_281548348;
        v133 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFingerLocation;
        swift_beginAccess();
        v134 = *(v133 + 8);
        v135 = *(v133 + 16);
        *&v449 = *v133;
        *(&v449 + 1) = v134;
        LOBYTE(v450) = v135;
        v136 = qword_2815447E0;

        if (v136 != -1)
        {
          v137 = swift_once();
        }

        v142 = qword_2815447E8;
        MEMORY[0x28223BE20](v137, v138, v139, v140, v141);
        *(&v388 - 2) = &v449;
        v442 = v142;
        sub_257ECFD50();

        if (v446 == 1)
        {
          sub_257C7C144(v444);
          v144 = v143;
          v11 = v429;
          v145 = v419;
          v146 = *&v412;
        }

        else
        {
          v11 = v429;
          v145 = v419;
          v146 = *&v412;
          v144 = v444;
        }

        v147 = *(v145 + 16);
        v422.i64[0] = v119;
        v435 = v123;
        if (v147)
        {
          v420.i32[0] = 0;
        }

        else
        {
          v148 = vabdd_f64(*v145, v438) <= v146 || vabdd_f64(*(v145 + 1), v392) <= v146;
          v420.i32[0] = v148;
        }

        v441 = v144[2];
        if (v441)
        {
          v444 = v144;
          v440 = objc_opt_self();
          v149 = v444;
          v150 = 0;
          v151 = *(v443 + 80);
          v388 = ~v151;
          v389 = (v151 + 32) & ~v151;
          v439 = v444 + v389;
          do
          {
            if (v150 >= v149[2])
            {
              __break(1u);
              goto LABEL_215;
            }

            sub_257C31F70(&v439[*(v443 + 72) * v150], v111, type metadata accessor for DetectedTextBlock);
            v152 = (v111 + v445[6]);
            v153 = *v152;
            v154 = v152[1];
            v155 = v152[2];
            v156 = v152[3];
            v157 = [v440 currentDevice];
            v158 = [v157 orientation];

            if (v158 == 3 || v158 == 4)
            {
              CGSizeMake();
              v153 = v165;
              v155 = v166;
              v156 = v167;
            }

            else if (1.0 - v154 - v156 > 0.0)
            {
              v164 = 1.0 - v154 - v156;
            }

            else
            {
              v164 = 0.0;
            }

            v119 = &v388;
            v86 = v153 + -0.025;
            v168 = v164 + -0.025;
            v169 = (v155 + 0.05) * 1.05;
            v170 = *(v133 + 8);
            v171 = *(v133 + 16);
            v172 = (v156 + 0.05) * 1.05;
            *&v449 = *v133;
            *(&v449 + 1) = v170;
            LOBYTE(v450) = v171;
            MEMORY[0x28223BE20](v159, v160, v161, v162, v163);
            *(&v388 - 2) = &v449;

            sub_257ECFD50();

            if (v11)
            {
              CGSizeMake();
              v459.x = v173;
              v459.y = v174;
              v461.origin.x = v86;
              v461.origin.y = v168;
              v461.size.width = v169;
              v461.size.height = v172;
              v175 = CGRectContainsPoint(v461, v459);
              if (!v175)
              {
                goto LABEL_71;
              }
            }

            else
            {
              [v436 transform];
              v431 = v194;
              v432 = v195;
              v433 = v197;
              v434 = v196;
              *&v446 = 0xD000000000000011;
              *(&v446 + 1) = v430;
              v198 = [v435 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v198)
              {
                sub_257ED0160();
                swift_unknownObjectRelease();
              }

              else
              {
                v446 = 0u;
                v447 = 0u;
              }

              v449 = v446;
              v450 = v447;
              if (!*(&v447 + 1))
              {
                sub_257BE4084(&v449, &unk_27F8F62F0, &unk_257ED9D30);
                goto LABEL_71;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FA0, &qword_257EDC398);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_71;
              }

              v199 = v448;
              if (!*(v448 + 16) || (v200 = sub_257C0422C(v111), (v201 & 1) == 0))
              {

                goto LABEL_71;
              }

              v202 = vaddq_f32(v433, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v431, *&v404), v403, v432), v402, v434));
              v202.i32[3] = 0;
              v434 = v202;
              v203 = v424;
              sub_257C31F70(*(v199 + 56) + *(v426 + 72) * v200, v424, type metadata accessor for SpatialTextBlock);

              v204 = v203;
              v119 = v423;
              sub_257C31FD8(v204, v423, type metadata accessor for SpatialTextBlock);
              v205 = sub_257EAD3F0(v434);
              v175 = sub_257C32040(v119, type metadata accessor for SpatialTextBlock);
              if ((v205 & 0x100000000) != 0 || *&v205 >= 0.25)
              {
                goto LABEL_71;
              }
            }

            v180 = *(v111 + v445[5]);
            if (v180)
            {
              MEMORY[0x28223BE20](v175, v176, v177, v178, v179);
              *(&v388 - 2) = v111;
              sub_257C82C5C(sub_257C31C98, (&v388 - 4), v180);
              v182 = v111;
              v183 = sub_257E5B998(v181);

              MEMORY[0x28223BE20](v184, v185, v186, v187, v188);
              *(&v388 - 2) = v182;
              sub_257C82C5C(sub_257C32C64, (&v388 - 4), v180);
              v190 = sub_257E5B998(v189);

              v119 = [v190 string];

              v191 = sub_257ECF500();
              v193 = v192;

              if (v191 || v193 != 0xE000000000000000)
              {
                LODWORD(v119) = sub_257ED0640();

                v11 = v429;
                if (v119)
                {
                  v111 = v428;
                }

                else
                {
                  v111 = v428;
                  if (!((*&v428[v445[7]] <= 0.25) | v420.i8[0] & 1))
                  {

                    v310 = sub_257ECF930();
                    v311 = *(v310 - 8);
                    v312 = v409;
                    v443 = *(v311 + 56);
                    v441 = v311 + 56;
                    (v443)(v409, 1, 1, v310);
                    v313 = v391;
                    sub_257C31F70(v111, v391, type metadata accessor for DetectedTextBlock);
                    v314 = v389;
                    v444 = (v411 + 7);
                    v315 = (v411 + 7 + v389) & 0xFFFFFFFFFFFFFFF8;
                    v445 = v151;
                    v316 = swift_allocObject();
                    *(v316 + 16) = 0;
                    *(v316 + 24) = 0;
                    sub_257C31FD8(v313, v316 + v314, type metadata accessor for DetectedTextBlock);
                    v317 = v111;
                    v318 = v427;
                    *(v316 + v315) = v427;
                    sub_257ECC3F0();
                    sub_257E81524(0, 0, v312, &unk_257EDC380, v316);

                    v319 = v394;
                    v320 = v419;
                    *v419 = v393;
                    v320[1] = v319;
                    *(v320 + 16) = 0;
                    *(v318 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = 0;
                    *(v318 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback) = 0;
                    v321 = v407;
                    sub_257ECCC70();
                    v322 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
                    swift_beginAccess();
                    (*(v390 + 40))(v318 + v322, v321, v408);
                    swift_endAccess();
                    v323 = v396 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__outlinePointSpeak;
                    v324 = swift_beginAccess();
                    v325 = *(v323 + 8);
                    v326 = *(v323 + 16);
                    *&v449 = *v323;
                    *(&v449 + 1) = v325;
                    LOBYTE(v450) = v326;
                    MEMORY[0x28223BE20](v324, v327, v328, v329, v330);
                    *(&v388 - 2) = &v449;

                    sub_257ECFD50();

                    if (v446 == 1)
                    {
                      (v443)(v409, 1, 1, v310);
                      v331 = v391;
                      sub_257C31F70(v317, v391, type metadata accessor for DetectedTextBlock);
                      sub_257BE41F4(&v451, &v449);
                      sub_257BE41F4(&v453, &v446);
                      v332 = (v445 + 16) & v388;
                      v333 = (v444 + v332) & 0xFFFFFFFFFFFFFFF8;
                      v334 = (v333 + 15) & 0xFFFFFFFFFFFFFFF8;
                      v335 = (v334 + 39) & 0xFFFFFFFFFFFFFFF8;
                      v336 = (v335 + 39) & 0xFFFFFFFFFFFFFFF8;
                      v337 = swift_allocObject();
                      *(v337 + 16) = 0;
                      *(v337 + 24) = 0;
                      *(v337 + 32) = v86;
                      *(v337 + 40) = v168;
                      *(v337 + 48) = v169;
                      *(v337 + 56) = v172;
                      sub_257C31FD8(v331, v337 + v332, type metadata accessor for DetectedTextBlock);
                      v338 = v436;
                      *(v337 + v333) = v436;
                      sub_257BEBE08(&v449, (v337 + v334));
                      sub_257BEBE08(&v446, (v337 + v335));
                      *(v337 + v336) = v400;
                      *(v337 + ((v336 + 15) & 0xFFFFFFFFFFFFFFF8)) = v318;
                      v317 = v428;
                      sub_257ECC3F0();
                      v339 = v338;
                      sub_257E81524(0, 0, v409, &unk_257EDC390, v337);
                    }

                    else
                    {
                    }

                    __swift_destroy_boxed_opaque_existential_0(&v451);
                    __swift_destroy_boxed_opaque_existential_0(&v453);
                    sub_257C32040(v317, type metadata accessor for DetectedTextBlock);
                    return;
                  }
                }
              }

              else
              {

                v111 = v428;
                v11 = v429;
              }
            }

LABEL_71:
            ++v150;
            sub_257C32040(v111, type metadata accessor for DetectedTextBlock);
            v149 = v444;
          }

          while (v441 != v150);
        }

        __swift_destroy_boxed_opaque_existential_0(&v451);
        __swift_destroy_boxed_opaque_existential_0(&v453);
        v116 = v425.i64[0];
        v11 = v427;
        v113 = v410;
        if (v425.i64[0] == v406)
        {
          v309 = 0xE900000000000074;
          v150 = 0x66656C2E706F742ELL;

          LODWORD(v111) = v398;
          if (v398 > 4)
          {
            v90 = v437;
            LODWORD(v151) = v397;
            goto LABEL_271;
          }

          v90 = v437;
          v206 = v399;
          if (v398 > 1)
          {
            LODWORD(v151) = v397;
LABEL_271:
            v383 = sub_257ED0640();

            if ((v383 & 1) == 0)
            {
              if (qword_27F8F4668 == -1)
              {
                goto LABEL_274;
              }

              goto LABEL_299;
            }

            LODWORD(v119) = 0;
            goto LABEL_191;
          }

          LODWORD(v151) = v397;
          if (v398)
          {

            LODWORD(v119) = 0;
            LODWORD(v111) = 1;
            goto LABEL_191;
          }

LABEL_102:
          v207 = 0xE900000000000074;
          v150 = 0x66656C2E706F742ELL;
          if (v206 >= 2)
          {
            v340 = sub_257ED0640();

            if ((v340 & 1) == 0)
            {
              if (qword_27F8F4668 == -1)
              {
                goto LABEL_167;
              }

              goto LABEL_297;
            }

            goto LABEL_190;
          }

          if (v206)
          {
            goto LABEL_189;
          }

          LODWORD(v119) = 1;
          LODWORD(v111) = 0;
LABEL_191:
          while (2)
          {
            if (v151 && (v405 & 1) != 0)
            {
              v345 = 0xE900000000000074;
              v150 = 0x66656C2E706F742ELL;
              if (v151 == 1)
              {

                v85 = 0.0;
              }

              else
              {
                v347 = sub_257ED0640();

                v85 = 0.0;
                if ((v347 & 1) == 0)
                {
                  *&v451 = 0x6E69662E65766F6DLL;
                  *(&v451 + 1) = 0xEB00000000726567;
                  if (v151 > 5u)
                  {
                    if (v151 > 7u)
                    {
                      if (v151 == 8)
                      {
                        v345 = 0xE500000000000000;
                        v150 = 0x6E776F642ELL;
                      }

                      else
                      {
                        v150 = 0x2E6D6F74746F622ELL;
                        v345 = 0xED00007468676972;
                      }
                    }

                    else if (v151 == 6)
                    {
                      v345 = 0xE600000000000000;
                      v150 = 0x74686769722ELL;
                    }

                    else
                    {
                      v150 = 0x2E6D6F74746F622ELL;
                      v345 = 0xEC0000007466656CLL;
                    }
                  }

                  else if (v151 > 3u)
                  {
                    if (v151 == 4)
                    {
                      v150 = 0x6769722E706F742ELL;
                      v345 = 0xEA00000000007468;
                    }

                    else
                    {
                      v345 = 0xE500000000000000;
                      v150 = 0x7466656C2ELL;
                    }
                  }

                  else if (v151 != 2)
                  {
                    v345 = 0xE300000000000000;
                    v150 = 7370030;
                  }

                  MEMORY[0x259C72150](v150, v345);

                  v352 = String.localized.getter(v451, *(&v451 + 1));
                  v150 = v353;

                  *&v449 = v352;
                  *(&v449 + 1) = v150;
                  sub_257BDAB08();
                  sub_257ED0100();

                  v85 = v456;
                }
              }

              goto LABEL_224;
            }

            v346 = !v414;
            v85 = 0.0;
            if (!v401)
            {
              v346 = 1;
            }

            if ((v346 & 1) == 0)
            {
              if (v401 == 1)
              {
              }

              else
              {
LABEL_215:
                v348 = sub_257ED0640();

                if ((v348 & 1) == 0)
                {
                  *&v451 = 0x6E69662E65766F6DLL;
                  *(&v451 + 1) = 0xEB00000000726567;
                  LOBYTE(v449) = v401;
                  v349 = TextDetectionDirection.description.getter();
                  MEMORY[0x259C72150](v349);

                  v350 = String.localized.getter(v451, *(&v451 + 1));
                  v150 = v351;

                  *&v449 = v350;
                  *(&v449 + 1) = v150;
                  sub_257BDAB08();
                  sub_257ED0100();

                  v85 = v455;
                }
              }
            }

            if (v405)
            {
LABEL_224:
              if (!v119)
              {
                v414 = 1;
                goto LABEL_229;
              }

              v414 = 1;
            }

            else if (!v119)
            {
LABEL_229:
              LOBYTE(v446) = v111;
              sub_257CCCE54(0, &v449);
              v150 = v449;
              if (v449 != 12)
              {
                v354 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage;
                v355 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage);
                if (v355 < 61)
                {
                  v359 = v355 + 1;
                }

                else
                {
                  v356 = sub_257ECF930();
                  v357 = v409;
                  (*(*(v356 - 8) + 56))(v409, 1, 1, v356);
                  v358 = swift_allocObject();
                  *(v358 + 16) = 0;
                  *(v358 + 24) = 0;
                  *(v358 + 32) = v11;
                  *(v358 + 40) = v150;
                  sub_257ECC3F0();
                  sub_257E81524(0, 0, v357, &unk_257EDC3E8, v358);

                  v359 = 0;
                }

                v360 = v401;
                v361 = v395;
                *(v11 + v354) = v359;
LABEL_236:
                if (v360)
                {
                  v362 = v360;
                }

                else
                {
                  v362 = 10;
                }

                if (v151)
                {
                  v309 = v151;
                }

                else
                {
                  v309 = v362;
                }

                if ((v361 & v414) == 1 && v85 > 0.08)
                {
                  v363 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseFeedbackProcessor);
                  sub_257DE3694(v85);

                  if (v111 == 10)
                  {
                    v364 = v309 - 3;
                    if (v309 - 3) <= 5u && ((0x2Du >> v364))
                    {
                      if (*(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) < 76)
                      {
                        v367 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage);
                        v120 = __OFADD__(v367, 1);
                        v368 = v367 + 1;
                        if (v120)
                        {
                          __break(1u);
                          return;
                        }

                        *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = v368;
                      }

                      else
                      {
                        v309 = 0xA09090B0908uLL >> (8 * (v364 & 0x1Fu));
                        v365 = sub_257ECF930();
                        v150 = v409;
                        (*(*(v365 - 8) + 56))(v409, 1, 1, v365);
                        v366 = swift_allocObject();
                        *(v366 + 16) = 0;
                        *(v366 + 24) = 0;
                        *(v366 + 32) = v11;
                        *(v366 + 40) = v309;
                        sub_257ECC3F0();
                        sub_257E81524(0, 0, v150, &unk_257EDC3D8, v366);

                        *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
                      }
                    }
                  }
                }

                if (v90 < 0.2)
                {
                  if (*(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) >= 46)
                  {
                    v369 = sub_257ECF930();
                    v370 = v409;
                    (*(*(v369 - 8) + 56))(v409, 1, 1, v369);
                    v371 = swift_allocObject();
                    *(v371 + 16) = 0;
                    *(v371 + 24) = 0;
                    *(v371 + 32) = v11;
                    *(v371 + 40) = 10;
                    sub_257ECC3F0();
                    v372 = &unk_257EDC3C8;
                    goto LABEL_257;
                  }

                  v374 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage;
                  v375 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage);
                  v120 = __OFADD__(v375, 1);
                  v376 = v375 + 1;
                  if (!v120)
                  {
LABEL_262:
                    *(v11 + v374) = v376;
                    goto LABEL_263;
                  }

                  __break(1u);
LABEL_261:
                  v374 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage;
                  v377 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage);
                  v120 = __OFADD__(v377, 1);
                  v376 = v377 + 1;
                  if (v120)
                  {
                    __break(1u);
LABEL_299:
                    swift_once();
LABEL_274:
                    v384 = v309 - 48;
                    v385 = 0x4850492E65766F6DLL;
                    if (byte_27F8F8D88)
                    {
                      v385 = 0x4150492E65766F6DLL;
                    }

                    else
                    {
                      v384 = 0xEB00000000454E4FLL;
                    }

                    *&v453 = v385;
                    *(&v453 + 1) = v384;
                    if (v111 > 5)
                    {
                      if (v111 > 7)
                      {
                        if (v111 == 8)
                        {
                          v309 = 0xE500000000000000;
                          v150 = 0x6E776F642ELL;
                        }

                        else
                        {
                          v150 = 0x2E6D6F74746F622ELL;
                          v309 = 0xED00007468676972;
                        }
                      }

                      else if (v111 == 6)
                      {
                        v309 = 0xE600000000000000;
                        v150 = 0x74686769722ELL;
                      }

                      else
                      {
                        v150 = 0x2E6D6F74746F622ELL;
                        v309 = 0xEC0000007466656CLL;
                      }
                    }

                    else if (v111 > 3)
                    {
                      if (v111 == 4)
                      {
                        v150 = 0x6769722E706F742ELL;
                        v309 = 0xEA00000000007468;
                      }

                      else
                      {
                        v309 = 0xE500000000000000;
                        v150 = 0x7466656C2ELL;
                      }
                    }

                    else if (v111 != 2)
                    {
                      v309 = 0xE300000000000000;
                      v150 = 7370030;
                    }

                    MEMORY[0x259C72150](v150, v309);

                    v386 = String.localized.getter(v453, *(&v453 + 1));
                    v150 = v387;

                    *&v451 = v386;
                    *(&v451 + 1) = v150;
                    sub_257BDAB08();
                    sub_257ED0100();

                    LODWORD(v119) = 0;
                    continue;
                  }

                  goto LABEL_262;
                }

                if (v90 > 0.8)
                {
                  if (*(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) < 46)
                  {
                    goto LABEL_261;
                  }

                  v373 = sub_257ECF930();
                  v370 = v409;
                  (*(*(v373 - 8) + 56))(v409, 1, 1, v373);
                  v371 = swift_allocObject();
                  *(v371 + 16) = 0;
                  *(v371 + 24) = 0;
                  *(v371 + 32) = v11;
                  *(v371 + 40) = 8;
                  sub_257ECC3F0();
                  v372 = &unk_257EDC3B8;
LABEL_257:
                  sub_257E81524(0, 0, v370, v372, v371);

                  *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
                }

LABEL_263:
                v207 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText;
                if (v414)
                {
                  goto LABEL_267;
                }

                v378 = *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText);
                v120 = __OFADD__(v378, 1);
                v379 = v378 + 1;
                if (!v120)
                {
                  *(v11 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutText) = v379;
                  if (v379 < 61)
                  {
                    return;
                  }

                  v380 = sub_257ECF930();
                  v381 = v409;
                  (*(*(v380 - 8) + 56))(v409, 1, 1, v380);
                  v382 = swift_allocObject();
                  v382[2] = 0;
                  v382[3] = 0;
                  v382[4] = v11;
                  sub_257ECC3F0();
                  sub_257E81524(0, 0, v381, &unk_257EDC3A8, v382);

LABEL_267:
                  *(v11 + v207) = 0;
                  return;
                }

                __break(1u);
LABEL_297:
                swift_once();
LABEL_167:
                v341 = v207 - 48;
                v342 = 0x4850492E65766F6DLL;
                if (byte_27F8F8D88)
                {
                  v342 = 0x4150492E65766F6DLL;
                }

                else
                {
                  v341 = 0xEB00000000454E4FLL;
                }

                *&v453 = v342;
                *(&v453 + 1) = v341;
                if (v399 > 5)
                {
                  if (v399 > 7)
                  {
                    if (v399 == 8)
                    {
                      v207 = 0xE500000000000000;
                      v150 = 0x6E776F642ELL;
                    }

                    else
                    {
                      v150 = 0x2E6D6F74746F622ELL;
                      v207 = 0xED00007468676972;
                    }
                  }

                  else if (v399 == 6)
                  {
                    v207 = 0xE600000000000000;
                    v150 = 0x74686769722ELL;
                  }

                  else
                  {
                    v150 = 0x2E6D6F74746F622ELL;
                    v207 = 0xEC0000007466656CLL;
                  }
                }

                else if (v399 > 3)
                {
                  if (v399 == 4)
                  {
                    v150 = 0x6769722E706F742ELL;
                    v207 = 0xEA00000000007468;
                  }

                  else
                  {
                    v207 = 0xE500000000000000;
                    v150 = 0x7466656C2ELL;
                  }
                }

                else if (v399 != 2)
                {
                  v207 = 0xE300000000000000;
                  v150 = 7370030;
                }

                MEMORY[0x259C72150](v150, v207);

                v343 = String.localized.getter(v453, *(&v453 + 1));
                v150 = v344;

                *&v451 = v343;
                *(&v451 + 1) = v150;
                sub_257BDAB08();
                sub_257ED0100();

LABEL_189:

LABEL_190:
                LODWORD(v111) = 0;
                LODWORD(v119) = 1;
                continue;
              }

LABEL_235:
              v360 = v401;
              v361 = v395;
              goto LABEL_236;
            }

            break;
          }

          if (v399)
          {
            LODWORD(v111) = v399;
            goto LABEL_229;
          }

          LODWORD(v111) = 10;
          goto LABEL_235;
        }
      }

      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      swift_once();
    }
  }
}

uint64_t sub_257C2B364(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 32) = a8;
  *(v8 + 80) = a7;
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 40) = type metadata accessor for DetectedTextBlock(0);
  *(v8 + 48) = swift_task_alloc();
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v8 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2B42C, 0, 0);
}

uint64_t sub_257C2B42C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  sub_257ECCCE0();
  v4 = v2[9];
  *(v3 + v2[5]) = 0;
  v5 = (v3 + v2[6]);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  *v5 = *MEMORY[0x277CBF3A0];
  v5[1] = v6;
  *(v3 + v2[7]) = 0;
  *(v3 + v2[8]) = 0;
  *(v3 + v4) = 0;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 orientation];

  if ((v8 - 2) > 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = qword_257EDC490[(v8 - 2)];
  }

  v31 = v9;
  CGSizeMake();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(v1 + 48);
  v19 = *(v1 + 56);
  v20 = *(v1 + 80);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F8F5268, &unk_257EDC430);
  v22 = v21[12];
  v23 = v21[16];
  v24 = v21[20];
  v25 = v21[24];
  v26 = v21[28];
  v27 = v21[32];
  *v19 = v11;
  v19[1] = v13;
  v19[2] = v15;
  v19[3] = v17;
  sub_257C31F70(v18, v19 + v22, type metadata accessor for DetectedTextBlock);
  *(v19 + v23) = 0;
  *(v19 + v24) = 0;
  *(v19 + v25) = 0;
  *(v19 + v26) = v31;
  *(v19 + v27) = v20;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  sub_257C32040(v18, type metadata accessor for DetectedTextBlock);
  v28 = swift_task_alloc();
  *(v1 + 64) = v28;
  *v28 = v1;
  v28[1] = sub_257C2B680;
  v29 = *(v1 + 56);

  return MAGPointAndSpeakEventHandler.send(_:)(v29);
}

uint64_t sub_257C2B680()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_257C2B820;
  }

  else
  {
    v2 = sub_257C2B794;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2B794()
{
  sub_257C32040(*(v0 + 56), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2B820()
{
  sub_257C32040(*(v0 + 56), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2B8AC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5[2].n128_u64[0] = a5;
  v5[1] = a1;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  v5[2].n128_u64[1] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2B940, 0, 0);
}

uint64_t sub_257C2B940()
{
  **(v0 + 40) = *(v0 + 16);
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257C2BA08;
  v2 = *(v0 + 40);

  return MAGPointAndSpeakEventHandler.send(_:)(v2);
}

uint64_t sub_257C2BA08()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_257C2BBA0;
  }

  else
  {
    v2 = sub_257C2BB1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2BB1C()
{
  sub_257C32040(*(v0 + 40), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2BBA0()
{
  sub_257C32040(*(v0 + 40), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2BC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2BCB4, 0, 0);
}

uint64_t sub_257C2BCB4()
{
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5260, &qword_257EDB280);
  v3 = *(type metadata accessor for DetectedTextBlock(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257ED6D30;
  sub_257C31F70(v2, v5 + v4, type metadata accessor for DetectedTextBlock);
  *v1 = v5;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_257C2BE38;
  v7 = v0[4];

  return MAGPointAndSpeakEventHandler.send(_:)(v7);
}

uint64_t sub_257C2BE38()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_257C2BFD0;
  }

  else
  {
    v2 = sub_257C2BF4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2BF4C()
{
  sub_257C32040(*(v0 + 32), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2BFD0()
{
  sub_257C32040(*(v0 + 32), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2C054(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a3;
  *(v9 + 56) = a4;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 16) = a8;
  *(v9 + 24) = a9;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v9 + 64) = swift_task_alloc();
  *(v9 + 72) = swift_task_alloc();
  *(v9 + 80) = *(type metadata accessor for SpatialTextBlock(0) - 8);
  *(v9 + 88) = swift_task_alloc();
  *(v9 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2C15C, 0, 0);
}

uint64_t sub_257C2C15C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks);
  if (*(v4 + 16))
  {
    v5 = *(v2 + 24);

    v6 = sub_257C0422C(v5);
    if (v7)
    {
      v9 = *(v2 + 88);
      v8 = *(v2 + 96);
      v10 = *(v2 + 72);
      sub_257C31F70(*(v4 + 56) + *(*(v2 + 80) + 72) * v6, v9, type metadata accessor for SpatialTextBlock);

      sub_257C31FD8(v9, v8, type metadata accessor for SpatialTextBlock);
      sub_257C31F70(v8, v10, type metadata accessor for SpatialTextBlock);
      type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
      swift_storeEnumTagMultiPayload();
      v11 = swift_task_alloc();
      *(v2 + 104) = v11;
      *v11 = v2;
      v11[1] = sub_257C2C47C;
      v12 = *(v2 + 72);
      goto LABEL_14;
    }

    v3 = *(v2 + 16);
  }

  v13 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame;
  v14 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame);
  if (!v14)
  {
    v34 = 0;
    v35 = 0;
LABEL_11:
    v36 = 0;
    goto LABEL_13;
  }

  v15 = [v14 camera];
  v16 = *(v3 + v13);
  v34 = v15;
  if (!v16)
  {
    v35 = 0;
    v36 = 0;
    goto LABEL_13;
  }

  v17 = [v16 capturedImage];
  v18 = *(v3 + v13);
  v35 = v17;
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = [v18 sceneDepth];
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = v19;
  v36 = [v19 depthMap];

LABEL_13:
  v21 = *(v2 + 64);
  v22 = *(v2 + 24);
  v23 = *(*(v2 + 16) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F8F5268, &unk_257EDC430);
  v25 = v24[12];
  v26 = v24[16];
  v27 = v24[20];
  v28 = v24[24];
  v29 = v24[28];
  v30 = v24[32];
  v31 = *(v2 + 48);
  *v21 = *(v2 + 32);
  v21[1] = v31;
  sub_257C31F70(v22, v21 + v25, type metadata accessor for DetectedTextBlock);
  *(v21 + v26) = v34;
  *(v21 + v27) = v35;
  *(v21 + v28) = v36;
  *(v21 + v29) = v23;
  *(v21 + v30) = 0;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v32 = swift_task_alloc();
  *(v2 + 120) = v32;
  *v32 = v2;
  v32[1] = sub_257C2C654;
  v12 = *(v2 + 64);
LABEL_14:

  return MAGPointAndSpeakEventHandler.send(_:)(v12);
}

uint64_t sub_257C2C47C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_257C2C80C;
  }

  else
  {
    v2 = sub_257C2C590;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2C590()
{
  v1 = v0[12];
  sub_257C32040(v0[9], type metadata accessor for MAGPointAndSpeakEvent);
  sub_257C32040(v1, type metadata accessor for SpatialTextBlock);

  v2 = v0[1];

  return v2();
}

uint64_t sub_257C2C654()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_257C2C8D0;
  }

  else
  {
    v2 = sub_257C2C768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2C768()
{
  sub_257C32040(*(v0 + 64), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2C80C()
{
  v1 = v0[12];
  sub_257C32040(v0[9], type metadata accessor for MAGPointAndSpeakEvent);
  sub_257C32040(v1, type metadata accessor for SpatialTextBlock);

  v2 = v0[1];

  return v2();
}

uint64_t sub_257C2C8D0()
{
  sub_257C32040(*(v0 + 64), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2C974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2CA04, 0, 0);
}

uint64_t sub_257C2CA04()
{
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5260, &qword_257EDB280);
  v3 = *(type metadata accessor for DetectedTextBlock(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257ED6D30;
  sub_257C31F70(v2, v5 + v4, type metadata accessor for DetectedTextBlock);
  *v1 = v5;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_257C2CB88;
  v7 = v0[4];

  return MAGPointAndSpeakEventHandler.send(_:)(v7);
}

uint64_t sub_257C2CB88()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_257C32C50;
  }

  else
  {
    v2 = sub_257C32C18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2CC9C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 160) = a12;
  *(v12 + 168) = v15;
  *(v12 + 144) = a10;
  *(v12 + 152) = a11;
  *(v12 + 128) = a8;
  *(v12 + 136) = a9;
  *(v12 + 112) = a3;
  *(v12 + 120) = a4;
  *(v12 + 96) = a1;
  *(v12 + 104) = a2;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v12 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2CD44, 0, 0);
}

uint64_t sub_257C2CD44()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v20 = *(v0 + 160);
  v3 = *(v0 + 136);
  v19 = *(v0 + 128);
  v17 = *(v0 + 112);
  v18 = *(v0 + 96);
  sub_257BE41F4(*(v0 + 144), v0 + 16);
  type metadata accessor for CVBuffer(0);
  swift_dynamicCast();
  v4 = *(v0 + 80);
  sub_257BE41F4(v2, v0 + 48);
  swift_dynamicCast();
  v5 = *(v0 + 88);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F8F5268, &unk_257EDC430);
  v7 = v6[12];
  v8 = v6[16];
  v9 = v6[20];
  v10 = v6[24];
  v11 = v6[28];
  v12 = v6[32];
  *v1 = v18;
  v1[1] = v17;
  sub_257C31F70(v19, v1 + v7, type metadata accessor for DetectedTextBlock);
  *(v1 + v8) = v3;
  *(v1 + v9) = v4;
  *(v1 + v10) = v5;
  *(v1 + v11) = v20;
  *(v1 + v12) = 0;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v13 = v3;
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *v14 = v0;
  v14[1] = sub_257C2CF18;
  v15 = *(v0 + 176);

  return MAGPointAndSpeakEventHandler.send(_:)(v15);
}

uint64_t sub_257C2CF18()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_257C2D0B0;
  }

  else
  {
    v2 = sub_257C2D02C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2D02C()
{
  sub_257C32040(*(v0 + 176), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2D0B0()
{
  sub_257C32040(*(v0 + 176), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = type metadata accessor for MAGOutputEvent.EventType(0);
  *(v5 + 32) = swift_task_alloc();
  *(v5 + 40) = type metadata accessor for MAGOutputEvent(0);
  *(v5 + 48) = swift_task_alloc();
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2D228, 0, 0);
}

uint64_t sub_257C2D228()
{
  v1 = *(v0 + 56);
  sub_257C95DE4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();

  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  v9 = v8;

  *v1 = v7;
  v1[1] = v9;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_257C2D3E0;
  v11 = *(v0 + 56);

  return MAGPointAndSpeakEventHandler.send(_:)(v11);
}

uint64_t sub_257C2D3E0()
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = v0;

  sub_257C32040(v2, type metadata accessor for MAGPointAndSpeakEvent);
  if (v0)
  {
    v3 = sub_257C2D75C;
  }

  else
  {
    v3 = sub_257C2D524;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_257C2D524()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 96);
  *(v0 + 80) = *(*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine);
  *v3 = v4;
  swift_storeEnumTagMultiPayload();
  sub_257ECC3F0();
  sub_257ECCCE0();
  sub_257C31F70(v3, v1 + v2[5], type metadata accessor for MAGOutputEvent.EventType);
  *(v1 + v2[6]) = 1;
  *(v1 + v2[7]) = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = qword_281548348;
  sub_257ECC3F0();
  sub_257C32040(v7, type metadata accessor for MAGOutputEvent.EventType);
  *(v5 + *(v6 + 32)) = v8;
  sub_257ECF900();
  *(v0 + 88) = sub_257ECF8F0();
  v10 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C2D6A4, v10, v9);
}

uint64_t sub_257C2D6A4()
{
  v1 = *(v0 + 48);

  sub_257CBBC80(v1);

  sub_257C32040(v1, type metadata accessor for MAGOutputEvent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257C2D75C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2D7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = type metadata accessor for MAGOutputEvent.EventType(0);
  *(v5 + 32) = swift_task_alloc();
  *(v5 + 40) = type metadata accessor for MAGOutputEvent(0);
  *(v5 + 48) = swift_task_alloc();
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2D8C8, 0, 0);
}

uint64_t sub_257C2D8C8()
{
  v1 = *(v0 + 56);
  sub_257C95DE4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();

  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  v9 = v8;

  *v1 = v7;
  v1[1] = v9;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_257C2DA80;
  v11 = *(v0 + 56);

  return MAGPointAndSpeakEventHandler.send(_:)(v11);
}

uint64_t sub_257C2DA80()
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = v0;

  sub_257C32040(v2, type metadata accessor for MAGPointAndSpeakEvent);
  if (v0)
  {
    v3 = sub_257C32C7C;
  }

  else
  {
    v3 = sub_257C2DBC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_257C2DBC4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 96);
  *(v0 + 80) = *(*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine);
  *v3 = v4;
  swift_storeEnumTagMultiPayload();
  sub_257ECC3F0();
  sub_257ECCCE0();
  sub_257C31F70(v3, v1 + v2[5], type metadata accessor for MAGOutputEvent.EventType);
  *(v1 + v2[6]) = 1;
  *(v1 + v2[7]) = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = qword_281548348;
  sub_257ECC3F0();
  sub_257C32040(v7, type metadata accessor for MAGOutputEvent.EventType);
  *(v5 + *(v6 + 32)) = v8;
  sub_257ECF900();
  *(v0 + 88) = sub_257ECF8F0();
  v10 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C32C10, v10, v9);
}

uint64_t sub_257C2DD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2DDD4, 0, 0);
}

uint64_t sub_257C2DDD4()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_257C2DE94;
  v2 = *(v0 + 24);

  return MAGPointAndSpeakEventHandler.send(_:)(v2);
}

uint64_t sub_257C2DE94()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_257C2E02C;
  }

  else
  {
    v2 = sub_257C2DFA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2DFA8()
{
  sub_257C32040(*(v0 + 24), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C2E02C()
{
  sub_257C32040(*(v0 + 24), type metadata accessor for MAGPointAndSpeakEvent);

  v1 = *(v0 + 8);

  return v1();
}

void sub_257C2E0B0(uint64_t a1@<X0>, double *a2@<X1>, char *a3@<X8>, CGFloat a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for DetectedTextBlock(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  if (!v19)
  {
    *a2 = 1.79769313e308;
LABEL_35:
    v57 = 0;
    goto LABEL_36;
  }

  v61 = a2;
  v62 = a3;
  v71 = a5;
  v20 = &v18[*(v16 + 24)];
  v21 = objc_opt_self();
  v22 = 0;
  v23 = *(v11 + 72);
  v24 = -v19;
  v25 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v26 = 1;
  v72 = 1.79769313e308;
  v70 = -0.025;
  v69 = 0.05;
  v68 = 1.05;
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v60 = v25;
LABEL_3:
  v63 = v30;
  v64 = v29;
  v65 = v28;
  v66 = v27;
  v67 = v26;
  v31 = v25 + v23 * v22++;
  do
  {
    sub_257C31F70(v31, v18, type metadata accessor for DetectedTextBlock);
    v32 = *v20;
    v33 = v20[1];
    v34 = v20[2];
    v35 = v20[3];
    sub_257C32040(v18, type metadata accessor for DetectedTextBlock);
    v36 = [v21 currentDevice];
    v37 = [v36 orientation];

    if (v37 == 3 || v37 == 4)
    {
      CGSizeMake();
      v32 = v39;
      v34 = v40;
      v35 = v41;
    }

    else if (1.0 - v33 - v35 > 0.0)
    {
      v38 = 1.0 - v33 - v35;
    }

    else
    {
      v38 = 0.0;
    }

    v42 = v32 + v70;
    v44 = (v34 + v69) * v68;
    v45 = (v35 + v69) * v68;
    v73.origin.x = v42;
    v73.origin.y = v38 + v70;
    y = v73.origin.y;
    v73.size.width = v44;
    v73.size.height = v45;
    v46 = CGRectGetMinX(v73) - a4;
    v74.origin.x = v42;
    v74.origin.y = y;
    v74.size.width = v44;
    v74.size.height = v45;
    v47 = a4;
    v48 = a4 - CGRectGetMaxX(v74);
    if (v48 < 0.0)
    {
      v49 = 0.0;
    }

    else
    {
      v49 = v48;
    }

    if (v46 > v48)
    {
      v48 = v46;
    }

    if (v46 > 0.0)
    {
      v50 = v48;
    }

    else
    {
      v50 = v49;
    }

    v75.origin.x = v42;
    v75.origin.y = y;
    v75.size.width = v44;
    v75.size.height = v45;
    MinY = CGRectGetMinY(v75);
    v52 = v71;
    v53 = MinY - v71;
    v76.origin.x = v42;
    v76.origin.y = y;
    v76.size.width = v44;
    v76.size.height = v45;
    v54 = v52 - CGRectGetMaxY(v76);
    if (v54 < 0.0)
    {
      v55 = 0.0;
    }

    else
    {
      v55 = v54;
    }

    if (v53 > v54)
    {
      v54 = v53;
    }

    if (v53 <= 0.0)
    {
      v54 = v55;
    }

    v56 = sqrt(v50 * v50 + v54 * v54);
    if (v56 < v72)
    {
      v26 = 0;
      v27 = v42;
      v28 = y;
      v29 = v44;
      v30 = v45;
      v72 = v56;
      a4 = v47;
      v25 = v60;
      if (v24 + v22)
      {
        goto LABEL_3;
      }

      a3 = v62;
      *v61 = v56;
      goto LABEL_32;
    }

    ++v22;
    v31 += v23;
    a4 = v47;
  }

  while (v24 + v22 != 1);
  a3 = v62;
  *v61 = v72;
  if (v67)
  {
    goto LABEL_35;
  }

  y = v65;
  v42 = v66;
  v45 = v63;
  v44 = v64;
LABEL_32:
  v77.origin.x = v42;
  v77.origin.y = y;
  v77.size.width = v44;
  v77.size.height = v45;
  if (CGRectGetMinX(v77) <= a4)
  {
    v78.origin.x = v42;
    v78.origin.y = y;
    v78.size.width = v44;
    v78.size.height = v45;
    if (CGRectGetMaxX(v78) < a4)
    {
      v57 = 5;
      goto LABEL_36;
    }

    v79.origin.x = v42;
    v79.origin.y = y;
    v79.size.width = v44;
    v79.size.height = v45;
    v58 = CGRectGetMinY(v79);
    v59 = v71;
    if (v58 > v71)
    {
      v57 = 8;
      goto LABEL_36;
    }

    v80.origin.x = v42;
    v80.origin.y = y;
    v80.size.width = v44;
    v80.size.height = v45;
    if (CGRectGetMaxY(v80) < v59)
    {
      v57 = 3;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v57 = 6;
LABEL_36:
  *a3 = v57;
}

double sub_257C2E504()
{
  v46 = sub_257ECF120();
  v1 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v2, v3, v4, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF190();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECF1B0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17, v18, v19, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = MEMORY[0x28223BE20](v23, v24, v25, v26, v27).n128_u64[0];
  if ((*(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_startedPulseForOutOfFrame) = 1;
    v42 = &v39 - v28;
    v30 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_playHandAbsentTone selector:0 userInfo:1 repeats:0.25];
    v31 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer);
    *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_pulseTimer) = v30;

    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v43 = sub_257ECFD30();
    sub_257ECF1A0();
    sub_257ECF220();
    v32 = *(v16 + 8);
    v44 = v16 + 8;
    v45 = v32;
    v32(v22, v15);
    aBlock[4] = sub_257C31C10;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_117;
    v33 = _Block_copy(aBlock);
    sub_257ECC3F0();
    sub_257ECF150();
    v48 = MEMORY[0x277D84F90];
    sub_257C32B44(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v34 = v46;
    v40 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    v35 = v47;
    v41 = v15;
    v36 = v14;
    sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
    sub_257ED0180();
    v38 = v42;
    v37 = v43;
    MEMORY[0x259C727E0](v42, v36, v7, v33);
    _Block_release(v33);

    (*(v1 + 8))(v7, v34);
    (*(v35 + 8))(v36, v40);
    v45(v38, v41);
  }

  return result;
}

uint64_t sub_257C2E928()
{
  v0 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_257ECC3F0();
  sub_257ECCCE0();
  sub_257C31F70(v6, &v13[v7[5]], type metadata accessor for MAGOutputEvent.EventType);
  v13[v7[6]] = 1;
  v13[v7[7]] = 1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = qword_281548348;
  sub_257ECC3F0();
  sub_257C32040(v6, type metadata accessor for MAGOutputEvent.EventType);
  *&v13[v7[8]] = v14;
  sub_257CBBC80(v13);

  return sub_257C32040(v13, type metadata accessor for MAGOutputEvent);
}

void sub_257C2EB24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = v50 - v7;
  v9 = sub_257ECF930();
  v10 = *(v9 - 8);
  v51 = *(v10 + 56);
  v52 = v9;
  v50[1] = v10 + 56;
  v51(v8, 1, 1);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  sub_257ECC3F0();
  sub_257E81524(0, 0, v8, &unk_257EDC358, v11);

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v12 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v13 = v12[1];
  v14 = v12[2];
  v54 = *v12;
  v55 = v13;
  v56 = v14;
  v15 = qword_2815447E0;

  if (v15 != -1)
  {
    v16 = swift_once();
  }

  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v50[-2] = &v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
  sub_257ECFD50();

  v21 = sub_257C592D0(2u, v53);

  if (v21 || (v27 = *v12, v28 = v12[1], v29 = v12[2], v54 = v27, v55 = v28, v56 = v29, MEMORY[0x28223BE20](v22, v23, v24, v25, v26), v50[-2] = &v54, , , sub_257ECFD50(), , , v30 = sub_257C592D0(3u, v53), , v30))
  {
    v31 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand;
    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithHand) > 2.0)
    {
      (v51)(v8, 1, 1, v52);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v1;
      sub_257ECC3F0();
      sub_257C3FBD4(0, 0, v8, &unk_257EDC368, v32);

      *(v1 + v31) = 0;
    }
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandDetectedFeedback) = 0;
  v33 = v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastFingerPoint;
  *v33 = 0;
  *(v33 + 8) = 0;
  v34 = 1;
  *(v33 + 16) = 1;
  v35 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService);
  v36 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v37 = [*(v35 + v36) currentFrame];
  v38 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedFrame) = v37;

  v39 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedDocument) = 0;

  v40 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedTextBlocks) = MEMORY[0x277D84F90];

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastUnobstructedSpatialTextBlocks) = MEMORY[0x277D84F98];

  v41 = [objc_opt_self() currentDevice];
  v42 = [v41 orientation];

  if ((v42 - 2) <= 2)
  {
    v34 = qword_257EDC490[(v42 - 2)];
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastOrientation) = v34;
  v43 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue;
  v44 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForQueue) = v46;
  v47 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage);
  v45 = __OFADD__(v47, 1);
  v48 = v47 + 1;
  if (v45)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutHandPoseForMessage) = v48;
  if (v46 >= 3)
  {
    if (qword_27F8F4610 == -1)
    {
LABEL_15:
      v49 = qword_27F912F78;
      swift_beginAccess();
      *(v49 + 24) = v40;

      [*(v49 + 16) removeAllObjects];
      *(v1 + v43) = 0;
      goto LABEL_16;
    }

LABEL_19:
    swift_once();
    goto LABEL_15;
  }

LABEL_16:
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutDeviceDirectionMessage) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithoutFingerDirectionMessage) = 0;
  sub_257D22594(2);
}

uint64_t sub_257C2F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2F154, 0, 0);
}

uint64_t sub_257C2F154()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_257C26B44;
  v2 = *(v0 + 24);

  return MAGPointAndSpeakEventHandler.send(_:)(v2);
}

uint64_t sub_257C2F234()
{
  sub_257ECF900();
  *(v0 + 24) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C2F2C8, v2, v1);
}

uint64_t sub_257C2F2C8()
{

  v1.n128_f64[0] = sub_257C2E504();
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_257C2F32C(uint64_t a1@<X0>, __CVBuffer *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for SpatialTextBlock(0);
  v33 = *(a1 + *(v9 + 32));
  v34 = *(a1 + *(v9 + 24));
  if (UIInterfaceOrientationIsLandscape(a3))
  {
    Width = CVPixelBufferGetWidth(a2);
    Height = CVPixelBufferGetHeight(a2);
  }

  else
  {
    Width = CVPixelBufferGetHeight(a2);
    Height = CVPixelBufferGetWidth(a2);
  }

  v12 = Height;
  v13 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService;
  v14 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_arService);
  v15 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v17 = 0uLL;
  if (v16)
  {
    v18 = [v16 currentFrame];
    if (v18 && (v19 = Width, v20 = v12, v21 = v18, v22 = [v18 camera], v21, objc_msgSend(v22, sel_projectPoint_orientation_viewportSize_, a3, *&v34, v19, v20), v22, v23 = *(v4 + v13), v24 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession, swift_beginAccess(), (v25 = *(v23 + v24)) != 0) && (v26 = objc_msgSend(v25, sel_currentFrame)) != 0)
    {
      v27 = v26;
      v28 = [v26 camera];

      [v28 projectPoint:a3 orientation:*&v33 viewportSize:{v19, v20}];
      CGSizeMake();
      v29 = 0;
      *(&v17 + 1) = v30;
      *(&v32 + 1) = v31;
    }

    else
    {
      v29 = 1;
      v32 = 0uLL;
      v17 = 0uLL;
    }
  }

  else
  {
    v29 = 1;
    v32 = 0uLL;
  }

  *a4 = v17;
  *(a4 + 16) = v32;
  *(a4 + 32) = v29;
}

void sub_257C2F55C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (v3 > 2)
    {
      v3 = 0;
    }

    *(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_shortSpeechAnnouncements) = v3;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();
    v7 = sub_257ECF4C0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_257ECF500();
  }
}

uint64_t sub_257C2F68C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_257C2F6AC, 0, 0);
}

uint64_t sub_257C2F6AC()
{
  v1 = [*(v0[1].i64[1] + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_engine) imageNode];
  if (v1 && ((v2 = v0[1].i64[1], v1, (v3 = [*(*(v2 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager) + 16) deviceMotion]) == 0) || (v4 = v3, objc_msgSend(v3, sel_rotationRate), v6 = v5, v8 = v7, v10 = v9, v4, sqrt(v10 * v10 + v6 * v6 + v8 * v8) <= 1.75)))
  {
    v13 = swift_task_alloc();
    v0[2].i64[0] = v13;
    v13[1] = vextq_s8(v0[1], v0[1], 8uLL);
    v14 = swift_task_alloc();
    v0[2].i64[1] = v14;
    *v14 = v0;
    v14[1] = sub_257C2F88C;
    v15 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](&v0[3].u64[1], 0, 0, 0xD000000000000010, 0x8000000257EFA4B0, sub_257C31538, v13, v15);
  }

  else
  {
    v11 = v0->i64[1];

    return v11(1);
  }
}

uint64_t sub_257C2F88C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_257C2F9C4;
  }

  else
  {

    v2 = sub_257C2F9A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257C2F9C4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_257C2FA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
  v7 = *(v6 - 8);
  *&v12 = MEMORY[0x28223BE20](v6, v8, v9, v10, v11).n128_u64[0];
  v14 = aBlock - v13;
  v15 = [*(a2 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_engine) imageNode];
  if (v15)
  {
    v16 = v15;
    v17 = *(a3 + 16);
    v18 = objc_allocWithZone(MEMORY[0x277CE6AE0]);
    v19 = v17;
    v20 = [v18 init];
    [v20 setDetectTraits_];
    (*(v7 + 16))(v14, a1, v6);
    v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    (*(v7 + 32))(v22 + v21, v14, v6);
    aBlock[4] = sub_257C31540;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257BE8054;
    aBlock[3] = &block_descriptor_10;
    v23 = _Block_copy(aBlock);
    sub_257ECC3F0();

    [v16 triggerWithPixelBuffer:v19 exifOrientation:6 options:v20 cacheKey:0 resultHandler:v23];
    _Block_release(v23);
  }

  else
  {
    __break(1u);
  }
}

double sub_257C2FC80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v15 - 8, v16, v17, v18, v19);
  v21 = &v27 - v20;
  v22 = sub_257ECF930();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v8 + 16))(v14, a4, v7);
  v23 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a1;
  *(v24 + 5) = a3;
  (*(v8 + 32))(&v24[v23], v14, v7);
  v25 = a1;
  sub_257ECC3F0();
  sub_257C3FBD4(0, 0, v21, &unk_257EDC2A8, v24);

  return result;
}

uint64_t sub_257C2FE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v6[25] = type metadata accessor for MAGOutputEvent.EventType(0);
  v6[26] = swift_task_alloc();
  v6[27] = type metadata accessor for MAGOutputEvent(0);
  v6[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257C2FF44, 0, 0);
}

uint64_t sub_257C2FF44()
{
  v2 = *(v1 + 176);
  if (!v2)
  {
    goto LABEL_52;
  }

  v3 = [v2 blurFeatures];
  sub_257BD2C2C(0, &qword_27F8F5730, 0x277CE6AF0);
  v4 = sub_257ECF810();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_51;
  }

  if (!sub_257ED0210())
  {
LABEL_51:

LABEL_52:
    sub_257BEBEF0();
    v72 = swift_allocError();
    *(v73 + 8) = 0;
    *(v73 + 16) = 0;
    *v73 = 9;
    *(v73 + 24) = 4;
    *(v1 + 136) = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
    goto LABEL_53;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x259C72E20](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      swift_once();
      goto LABEL_11;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;
  v0 = *(v1 + 184);

  [v6 blur];
  v8 = v7;
  *(v1 + 232) = v7;

  v9 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithBlur;
  *(v1 + 240) = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_consecutiveFramesWithBlur;
  if (v8 < 0.85)
  {
LABEL_30:
    *(*(v1 + 184) + *(v1 + 240)) = 0;
    goto LABEL_31;
  }

  v10 = *(v0 + v9);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    goto LABEL_59;
  }

  *(v0 + v9) = v12;
  if (v12 < 31)
  {
LABEL_31:
    if (*(v1 + 232) < 0.85)
    {
      *(v1 + 312) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
      sub_257ECF8D0();
LABEL_54:

      v74 = *(v1 + 8);

      return v74();
    }

    sub_257BEBEF0();
    v34 = swift_allocError();
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *v35 = 10;
    *(v35 + 24) = 4;
    *(v1 + 144) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
LABEL_53:
    sub_257ECF8C0();
    goto LABEL_54;
  }

  v0 = v1 + 40;
  v76 = v1 + 88;
  if (qword_281544FE0 != -1)
  {
    goto LABEL_60;
  }

LABEL_11:
  v13 = qword_281548348;
  v14 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v15 = v14[1];
  v16 = v14[2];
  *(v1 + 40) = *v14;
  *(v1 + 48) = v15;
  *(v1 + 56) = v16;
  v17 = qword_2815447E0;

  if (v17 != -1)
  {
    swift_once();
  }

  *(swift_task_alloc() + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
  sub_257ECFD50();

  v18 = sub_257C592D0(1u, *(v1 + 152));

  v19 = (v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
  swift_beginAccess();
  v20 = v19[1];
  v21 = v19[2];
  *(v1 + 88) = *v19;
  *(v1 + 96) = v20;
  *(v1 + 104) = v21;
  *(swift_task_alloc() + 16) = v76;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540, qword_257ED9FD0);
  sub_257ECFD50();

  v22 = sub_257C592E8(1, *(v1 + 160));

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v1 + 313) != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , *(v1 + 316) != 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v1 + 314) != 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (*(v1 + 315) != 1)
      {
LABEL_25:
        v27 = 0;
        v28 = 0xE000000000000000;
        goto LABEL_27;
      }

      sub_257C2F55C();
LABEL_23:
      v28 = v29;
      goto LABEL_27;
    }

LABEL_20:
    v27 = sub_257C31964();
    goto LABEL_23;
  }

  if (!v18)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v23 = *v19;
  v24 = v19[1];
  v25 = v19[2];
  *(v1 + 112) = v23;
  *(v1 + 120) = v24;
  *(v1 + 128) = v25;
  *(swift_task_alloc() + 16) = v1 + 112;

  sub_257ECFD50();

  v26 = sub_257C592E8(1, *(v1 + 168));

  if (v26 || !v22)
  {
    sub_257C2F55C();
    v28 = v30;
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

LABEL_27:
  v31 = *(v1 + 184);
  v32 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback;
  *(v1 + 248) = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedHandTooCloseFeedback;
  if (*(v31 + v32) & 1) != 0 || (v33 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback, *(v1 + 256) = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_providedTextTooCloseFeedback, (*(v31 + v33)))
  {

    goto LABEL_30;
  }

  v36 = v27;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v37 = sub_257ECF4C0();

    UIAccessibilitySpeakIfNotSpeaking();

    goto LABEL_30;
  }

  v77 = v13;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = objc_opt_self();
  v40 = [v39 bundleForClass_];
  v41 = sub_257ECF4C0();
  v42 = sub_257ECF4C0();
  v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

  v44 = sub_257ECF500();
  v46 = v45;

  if (v36 == v44 && v28 == v46)
  {

LABEL_40:
    v48 = *(v1 + 216);
    v49 = *(v1 + 224);
    v50 = *(v1 + 208);
    v51 = *(v1 + 184);

    *(v1 + 264) = *(v51 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine);
    *v50 = 11;
    swift_storeEnumTagMultiPayload();
    sub_257ECC3F0();
    sub_257ECCCE0();
    sub_257C31F70(v50, v49 + v48[5], type metadata accessor for MAGOutputEvent.EventType);
    *(v49 + v48[6]) = 0;
    *(v49 + v48[7]) = 0;
    sub_257ECC3F0();
    sub_257C32040(v50, type metadata accessor for MAGOutputEvent.EventType);
    *(v49 + v48[8]) = v77;
    sub_257ECF900();
    *(v1 + 272) = sub_257ECF8F0();
    v52 = sub_257ECF8B0();
    v54 = v53;
    v55 = sub_257C30B90;
    goto LABEL_41;
  }

  v47 = sub_257ED0640();

  if (v47)
  {
    goto LABEL_40;
  }

  v56 = [v39 bundleForClass_];
  v57 = sub_257ECF4C0();
  v58 = sub_257ECF4C0();
  v59 = [v56 localizedStringForKey:v57 value:0 table:v58];

  v60 = sub_257ECF500();
  v62 = v61;

  if (v36 == v60 && v28 == v62)
  {
  }

  else
  {
    v63 = sub_257ED0640();

    if ((v63 & 1) == 0)
    {
      v68 = *(v1 + 216);
      v69 = *(v1 + 224);
      v70 = *(v1 + 208);
      *(v1 + 296) = *(*(v1 + 184) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine);
      *v70 = 13;
      swift_storeEnumTagMultiPayload();
      sub_257ECC3F0();
      sub_257ECCCE0();
      sub_257C31F70(v70, v69 + v68[5], type metadata accessor for MAGOutputEvent.EventType);
      *(v69 + v68[6]) = 0;
      *(v69 + v68[7]) = 0;
      sub_257ECC3F0();
      sub_257C32040(v70, type metadata accessor for MAGOutputEvent.EventType);
      *(v69 + v68[8]) = v77;
      sub_257ECF900();
      *(v1 + 304) = sub_257ECF8F0();
      v52 = sub_257ECF8B0();
      v54 = v71;
      v55 = sub_257C30EFC;
      goto LABEL_41;
    }
  }

  v64 = *(v1 + 216);
  v65 = *(v1 + 224);
  v66 = *(v1 + 208);
  *(v1 + 280) = *(*(v1 + 184) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_outputEngine);
  *v66 = 10;
  swift_storeEnumTagMultiPayload();
  sub_257ECC3F0();
  sub_257ECCCE0();
  sub_257C31F70(v66, v65 + v64[5], type metadata accessor for MAGOutputEvent.EventType);
  *(v65 + v64[6]) = 0;
  *(v65 + v64[7]) = 0;
  sub_257ECC3F0();
  sub_257C32040(v66, type metadata accessor for MAGOutputEvent.EventType);
  *(v65 + v64[8]) = v77;
  sub_257ECF900();
  *(v1 + 288) = sub_257ECF8F0();
  v52 = sub_257ECF8B0();
  v54 = v67;
  v55 = sub_257C30D4C;
LABEL_41:

  return MEMORY[0x2822009F8](v55, v52, v54);
}

uint64_t sub_257C30B90()
{
  v1 = *(v0 + 224);

  sub_257CBBC80(v1);

  sub_257C32040(v1, type metadata accessor for MAGOutputEvent);

  return MEMORY[0x2822009F8](sub_257C30C28, 0, 0);
}

uint64_t sub_257C30C28()
{
  *(*(v0 + 184) + *(v0 + 248)) = 1;
  *(*(v0 + 184) + *(v0 + 240)) = 0;
  if (*(v0 + 232) >= 0.85)
  {
    sub_257BEBEF0();
    v1 = swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 10;
    *(v2 + 24) = 4;
    *(v0 + 144) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
    sub_257ECF8C0();
  }

  else
  {
    *(v0 + 312) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
    sub_257ECF8D0();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_257C30D4C()
{
  v1 = *(v0 + 224);

  sub_257CBBC80(v1);

  sub_257C32040(v1, type metadata accessor for MAGOutputEvent);

  return MEMORY[0x2822009F8](sub_257C30DE4, 0, 0);
}

uint64_t sub_257C30DE4()
{
  *(*(v0 + 184) + *(v0 + 240)) = 0;
  if (*(v0 + 232) >= 0.85)
  {
    sub_257BEBEF0();
    v1 = swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 10;
    *(v2 + 24) = 4;
    *(v0 + 144) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
    sub_257ECF8C0();
  }

  else
  {
    *(v0 + 312) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
    sub_257ECF8D0();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_257C30EFC()
{
  v1 = *(v0 + 224);

  sub_257CBBC80(v1);

  sub_257C32040(v1, type metadata accessor for MAGOutputEvent);

  return MEMORY[0x2822009F8](sub_257C30F94, 0, 0);
}

uint64_t sub_257C30F94()
{
  *(*(v0 + 184) + *(v0 + 256)) = 1;
  *(*(v0 + 184) + *(v0 + 240)) = 0;
  if (*(v0 + 232) >= 0.85)
  {
    sub_257BEBEF0();
    v1 = swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 10;
    *(v2 + 24) = 4;
    *(v0 + 144) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
    sub_257ECF8C0();
  }

  else
  {
    *(v0 + 312) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290);
    sub_257ECF8D0();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t MAGPointAndSpeakService.deinit()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastImageCacheTime;
  v2 = sub_257ECCC80();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime, v2);

  return v0;
}

uint64_t MAGPointAndSpeakService.__deallocating_deinit()
{
  MAGPointAndSpeakService.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MAGPointAndSpeakService(uint64_t a1)
{
  result = qword_27F8F5F78;
  if (!qword_27F8F5F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257C312D4(uint64_t a1)
{
  result = sub_257ECCC80();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of MAGPointAndSpeakService.predictHandPose(fromPixelBufferWrapper:)(uint64_t a1)
{
  v6 = (*(*v1 + 968) + **(*v1 + 968));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257BE3DE0;

  return v6(a1);
}

double sub_257C31540(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_257C2FC80(a1, a2, v6, v7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257C315E8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F88, &unk_257EDC290) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257BE3DE0;

  return sub_257C2FE7C(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_257C316F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_257ECC3F0();
  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id sub_257C317A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_257C21A74(*a1, a1[1], a1[2], a1[3], a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_257C317E4(void *a1)
{
  v1 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v2 = [a1 blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
  sub_257BD2C2C(0, &qword_27F8F5FA8, 0x277CE2D70);
  v3 = sub_257ECF810();

  v4 = sub_257CCB040(v3);

  if (v4)
  {
    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x259C72E20](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = objc_autoreleasePoolPush();
        sub_257C27524(v8, &v12);
        objc_autoreleasePoolPop(v10);

        ++v6;
        if (v9 == i)
        {
          v1 = v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v1 = MEMORY[0x277D84F90];
LABEL_16:
  }

  return v1;
}

uint64_t sub_257C31964()
{
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C31AA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C2F0C4(a1, v4, v5, v6);
}

uint64_t sub_257C31B5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C2F214(a1, v4, v5, v6);
}

uint64_t sub_257C31C28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_257C31CB8(uint64_t a1)
{
  v4 = *(type metadata accessor for DetectedTextBlock(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257C2C974(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_257C31DD8(uint64_t a1)
{
  v3 = *(type metadata accessor for DetectedTextBlock(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v14 = *(v1 + v5);
  v15 = *(v1 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_257C167C4;

  return sub_257C2CC9C(v10, v11, v12, v13, a1, v8, v9, v1 + v4, v14, v1 + v6, v1 + v7, v15);
}

uint64_t sub_257C31F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C31FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C32040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257C320A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C2DD44(a1, v4, v5, v6);
}

uint64_t sub_257C32154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257C2D7D4(a1, v4, v5, v6, v7);
}

uint64_t sub_257C32218(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257C2D7D4(a1, v4, v5, v6, v7);
}

uint64_t sub_257C322DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257C2D7D4(a1, v4, v5, v6, v7);
}

uint64_t sub_257C323A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257C167C4;

  return sub_257C2D134(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_121Tm()
{
  v1 = (type metadata accessor for DetectedTextBlock(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_257ECCCF0();
  (*(*(v4 - 8) + 8))(v3, v4);

  return swift_deallocObject();
}

uint64_t sub_257C32574(uint64_t a1)
{
  v4 = *(type metadata accessor for DetectedTextBlock(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257C2BC24(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_257C32694(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DetectedTextBlock(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_257C167C4;

  return sub_257C2C054(v11, v12, v13, v14, a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_257C327E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257C167C4;

  return sub_257C2B364(v6, v7, v8, a1, v4, v5, v9, v10);
}

uint64_t sub_257C328C4(uint64_t a1)
{
  v4 = v1[1].n128_i64[0];
  v5 = v1[1].n128_i64[1];
  v9 = v1[2];
  v6 = v1[3].n128_u64[0];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C2B8AC(v9, a1, v4, v5, v6);
}

uint64_t sub_257C32990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C26C58(a1, v4, v5, v6);
}

uint64_t objectdestroy_104Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257C32A90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257C269F4(a1, v4, v5, v6);
}

uint64_t sub_257C32B44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257C32B90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FE0, &unk_257EDC480);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_257C253CC(v1, v2);
}

id sub_257C32C80(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityOnboardingViewController_dismissAction);
  *v3 = a1;
  v3[1] = a2;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  sub_257ECC3F0();
  v6 = [v5 bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  if (!v9)
  {
    sub_257ECF500();
    v9 = sub_257ECF4C0();
  }

  v10 = [v5 bundleForClass_];
  v11 = sub_257ECF4C0();
  v12 = sub_257ECF4C0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  if (!v13)
  {
    sub_257ECF500();
    v13 = sub_257ECF4C0();
  }

  v14 = sub_257ECF4C0();
  v15 = [objc_opt_self() _systemImageNamed_];

  if (v15)
  {
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 systemYellowColor];
    v19 = [v17 imageWithTintColor_];
  }

  else
  {
    v19 = 0;
  }

  v26.receiver = v25;
  v26.super_class = type metadata accessor for ActivityOnboardingViewController();
  v20 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v9, v13, v19, 2);

  v21 = v20;
  result = [v21 view];
  if (result)
  {
    v23 = result;
    v24 = [objc_opt_self() systemYellowColor];
    [v23 setTintColor_];

    sub_257C32FDC();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257C32FDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10, &unk_257EDC4E0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v28 - v14;
  v16 = [objc_opt_self() boldButton];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = v16;
  v20 = [v18 bundleForClass_];
  v21 = sub_257ECF4C0();
  v22 = sub_257ECF4C0();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  if (!v23)
  {
    sub_257ECF500();
    v23 = sub_257ECF4C0();
  }

  [v19 setTitle:v23 forState:0];

  sub_257ED0040();
  v24 = sub_257ED0030();
  if ((*(*(v24 - 8) + 48))(v15, 1, v24))
  {
    sub_257C3366C(v15, v8);
    sub_257ED0050();

    sub_257C336DC(v15);
  }

  else
  {
    v25 = [objc_opt_self() blackColor];
    sub_257ED0000();
    sub_257ED0050();
  }

  [v19 addTarget:v1 action:sel_didTapStart forControlEvents:64];
  v26 = [objc_opt_self() systemYellowColor];
  [v19 setTintColor_];

  v27 = [v1 buttonTray];
  [v27 addButton_];
}

void sub_257C332E8()
{
  v1 = v0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  sub_257ECEE50();
  sub_257ECEE50();

  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FF0, &qword_257EDC4D8));
  v3 = sub_257ECE620();
  v4 = [objc_allocWithZone(type metadata accessor for MFNavigationController()) initWithRootViewController_];

  [v4 setModalPresentationStyle_];
  v5 = [v4 navigationBar];
  v6 = [objc_opt_self() systemYellowColor];
  [v5 setTintColor_];

  [v1 presentViewController:v4 animated:1 completion:0];
}

void sub_257C334BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport32ActivityOnboardingViewController_dismissAction);
    v3 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport32ActivityOnboardingViewController_dismissAction + 8);
    v4 = Strong;
    sub_257BBD7E4(v2, v3);

    if (v2)
    {
      v2();
      sub_257BBD88C(v2, v3);
    }
  }
}

id sub_257C335F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityOnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257C3366C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10, &unk_257EDC4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C336DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10, &unk_257EDC4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_257C33754(double result, double a2, double a3, double a4, double a5)
{
  if (a3 < result)
  {
    return (1.0 - 1.0 / ((result - a3) / a4 * a5 + 1.0)) * a4 + a3;
  }

  if (result < a2)
  {
    return a2 - (1.0 - 1.0 / ((a2 - result) / a4 * a5 + 1.0)) * a4;
  }

  return result;
}

uint64_t sub_257C337B4()
{
  type metadata accessor for MFReaderTextFormatterModel(0);
  swift_allocObject();
  return sub_257D42EF8();
}

uint64_t sub_257C337EC()
{
  type metadata accessor for MFReaderSpeechFormatterModel(0);
  v0 = swift_allocObject();
  sub_257C353E4(1, 0xD000000000000022, 0x8000000257EFA770, 0, 0, v0 + OBJC_IVAR____TtC16MagnifierSupport28MFReaderSpeechFormatterModel__playbackSpeed);
  return v0;
}

uint64_t sub_257C33858@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v152 = a1;
  v125 = sub_257ECE700();
  MEMORY[0x28223BE20](v125, v3, v4, v5, v6);
  v123 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECDFD0();
  v136 = *(v8 - 8);
  v137 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v133 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60D0, &qword_257EDC6F8);
  v142 = *(v14 - 8);
  v143 = v14;
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v138 = &v121 - v19;
  v121 = type metadata accessor for MFReaderTextDisplayView(0) - 8;
  MEMORY[0x28223BE20](v121, v20, v21, v22, v23);
  v25 = (&v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60D8, &qword_257EDC700);
  MEMORY[0x28223BE20](v126, v26, v27, v28, v29);
  v122 = &v121 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60E0, &qword_257EDC708);
  v129 = *(v31 - 8);
  v130 = v31;
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v127 = &v121 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60E8, &qword_257EDC710);
  v131 = *(v37 - 8);
  v132 = v37;
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v128 = &v121 - v42;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60F0, &qword_257EDC718);
  MEMORY[0x28223BE20](v124, v43, v44, v45, v46);
  v144 = &v121 - v47;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60F8, &qword_257EDC720);
  MEMORY[0x28223BE20](v146, v48, v49, v50, v51);
  v145 = &v121 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6100, &qword_257EDC728);
  v150 = *(v53 - 8);
  v151 = v53;
  MEMORY[0x28223BE20](v53, v54, v55, v56, v57);
  v147 = &v121 - v58;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6108, &qword_257EDC730);
  MEMORY[0x28223BE20](v149, v59, v60, v61, v62);
  v148 = &v121 - v63;
  type metadata accessor for MFReaderSpeechFormatterModel(0);
  sub_257C3813C(&qword_27F8F5E30, type metadata accessor for MFReaderSpeechFormatterModel, &unk_257EE5120);
  v135 = sub_257ECE000();
  v64 = *(v1 + 16);
  v65 = *(v1 + 24);
  v66 = *(v1 + 32);
  v67 = type metadata accessor for MFReaderTextFormatterModel(0);
  v68 = sub_257C3813C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
  v140 = v65;
  v141 = v64;
  v139 = v66;
  sub_257ECE000();
  KeyPath = swift_getKeyPath();
  v70 = v121;
  *(v25 + *(v121 + 36)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  swift_storeEnumTagMultiPayload();
  *v25 = sub_257ECE150();
  v25[1] = v71;
  v134 = v67;
  v135 = v68;
  v25[2] = sub_257ECE150();
  v25[3] = v72;
  type metadata accessor for MFReaderBlockManager(0);
  sub_257C3813C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
  v25[4] = sub_257ECE330();
  v25[5] = v73;
  *(v25 + *(v70 + 40)) = 0x3FC999999999999ALL;
  v74 = *v1;
  if (*v1)
  {
    v75 = v74;
    v76 = sub_257ECDCE0();
    v77 = v122;
    sub_257C37F30(v25, v122);
    v78 = v126;
    v79 = (v77 + *(v126 + 36));
    *v79 = v76;
    v79[1] = v74;
    v80 = swift_allocObject();
    v81 = v2[5];
    v80[5] = v2[4];
    v80[6] = v81;
    v82 = v2[7];
    v80[7] = v2[6];
    v80[8] = v82;
    v83 = v2[1];
    v80[1] = *v2;
    v80[2] = v83;
    v84 = v2[3];
    v80[3] = v2[2];
    v80[4] = v84;
    sub_257C37F9C(v2, &v166);
    v85 = sub_257C37FD4();
    v86 = v127;
    sub_257ECEB70();

    sub_257BE4084(v77, &qword_27F8F60D8, &qword_257EDC700);
    sub_257ECE7F0();
    v87 = v133;
    sub_257ECDFB0();
    v88 = swift_allocObject();
    v89 = v2[5];
    v88[5] = v2[4];
    v88[6] = v89;
    v90 = v2[7];
    v88[7] = v2[6];
    v88[8] = v90;
    v91 = v2[1];
    v88[1] = *v2;
    v88[2] = v91;
    v92 = v2[3];
    v88[3] = v2[2];
    v88[4] = v92;
    sub_257C37F9C(v2, &v166);
    sub_257C3813C(&qword_27F8F6130, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
    sub_257C3813C(&qword_27F8F6138, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
    v93 = v137;
    v94 = v138;
    sub_257ECEFA0();

    (*(v136 + 8))(v87, v93);
    sub_257ECDFF0();
    *&v166 = v78;
    *(&v166 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F6140, &qword_27F8F60D0, &qword_257EDC6F8, MEMORY[0x277CDFB18]);
    v95 = v128;
    v96 = v130;
    v97 = v143;
    sub_257ECEC40();
    (*(v142 + 8))(v94, v97);
    (*(v129 + 8))(v86, v96);
    v98 = sub_257ECF050();
    v100 = v99;
    v101 = v144;
    v102 = &v144[*(v124 + 36)];
    sub_257C345C4(v2, v102);
    v103 = (v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6148, &qword_257EDC778) + 36));
    *v103 = v98;
    v103[1] = v100;
    (*(v131 + 32))(v101, v95, v132);
    v104 = sub_257ECF040();
    v106 = v105;
    v107 = sub_257ECE500();
    v153[0] = 1;
    sub_257C35130(v2, &v166);
    v157 = *&v167[16];
    v158 = *&v167[32];
    v159 = *&v167[48];
    v160 = *&v167[64];
    v155 = v166;
    v156 = *v167;
    v162 = *&v167[64];
    v161[2] = *&v167[16];
    v161[3] = *&v167[32];
    v161[4] = *&v167[48];
    v161[0] = v166;
    v161[1] = *v167;
    sub_257BE401C(&v155, &v163, &qword_27F8F6150, &qword_257EDC780);
    sub_257BE4084(v161, &qword_27F8F6150, &qword_257EDC780);
    *(&v154[2] + 7) = v157;
    *(&v154[3] + 7) = v158;
    *(&v154[4] + 7) = v159;
    *(&v154[5] + 7) = v160;
    *(v154 + 7) = v155;
    *(&v154[1] + 7) = v156;
    v108 = v153[0];
    v163 = v107;
    LOBYTE(v164[0]) = v153[0];
    v164[5] = *(&v154[4] + 15);
    *(&v164[4] + 1) = v154[4];
    *(&v164[3] + 1) = v154[3];
    *(&v164[2] + 1) = v154[2];
    *(&v164[1] + 1) = v154[1];
    *(v164 + 1) = v154[0];
    *&v165 = v104;
    *(&v165 + 1) = v106;
    v109 = v101;
    v110 = v145;
    sub_257BB146C(v109, v145);
    v111 = (v110 + *(v146 + 36));
    v112 = v164[4];
    v111[4] = v164[3];
    v111[5] = v112;
    v113 = v165;
    v111[6] = v164[5];
    v111[7] = v113;
    v114 = v164[0];
    *v111 = v163;
    v111[1] = v114;
    v115 = v164[2];
    v111[2] = v164[1];
    v111[3] = v115;
    *&v167[17] = v154[1];
    *&v167[1] = v154[0];
    *&v167[80] = *(&v154[4] + 15);
    *&v167[65] = v154[4];
    *&v167[49] = v154[3];
    v166 = v107;
    v167[0] = v108;
    *&v167[33] = v154[2];
    v168 = v104;
    v169 = v106;
    sub_257BE401C(&v163, v153, &qword_27F8F6158, &qword_257EDC788);
    sub_257BE4084(&v166, &qword_27F8F6158, &qword_257EDC788);
    sub_257C38184();
    v116 = v147;
    sub_257ECED10();
    sub_257BE4084(v110, &qword_27F8F60F8, &qword_257EDC720);
    sub_257ECE000();
    v117 = sub_257D42694();

    LOBYTE(v104) = sub_257ECE930();
    v118 = v148;
    (*(v150 + 32))(v148, v116, v151);
    v119 = v118 + *(v149 + 36);
    *v119 = v117;
    *(v119 + 8) = v104;
    sub_257C383CC();
    sub_257ECEC30();
    return sub_257BE4084(v118, &qword_27F8F6108, &qword_257EDC730);
  }

  else
  {
    result = sub_257ECE320();
    __break(1u);
  }

  return result;
}

uint64_t sub_257C34484(uint64_t a1)
{
  v3 = *(a1 + 96);
  v2[1] = *(a1 + 96);
  v4 = *(&v3 + 1);
  sub_257BE401C(&v4, v2, &qword_27F8F6228, &unk_257EDC810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790, &qword_257EDD190);
  sub_257ECEE60();
  v2[0] = v3;
  sub_257ECEE70();
  return sub_257BE4084(&v3, &qword_27F8F6790, &qword_257EDD190);
}

uint64_t sub_257C34548(uint64_t a1, uint64_t a2)
{
  sub_257ECDFC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790, &qword_257EDD190);
  return sub_257ECEE70();
}

uint64_t sub_257C345C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61A0, &qword_257EDC7A8);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61A8, &qword_257EDC7B0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v37 - v16;
  v47 = *(a1 + 80);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790, &qword_257EDD190);
  sub_257ECEE60();
  if (v46 == 1)
  {
    v42 = v18;
    v43 = v11;
    v44 = v4;
    v45 = a2;
    type metadata accessor for MFReaderTextFormatterModel(0);
    sub_257C3813C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
    sub_257ECE000();
    type metadata accessor for MFReaderSpeechFormatterModel(0);
    sub_257C3813C(&qword_27F8F5E30, type metadata accessor for MFReaderSpeechFormatterModel, &unk_257EE5120);
    sub_257ECE000();
    v19 = sub_257ECE150();
    v40 = v20;
    v41 = v19;
    v21 = sub_257ECE150();
    v38 = v22;
    v39 = v21;
    type metadata accessor for MFReaderBlockManager(0);
    sub_257C3813C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
    v23 = sub_257ECE330();
    v25 = v24;
    v46 = 1;
    sub_257ECEE50();
    v26 = *a1;
    if (*a1)
    {
      v27 = v47;
      v28 = *(&v47 + 1);
      v29 = v26;
      v30 = sub_257ECDCE0();
      v47 = *(a1 + 96);
      sub_257ECEE60();
      if ((v46 & 1) == 0 || (v47 = *(a1 + 112), sub_257ECEE60(), v31 = 1.0, (v46 & 1) == 0))
      {
        v31 = 0.0;
      }

      v32 = v40;
      *v17 = v41;
      *(v17 + 1) = v32;
      v33 = v38;
      *(v17 + 2) = v39;
      *(v17 + 3) = v33;
      *(v17 + 4) = v23;
      *(v17 + 5) = v25;
      v17[48] = v27;
      *(v17 + 7) = v28;
      *(v17 + 8) = v30;
      *(v17 + 9) = v26;
      *(v17 + 10) = v31;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61C0, &qword_257EDC7C8);
      sub_257C384C0();
      sub_257BD2D4C(&qword_27F8F61E8, &qword_27F8F61A0, &qword_257EDC7A8, MEMORY[0x277CE1198]);
      return sub_257ECE6F0();
    }

    else
    {
      result = sub_257ECE320();
      __break(1u);
    }
  }

  else
  {
    *v10 = sub_257ECE5B0();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v35 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61B0, &qword_257EDC7B8) + 44)];
    *v35 = sub_257ECE500();
    *(v35 + 1) = 0;
    v35[16] = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61B8, &qword_257EDC7C0);
    sub_257C34A8C(a1, &v35[*(v36 + 44)]);
    sub_257BE401C(v10, v17, &qword_27F8F61A0, &qword_257EDC7A8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61C0, &qword_257EDC7C8);
    sub_257C384C0();
    sub_257BD2D4C(&qword_27F8F61E8, &qword_27F8F61A0, &qword_257EDC7A8, MEMORY[0x277CE1198]);
    sub_257ECE6F0();
    return sub_257BE4084(v10, &qword_27F8F61A0, &qword_257EDC7A8);
  }

  return result;
}

uint64_t sub_257C34A8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v85 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61F0, &qword_257EDC7D8) - 8;
  MEMORY[0x28223BE20](v74, v3, v4, v5, v6);
  v8 = v73 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F61F8, &qword_257EDC7E0);
  MEMORY[0x28223BE20](v78, v9, v10, v11, v12);
  v82 = v73 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6200, &qword_257EDC7E8);
  MEMORY[0x28223BE20](v80, v14, v15, v16, v17);
  v79 = v73 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6208, &qword_257EDC7F0);
  MEMORY[0x28223BE20](v77, v19, v20, v21, v22);
  v81 = v73 - v23;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6210, &qword_257EDC7F8);
  MEMORY[0x28223BE20](v75, v24, v25, v26, v27);
  v84 = v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
  v76 = v73 - v34;
  MEMORY[0x28223BE20](v35, v36, v37, v38, v39);
  v83 = v73 - v40;
  v73[4] = type metadata accessor for MFReaderTextFormatterModel(0);
  v73[3] = sub_257C3813C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
  v73[2] = sub_257ECE000();
  type metadata accessor for MFReaderSpeechFormatterModel(0);
  sub_257C3813C(&qword_27F8F5E30, type metadata accessor for MFReaderSpeechFormatterModel, &unk_257EE5120);
  v73[1] = sub_257ECE000();
  v88 = *(a1 + 80);
  v73[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790, &qword_257EDD190);
  sub_257ECEE80();
  v41 = v86;
  v42 = v87;
  KeyPath = swift_getKeyPath();
  v44 = type metadata accessor for MFReaderTextFormatterView(0);
  *&v8[v44[8]] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  swift_storeEnumTagMultiPayload();
  *v8 = sub_257ECE150();
  *(v8 + 1) = v45;
  *(v8 + 2) = sub_257ECE150();
  *(v8 + 3) = v46;
  *(v8 + 2) = v41;
  v8[48] = v42;
  type metadata accessor for MFReaderBlockManager(0);
  sub_257C3813C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
  *(v8 + 7) = sub_257ECE330();
  *(v8 + 8) = v47;
  v48 = &v8[v44[9]];
  LOBYTE(v88) = 0;
  sub_257ECEE50();
  v49 = *(&v86 + 1);
  *v48 = v86;
  *(v48 + 1) = v49;
  v50 = &v8[v44[10]];
  LOBYTE(v88) = 0;
  sub_257ECEE50();
  v51 = *(&v86 + 1);
  *v50 = v86;
  *(v50 + 1) = v51;
  v52 = sub_257ECE980();
  sub_257ECDF40();
  v53 = &v8[*(v74 + 44)];
  *v53 = v52;
  *(v53 + 1) = v54;
  *(v53 + 2) = v55;
  *(v53 + 3) = v56;
  *(v53 + 4) = v57;
  v53[40] = 0;
  v58 = *a1;
  if (*a1)
  {
    v59 = v58;
    v60 = sub_257ECDCE0();
    v61 = v82;
    sub_257C0DD14(v8, v82, &qword_27F8F61F0, &qword_257EDC7D8);
    v62 = (v61 + *(v78 + 36));
    *v62 = v60;
    v62[1] = v58;
    v86 = *(a1 + 96);
    sub_257ECEE60();
    if (v88)
    {
      v63 = 1.0;
    }

    else
    {
      v63 = 0.0;
    }

    v64 = v79;
    sub_257C0DD14(v61, v79, &qword_27F8F61F8, &qword_257EDC7E0);
    v65 = v81;
    *(v64 + *(v80 + 36)) = v63;
    sub_257C0DD14(v64, v65, &qword_27F8F6200, &qword_257EDC7E8);
    v66 = v76;
    *(v65 + *(v77 + 36)) = 1;
    v67 = (v66 + *(v75 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218, &qword_257EDC800);
    sub_257ECE310();
    *v67 = 0;
    sub_257C0DD14(v65, v66, &qword_27F8F6208, &qword_257EDC7F0);
    v68 = v83;
    sub_257C0DD14(v66, v83, &qword_27F8F6210, &qword_257EDC7F8);
    v69 = v84;
    sub_257BE401C(v68, v84, &qword_27F8F6210, &qword_257EDC7F8);
    v70 = v85;
    *v85 = 0;
    *(v70 + 8) = 1;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6220, &qword_257EDC808);
    sub_257BE401C(v69, v70 + *(v71 + 48), &qword_27F8F6210, &qword_257EDC7F8);
    sub_257BE4084(v68, &qword_27F8F6210, &qword_257EDC7F8);
    return sub_257BE4084(v69, &qword_27F8F6210, &qword_257EDC7F8);
  }

  else
  {
    result = sub_257ECE320();
    __break(1u);
  }

  return result;
}

uint64_t sub_257C35130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *(a1 + 72);
  v21 = *(a1 + 64);
  sub_257BBD7E4(v21, v20);
  type metadata accessor for MFReaderTextFormatterModel(0);
  sub_257C3813C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
  sub_257ECE000();
  type metadata accessor for MFReaderBlockManager(0);
  sub_257C3813C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
  v4 = sub_257ECE330();
  v6 = v5;
  v7 = sub_257ECE150();
  v9 = *a1;
  if (*a1)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    v13 = sub_257ECDCE0();
    v30 = *(a1 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790, &qword_257EDD190);
    sub_257ECEE60();
    v14 = 0.0;
    v24 = 1;
    if (v25)
    {
      v14 = 1.0;
    }

    *&v25 = v21;
    *(&v25 + 1) = v20;
    *&v26 = v4;
    *(&v26 + 1) = v6;
    *&v27 = v10;
    *(&v27 + 1) = v11;
    *&v28 = v13;
    *(&v28 + 1) = v9;
    v29 = v14;
    *&v23[7] = v25;
    *&v23[71] = v14;
    *&v23[55] = v28;
    *&v23[39] = v27;
    *&v23[23] = v26;
    v15 = v24;
    *a2 = 0;
    *(a2 + 8) = v15;
    v16 = *&v23[16];
    *(a2 + 9) = *v23;
    v17 = *&v23[32];
    v18 = *&v23[48];
    *(a2 + 72) = *&v23[63];
    *(a2 + 57) = v18;
    *(a2 + 41) = v17;
    *(a2 + 25) = v16;
    *&v30 = v21;
    *(&v30 + 1) = v20;
    v31 = v4;
    v32 = v6;
    v33 = v10;
    v34 = v11;
    v35 = v13;
    v36 = v9;
    v37 = v14;
    sub_257BE401C(&v25, v22, &qword_27F8F6198, &qword_257EDC7A0);
    return sub_257BE4084(&v30, &qword_27F8F6198, &qword_257EDC7A0);
  }

  else
  {
    result = sub_257ECE320();
    __break(1u);
  }

  return result;
}

uint64_t sub_257C353E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FF8, &qword_257EDC520);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v49 - v17;
  v53 = sub_257ECDA30();
  v56 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v19, v20, v21, v22);
  v54 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v49 - v29;
  v61 = a1;
  v31 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v32 = sub_257ECF4C0();
  v33 = [v31 initWithSuiteName_];

  v58 = a2;
  if (v33 && (v34 = sub_257ECF4C0(), v55 = a4, v35 = v34, v36 = [v33 dataForKey_], v33, v35, a4 = v55, v36))
  {
    v50 = a5;
    v51 = sub_257ECCBA0();
    v52 = v37;

    sub_257ECD3F0();

    v38 = sub_257ECDA20();
    v39 = sub_257ECFBD0();

    v40 = a3;
    if (os_log_type_enabled(v38, v39))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v60[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_257BF1FC8(v58, a3, v60);
      _os_log_impl(&dword_257BAC000, v38, v39, "Decoding published user data for key : %s", v41, 0xCu);
      v43 = __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x259C74820](v42, -1, -1, v43);
      v44 = v41;
      a4 = v55;
      MEMORY[0x259C74820](v44, -1, -1);
    }

    v49 = *(v56 + 8);
    v49(v30, v53);
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    sub_257C37A54();
    v46 = v51;
    v45 = v52;
    sub_257ECC6D0();

    v59[0] = v60[0];
    sub_257ECDD20();
    sub_257BF2550(v46, v45);
    a5 = v50;
  }

  else
  {
    sub_257ECDD20();
    v40 = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6000, &qword_257EDC528);
  sub_257ECDD30();
  v47 = swift_allocObject();
  *(v47 + 16) = v58;
  *(v47 + 24) = v40;
  sub_257BD2D4C(&qword_27F8F6008, &qword_27F8F5FF8, &qword_257EDC520, MEMORY[0x277CBCEC8]);
  sub_257ECDE50();

  (*(v12 + 8))(v18, v11);
  if (qword_27F8F4630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  return sub_257BBD88C(a4, a5);
}

uint64_t sub_257C359A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a4;
  v57 = a5;
  v54 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6098, &unk_257EDC560);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v48 - v15;
  v17 = sub_257ECDA30();
  v52 = *(v17 - 8);
  v53 = v17;
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v28 = &v48 - v27;
  v51 = a1;
  v59[3] = a1;
  v29 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v30 = a2;
  v31 = sub_257ECF4C0();
  v32 = [v29 initWithSuiteName_];

  v55 = v30;
  if (v32 && (v33 = sub_257ECF4C0(), v34 = [v32 dataForKey_], v32, v33, v34))
  {
    v49 = sub_257ECCBA0();
    v50 = v35;

    sub_257ECD3F0();

    v36 = sub_257ECDA20();
    v37 = sub_257ECFBD0();

    v38 = os_log_type_enabled(v36, v37);
    v48 = a3;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v30;
      v42 = v40;
      v59[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_257BF1FC8(v41, a3, v59);
      _os_log_impl(&dword_257BAC000, v36, v37, "Decoding published user data for key : %s", v39, 0xCu);
      v43 = __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x259C74820](v42, -1, -1, v43);
      MEMORY[0x259C74820](v39, -1, -1);
    }

    (*(v52 + 8))(v28, v53);
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6760, &qword_257EDD120);
    sub_257C37D2C(&qword_27F8F60B0, sub_257C37CD8, MEMORY[0x277D84F58]);
    v45 = v49;
    v44 = v50;
    sub_257ECC6D0();

    v58 = v59[0];
    sub_257ECC3F0();
    sub_257ECDD20();
    sub_257BF2550(v45, v44);

    a3 = v48;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6760, &qword_257EDD120);
    sub_257ECDD20();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F60A0, &qword_257EDC570);
  sub_257ECDD30();
  v46 = swift_allocObject();
  *(v46 + 16) = v55;
  *(v46 + 24) = a3;
  sub_257BD2D4C(&qword_27F8F60A8, &qword_27F8F6098, &unk_257EDC560, MEMORY[0x277CBCEC8]);
  sub_257ECDE50();

  (*(v10 + 8))(v16, v9);
  if (qword_27F8F4630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  return sub_257BBD88C(v56, v57);
}

uint64_t sub_257C35F98@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6070, &unk_257EDC550);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v49 - v17;
  v53 = sub_257ECDA30();
  v56 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v19, v20, v21, v22);
  v54 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v49 - v29;
  v61 = a1;
  v31 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v32 = sub_257ECF4C0();
  v33 = [v31 initWithSuiteName_];

  v58 = a2;
  if (v33 && (v34 = sub_257ECF4C0(), v55 = a4, v35 = v34, v36 = [v33 dataForKey_], v33, v35, a4 = v55, v36))
  {
    v50 = a5;
    v51 = sub_257ECCBA0();
    v52 = v37;

    sub_257ECD3F0();

    v38 = sub_257ECDA20();
    v39 = sub_257ECFBD0();

    v40 = a3;
    if (os_log_type_enabled(v38, v39))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v60[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_257BF1FC8(v58, a3, v60);
      _os_log_impl(&dword_257BAC000, v38, v39, "Decoding published user data for key : %s", v41, 0xCu);
      v43 = __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x259C74820](v42, -1, -1, v43);
      v44 = v41;
      a4 = v55;
      MEMORY[0x259C74820](v44, -1, -1);
    }

    v49 = *(v56 + 8);
    v49(v30, v53);
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    sub_257C37C24();
    v46 = v51;
    v45 = v52;
    sub_257ECC6D0();

    v59[0] = v60[0];
    sub_257ECDD20();
    sub_257BF2550(v46, v45);
    a5 = v50;
  }

  else
  {
    sub_257ECDD20();
    v40 = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6078, &unk_257EE51A0);
  sub_257ECDD30();
  v47 = swift_allocObject();
  *(v47 + 16) = v58;
  *(v47 + 24) = v40;
  sub_257BD2D4C(&qword_27F8F6080, &qword_27F8F6070, &unk_257EDC550, MEMORY[0x277CBCEC8]);
  sub_257ECDE50();

  (*(v12 + 8))(v18, v11);
  if (qword_27F8F4630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  return sub_257BBD88C(a4, a5);
}

uint64_t sub_257C36554@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6048, &qword_257EDC540);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v49 - v17;
  v53 = sub_257ECDA30();
  v56 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v19, v20, v21, v22);
  v54 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v49 - v29;
  v61 = a1;
  v31 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v32 = sub_257ECF4C0();
  v33 = [v31 initWithSuiteName_];

  v58 = a2;
  if (v33 && (v34 = sub_257ECF4C0(), v55 = a4, v35 = v34, v36 = [v33 dataForKey_], v33, v35, a4 = v55, v36))
  {
    v50 = a5;
    v51 = sub_257ECCBA0();
    v52 = v37;

    sub_257ECD3F0();

    v38 = sub_257ECDA20();
    v39 = sub_257ECFBD0();

    v40 = a3;
    if (os_log_type_enabled(v38, v39))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v60[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_257BF1FC8(v58, a3, v60);
      _os_log_impl(&dword_257BAC000, v38, v39, "Decoding published user data for key : %s", v41, 0xCu);
      v43 = __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x259C74820](v42, -1, -1, v43);
      v44 = v41;
      a4 = v55;
      MEMORY[0x259C74820](v44, -1, -1);
    }

    v49 = *(v56 + 8);
    v49(v30, v53);
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    sub_257C37B40();
    v46 = v51;
    v45 = v52;
    sub_257ECC6D0();

    v59[0] = v60[0];
    sub_257ECDD20();
    sub_257BF2550(v46, v45);
    a5 = v50;
  }

  else
  {
    sub_257ECDD20();
    v40 = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6050, &qword_257EDC548);
  sub_257ECDD30();
  v47 = swift_allocObject();
  *(v47 + 16) = v58;
  *(v47 + 24) = v40;
  sub_257BD2D4C(&qword_27F8F6058, &qword_27F8F6048, &qword_257EDC540, MEMORY[0x277CBCEC8]);
  sub_257ECDE50();

  (*(v12 + 8))(v18, v11);
  if (qword_27F8F4630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  return sub_257BBD88C(a4, a5);
}

uint64_t sub_257C36B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a4;
  v74 = a5;
  v75 = a1;
  v70 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6020, &unk_257EDC530);
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v62 - v13;
  v15 = sub_257ECE1D0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17, v18, v19, v20);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v65 = &v62 - v28;
  v66 = sub_257ECDA30();
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v29, v30, v31, v32);
  v67 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35, v36, v37, v38);
  v40 = &v62 - v39;
  v41 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v42 = sub_257ECF4C0();
  v43 = [v41 initWithSuiteName_];

  v76 = a2;
  if (v43 && (v44 = sub_257ECF4C0(), v69 = a3, v45 = v44, v46 = [v43 dataForKey_], v43, v45, a3 = v69, v46))
  {
    v63 = sub_257ECCBA0();
    v64 = v47;

    sub_257ECD3F0();

    v48 = sub_257ECDA20();
    v49 = sub_257ECFBD0();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = a3;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v77[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_257BF1FC8(v76, v50, v77);
      _os_log_impl(&dword_257BAC000, v48, v49, "Decoding published user data for key : %s", v51, 0xCu);
      v53 = __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x259C74820](v52, -1, -1, v53);
      MEMORY[0x259C74820](v51, -1, -1);
    }

    v62 = *(v68 + 8);
    v62(v40, v66);
    v54 = v65;
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    sub_257C3813C(&qword_27F8F6038, MEMORY[0x277CDFA28], MEMORY[0x277CE7428]);
    v56 = v63;
    v55 = v64;
    sub_257ECC6D0();

    (*(v16 + 16))(v22, v54, v15);
    sub_257ECDD20();
    v57 = sub_257BF2550(v56, v55);
    (*(v16 + 8))(v54, v15, v57);
    v58 = v75;
    a3 = v69;
  }

  else
  {
    v58 = v75;
    (*(v16 + 16))(v22, v75, v15);
    sub_257ECDD20();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6028, &unk_257EE5190);
  sub_257ECDD30();
  v59 = swift_allocObject();
  *(v59 + 16) = v76;
  *(v59 + 24) = a3;
  sub_257BD2D4C(&qword_27F8F6030, &qword_27F8F6020, &unk_257EDC530, MEMORY[0x277CBCEC8]);
  v60 = v72;
  sub_257ECDE50();

  (*(v71 + 8))(v14, v60);
  if (qword_27F8F4630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  sub_257BBD88C(v73, v74);
  return (*(v16 + 8))(v58, v15);
}

double sub_257C37208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_257ECDA30();
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6760, &qword_257EDD120);
  sub_257C37D2C(&qword_27F8F60C0, sub_257C37DA4, MEMORY[0x277D84F40]);
  v8 = sub_257ECC700();
  v10 = v9;

  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_257ECF4C0();
  v13 = [v11 initWithSuiteName_];

  if (!v13)
  {
    return sub_257BF2550(v8, v10);
  }

  v14 = sub_257ECCB90();
  v15 = sub_257ECF4C0();
  [v13 setValue:v14 forKey:v15];
  sub_257BF2550(v8, v10);

  return result;
}

double sub_257C374B4(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = sub_257ECDA30();
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  a4();
  v11 = sub_257ECC700();
  v13 = v12;

  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v15 = sub_257ECF4C0();
  v16 = [v14 initWithSuiteName_];

  if (!v16)
  {
    return sub_257BF2550(v11, v13);
  }

  v17 = sub_257ECCB90();
  v18 = sub_257ECF4C0();
  [v16 setValue:v17 forKey:v18];
  sub_257BF2550(v11, v13);

  return result;
}

double sub_257C37730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_257ECDA30();
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  sub_257ECC720();
  swift_allocObject();
  sub_257ECC710();
  sub_257ECE1D0();
  sub_257C3813C(&qword_27F8F6040, MEMORY[0x277CDFA28], MEMORY[0x277CE7420]);
  v8 = sub_257ECC700();
  v10 = v9;

  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_257ECF4C0();
  v13 = [v11 initWithSuiteName_];

  if (v13)
  {
    v14 = sub_257ECCB90();
    v16 = sub_257ECF4C0();
    [v13 setValue:v14 forKey:v16];
    sub_257BF2550(v8, v10);
  }

  else
  {

    return sub_257BF2550(v8, v10);
  }

  return result;
}

unint64_t sub_257C37A54()
{
  result = qword_27F8F6010;
  if (!qword_27F8F6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6010);
  }

  return result;
}

unint64_t sub_257C37AA8()
{
  result = qword_27F8F6018;
  if (!qword_27F8F6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6018);
  }

  return result;
}

unint64_t sub_257C37B40()
{
  result = qword_27F8F6060;
  if (!qword_27F8F6060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6060);
  }

  return result;
}

unint64_t sub_257C37B94()
{
  result = qword_27F8F6068;
  if (!qword_27F8F6068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6068);
  }

  return result;
}

unint64_t sub_257C37C24()
{
  result = qword_27F8F6088;
  if (!qword_27F8F6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6088);
  }

  return result;
}

unint64_t sub_257C37C78()
{
  result = qword_27F8F6090;
  if (!qword_27F8F6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6090);
  }

  return result;
}

unint64_t sub_257C37CD8()
{
  result = qword_27F8F60B8;
  if (!qword_27F8F60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F60B8);
  }

  return result;
}

uint64_t sub_257C37D2C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F6760, &qword_257EDD120);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257C37DA4()
{
  result = qword_27F8F60C8;
  if (!qword_27F8F60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F60C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_257C37E34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
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

uint64_t sub_257C37E90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_257C37F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MFReaderTextDisplayView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257C37FD4()
{
  result = qword_27F8F6110;
  if (!qword_27F8F6110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60D8, &qword_257EDC700);
    sub_257C3813C(&qword_27F8F6118, type metadata accessor for MFReaderTextDisplayView, &unk_257EF22F8);
    sub_257BD2D4C(&qword_27F8F6120, &qword_27F8F6128, &qword_257EDC770, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6110);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  sub_257BB1464(*(v0 + 32), *(v0 + 40));
  sub_257BB1464(*(v0 + 56), *(v0 + 64));
  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257C3813C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257C38184()
{
  result = qword_27F8F6160;
  if (!qword_27F8F6160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60F8, &qword_257EDC720);
    sub_257C3823C();
    sub_257BD2D4C(&qword_27F8F6178, &qword_27F8F6158, &qword_257EDC788, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6160);
  }

  return result;
}

unint64_t sub_257C3823C()
{
  result = qword_27F8F6168;
  if (!qword_27F8F6168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60F0, &qword_257EDC718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60E0, &qword_257EDC708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60D0, &qword_257EDC6F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60D8, &qword_257EDC700);
    sub_257C37FD4();
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F6140, &qword_27F8F60D0, &qword_257EDC6F8, MEMORY[0x277CDFB18]);
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F6170, &qword_27F8F6148, &qword_257EDC778, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6168);
  }

  return result;
}

unint64_t sub_257C383CC()
{
  result = qword_27F8F6180;
  if (!qword_27F8F6180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6108, &qword_257EDC730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F60F8, &qword_257EDC720);
    sub_257C38184();
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190, &unk_257EDC790, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6180);
  }

  return result;
}

unint64_t sub_257C384C0()
{
  result = qword_27F8F61C8;
  if (!qword_27F8F61C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F61C0, &qword_257EDC7C8);
    sub_257C3854C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F61C8);
  }

  return result;
}

unint64_t sub_257C3854C()
{
  result = qword_27F8F61D0;
  if (!qword_27F8F61D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F61D8, &qword_257EDC7D0);
    sub_257C38604();
    sub_257BD2D4C(&qword_27F8F6120, &qword_27F8F6128, &qword_257EDC770, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F61D0);
  }

  return result;
}

unint64_t sub_257C38604()
{
  result = qword_27F8F61E0;
  if (!qword_27F8F61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F61E0);
  }

  return result;
}

__n128 sub_257C38660@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  MinX = CGRectGetMinX(*&a2);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  v10 = CGRectGetMaxY(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v11 = CGRectGetMaxX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  MinY = CGRectGetMinY(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v13 = CGRectGetMinX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  v14 = CGRectGetMinY(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8, &unk_257EE9AA0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257EDBE50;
  *(v15 + 32) = MinX;
  *(v15 + 40) = MaxY;
  *(v15 + 48) = 0;
  *(v15 + 56) = MaxX;
  *(v15 + 64) = v10;
  *(v15 + 72) = 1;
  *(v15 + 80) = v11;
  *(v15 + 88) = MinY;
  *(v15 + 96) = 2;
  *(v15 + 104) = v13;
  *(v15 + 112) = v14;
  *(v15 + 120) = 3;
  sub_257C38808(v15, v16);
  v18 = v17;

  *a1 = v18;
  result = xmmword_257EDC820;
  *(a1 + 8) = xmmword_257EDC820;
  return result;
}

void sub_257C38808(uint64_t a1, uint64_t a2)
{
  v36 = *v2;

  sub_257C39484(&v36);
  v3 = *(v36 + 2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v3 == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v3 < 3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v3 == 3)
  {
LABEL_33:
    __break(1u);

    __break(1u);
    return;
  }

  v4 = v36 + 32;
  v5 = *(v36 + 5);
  v6 = *(v36 + 8);
  v7 = *(v36 + 11);
  v8 = *(v36 + 14);
  v9 = 72;
  if (v8 >= v7)
  {
    v10 = 72;
  }

  else
  {
    v10 = 48;
  }

  if (v8 >= v7)
  {
    v9 = 48;
  }

  v11 = &v4[24 * (v5 >= v6)];
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = *(v11 + 2);
  v15 = *&v4[v9];
  v16 = *&v4[v9 + 16];
  v17 = *&v4[v10];
  v18 = *&v4[v10 + 16];
  v19 = &v4[24 * (v5 < v6)];
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = *(v19 + 2);
  if (v17.f64[1] < v13)
  {
    v23 = vmovn_s64(vcgtq_f64(v15, v17));
    v24 = vdup_lane_s32(v23, 0);
    if (v23.i8[0])
    {
      v25 = v16;
    }

    else
    {
      v25 = v18;
    }

    if (v23.i8[0])
    {
      v16 = v18;
    }

    v26.i64[0] = v24.i32[0];
    v26.i64[1] = v24.i32[1];
    v27 = vbslq_s8(v26, v17, v15);
    v17 = vbslq_s8(v26, v15, v17);
    v18 = v25;
    v15 = v27;
  }

  v34 = v17;
  v35 = v15;
  v28 = sub_257C39DEC(v12, v13, v15.f64[0], v15.f64[1], v20, v21, v17.f64[0], v17.f64[1]);

  if (v28)
  {
    v29 = v20;
  }

  else
  {
    v29 = v12;
  }

  if (v28)
  {
    v30 = v21;
  }

  else
  {
    v30 = v13;
  }

  if (v28)
  {
    v31 = v22;
  }

  else
  {
    v31 = v14;
  }

  if (v28)
  {
    v32 = v14;
  }

  else
  {
    v12 = v20;
    v13 = v21;
    v32 = v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8, &unk_257EE9AA0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_257EDBE50;
  *(v33 + 32) = v12;
  *(v33 + 40) = v13;
  *(v33 + 48) = v32;
  *(v33 + 56) = v34;
  *(v33 + 72) = v18;
  *(v33 + 80) = v35;
  *(v33 + 96) = v16;
  *(v33 + 104) = v29;
  *(v33 + 112) = v30;
  *(v33 + 120) = v31;
}

uint64_t sub_257C389F8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_257BF2804(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v6 = *v4;
      v10 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        v8 = *v4;
        sub_257BF2804((v7 > 1), v5 + 1, 1);
        v6 = v8;
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 16 * v5 + 32) = v6;
      v4 = (v4 + 24);
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_257C38AC4()
{
  Mutable = CGPathCreateMutable();
  if (*(sub_257C389F8() + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {

    sub_257ECFC50();
    v1 = sub_257C389F8();
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v1 + 40;
      do
      {
        sub_257ECFC60();
        v3 += 16;
        --v2;
      }

      while (v2);
    }

    CGPathGetBoundingBox(Mutable);
  }
}

uint64_t sub_257C38BD4(unint64_t a1, double a2, double a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a1;
    v5 = *v4;
    if (*(*v4 + 2) > a1)
    {
      v6 = a3;
      v7 = a2;
      v10 = &v5[3 * a1];
      v8 = *(v10 + 4);
      v9 = *(v10 + 5);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  result = sub_257C7DF00(v5);
  v5 = result;
LABEL_4:
  v12 = &v5[3 * v3];
  v12[4] = v7;
  v12[5] = v6;
  v13 = v12 + 4;
  *v4 = v5;
  v14 = *(v5 + 2);
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v14 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14 < 3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v14 == 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v9;
  v24 = v8;
  v15 = v5[4];
  v16 = v5[5];
  v17 = v5[7];
  v18 = v5[8];
  v19 = v5[10];
  v20 = v5[11];
  v21 = v5[13];
  v22 = v5[14];
  result = sub_257C39DEC(v21, v22, v19, v20, v15, v16, v17, v18);
  if (result & 1) != 0 || (result = sub_257C39DEC(v19, v20, v17, v18, v21, v22, v15, v16), (result))
  {
    if (v14 > v3)
    {
      *v13 = v24;
      v13[1] = v23;
      *v4 = v5;
      return result;
    }

LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_257C38D30(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if (*(v2 + 8) <= 0.0 || *(v2 + 16) <= 0.0)
  {
    return v3 & 1;
  }

  v45 = *(v2 + 16);
  v46 = *(v2 + 8);
  result = sub_257C38F94(a1, a2);
  v5 = *(result + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 != 3)
  {
    v6 = *(result + 32);
    v7 = *(result + 40);
    v8 = *(result + 48);
    v9 = *(result + 56);
    v11 = *(result + 64);
    v10 = *(result + 72);
    v12 = *(result + 80);
    v13 = *(result + 88);

    v14 = v12;
    v15 = v12 - v11;
    v39 = v7;
    v40 = v14;
    v37 = v6;
    v16 = v7 * v15 + (v11 - v6) * v13;
    v17 = v6 - v14;
    v18 = v14;
    v42 = v17;
    v43 = v7 - v13;
    v44 = atan((v10 * v17 + v16) / (v17 * v15 + (v7 - v13) * (v13 - v10)));
    v19 = v8;
    v20 = v11 - v8;
    v21 = v19 - v18;
    v22 = v19;
    v36 = v19;
    v41 = atan((v9 * v15 + v20 * v13 + v10 * v21) / (v20 * v15 + (v10 - v9) * (v13 - v10)));
    v23 = v22 - v37;
    v38 = atan((v39 * v20 + (v22 - v37) * v10 + v9 * (v37 - v11)) / ((v9 - v39) * (v10 - v9) + (v22 - v37) * v20));
    v24 = atan((v23 * v13 + v9 * v42 + v39 * (v40 - v36)) / (v23 * v42 + (v9 - v39) * v43));
    v25.f64[0] = v38;
    v25.f64[1] = v24;
    v26.f64[0] = v44;
    v26.f64[1] = v41;
    v27 = vdupq_n_s64(0x4066800000000000uLL);
    v28 = vdupq_n_s64(0x400921FB54442D18uLL);
    v29 = vdivq_f64(vmulq_f64(v25, v27), v28);
    v30 = vdivq_f64(vmulq_f64(v26, v27), v28);
    v31 = vaddq_f64(v30, v27);
    v32 = vbslq_s8(vcltzq_f64(v29), vaddq_f64(v29, v27), v29);
    v33 = vdupq_lane_s64(v45, 0);
    v34 = vdupq_lane_s64(v46, 0);
    v35 = vbslq_s8(vcltzq_f64(v30), v31, v30);
    v3 = vminv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v34, v35), vcgtq_f64(v34, v32)), vuzp1q_s32(vcgtq_f64(v35, v33), vcgtq_f64(v32, v33))))));
    return v3 & 1;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_257C38F94(uint64_t a1, uint64_t a2)
{
  sub_257C38808(a1, a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    v4 = v2;
    sub_257BF2804(0, v3, 0);
    v5 = v4;
    v6 = v13;
    v7 = *(v13 + 16);
    v8 = 32;
    do
    {
      v9 = *(v5 + v8);
      v10 = *(v13 + 24);
      if (v7 >= v10 >> 1)
      {
        v12 = *(v5 + v8);
        sub_257BF2804((v10 > 1), v7 + 1, 1);
        v9 = v12;
        v5 = v4;
      }

      *(v13 + 16) = v7 + 1;
      *(v13 + 16 * v7 + 32) = v9;
      v8 += 24;
      ++v7;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}

double static MAGMatrixUtils.caPerspectiveTransformationMatrix(source:dest:)@<D0>(_OWORD *a1@<X8>, uint64_t *a2@<X0>, uint64_t *a3@<X1>)
{
  sub_257C3A284(a2, a3, v9);
  v4 = v13;
  a1[4] = v12;
  a1[5] = v4;
  v5 = v15;
  a1[6] = v14;
  a1[7] = v5;
  v6 = v9[1];
  *a1 = v9[0];
  a1[1] = v6;
  result = *&v10;
  v8 = v11;
  a1[2] = v10;
  a1[3] = v8;
  return result;
}

void sub_257C390E8(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = sub_257ECF4C0();
  v7 = [objc_opt_self() filterWithName_];

  if (!v7)
  {
    goto LABEL_20;
  }

  *&v26 = v3;
  *(&v26 + 1) = v4;
  *&v27 = v5;
  v10 = sub_257C38F94(v8, v9);
  if (!*(v10 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithCGPoint_];
  v13 = sub_257ECF4C0();
  [v7 setValue:v12 forKey:v13];

  if (*(v11 + 16) < 2uLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithCGPoint_];
  v15 = sub_257ECF4C0();
  [v7 setValue:v14 forKey:v15];

  if (*(v11 + 16) >= 3uLL)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithCGPoint_];
    v17 = sub_257ECF4C0();
    [v7 setValue:v16 forKey:v17];

    if (*(v11 + 16) >= 4uLL)
    {
      v18 = *(v11 + 80);
      v19 = *(v11 + 88);

      v20 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithCGPoint_];
      v21 = sub_257ECF4C0();
      [v7 setValue:v20 forKey:v21];

      [v7 setValue:v2 forKey:*MEMORY[0x277CBFAF0]];
      if ([v7 valueForKey_])
      {
        sub_257ED0160();
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
      }

      v26 = v24;
      v27 = v25;
      if (*(&v25 + 1))
      {
        sub_257C3A4CC();
        if (swift_dynamicCast())
        {
          if (v28)
          {
            v22 = v28;
            [v22 extent];
            v30 = CGRectInset(v29, 1.0, 1.0);
            v23 = [v22 imageByCroppingToRect_];

            v7 = v28;
            v28 = v23;
          }

          goto LABEL_15;
        }
      }

      else
      {
        sub_257C3A464(&v26);
      }

      v28 = 0;
LABEL_15:

      return;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_257C39484(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C6718C(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  v4 = sub_257ED05F0();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *(v13 + 3);
          v15 = *(v13 + 4);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 1) = v11;
          *v13 = v14;
          *(v13 + 1) = v15;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v17[0] = (v7 + 32);
    v17[1] = v6;
    sub_257C395E4(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_257C395E4(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_257C66E20(v7);
    }

    v85 = v7 + 16;
    v86 = *(v7 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_257C39BB0((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v13 = *v11;
      v12 = v11 + 6;
      v14 = v13;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v12;
        v12 += 3;
        v18 = v17 >= v16;
        ++v15;
        v16 = v17;
        if ((((v9 < v14) ^ v18) & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_257BFCB00(0, *(v7 + 2) + 1, 1, v7);
    }

    v38 = *(v7 + 2);
    v37 = *(v7 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v7 = sub_257BFCB00((v37 > 1), v38 + 1, 1, v7);
    }

    *(v7 + 2) = v39;
    v40 = v7 + 32;
    v41 = &v7[16 * v38 + 32];
    *v41 = v8;
    *(v41 + 1) = v6;
    v94 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 4);
          v44 = *(v7 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[16 * v42];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[16 * v42 - 16];
        v81 = *v80;
        v82 = &v40[16 * v42];
        v83 = *(v82 + 1);
        sub_257C39BB0((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = *(v7 + 2);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        memmove(&v40[16 * v42], v82 + 16, 16 * (v84 - 1 - v42));
        *(v7 + 2) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[16 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[16 * v42];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    v35 = *(v33 + 40);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_257C39BB0(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 3;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 3, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_257C39DEC(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = (a4 - a2) * (a5 - a3);
  v9 = (a3 - a1) * (a6 - a4);
  v10 = v8 - v9;
  v11 = vabdd_f64(v8, v9);
  v12 = v10 <= 0.0;
  v13 = (a4 - a2) * (a7 - a3);
  v14 = (a3 - a1) * (a8 - a4);
  v15 = v13 - v14;
  v16 = vabdd_f64(v13, v14);
  v17 = (a1 - a7) * (a8 - a6);
  v18 = (a7 - a5) * (a2 - a8);
  v19 = v17 - v18;
  v20 = vabdd_f64(v17, v18);
  v21 = v19 <= 0.0;
  if (v11 < 0.0000001)
  {
    v12 = 2;
  }

  if (v12 == 1)
  {
    if (v16 < 0.0000001 || v15 <= 0.0)
    {
      goto LABEL_19;
    }
  }

  else if (v12 || v16 < 0.0000001 || v15 > 0.0)
  {
    goto LABEL_19;
  }

  v22 = (a3 - a7) * (a8 - a6);
  v23 = (a7 - a5) * (a4 - a8);
  v24 = v22 - v23;
  v25 = vabdd_f64(v22, v23);
  if (v20 < 0.0000001)
  {
    v21 = 2;
  }

  if (v21 == 1)
  {
    if (v25 >= 0.0000001 && v24 > 0.0)
    {
      return 1;
    }
  }

  else if (!v21 && v25 >= 0.0000001 && v24 <= 0.0)
  {
    return 1;
  }

LABEL_19:
  if (v11 >= 0.0000001)
  {
    goto LABEL_51;
  }

  v26 = a1 > a3 ? a1 : a3;
  if (v26 < a5)
  {
    goto LABEL_51;
  }

  if (a3 >= a1)
  {
    a3 = a1;
  }

  if (a3 > a5 || (a2 > a4 ? (v27 = a2) : (v27 = a4), v27 < a6 || (a4 >= a2 ? (v28 = a2) : (v28 = a4), v28 > a6)))
  {
LABEL_51:
    if (v20 >= 0.0000001)
    {
      return 0;
    }

    v29 = a5 > a7 ? a5 : a7;
    if (v29 < a1)
    {
      return 0;
    }

    v30 = a7 >= a5 ? a5 : a7;
    if (v30 > a1)
    {
      return 0;
    }

    v31 = a6 > a8 ? a6 : a8;
    if (v31 < a2)
    {
      return 0;
    }

    v32 = a8 >= a6 ? a6 : a8;
    if (v32 > a2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_257C39F8C@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2 < 2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 == 2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 < 4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v3.f64[0] = *(result + 48);
  v4 = *(result + 56);
  v6.f64[0] = *(result + 64);
  v5 = *(result + 72);
  v7 = *(result + 80);
  v8 = *(result + 32);
  v9 = v6.f64[0] + v8.f64[0] - v3.f64[0] - v7.f64[0];
  v10 = *(result + 88);
  v11 = v5 + *(result + 40) - v4 - v10;
  if (v9 == 0.0 && v11 == 0.0)
  {
    v3.f64[1] = *(result + 56);
    v12 = vsubq_f64(v3, v8);
    v6.f64[1] = *(result + 72);
    v13 = vsubq_f64(v6, v3);
    v14 = 0.0;
    v15 = 0.0;
  }

  else
  {
    v16 = v3.f64[0] - v6.f64[0];
    v17 = v4 - v5;
    v18 = v9;
    v19 = v11;
    v20 = v7.f64[0] - v6.f64[0];
    v21 = v10 - v5;
    v22 = (v18 * v21) - (v19 * v20);
    *&v16 = v16;
    *&v17 = v17;
    v23 = (*&v16 * v21) - (*&v17 * v20);
    v15 = v22 / v23;
    v24 = (v22 / v23);
    v14 = ((*&v16 * v19) - (*&v17 * v18)) / v23;
    v3.f64[1] = *(result + 56);
    v12 = vaddq_f64(vsubq_f64(v3, v8), vmulq_n_f64(v3, v24));
    v13 = vaddq_f64(vsubq_f64(v7, v8), vmulq_n_f64(v7, v14));
  }

  *&v25 = vcvt_f32_f64(v12);
  *(&v25 + 1) = __PAIR64__(v25, LODWORD(v15));
  *&v26 = vcvt_f32_f64(v8);
  *&v27 = vcvt_f32_f64(v13);
  *(&v27 + 1) = __PAIR64__(v27, LODWORD(v14));
  __asm { FMOV            V1.2S, #1.0 }

  *(&v26 + 1) = _D1;
  *a2 = v25;
  a2[1] = v27;
  a2[2] = v26;
  return result;
}

void sub_257C3A0B0(uint64_t a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  v4 = sub_257C38F94(a1, a2);
  v6 = sub_257C38F94(v4, v5);
  sub_257C39F8C(v4, v17);
  v15 = v17[1];
  v16 = v17[0];
  v13 = v17[2];

  v7.columns[2] = v13;
  v7.columns[1] = v15;
  v7.columns[0] = v16;
  v8 = vmulq_f32(v16, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v7.columns[2], v7.columns[2], 0xCuLL), v13, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v7.columns[1], v7.columns[1]), v15, 0xCuLL))), vextq_s8(vuzp1q_s32(v7.columns[2], v7.columns[2]), v13, 0xCuLL), vextq_s8(vextq_s8(v7.columns[1], v7.columns[1], 0xCuLL), v15, 8uLL)));
  if (fabsf(v8.f32[2] + vaddv_f32(*v8.f32)) >= 0.01)
  {
    v14 = __invert_f3(v7);
    sub_257C39F8C(v6, v18);
    v10 = v18[0];
    v11 = v18[1];
    v12 = v18[2];

    *a3 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v14.columns[0].f32[0]), v11, *v14.columns[0].f32, 1), v12, v14.columns[0], 2);
    a3[1] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v14.columns[1].f32[0]), v11, *v14.columns[1].f32, 1), v12, v14.columns[1], 2);
    a3[2] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v14.columns[2].f32[0]), v11, *v14.columns[2].f32, 1), v12, v14.columns[2], 2);
  }

  else
  {

    sub_257BEBEF0();
    swift_allocError();
    *v9 = 0xD000000000000027;
    *(v9 + 8) = 0x8000000257EFA810;
    *(v9 + 16) = 0;
    *(v9 + 24) = 2;
    swift_willThrow();
  }
}

__n128 sub_257C3A284@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = MEMORY[0x277CD9DE8];
  v6 = *(MEMORY[0x277CD9DE8] + 16);
  v7 = *(MEMORY[0x277CD9DE8] + 48);
  v8 = *(MEMORY[0x277CD9DE8] + 112);
  v18 = *a1;
  v19 = *(a1 + 1);
  v16 = v4;
  v17 = *(a2 + 1);
  sub_257C3A0B0(&v18, &v16, &v20);
  v9 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), v21));
  v10 = *&v21.i32[1];
  v11 = v22;
  v12 = vcvtq_f64_f32(v23);
  v13 = v24;
  *a3 = vcvtq_f64_f32(*v20.i8);
  *(a3 + 16) = v6;
  *(a3 + 24) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v7;
  *(a3 + 56) = v11;
  result = *(v5 + 64);
  v15 = *(v5 + 80);
  *(a3 + 64) = result;
  *(a3 + 80) = v15;
  *(a3 + 96) = v12;
  *(a3 + 112) = v8;
  *(a3 + 120) = v13;
  return result;
}

uint64_t sub_257C3A3A4(uint64_t *a1, int a2)
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

uint64_t sub_257C3A3EC(uint64_t result, int a2, int a3)
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

uint64_t sub_257C3A464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F62F0, &unk_257ED9D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257C3A4CC()
{
  result = qword_27F8F6230;
  if (!qword_27F8F6230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F6230);
  }

  return result;
}

id sub_257C3A518()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.15 alpha:1.0];
  qword_27F912F00 = result;
  return result;
}

id sub_257C3A55C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___label);
  }

  else
  {
    v4 = sub_257C3AF7C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257C3A5C0(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_257C3A620()
{
  type metadata accessor for CameraTrayUIButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v0 setContentMode_];
  if (sub_257ECF030())
  {
    if (qword_27F8F45C0 != -1)
    {
      swift_once();
    }

    v1 = qword_27F912F00;
  }

  else
  {
    v1 = [objc_opt_self() blackColor];
  }

  v2 = v1;
  [v0 setBackgroundColor_];

  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 whiteColor];
  [v4 setTintColor_];

  v6 = [v4 layer];
  [v6 setCornerRadius_];

  v7 = [v4 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v7 setCornerCurve_];

  v8 = [v4 layer];
  [v8 setMasksToBounds_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = sub_257DE0C7C();
  [v4 setImage:v9 forState:0];

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = v4;
  v13 = [v11 bundleForClass_];
  v14 = sub_257ECF4C0();
  v15 = sub_257ECF4C0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  if (!v16)
  {
    sub_257ECF500();
    v16 = sub_257ECF4C0();
  }

  [v12 setAccessibilityLabel_];

  v17 = sub_257ECF4C0();
  [v12 setAccessibilityIdentifier_];

  [v12 setShowsLargeContentViewer_];
  v18 = [v11 bundleForClass_];
  v19 = sub_257ECF4C0();
  v20 = sub_257ECF4C0();
  v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

  if (!v21)
  {
    sub_257ECF500();
    v21 = sub_257ECF4C0();
  }

  [v12 setLargeContentTitle_];

  v22 = sub_257DE0C7C();
  [v12 setLargeContentImage_];

  v23 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v12 addInteraction_];

  return v12;
}

id sub_257C3AAD0()
{
  type metadata accessor for CameraTrayUIButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v0 setContentMode_];
  if (sub_257ECF030())
  {
    if (qword_27F8F45C0 != -1)
    {
      swift_once();
    }

    v1 = qword_27F912F00;
  }

  else
  {
    v1 = [objc_opt_self() blackColor];
  }

  v2 = v1;
  [v0 setBackgroundColor_];

  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 whiteColor];
  [v4 setTintColor_];

  v6 = [v4 layer];
  [v6 setCornerRadius_];

  v7 = [v4 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v7 setCornerCurve_];

  v8 = [v4 layer];
  [v8 setMasksToBounds_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = sub_257DE0CA0();
  [v4 setImage:v9 forState:0];

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = v4;
  v13 = [v11 bundleForClass_];
  v14 = sub_257ECF4C0();
  v15 = sub_257ECF4C0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  if (!v16)
  {
    sub_257ECF500();
    v16 = sub_257ECF4C0();
  }

  [v12 setAccessibilityLabel_];

  v17 = sub_257ECF4C0();
  [v12 setAccessibilityIdentifier_];

  [v12 setShowsLargeContentViewer_];
  v18 = [v11 bundleForClass_];
  v19 = sub_257ECF4C0();
  v20 = sub_257ECF4C0();
  v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

  if (!v21)
  {
    sub_257ECF500();
    v21 = sub_257ECF4C0();
  }

  [v12 setLargeContentTitle_];

  v22 = sub_257DE0CA0();
  [v12 setLargeContentImage_];

  v23 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v12 addInteraction_];

  return v12;
}

id sub_257C3AF7C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 userInterfaceLayoutDirection] == 1;

  [v0 setTextAlignment_];
  v3 = v0;
  [v3 setAlpha_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];

  v5 = [objc_opt_self() grayColor];
  [v3 setTextColor_];

  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setNumberOfLines_];
  v6 = [objc_opt_self() _preferredFontForTextStyle_maximumContentSizeCategory_];
  [v3 setFont_];

  [v3 setUserInteractionEnabled_];
  sub_257D14A40([v3 setShowsLargeContentViewer_]);
  v7 = sub_257ECF4C0();

  [v3 setLargeContentTitle_];

  v8 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v3 addInteraction_];

  return v3;
}

id sub_257C3B1C4()
{
  v1 = v0;
  v2 = sub_257ECDAD0();
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v7 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___backdropView;
  v8 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___backdropView);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___backdropView);
  }

  else
  {
    sub_257ECDAC0();
    v10 = objc_allocWithZone(sub_257ECDB00());
    v11 = sub_257ECDAE0();
    [v11 _setCornerRadius_];
    v12 = *(v1 + v7);
    *(v1 + v7) = v11;
    v9 = v11;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

id sub_257C3B2A8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___opaqueView;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___opaqueView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___opaqueView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    if (qword_281544A78 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor_];
    v5 = [v4 layer];
    [v5 setCornerRadius_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_257C3B39C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_config);
    v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_config + 8);
    v6 = objc_allocWithZone(type metadata accessor for RoundButton());
    v7 = v5;
    v8 = v0;
    v9 = sub_257D47B08(v4, v7);
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 clearColor];
    [v11 setBackgroundColor_];

    v13 = *(v8 + v1);
    *(v8 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void sub_257C3B480()
{
  v1 = sub_257C3A55C();
  v2 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2) == 1)
  {
    v3 = 1.0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed))
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  v4 = sub_257C3A5C0(&OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton, sub_257C3A620);
  v5 = v4;
  if (*(v0 + v2))
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [v4 setAlpha_];

  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton) setUserInteractionEnabled_];
  v7 = sub_257C3A5C0(&OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___followUpButton, sub_257C3AAD0);
  v8 = v7;
  if (*(v0 + v2))
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  [v7 setAlpha_];

  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___followUpButton) setUserInteractionEnabled_];
  sub_257C3B5D8();
}

void sub_257C3B5D8()
{
  v1 = v0;
  v2 = sub_257C3B39C();
  v3 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_257ECF500();
  v8 = sub_257ECF4C0();

  [v2 setAccessibilityHint_];

  v9 = v1 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 16))(ObjectType, v10);
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_6;
    }

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = 0;
LABEL_6:
    v13 = *(v9 + 8);
    v14 = swift_getObjectType();
    v15 = (*(v13 + 24))(v1, &off_286909108, v14, v13);
    swift_unknownObjectRelease();
    if (v12 & 1) == 0 && ((*(v1 + v3) & 1) == 0 || (v15))
    {
      goto LABEL_13;
    }

LABEL_12:
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton) setAccessibilityHint_];
    goto LABEL_16;
  }

  if (*(v1 + v3))
  {
    goto LABEL_12;
  }

LABEL_13:
  v16 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 bundleForClass_];
  v20 = sub_257ECF4C0();
  v21 = sub_257ECF4C0();
  v22 = [v19 &selRef:v20 reloadSections:0 withRowAnimation:v21 + 4];

  if (!v22)
  {
    sub_257ECF500();
    v22 = sub_257ECF4C0();
  }

  [v18 setAccessibilityHint_];

LABEL_16:
  v23 = *(v1 + v3);
  v24 = *MEMORY[0x277D76598];
  v25 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton);
  v26 = [v25 accessibilityTraits];
  if (v23)
  {
    v27 = v26 | v24;
  }

  else
  {
    v27 = v26 & ~v24;
  }

  [v25 setAccessibilityTraits_];
}

void sub_257C3BA24()
{
  v1 = sub_257C3A55C();
  v2 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2) == 1)
  {
    v3 = 1.0;
    if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed))
    {
      v3 = 0.25;
    }
  }

  [v1 setAlpha_];

  sub_257C3BB3C();
  v4 = sub_257C3A5C0(&OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton, sub_257C3A620);
  v5 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed;
  [v4 setUserInteractionEnabled_];

  v6 = sub_257C3A5C0(&OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___followUpButton, sub_257C3AAD0);
  [v6 setUserInteractionEnabled_];
}

void sub_257C3BB3C()
{
  if (v0[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed] == 1)
  {
    v1 = [objc_opt_self() whiteColor];
    v2 = [v0 traitCollection];
    v6 = sub_257C1C83C(v1, v2);
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isGlowing];
    v4 = objc_opt_self();
    if (v3 == 1)
    {
      v5 = [v4 systemYellowColor];
    }

    else
    {
      v5 = [v4 whiteColor];
    }

    v6 = v5;
  }

  [v0 setTintColor_];
}

uint64_t sub_257C3BC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257C3B39C();
  sub_257C3D6F8(a1, v19);
  v8 = v20;
  if (v20)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v10 = *(v8 - 8);
    v14 = MEMORY[0x28223BE20](v9, v9, v11, v12, v13);
    v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v16, v14);
    v17 = sub_257ED0630();
    (*(v10 + 8))(v16, v8);
    v7 = __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v17 = 0;
  }

  [v6 addTarget:v17 action:a2 forControlEvents:{a3, v7}];

  return swift_unknownObjectRelease();
}

void sub_257C3BE6C()
{
  v1 = v0;
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_config];
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_config];
  v4 = *(v2 + 1);
  v5 = *(v4 + 24);
  v6 = v5(v3, v4);
  v7 = v5(v3, v4);
  [v1 bounds];
  v9 = v8;
  v10 = *(v4 + 40);
  v11 = v10(v3, v4);
  v12 = v10(v3, v4);
  v13 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  if (v1[v13])
  {
    v14 = (v9 - v11) * 0.5;
    v15 = sub_257CA9B90();
    v16 = sub_257CA9B88();
    [v1 bounds];
    v18 = v17 - (v6 + v6) - v15 - v16;
    v43.origin.x = 0.0;
    v43.origin.y = 0.0;
    v43.size.width = v6;
    v43.size.height = v7;
    v19 = v15 + CGRectGetMaxX(v43);
  }

  else
  {
    v12 = v7;
    v18 = v6;
    v14 = 0.0;
    v19 = 0.0;
  }

  v20 = sub_257C3B39C();
  [v20 setFrame_];

  v21 = sub_257C3A55C();
  [v21 setFrame_];

  v22 = sub_257C3B1C4();
  [v1 frame];
  [v1 frame];
  [v1 frame];
  CGRectGetWidth(v44);
  [v1 frame];
  CGRectGetHeight(v45);
  CGSizeMake();
  [v22 setFrame_];

  v23 = sub_257C3B2A8();
  [v1 frame];
  [v23 setFrame_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_257EDBE40;
  v25 = sub_257C3A5C0(&OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton, sub_257C3A620);
  v26 = [v25 trailingAnchor];

  v27 = [v1 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-5.0];

  *(v24 + 32) = v28;
  v29 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton;
  v30 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton] centerYAnchor];
  v31 = [v1 centerYAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v24 + 40) = v32;
  v33 = [*&v1[v29] widthAnchor];
  v34 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton;
  v35 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton] widthAnchor];
  v36 = [v33 constraintEqualToAnchor:v35 constant:-10.0];

  *(v24 + 48) = v36;
  v37 = [*&v1[v29] heightAnchor];
  v38 = [*&v1[v34] widthAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-10.0];

  *(v24 + 56) = v39;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_buttonConstraints] = v24;

  v40 = objc_opt_self();
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);

  v41 = sub_257ECF7F0();

  [v40 activateConstraints_];
}

uint64_t sub_257C3C5D8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_257C3C61C(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_257C3B480();
}

void (*sub_257C3C670(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_257C3C6D4;
}

void sub_257C3C6D4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_257C3B480();
  }
}

uint64_t sub_257C3C740(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_257C3C78C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257C3B39C();
  return v0;
}

void sub_257C3C858(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction;
  v13 = *&v2[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction];
  if (v13)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
    v14 = v13;
    v15 = a1;
    v16 = sub_257ECFF50();

    if (v16)
    {
      v17 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
      swift_beginAccess();
      v18 = v2[v17];
      sub_257ECD350();
      v19 = v2;
      v20 = sub_257ECDA20();
      v21 = sub_257ECFBD0();
      if (os_log_type_enabled(v20, v21))
      {
        v31 = v19;
        v22 = v18 ^ 1;
        v23 = swift_slowAlloc();
        v30 = v18;
        v24 = v23;
        *v23 = 67109632;
        *(v23 + 4) = v22;
        v19 = v31;
        *(v23 + 8) = 1024;
        *(v23 + 10) = v2[v17];
        *(v23 + 14) = 1024;
        *(v23 + 16) = *(&v19->isa + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v20, v21, "should begin: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v24, 0x14u);
        v25 = v24;
        v18 = v30;
        MEMORY[0x259C74820](v25, -1, -1);
      }

      else
      {

        v20 = v19;
      }

      (*(v5 + 8))(v11, v4);
      if (v18)
      {
        v26 = *&v2[v12];
        if (v26)
        {
          [v26 cancelInteraction];
          v27 = *&v2[v12];
          if (v27)
          {
            v28 = v27;
            sub_257C3D540(1);

            if (*&v2[v12])
            {
              [v19 removeInteraction:?];
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

void sub_257C3CB3C(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v31 - v17;
  v19 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction;
  v20 = *&v2[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction];
  if (v20)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
    v21 = v20;
    v22 = a1;
    v23 = sub_257ECFF50();

    if (v23)
    {
      if ((v2[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed] & 1) == 0)
      {
        sub_257ECD350();
        v27 = sub_257ECDA20();
        v30 = sub_257ECFBD0();
        if (!os_log_type_enabled(v27, v30))
        {
          goto LABEL_15;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_257BAC000, v27, v30, "will present", v29, 2u);
        goto LABEL_12;
      }

      v24 = *&v2[v19];
      if (v24)
      {
        [v24 cancelInteraction];
        v25 = *&v2[v19];
        if (v25)
        {
          v26 = v25;
          sub_257C3D540(1);

          if (*&v2[v19])
          {
            [v2 removeInteraction_];
            sub_257ECD350();
            v27 = sub_257ECDA20();
            v28 = sub_257ECFBD0();
            if (!os_log_type_enabled(v27, v28))
            {
              v18 = v11;
              goto LABEL_15;
            }

            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_257BAC000, v27, v28, "will not present", v29, 2u);
            v18 = v11;
LABEL_12:
            MEMORY[0x259C74820](v29, -1, -1);
LABEL_15:

            (*(v5 + 8))(v18, v4);
            return;
          }

          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }
}

id sub_257C3CEBC(void *a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_257ECDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *&v4[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction];
  if (!v14)
  {
    return 0;
  }

  sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
  v15 = v14;
  v16 = a1;
  v17 = sub_257ECFF50();

  if ((v17 & 1) == 0)
  {
    return 0;
  }

  sub_257ECD350();
  v18 = v4;
  v19 = sub_257ECDA20();
  v20 = sub_257ECFBD0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315650;
    v23 = sub_257ECFEC0();
    v25 = sub_257BF1FC8(v23, v24, &v31);

    *(v21 + 4) = v25;
    *(v21 + 12) = 1024;
    v26 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
    swift_beginAccess();
    LODWORD(v26) = v18[v26];

    *(v21 + 14) = v26;
    *(v21 + 18) = 1024;
    v27 = v18[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed];

    *(v21 + 20) = v27;
    _os_log_impl(&dword_257BAC000, v19, v20, "location: %s, expanded: %{BOOL}d, dimmed: %{BOOL}d", v21, 0x18u);
    v28 = __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x259C74820](v22, -1, -1, v28);
    MEMORY[0x259C74820](v21, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v13, v6);
  return [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
}

void sub_257C3D1F0()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isOn) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isFollowUpGlowing) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_glowSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_textSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_followUpSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_expandsWithClickInteractionOnly) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_buttonConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___microphoneButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___followUpButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___backdropView) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___opaqueView) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton____lazy_storage___internalButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257C3D338(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v2[OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_clickInteraction];
  if (v12)
  {
    sub_257BD2C2C(0, &qword_27F8F62E0, 0x277D75E40);
    v13 = v12;
    v14 = a1;
    v15 = sub_257ECFF50();

    if (v15)
    {
      sub_257ECD350();
      v16 = v2;
      v17 = sub_257ECDA20();
      v18 = sub_257ECFBD0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 67109376;
        v20 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
        swift_beginAccess();
        *(v19 + 4) = *(&v16->isa + v20);
        *(v19 + 8) = 1024;
        *(v19 + 10) = *(&v16->isa + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v17, v18, "expanded: %{BOOL}d, dimmed: %{BOOL}d", v19, 0xEu);
        MEMORY[0x259C74820](v19, -1, -1);
      }

      else
      {

        v17 = v16;
      }

      (*(v5 + 8))(v11, v4);
    }
  }

  return 0;
}

uint64_t sub_257C3D540(char a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v11 = v1;
  v12 = sub_257ECDA20();
  v13 = sub_257ECFBD0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109632;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 1024;
    v15 = OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isExpanded;
    swift_beginAccess();
    *(v14 + 10) = *(&v11->isa + v15);
    *(v14 + 14) = 1024;
    *(v14 + 16) = *(&v11->isa + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_isDimmed);

    _os_log_impl(&dword_257BAC000, v12, v13, "was cancelled: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v14, 0x14u);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_257C3D6F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F62F0, &unk_257ED9D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_257C3D7D8(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction;
  v13 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction];
  if (v13)
  {
    sub_257C3E170();
    v14 = v13;
    v15 = a1;
    v16 = sub_257ECFF50();

    if (v16)
    {
      v17 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
      swift_beginAccess();
      v18 = v2[v17];
      sub_257ECD350();
      v19 = v2;
      v20 = sub_257ECDA20();
      v21 = sub_257ECFBD0();
      if (os_log_type_enabled(v20, v21))
      {
        v31 = v19;
        v22 = v18 ^ 1;
        v23 = swift_slowAlloc();
        v30 = v18;
        v24 = v23;
        *v23 = 67109632;
        *(v23 + 4) = v22;
        v19 = v31;
        *(v23 + 8) = 1024;
        *(v23 + 10) = v2[v17];
        *(v23 + 14) = 1024;
        *(v23 + 16) = *(&v19->isa + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v20, v21, "should begin: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v24, 0x14u);
        v25 = v24;
        v18 = v30;
        MEMORY[0x259C74820](v25, -1, -1);
      }

      else
      {

        v20 = v19;
      }

      (*(v5 + 8))(v11, v4);
      if (v18)
      {
        v26 = *&v2[v12];
        if (v26)
        {
          [v26 cancelInteraction];
          v27 = *&v2[v12];
          if (v27)
          {
            v28 = v27;
            sub_257C3E454(1);

            if (*&v2[v12])
            {
              [v19 removeInteraction:?];
              sub_257D479D0();
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

void sub_257C3DAC0(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v31 - v17;
  v19 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction;
  v20 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction];
  if (v20)
  {
    sub_257C3E170();
    v21 = v20;
    v22 = a1;
    v23 = sub_257ECFF50();

    if (v23)
    {
      if ((v2[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed] & 1) == 0)
      {
        sub_257ECD350();
        v27 = sub_257ECDA20();
        v30 = sub_257ECFBD0();
        if (!os_log_type_enabled(v27, v30))
        {
          goto LABEL_15;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_257BAC000, v27, v30, "will present", v29, 2u);
        goto LABEL_12;
      }

      v24 = *&v2[v19];
      if (v24)
      {
        [v24 cancelInteraction];
        v25 = *&v2[v19];
        if (v25)
        {
          v26 = v25;
          sub_257C3E454(1);

          if (*&v2[v19])
          {
            [v2 removeInteraction_];
            sub_257D479D0();
            sub_257ECD350();
            v27 = sub_257ECDA20();
            v28 = sub_257ECFBD0();
            if (!os_log_type_enabled(v27, v28))
            {
              v18 = v11;
              goto LABEL_15;
            }

            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_257BAC000, v27, v28, "will not present", v29, 2u);
            v18 = v11;
LABEL_12:
            MEMORY[0x259C74820](v29, -1, -1);
LABEL_15:

            (*(v5 + 8))(v18, v4);
            return;
          }

          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }
  }
}

id sub_257C3DE40(void *a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_257ECDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *&v4[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction];
  if (!v14)
  {
    return 0;
  }

  sub_257C3E170();
  v15 = v14;
  v16 = a1;
  v17 = sub_257ECFF50();

  if ((v17 & 1) == 0)
  {
    return 0;
  }

  sub_257ECD350();
  v18 = v4;
  v19 = sub_257ECDA20();
  v20 = sub_257ECFBD0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315650;
    v23 = sub_257ECFEC0();
    v25 = sub_257BF1FC8(v23, v24, &v31);

    *(v21 + 4) = v25;
    *(v21 + 12) = 1024;
    v26 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
    swift_beginAccess();
    LODWORD(v26) = v18[v26];

    *(v21 + 14) = v26;
    *(v21 + 18) = 1024;
    v27 = v18[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed];

    *(v21 + 20) = v27;
    _os_log_impl(&dword_257BAC000, v19, v20, "location: %s, expanded: %{BOOL}d, dimmed: %{BOOL}d", v21, 0x18u);
    v28 = __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x259C74820](v22, -1, -1, v28);
    MEMORY[0x259C74820](v21, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v13, v6);
  return [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
}

unint64_t sub_257C3E170()
{
  result = qword_27F8F62E0;
  if (!qword_27F8F62E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F62E0);
  }

  return result;
}

uint64_t sub_257C3E1BC(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&v2[OBJC_IVAR____TtC16MagnifierSupport12SliderButton_clickInteraction];
  if (v12)
  {
    sub_257C3E170();
    v13 = v12;
    v14 = a1;
    v15 = sub_257ECFF50();

    if (v15)
    {
      sub_257ECD350();
      v16 = v2;
      v17 = sub_257ECDA20();
      v18 = sub_257ECFBD0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 67109376;
        v20 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
        swift_beginAccess();
        *(v19 + 4) = *(&v16->isa + v20);
        *(v19 + 8) = 1024;
        *(v19 + 10) = *(&v16->isa + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed);

        _os_log_impl(&dword_257BAC000, v17, v18, "expanded: %{BOOL}d, dimmed: %{BOOL}d", v19, 0xEu);
        MEMORY[0x259C74820](v19, -1, -1);
      }

      else
      {

        v17 = v16;
      }

      (*(v5 + 8))(v11, v4);
      if (*(&v16->isa + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed) != 1 || (v21 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded, swift_beginAccess(), *(&v16->isa + v21) == 1))
      {
        v22 = v16 + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v23 = *(v22 + 1);
          ObjectType = swift_getObjectType();
          (*(v23 + 8))(v16, &off_28690E098, ObjectType, v23);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return 0;
}

uint64_t sub_257C3E454(char a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v11 = v1;
  v12 = sub_257ECDA20();
  v13 = sub_257ECFBD0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109632;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 1024;
    v15 = OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isExpanded;
    swift_beginAccess();
    *(v14 + 10) = *(&v11->isa + v15);
    *(v14 + 14) = 1024;
    *(v14 + 16) = *(&v11->isa + OBJC_IVAR____TtC16MagnifierSupport12SliderButton_isDimmed);

    _os_log_impl(&dword_257BAC000, v12, v13, "was cancelled: %{BOOL}d, expanded: %{BOOL}d, dimmed: %{BOOL}d", v14, 0x14u);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_257C3E614(uint64_t a1, char a2)
{
  sub_257ED07B0();
  sub_257ED07E0();
  return sub_257ED0800();
}

uint64_t MFReaderPlaybackSpeed.id.getter()
{
  v0 = sub_257ECCCF0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCCE0();
  v8 = sub_257ECCCA0();
  (*(v1 + 8))(v7, v0);
  return v8;
}

uint64_t MFReaderPlaybackSpeed.localizedName.getter()
{
  if (qword_27F8F47D8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F913338;
  v1 = sub_257ECFA50();
  v2 = [v0 stringForObjectValue_];

  if (v2)
  {
    v3 = sub_257ECF500();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_257ECF4C0();
  v9 = sub_257ECF4C0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_257ED6D30;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_257BFB13C();
  v12 = 3157553;
  if (v5)
  {
    v12 = v3;
  }

  v13 = 0xE300000000000000;
  if (v5)
  {
    v13 = v5;
  }

  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = sub_257ECF4D0();

  return v14;
}

MagnifierSupport::MFReaderPlaybackSpeed_optional __swiftcall MFReaderPlaybackSpeed.init(rawValue:)(Swift::Float rawValue)
{
  if (rawValue == 0.75)
  {
    *v1 = 0;
  }

  else if (rawValue == 1.0)
  {
    *v1 = 1;
  }

  else if (rawValue == 1.25)
  {
    *v1 = 2;
  }

  else if (rawValue == 1.5)
  {
    *v1 = 3;
  }

  else
  {
    if (rawValue == 2.0)
    {
      v2 = 5;
    }

    else
    {
      v2 = 6;
    }

    if (rawValue == 1.75)
    {
      v3 = 4;
    }

    else
    {
      v3 = v2;
    }

    *v1 = v3;
  }

  return result;
}

float sub_257C3EA24@<S0>(float *a1@<X8>)
{
  result = flt_257EDCAEC[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_257C3EA70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCCE0();
  v10 = sub_257ECCCA0();
  v12 = v11;
  result = (*(v3 + 8))(v9, v2);
  *a1 = v10;
  a1[1] = v12;
  return result;
}

unint64_t sub_257C3EC00()
{
  result = qword_27F8F6360;
  if (!qword_27F8F6360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6360);
  }

  return result;
}

unint64_t sub_257C3EC58()
{
  result = qword_27F8F6368;
  if (!qword_27F8F6368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6370, &qword_257EDC9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MFReaderPlaybackSpeed(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}