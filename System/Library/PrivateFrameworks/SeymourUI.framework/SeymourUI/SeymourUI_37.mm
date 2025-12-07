void sub_20B93661C(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_20C139684();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370, &qword_20C153C70);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = *(a1 + 192);
  if (v16)
  {
    v41 = v15;
    v42 = v7;
    v43 = v13;
    v44 = v16;
    v47 = [v44 asset];
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
      v40 = v12;
      v19 = sub_20C13D374();
      v20 = swift_allocObject();
      v38 = a1;
      v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;
      sub_20B51C88C(0, &qword_27C763230, 0x277CE6510);
      v47 = v47;
      sub_20C137C94();
      (*(v4 + 16))(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v45, v3);
      v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v22 = swift_allocObject();
      v23 = v3;
      v24 = v44;
      *(v22 + 16) = v44;
      *(v22 + 24) = a1;
      (*(v4 + 32))(v22 + v21, v6, v23);
      v25 = swift_allocObject();
      *(v25 + 16) = sub_20B939598;
      *(v25 + 24) = v22;
      v26 = v46;
      v27 = v39;
      v28 = v42;
      (*(v46 + 16))(v39, v11, v42);
      v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
      v30 = swift_allocObject();
      (*(v26 + 32))(v30 + v29, v27, v28);
      v31 = (v30 + ((v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v31 = sub_20B939618;
      v31[1] = v25;
      v32 = v24;

      v33 = v41;
      sub_20C137C94();
      (*(v26 + 8))(v11, v28);
      v34 = v40;
      v35 = sub_20C137CB4();
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      v35(sub_20B52347C, v36);

      (*(v43 + 8))(v33, v34);
    }

    else
    {

      v37 = v47;
    }
  }
}

uint64_t sub_20B936B34(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v32 = a3;
  v33 = sub_20C13BB84();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0, &unk_20C166B80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = sub_20C132FD4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = [a2 currentMediaSelection];
  v22 = [v21 selectedMediaOptionInMediaSelectionGroup_];

  if (v22)
  {
    v23 = [v22 locale];

    if (v23)
    {
      sub_20C132F84();

      (*(v16 + 56))(v11, 0, 1, v15);
    }

    else
    {
      (*(v16 + 56))(v11, 1, 1, v15);
    }

    sub_20B5DF134(v11, v14, &qword_27C76FEB0, &unk_20C166B80);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v19, v14, v15);
      v28 = *(v32 + 128);
      v29 = *(v32 + 136);
      sub_20B93747C(v31, v28, v29, v19);

      return (*(v16 + 8))(v19, v15);
    }
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_20B520158(v14, &qword_27C76FEB0, &unk_20C166B80);
  sub_20C13B574();
  v24 = sub_20C13BB74();
  v25 = sub_20C13D1D4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_20B517000, v24, v25, "[AudioHintPresenter] currentlySelectedLocale unknown, dropping audio hint", v26, 2u);
    MEMORY[0x20F2F6A40](v26, -1, -1);
  }

  return (*(v6 + 8))(v8, v33);
}

id sub_20B936F10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CB84C0]);
  v5 = sub_20C13C914();
  v6 = [v4 initWithString_];

  sub_20C132F04();
  v7 = sub_20C13C914();

  v8 = [objc_opt_self() voiceWithLanguage_];

  [v6 setVoice_];
  v10 = *(v3 + 73);
  if (v10 <= 2)
  {
    if (!*(v3 + 73))
    {
      v11 = *MEMORY[0x277CB82F8];
      v12 = 0.8;
      goto LABEL_11;
    }

    if (v10 != 1)
    {
      v11 = *MEMORY[0x277CB82F8];
      v12 = 1.25;
LABEL_11:
      *&v9 = v11 * v12;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v10 == 3)
  {
    v11 = *MEMORY[0x277CB82F8];
    v12 = 1.5;
    goto LABEL_11;
  }

  if (v10 != 4)
  {
LABEL_8:
    LODWORD(v9) = *MEMORY[0x277CB82F8];
    goto LABEL_12;
  }

  *&v9 = *MEMORY[0x277CB82F8] + *MEMORY[0x277CB82F8];
LABEL_12:
  [v6 setRate_];
  [v6 setPrefersAssistiveTechnologySettings_];
  return v6;
}

BOOL sub_20B9370A0(uint64_t a1, char a2, uint64_t a3)
{
  v7 = sub_20C132FD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v38[-v12];
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (MEMORY[0x20F2EA6E0](a3, a1, v15))
  {
    v18 = *(v3 + 56);
    v19 = v18 >= 2;
    v20 = v18 != 2;
    if (v19)
    {
      return v20;
    }

    else
    {
      return a2 != 3;
    }
  }

  else
  {
    sub_20C13B574();
    v22 = *(v8 + 16);
    v22(v13, a1, v7);
    v22(v10, a3, v7);
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44 = v41;
      *v25 = 136315394;
      sub_20B939550(&qword_27C767D58, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v42 = v14;
      v40 = v23;
      v26 = sub_20C13DFA4();
      v28 = v27;
      v39 = v24;
      v29 = *(v8 + 8);
      v29(v13, v7);
      v30 = sub_20B51E694(v26, v28, &v44);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = sub_20C13DFA4();
      v33 = v32;
      v29(v10, v7);
      v34 = sub_20B51E694(v31, v33, &v44);

      *(v25 + 14) = v34;
      v35 = v40;
      _os_log_impl(&dword_20B517000, v40, v39, "Dropped AudioHint as locale of Audio Hint %s does not match currently selected audio locale %s", v25, 0x16u);
      v36 = v41;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v36, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);

      (*(v43 + 8))(v17, v42);
    }

    else
    {

      v37 = *(v8 + 8);
      v37(v10, v7);
      v37(v13, v7);
      (*(v43 + 8))(v17, v14);
    }

    return 0;
  }
}

void sub_20B93747C(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v69 = a4;
  v70 = a1;
  v65 = a3;
  v6 = sub_20C139684();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v64 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = sub_20C132FD4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 200) == 1)
  {
    v21 = *(v4 + 72);
    if (v21 == 2)
    {
      if (!UIAccessibilityIsVoiceOverRunning())
      {
        return;
      }
    }

    else if ((v21 & 1) == 0)
    {
      return;
    }

    sub_20C139664();
    v22 = sub_20B9370A0(v20, a2, v69);
    (*(v18 + 8))(v20, v17);
    if (v22)
    {
      sub_20C13B574();
      sub_20C13BB64();
      v23 = *(v9 + 8);
      v23(v16, v8);
      sub_20C13B574();
      v24 = sub_20C13BB74();
      v25 = sub_20C13D1F4();
      v26 = os_log_type_enabled(v24, v25);
      v62 = v9 + 8;
      v63 = v23;
      v61 = v8;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v59 = v27;
        v60 = swift_slowAlloc();
        v71 = v60;
        *v27 = 136315138;
        v28 = [objc_opt_self() sharedInstance];
        v29 = [v28 category];

        v30 = sub_20C13C954();
        v32 = v31;

        v33 = sub_20B51E694(v30, v32, &v71);

        v34 = v59;
        *(v59 + 1) = v33;
        v35 = v34;
        _os_log_impl(&dword_20B517000, v24, v25, "[AudioHintPresenter] Current AVAudioSession category: %s", v34, 0xCu);
        v36 = v60;
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x20F2F6A40](v36, -1, -1);
        MEMORY[0x20F2F6A40](v35, -1, -1);
      }

      v23(v13, v8);
      v38 = v67;
      v37 = v68;
      v39 = v66;
      v40 = v70;
      v41 = sub_20C139674();
      v43 = sub_20B936F10(v41, v42);

      v44 = v65;
      if ([v65 isSpeaking])
      {
        v45 = v64;
        sub_20C13B574();
        (*(v38 + 16))(v39, v40, v37);
        v46 = sub_20C13BB74();
        v47 = sub_20C13D1D4();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = v39;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v71 = v50;
          *v49 = 136315138;
          sub_20B939550(&qword_27C767D50, MEMORY[0x277D54458], MEMORY[0x277D54470]);
          v51 = sub_20C13DFA4();
          v52 = v37;
          v53 = v45;
          v55 = v54;
          (*(v38 + 8))(v48, v52);
          v56 = sub_20B51E694(v51, v55, &v71);

          *(v49 + 4) = v56;
          _os_log_impl(&dword_20B517000, v46, v47, "Dropped Audio Hint due to overlap: %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v50);
          MEMORY[0x20F2F6A40](v50, -1, -1);
          MEMORY[0x20F2F6A40](v49, -1, -1);

          v57 = v53;
        }

        else
        {

          (*(v38 + 8))(v39, v37);
          v57 = v45;
        }

        v63(v57, v61);
      }

      else
      {
        [v44 speakUtterance_];
      }
    }
  }
}

double sub_20B937A94()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 144);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (*(v0 + 200) == 1)
  {
    v3 = *(v0 + 72);
    if (v3 == 2)
    {
      v4 = v2;
      if (UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = v2;
      if (v3)
      {
LABEL_9:
        v5 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v4 = v2;
  }

  v5 = 0;
LABEL_10:
  [v4 setState_];

LABEL_11:
  v6 = *(v1 + 152);
  if (v6)
  {
    if (*(v1 + 200) == 1)
    {
      IsVoiceOverRunning = *(v1 + 72);
      v8 = v6;
      if (IsVoiceOverRunning == 2)
      {
        IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
      }

      v9 = ~IsVoiceOverRunning & 1;
    }

    else
    {
      v8 = v6;
      v9 = 1;
    }

    [v8 setState_];
  }

  v10 = *(v1 + 144);
  if (v10)
  {
    [v10 setAttributes_];
    v11 = *(v1 + 144);
    if (v11)
    {
      [v11 setAttributes_];
    }
  }

  for (i = 0; i != 5; ++i)
  {
    v15 = byte_28228D7B8[i + 32];
    v16 = *(v1 + 160);
    if (*(v16 + 16) && (v17 = sub_20B65CEBC(), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      v20 = v19;
      if ((*(v1 + 200) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = 0;
      if ((*(v1 + 200) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v21 = *(v1 + 72);
    if (v21 != 2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_37:
      if (!v19)
      {
        goto LABEL_44;
      }

      v22 = *(v1 + 73);
      if (v22 == 5)
      {
        if (v15 == 1)
        {
LABEL_40:
          v23 = 1;
LABEL_43:
          [v19 setState_];
          goto LABEL_44;
        }
      }

      else if (v22 == v15)
      {
        goto LABEL_40;
      }

      v23 = 0;
      goto LABEL_43;
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_37;
    }

LABEL_34:
    if (v19)
    {
      [v19 setState_];
    }

LABEL_44:
    v24 = sub_20C138104();
    if (v24 == sub_20C138104())
    {
      goto LABEL_25;
    }

    if (v19)
    {
      if (*(v1 + 200) == 1)
      {
        v25 = *(v1 + 72);
        if (v25 == 2)
        {
          v26 = v19;
          if (UIAccessibilityIsVoiceOverRunning())
          {
LABEL_51:
            v14 = 0;
            goto LABEL_24;
          }
        }

        else
        {
          v27 = v19;
          if (v25)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        v13 = v19;
      }

      v14 = 4;
LABEL_24:
      [v19 setAttributes_];

LABEL_25:
      continue;
    }
  }

  if (*(v1 + 200) != 1)
  {
    goto LABEL_55;
  }

  v28 = *(v1 + 72);
  if (v28 == 2)
  {
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_55;
    }

LABEL_57:
    if (*(v1 + 73) == 5)
    {
      v34 = 1;
    }

    else
    {
      v34 = *(v1 + 73);
    }

    sub_20C1380F4();
    v31 = sub_20BB560F8(v34);
    v33 = v35;
  }

  else
  {
    if (v28)
    {
      goto LABEL_57;
    }

LABEL_55:
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    v31 = sub_20C132964();
    v33 = v32;
  }

  *(v1 + 168) = v31;
  *(v1 + 176) = v33;

  return result;
}

uint64_t sub_20B937E14()
{
  v1 = v0;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_20C132964();

  sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 1;
  v35 = v6;
  v7 = sub_20C13D624();
  swift_beginAccess();
  v8 = v1[18];
  v1[18] = v7;

  v9 = [v3 bundleForClass_];
  sub_20C132964();

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = 0;
  v12 = sub_20C13D624();
  v13 = v1[19];
  v1[19] = v12;

  v14 = 0;
  while (1)
  {
    v18 = byte_2822875F8[v14 + 32];
    sub_20BB560F8(v18);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    v21 = sub_20C13D624();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v1[20];
    v1[20] = 0x8000000000000000;
    v24 = sub_20B65CEBC();
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v23[3] < v29)
    {
      sub_20BA08918(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_20B65CEBC();
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v30)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v34 = v24;
    sub_20BA0F9E4();
    v24 = v34;
    if (v30)
    {
LABEL_2:
      v15 = v23[7];
      v16 = *(v15 + 8 * v24);
      *(v15 + 8 * v24) = v21;

      goto LABEL_3;
    }

LABEL_10:
    v23[(v24 >> 6) + 8] |= 1 << v24;
    *(v23[6] + v24) = v18;
    *(v23[7] + 8 * v24) = v21;
    v32 = v23[2];
    v28 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v28)
    {
      goto LABEL_16;
    }

    v23[2] = v33;
LABEL_3:
    ++v14;
    v1[20] = v23;

    result = swift_endAccess();
    if (v14 == 5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

double sub_20B9382B4(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B938C60(a3 & 1);
  }

  return result;
}

double sub_20B938314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B938E28(a3);
  }

  return result;
}

uint64_t sub_20B938374()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[19];
  v81 = v0[18];
  v82 = v2;
  v3 = MEMORY[0x277D84F90];
  v77[0] = MEMORY[0x277D84F90];
  v4 = v2;
  v5 = v81;
  for (i = 0; i != 2; ++i)
  {
    v7 = v80[i + 16];
    if (v7)
    {
      v8 = v7;
      MEMORY[0x20F2F43B0]();
      if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v3 = v77[0];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D40, "n@\t");
  swift_arrayDestroy();
  v9 = v0[20];
  if (*(v9 + 16) && (v10 = sub_20B65CEBC(), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v13 = v12;
  }

  else
  {
    v12 = 0;
  }

  v80[4] = v12;
  v14 = *(v1 + 160);
  if (*(v14 + 16) && (v15 = sub_20B65CEBC(), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    v18 = v17;
  }

  else
  {
    v17 = 0;
  }

  v80[5] = v17;
  v19 = *(v1 + 160);
  if (*(v19 + 16) && (v20 = sub_20B65CEBC(), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    v23 = v22;
  }

  else
  {
    v22 = 0;
  }

  v80[6] = v22;
  v24 = *(v1 + 160);
  if (*(v24 + 16) && (v25 = sub_20B65CEBC(), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
    v28 = v27;
  }

  else
  {
    v27 = 0;
  }

  v80[7] = v27;
  v29 = *(v1 + 160);
  if (*(v29 + 16) && (v30 = sub_20B65CEBC(), (v31 & 1) != 0))
  {
    v32 = *(*(v29 + 56) + 8 * v30);
    v33 = v32;
  }

  else
  {
    v32 = 0;
  }

  v34 = 0;
  v80[8] = v32;
  v35 = MEMORY[0x277D84F90];
  v77[0] = MEMORY[0x277D84F90];
LABEL_28:
  if (v34 <= 5)
  {
    v36 = 5;
  }

  else
  {
    v36 = v34;
  }

  while (v34 != 5)
  {
    if (v36 == v34)
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v37 = v80[v34++ + 4];
    if (v37)
    {
      v38 = v37;
      MEMORY[0x20F2F43B0]();
      if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v35 = v77[0];
      goto LABEL_28;
    }
  }

  swift_arrayDestroy();
  if (!(v3 >> 62))
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    v39 = v3;
    goto LABEL_39;
  }

LABEL_62:
  sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

  v39 = sub_20C13DE34();

LABEL_39:

  sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
  v71 = v39;
  v40 = sub_20C13D554();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = objc_opt_self();
  v76 = ObjCClassFromMetadata;
  v42 = [v75 bundleForClass_];
  sub_20C132964();

  if (v35 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

    v43 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    v43 = v35;
  }

  v72 = v43;
  v44 = sub_20C13D554();
  v45 = sub_20C138104();
  v74 = v40;
  v73 = v44;
  if (v45 == sub_20C138104())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D48, &unk_20C1637F8);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_20C14F980;
    v47 = *(v1 + 152);
    *(v46 + 32) = v47;
    v48 = v47;
    v49 = sub_20BEF6DB0(v35);

    v77[0] = v46;
    sub_20B8DA9E0(v49);
    v35 = v77[0];
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D48, &unk_20C1637F8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_20C14F320;
    *(v35 + 32) = v40;
    *(v35 + 40) = v44;
    v50 = v40;
    v51 = v44;
  }

  v52 = sub_20C13AAC4();
  v78 = v52;
  v53 = sub_20B939550(&qword_281103AF0, MEMORY[0x277D4F200], MEMORY[0x277D4F1E8]);
  v79 = v53;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
  v55 = *MEMORY[0x277D4F1F8];
  v56 = *(*(v52 - 8) + 104);
  v56(boxed_opaque_existential_1, v55, v52);
  v57 = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(v77);
  if (v57 & 1) != 0 && (v58 = *(v1 + 57), v58 != 2) && (v58)
  {
    v59 = 1;
  }

  else
  {
    v60 = sub_20C13C914();
    [objc_opt_self() systemImageNamed_];

    v59 = 0;
  }

  v78 = v52;
  v79 = v53;
  v61 = __swift_allocate_boxed_opaque_existential_1(v77);
  v56(v61, v55, v52);
  sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(v77);
  v62 = [v75 bundleForClass_];
  sub_20C132964();

  if (v59)
  {
    v78 = v52;
    v79 = v53;
    v63 = __swift_allocate_boxed_opaque_existential_1(v77);
    v56(v63, v55, v52);
    v64 = sub_20C1383C4();
    __swift_destroy_boxed_opaque_existential_1(v77);
    if (v64)
    {
      v65 = *MEMORY[0x277CB8588];
    }
  }

  v1 = MEMORY[0x277D84F90];
  sub_20C138104();
  sub_20C138104();
  v66 = 0;
  v77[0] = v1;
  v67 = *(v35 + 16);
  while (v67 != v66)
  {
    if (v66 >= *(v35 + 16))
    {
      goto LABEL_61;
    }

    v68 = *(v35 + 8 * v66++ + 32);
    if (v68)
    {
      MEMORY[0x20F2F43B0](v68);
      if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v1 = v77[0];
    }
  }

  v69 = sub_20C13D554();

  return v69;
}

void sub_20B938C60(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_20B517000, v8, v9, "AudioHints toggled: %{BOOL}d", v10, 8u);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = a1 & 1;
  *(v2 + 72) = a1 & 1;
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_20C13C914();
  [v12 setBool:v11 forKey:v13];

  sub_20B935BE8();
}

void sub_20B938E28(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = sub_20BD096F8(v3);
    v20 = v4;
    v14 = sub_20B51E694(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_20B517000, v8, v9, "AudioHints speed changed: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    (*(v5 + 8))(v7, v20);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *(v2 + 72) = 1;
  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  v17 = sub_20C13C914();
  [v16 setBool:1 forKey:v17];

  *(v2 + 73) = v3;
  v18 = [v15 standardUserDefaults];
  v19 = sub_20C13C914();
  [v18 setInteger:v3 forKey:v19];

  sub_20B935BE8();
}

uint64_t sub_20B9390D4()
{
  sub_20B583E6C(v0 + 16);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v0;
}

uint64_t sub_20B93916C()
{
  sub_20B9390D4();

  return swift_deallocClassInstance();
}

uint64_t sub_20B9391C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B93920C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B939280(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C138104();
  if (v7 == sub_20C138104() || (v8 = sub_20C138104(), v9 = 1, v8 == sub_20C138104()))
  {
    v9 = a1 != 0;
  }

  sub_20C13B574();
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 67240450;
    *(v12 + 4) = v9;
    *(v12 + 8) = 2082;
    v20 = a1;
    v14 = sub_20C13C9D4();
    v19 = v3;
    v16 = sub_20B51E694(v14, v15, &v21);

    *(v12 + 10) = v16;
    _os_log_impl(&dword_20B517000, v10, v11, "Configuring Synthesizer. Use Application Audio Session = %{BOOL,public}d routeCategory = %{public}s", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F2F6A40](v13, -1, -1);
    MEMORY[0x20F2F6A40](v12, -1, -1);

    (*(v4 + 8))(v6, v19);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  [objc_msgSend(objc_allocWithZone(MEMORY[0x277CB84B8]) init)];
  return a1;
}

void sub_20B9394EC()
{
  v1 = *(sub_20C139684() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_20B93661C(v2, v3);
}

uint64_t sub_20B939550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B939674(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52A9D4;

  return sub_20B933214(a1, v5, v4);
}

uint64_t sub_20B93977C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B93985C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20B52AC14;

  return sub_20B933F9C(a1, a2, v6, v7, v8);
}

uint64_t sub_20B939920(uint64_t a1)
{
  v4 = *(sub_20C132FD4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52A9D4;

  return sub_20B934B5C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20B939A18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B523384(a1, v4);
}

uint64_t sub_20B939B10(uint64_t a1)
{
  v2 = sub_20C139684();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v7;
    v15 = v14;
    v24 = v14;
    *v13 = 136315138;
    sub_20B939550(&qword_27C767D50, MEMORY[0x277D54458], MEMORY[0x277D54470]);
    v16 = sub_20C13DFA4();
    v18 = v17;
    (*(v3 + 8))(v5, v2);
    v19 = sub_20B51E694(v16, v18, &v24);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_20B517000, v10, v11, "AudioHint ended: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);

    return (*(v22 + 8))(v9, v23);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }
}

char *sub_20B939EDC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementAppearance];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v4[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementDisappearance];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v4[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onVisibleBoundsChange];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v4[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onImpressionableBoundsChange];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonStackView;
  v17 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v17 setAxis_];
  [v17 setAlignment_];
  [v17 setDistribution_];
  [v17 setSpacing_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v16] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_descriptionStack;
  v19 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v19 setAxis_];
  [v19 setAlignment_];
  [v19 setDistribution_];
  [v19 setSpacing_];
  [v19 &selRef_count + 2];
  *&v4[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_descriptionTextView;
  v21 = objc_opt_self();
  v22 = [v21 textViewUsingTextLayoutManager_];
  [v22 setTextAlignment_];
  v23 = [v22 textContainer];
  [v23 setMaximumNumberOfLines_];

  v24 = v22;
  [v24 setScrollEnabled_];
  [v24 setContentInsetAdjustmentBehavior_];

  v25 = *MEMORY[0x277D768C8];
  v26 = *(MEMORY[0x277D768C8] + 8);
  v27 = *(MEMORY[0x277D768C8] + 16);
  v28 = *(MEMORY[0x277D768C8] + 24);
  v29 = sub_20BD517F0(*MEMORY[0x277D768C8], v26, v27, v28);

  v30 = sub_20BD518BC();
  *&v5[v20] = v30;
  v31 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_traitsTextView;
  v32 = [v21 textViewUsingTextLayoutManager_];
  [v32 setTextAlignment_];
  v33 = objc_opt_self();
  v34 = [v33 preferredFontForTextStyle_];
  [v32 setFont_];

  [v32 setContentInsetAdjustmentBehavior_];
  v35 = sub_20BD517F0(v25, v26, v27, v28);

  v36 = sub_20BD518BC();
  [v36 setScrollEnabled_];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v31] = v36;
  v37 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_captionTagsLabel;
  v38 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v38 setTextAlignment_];
  [v38 setLineBreakMode_];
  [v38 setNumberOfLines_];
  v39 = [v33 preferredFontForTextStyle_];
  [v38 setFont_];

  v40 = v38;
  LODWORD(v41) = 1148846080;
  [v40 setContentCompressionResistancePriority:1 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [v40 setContentHuggingPriority:1 forAxis:v42];

  v43 = sub_20BD518BC();
  [v43 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v37] = v43;
  v44 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttons] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonActions] = v44;
  v45 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_focusContainerGuide;
  *&v5[v45] = [objc_opt_self() smu_focusContainerGuide];
  v46 = &v5[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_layout];
  *v46 = xmmword_20C156DE0;
  *(v46 + 1) = xmmword_20C156DF0;
  *(v46 + 2) = xmmword_20C156E10;
  *(v46 + 3) = xmmword_20C1638A0;
  *(v46 + 8) = 0x404B000000000000;
  *&v5[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_accessibilityMediaTags] = 0;
  v47 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v48 = [objc_opt_self() clearColor];
  [v47 setBackgroundColor_];

  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  v49 = [v47 widthAnchor];
  v50 = [v49 constraintEqualToConstant_];

  *&v5[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_traitsWidthConstraint] = v50;
  v129.receiver = v5;
  v129.super_class = type metadata accessor for TVDetailHeaderCell(0);
  v51 = objc_msgSendSuper2(&v129, sel_initWithFrame_, a1, a2, a3, a4);
  v52 = [v51 contentView];
  v53 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonStackView;
  [v52 addSubview_];

  v54 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_descriptionStack;
  [*&v51[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_descriptionStack] addArrangedSubview_];
  [*&v51[v54] addArrangedSubview_];
  v55 = [v51 &selRef_setMaximumFractionDigits_];
  [v55 addSubview_];

  v126 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_traitsTextView;
  [v47 addSubview_];
  v56 = [v51 &selRef_setMaximumFractionDigits_];
  [v56 addSubview_];

  v57 = [v51 &selRef_setMaximumFractionDigits_];
  v127 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_focusContainerGuide;
  [v57 addLayoutGuide_];

  v128 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_20C1638B0;
  v59 = [*&v51[v53] leadingAnchor];
  v60 = [v51 &selRef_setMaximumFractionDigits_];
  v61 = [v60 leadingAnchor];

  v62 = &v51[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_layout];
  v63 = [v59 constraintEqualToAnchor:v61 constant:*&v51[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_layout + 24]];

  *(v58 + 32) = v63;
  v64 = [*&v51[v53] widthAnchor];
  v65 = [v64 constraintEqualToConstant_];

  *(v58 + 40) = v65;
  v66 = [*&v51[v53] bottomAnchor];
  v67 = [v51 &selRef_setMaximumFractionDigits_];
  v68 = [v67 &selRef_secondaryLabel + 5];

  v69 = [v66 constraintEqualToAnchor_];
  *(v58 + 48) = v69;
  v70 = [*&v51[v54] leadingAnchor];
  v71 = [*&v51[v53] trailingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:v62[1]];

  *(v58 + 56) = v72;
  v73 = [*&v51[v54] bottomAnchor];
  v74 = [*&v51[v53] bottomAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v58 + 64) = v75;
  v76 = [v47 leadingAnchor];
  v77 = [*&v51[v54] trailingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 constant:v62[8]];

  *(v58 + 72) = v78;
  v79 = [v47 topAnchor];
  v80 = [v51 contentView];
  v81 = [v80 topAnchor];

  v82 = [v79 constraintGreaterThanOrEqualToAnchor_];
  *(v58 + 80) = v82;
  v83 = [v47 topAnchor];
  v84 = [*&v51[v53] topAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  *(v58 + 88) = v85;
  v86 = [v47 topAnchor];
  v87 = [*&v51[v53] topAnchor];
  v88 = [v86 constraintLessThanOrEqualToAnchor_];

  *(v58 + 96) = v88;
  v89 = [v47 trailingAnchor];
  v90 = [v51 contentView];
  v91 = [v90 trailingAnchor];

  v92 = [v89 constraintEqualToAnchor:v91 constant:-v62[3]];
  *(v58 + 104) = v92;
  v93 = *&v51[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_traitsWidthConstraint];
  *(v58 + 112) = v93;
  v94 = *&v51[v126];
  v95 = v93;
  v96 = [v94 leadingAnchor];
  v97 = [v47 leadingAnchor];
  v98 = [v96 constraintEqualToAnchor_];

  *(v58 + 120) = v98;
  v99 = [*&v51[v126] topAnchor];
  v100 = [v47 topAnchor];
  v101 = [v99 constraintEqualToAnchor_];

  *(v58 + 128) = v101;
  v102 = [*&v51[v126] trailingAnchor];
  v103 = [v47 trailingAnchor];
  v104 = [v102 constraintEqualToAnchor_];

  *(v58 + 136) = v104;
  v105 = [*&v51[v126] bottomAnchor];
  v106 = [v47 bottomAnchor];
  v107 = [v105 constraintLessThanOrEqualToAnchor_];

  *(v58 + 144) = v107;
  v108 = [*&v51[v127] leadingAnchor];
  v109 = [v51 contentView];
  v110 = [v109 leadingAnchor];

  v111 = [v108 constraintEqualToAnchor_];
  *(v58 + 152) = v111;
  v112 = [*&v51[v127] trailingAnchor];
  v113 = [v51 contentView];
  v114 = [v113 trailingAnchor];

  v115 = [v112 constraintEqualToAnchor_];
  *(v58 + 160) = v115;
  v116 = [*&v51[v127] bottomAnchor];
  v117 = [v51 contentView];
  v118 = [v117 bottomAnchor];

  v119 = [v116 constraintEqualToAnchor_];
  *(v58 + 168) = v119;
  v120 = [*&v51[v127] topAnchor];
  v121 = [v51 contentView];

  v122 = [v121 topAnchor];
  v123 = [v120 constraintEqualToAnchor_];

  *(v58 + 176) = v123;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v124 = sub_20C13CC54();

  [v128 activateConstraints_];

  return v51;
}

uint64_t sub_20B93AEDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for TVDetailHeaderCell(0);
  v21.receiver = v0;
  v21.super_class = v4;
  objc_msgSendSuper2(&v21, sel_prepareForReuse);
  v5 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v6]);
  swift_endAccess();
  v7 = &v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementAppearance];
  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementAppearance];
  v9 = *&v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementAppearance + 8];
  *v7 = 0;
  *(v7 + 1) = 0;
  sub_20B583ECC(v8, v9);
  v10 = &v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementDisappearance];
  v11 = *&v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementDisappearance];
  v12 = *&v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementDisappearance + 8];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_20B583ECC(v11, v12);
  v13 = &v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onImpressionableBoundsChange];
  v14 = *&v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onImpressionableBoundsChange];
  v15 = *&v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onImpressionableBoundsChange + 8];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_20B583ECC(v14, v15);
  v16 = &v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onVisibleBoundsChange];
  v17 = *&v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onVisibleBoundsChange];
  v18 = *&v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onVisibleBoundsChange + 8];
  *v16 = 0;
  *(v16 + 1) = 0;
  return sub_20B583ECC(v17, v18);
}

void sub_20B93B088()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TVDetailHeaderCell(0);
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onVisibleBoundsChange];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onVisibleBoundsChange + 8];

    v2([v1 bounds]);
    sub_20B583ECC(v2, v3);
  }

  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onImpressionableBoundsChange];
  if (v4)
  {
    v5 = *&v1[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onImpressionableBoundsChange + 8];

    v4([v1 bounds]);
    sub_20B583ECC(v4, v5);
  }

  sub_20B93B1A8();
}

void sub_20B93B1A8()
{
  v1 = v0;
  v70 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v70);
  v73 = &v61[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for MetricImpressionElement(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767E00, &unk_20C1639B0);
  MEMORY[0x28223BE20](v72);
  v7 = &v61[-v6];
  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonActions];
  v9 = *(v8 + 16);
  v10 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttons;
  v11 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementAppearance;

  v71 = v10;
  swift_beginAccess();
  v69 = v9;
  if (v9)
  {
    v12 = 0;
    v63 = v73 + 8;
    v62 = *MEMORY[0x277D51768];
    v13 = *MEMORY[0x277D51778];
    v64 = *MEMORY[0x277D51750];
    v65 = v13;
    v66 = v1;
    v67 = &v1[v11];
    v68 = v8;
    while (2)
    {
      if (v12 >= *(v8 + 16))
      {
        __break(1u);
      }

      else
      {
        v14 = type metadata accessor for ButtonAction(0);
        v15 = v8 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * v12;
        v16 = v7 + *(v72 + 48);
        *v7 = v12;
        sub_20B7632E0(v15, v16, type metadata accessor for ButtonAction);
        v17 = *&v1[v71];
        if ((v17 & 0xC000000000000001) != 0)
        {

          v18 = MEMORY[0x20F2F5430](v12, v17);

          goto LABEL_9;
        }

        if (v12 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v18 = *(v17 + 8 * v12 + 32);
LABEL_9:
          v19 = v12 + 1;
          [v18 frame];
          [v1 convertRect:v18 fromCoordinateSpace:?];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;
          sub_20B7632E0(v16 + *(v14 + 28), v73, type metadata accessor for ButtonAction.ActionType);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8, &unk_20C14FB90);
              v48 = *(v47 + 48);
              v49 = v73;
              sub_20B520158(&v73[*(v47 + 64)], &unk_27C768660, &unk_20C152F60);
              sub_20B520158(&v49[v48], &qword_27C7622F0, &unk_20C14FD00);
              v50 = *(v16 + 40);
              if (v50)
              {
                goto LABEL_32;
              }

              goto LABEL_28;
            case 2u:
            case 6u:
            case 8u:
              sub_20B93D9CC(v73, type metadata accessor for ButtonAction.ActionType);
              v28 = *(v16 + 40);
              if (!v28)
              {
                goto LABEL_13;
              }

              goto LABEL_11;
            case 3u:
              v40 = sub_20C134014();
              goto LABEL_35;
            case 4u:
              v40 = sub_20C133954();
              goto LABEL_35;
            case 5u:
              v44 = v3[7];
              v45 = sub_20C1352E4();
              (*(*(v45 - 8) + 104))(v5 + v44, v62, v45);
              *v5 = 0x6C6F686563616C70;
              v5[1] = 0xEB00000000726564;
              v5[2] = v12;
              v5[3] = 0x6C6F686563616C70;
              v5[4] = 0xEB00000000726564;
              v46 = (v5 + v3[8]);
              *v46 = v21;
              v46[1] = v23;
              v46[2] = v25;
              v46[3] = v27;
              *(v5 + v3[9]) = MEMORY[0x277D84F98];
              goto LABEL_16;
            case 7u:
              v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0, &unk_20C169DE0);
              v38 = *(v37 + 64);
              v39 = *(v37 + 80);
              goto LABEL_24;
            case 9u:
              v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8, &unk_20C14FBA0) + 48);
              v56 = sub_20C138894();
              v57 = v73;
              (*(*(v56 - 8) + 8))(&v73[v55], v56);
              v58 = sub_20C138B94();
              (*(*(v58 - 8) + 8))(v57, v58);
              goto LABEL_31;
            case 0xAu:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200, &unk_20C1639C0);

              v40 = sub_20C134284();
LABEL_35:
              (*(*(v40 - 8) + 8))(v73, v40);
              v28 = *(v16 + 40);
              if (!v28)
              {
                goto LABEL_13;
              }

              goto LABEL_11;
            case 0xBu:
            case 0xEu:
            case 0xFu:
            case 0x10u:
            case 0x11u:
            case 0x12u:
            case 0x13u:
              v28 = *(v16 + 40);
              if (v28)
              {
                goto LABEL_11;
              }

              goto LABEL_13;
            case 0xCu:
              v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0, &unk_20C14FBB0);
              v38 = *(v41 + 48);
              v39 = *(v41 + 64);
LABEL_24:
              v42 = sub_20C137254();
              v43 = v73;
              (*(*(v42 - 8) + 8))(&v73[v39], v42);
              sub_20B520158(&v43[v38], &qword_27C76A410, &unk_20C14FBC0);
              sub_20B93D9CC(v43, type metadata accessor for StartWorkoutSessionRequest);
              v28 = *(v16 + 40);
              if (!v28)
              {
                goto LABEL_13;
              }

              goto LABEL_11;
            case 0xDu:
              v52 = v73;

              v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210, &unk_20C169DF0) + 48);
              v54 = sub_20C132C14();
              (*(*(v54 - 8) + 8))(&v52[v53], v54);
LABEL_31:
              v50 = *(v16 + 40);
              if (v50)
              {
LABEL_32:
                v29 = *(v16 + 32);
                v30 = v50;
              }

              else
              {
LABEL_28:
                v29 = sub_20C13CA04();
                v30 = v51;
              }

              v59 = v3[7];
              v60 = sub_20C1352E4();
              (*(*(v60 - 8) + 104))(v5 + v59, v64, v60);
              goto LABEL_15;
            default:
              sub_20B520158(v73, &unk_27C762300, &unk_20C151350);
              v28 = *(v16 + 40);
              if (v28)
              {
LABEL_11:
                v29 = *(v16 + 32);
                v30 = v28;
              }

              else
              {
LABEL_13:
                v29 = sub_20C13CA04();
                v30 = v31;
              }

              v32 = v3[7];
              v33 = sub_20C1352E4();
              (*(*(v33 - 8) + 104))(v5 + v32, v65, v33);
LABEL_15:
              *v5 = v29;
              v5[1] = v30;
              v5[2] = v12;
              v5[3] = v29;
              v5[4] = v30;
              v34 = (v5 + v3[8]);
              *v34 = v21;
              v34[1] = v23;
              v34[2] = v25;
              v34[3] = v27;
              *(v5 + v3[9]) = MEMORY[0x277D84F98];

              v1 = v66;
LABEL_16:
              v35 = *v67;
              if (*v67)
              {
                v36 = *(v67 + 1);

                v35(v5);

                sub_20B583ECC(v35, v36);
              }

              else
              {
              }

              sub_20B93D9CC(v5, type metadata accessor for MetricImpressionElement);
              sub_20B520158(v7, &qword_27C767E00, &unk_20C1639B0);
              v12 = v19;
              v8 = v68;
              if (v69 != v19)
              {
                continue;
              }

              goto LABEL_38;
          }
        }
      }

      break;
    }

    __break(1u);
  }

  else
  {
LABEL_38:
  }
}

void sub_20B93B9D0(__objc2_prot *a1)
{
  v2 = v1;
  v131 = a1;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAC0, &qword_20C1639A8);
  MEMORY[0x28223BE20](v135);
  v137 = &v128[-v3];
  v143 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v143);
  v134 = &v128[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v144 = &v128[-v6];
  v7 = type metadata accessor for MetricImpressionElement(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v128[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767E00, &unk_20C1639B0);
  MEMORY[0x28223BE20](v141);
  v11 = &v128[-v10];
  v132 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonActions;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonActions);
  v13 = *(v12 + 16);
  v14 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttons;
  v15 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementDisappearance;

  swift_beginAccess();
  v145 = v2;
  v142 = v14;
  v140 = v13;
  if (!v13)
  {
LABEL_38:

    v9 = v132;
    *(v2 + v132) = v131;

    swift_beginAccess();
    v65 = *(v2 + v14);
    if (v65 >> 62)
    {
      goto LABEL_97;
    }

    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_40;
  }

  v16 = 0;
  v130 = v144 + 8;
  v129 = *MEMORY[0x277D51768];
  v133 = *MEMORY[0x277D51750];
  v136 = *MEMORY[0x277D51778];
  v138 = v2 + v15;
  v139 = v12;
  while (2)
  {
    if (v16 >= *(v12 + 16))
    {
      __break(1u);
    }

    else
    {
      v18 = type metadata accessor for ButtonAction(0);
      v19 = v12 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80)) + *(*(v18 - 8) + 72) * v16;
      v20 = v11 + *(v141 + 48);
      *v11 = v16;
      sub_20B7632E0(v19, v20, type metadata accessor for ButtonAction);
      v21 = *(v2 + v14);
      if ((v21 & 0xC000000000000001) != 0)
      {

        v22 = MEMORY[0x20F2F5430](v16, v21);

        goto LABEL_9;
      }

      if (v16 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v22 = *(v21 + 8 * v16 + 32);
LABEL_9:
        v23 = v16 + 1;
        [v22 frame];
        [v2 convertRect:v22 fromCoordinateSpace:?];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        sub_20B7632E0(v20 + *(v18 + 28), v144, type metadata accessor for ButtonAction.ActionType);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8, &unk_20C14FB90);
            v52 = *(v51 + 48);
            v53 = v144;
            sub_20B520158(&v144[*(v51 + 64)], &unk_27C768660, &unk_20C152F60);
            sub_20B520158(&v53[v52], &qword_27C7622F0, &unk_20C14FD00);
            v54 = *(v20 + 40);
            if (v54)
            {
              goto LABEL_32;
            }

            goto LABEL_28;
          case 2u:
          case 6u:
          case 8u:
            sub_20B93D9CC(v144, type metadata accessor for ButtonAction.ActionType);
            v32 = *(v20 + 40);
            if (!v32)
            {
              goto LABEL_13;
            }

            goto LABEL_11;
          case 3u:
            v44 = sub_20C134014();
            goto LABEL_35;
          case 4u:
            v44 = sub_20C133954();
            goto LABEL_35;
          case 5u:
            v48 = v7[7];
            v49 = sub_20C1352E4();
            (*(*(v49 - 8) + 104))(&v9[v48], v129, v49);
            *v9 = 0x6C6F686563616C70;
            *(v9 + 1) = 0xEB00000000726564;
            *(v9 + 2) = v16;
            *(v9 + 3) = 0x6C6F686563616C70;
            *(v9 + 4) = 0xEB00000000726564;
            v50 = &v9[v7[8]];
            *v50 = v25;
            *(v50 + 1) = v27;
            *(v50 + 2) = v29;
            *(v50 + 3) = v31;
            *&v9[v7[9]] = MEMORY[0x277D84F98];
            goto LABEL_16;
          case 7u:
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0, &unk_20C169DE0);
            v42 = *(v41 + 64);
            v43 = *(v41 + 80);
            goto LABEL_24;
          case 9u:
            v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8, &unk_20C14FBA0) + 48);
            v60 = sub_20C138894();
            v61 = v144;
            (*(*(v60 - 8) + 8))(&v144[v59], v60);
            v62 = sub_20C138B94();
            (*(*(v62 - 8) + 8))(v61, v62);
            goto LABEL_31;
          case 0xAu:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200, &unk_20C1639C0);

            v44 = sub_20C134284();
LABEL_35:
            (*(*(v44 - 8) + 8))(v144, v44);
            v32 = *(v20 + 40);
            if (!v32)
            {
              goto LABEL_13;
            }

            goto LABEL_11;
          case 0xBu:
          case 0xEu:
          case 0xFu:
          case 0x10u:
          case 0x11u:
          case 0x12u:
          case 0x13u:
            v32 = *(v20 + 40);
            if (v32)
            {
              goto LABEL_11;
            }

            goto LABEL_13;
          case 0xCu:
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0, &unk_20C14FBB0);
            v42 = *(v45 + 48);
            v43 = *(v45 + 64);
LABEL_24:
            v46 = sub_20C137254();
            v47 = v144;
            (*(*(v46 - 8) + 8))(&v144[v43], v46);
            sub_20B520158(&v47[v42], &qword_27C76A410, &unk_20C14FBC0);
            sub_20B93D9CC(v47, type metadata accessor for StartWorkoutSessionRequest);
            v32 = *(v20 + 40);
            if (!v32)
            {
              goto LABEL_13;
            }

            goto LABEL_11;
          case 0xDu:
            v56 = v144;

            v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210, &unk_20C169DF0) + 48);
            v58 = sub_20C132C14();
            (*(*(v58 - 8) + 8))(&v56[v57], v58);
LABEL_31:
            v54 = *(v20 + 40);
            if (v54)
            {
LABEL_32:
              v33 = *(v20 + 32);
              v34 = v54;
            }

            else
            {
LABEL_28:
              v33 = sub_20C13CA04();
              v34 = v55;
            }

            v63 = v7[7];
            v64 = sub_20C1352E4();
            (*(*(v64 - 8) + 104))(&v9[v63], v133, v64);
            goto LABEL_15;
          default:
            sub_20B520158(v144, &unk_27C762300, &unk_20C151350);
            v32 = *(v20 + 40);
            if (v32)
            {
LABEL_11:
              v33 = *(v20 + 32);
              v34 = v32;
            }

            else
            {
LABEL_13:
              v33 = sub_20C13CA04();
              v34 = v35;
            }

            v36 = v7[7];
            v37 = sub_20C1352E4();
            (*(*(v37 - 8) + 104))(&v9[v36], v136, v37);
LABEL_15:
            *v9 = v33;
            *(v9 + 1) = v34;
            *(v9 + 2) = v16;
            *(v9 + 3) = v33;
            *(v9 + 4) = v34;
            v38 = &v9[v7[8]];
            *v38 = v25;
            *(v38 + 1) = v27;
            *(v38 + 2) = v29;
            *(v38 + 3) = v31;
            *&v9[v7[9]] = MEMORY[0x277D84F98];

            v2 = v145;
LABEL_16:
            v39 = *v138;
            if (*v138)
            {
              v40 = *(v138 + 1);

              v39(v9);

              sub_20B583ECC(v39, v40);
            }

            else
            {
            }

            sub_20B93D9CC(v9, type metadata accessor for MetricImpressionElement);
            sub_20B520158(v11, &qword_27C767E00, &unk_20C1639B0);
            v16 = v23;
            v17 = v140 == v23;
            v14 = v142;
            v12 = v139;
            if (!v17)
            {
              continue;
            }

            goto LABEL_38;
        }
      }
    }

    break;
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_97:
    v66 = sub_20C13DB34();
LABEL_40:
    v67 = *(*&v9[v2] + 16);
    v68 = *(v2 + v14);
    if (v67 >= v66)
    {
      if (!(v68 >> 62))
      {
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v67)
        {
LABEL_101:

          goto LABEL_102;
        }

LABEL_57:
        v73 = *(v2 + v14);
        if (!(v73 >> 62))
        {
          v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v75 = v67 - v74;
          if (!__OFSUB__(v67, v74))
          {
            goto LABEL_59;
          }

          goto LABEL_130;
        }

LABEL_128:
        v127 = sub_20C13DB34();
        v75 = v67 - v127;
        if (!__OFSUB__(v67, v127))
        {
LABEL_59:
          if ((v75 & 0x8000000000000000) == 0)
          {
            if (v75)
            {
              v76 = *(v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonStackView);
              v77 = *(v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_layout);
              v78 = type metadata accessor for TVButtonTextContentView();

              do
              {
                v79 = objc_allocWithZone(v78);
                v80 = TVButtonTextContentView.init(title:)(0, 0);
                v81 = objc_allocWithZone(type metadata accessor for TVButton());
                v82 = sub_20BB87F6C(v80, 0, 0, v81, 0.0, 0.0, 0.0, 0.0);
                swift_beginAccess();
                v83 = v82;
                MEMORY[0x20F2F43B0]();
                if (*((*(v2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_20C13CCA4();
                }

                sub_20C13CCE4();
                swift_endAccess();
                v84 = v83;
                [v76 addArrangedSubview_];
                v85 = [v84 heightAnchor];

                v86 = [v85 constraintEqualToConstant_];
                [v86 setActive_];

                v14 = v142;
                --v75;
              }

              while (v75);
              goto LABEL_102;
            }

            goto LABEL_101;
          }

LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          return;
        }

LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

LABEL_100:
      v105 = sub_20C13DB34();
      v67 = *(*&v9[v2] + 16);
      if (v105 >= v67)
      {
        goto LABEL_101;
      }

      goto LABEL_57;
    }

    v14 = v68 >> 62;
    if (v68 >> 62)
    {
      v69 = sub_20C13DB34();
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v69 >= v67)
    {
      v70 = v67;
    }

    else
    {
      v70 = v69;
    }

    if (v69 < 0)
    {
      v70 = v67;
    }

    if (v67)
    {
      v71 = v70;
    }

    else
    {
      v71 = 0;
    }

    if (v69 < v71)
    {
      __break(1u);
      goto LABEL_100;
    }

    if (v14)
    {
      if ((v68 & 0x8000000000000000) != 0)
      {
        v67 = v68;
      }

      else
      {
        v67 = v68 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_20C13DB34() < v71)
      {
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v72 = sub_20C13DB34();
    }

    else
    {
      v72 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v72 < v71)
      {
        goto LABEL_123;
      }
    }

    if (v72 < v69)
    {
      goto LABEL_124;
    }

    if (v69 < 0)
    {
      goto LABEL_125;
    }

    if ((v68 & 0xC000000000000001) == 0 || v71 == v69)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v71 >= v69)
      {
        goto LABEL_132;
      }

      type metadata accessor for TVButton();
      swift_bridgeObjectRetain_n();

      v87 = v71;
      do
      {
        v88 = v87 + 1;
        sub_20C13DCB4();
        v87 = v88;
      }

      while (v69 != v88);
    }

    if (v14)
    {
      v14 = sub_20C13DE54();
      v89 = v90;
      v71 = v91;
      v93 = v92;

      v69 = v93 >> 1;
    }

    else
    {
      v14 = v68 & 0xFFFFFFFFFFFFFF8;
      v89 = (v68 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v94 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonStackView;
    swift_unknownObjectRetain();
    v95 = v69 - v71;
    if (v69 == v71)
    {
      break;
    }

    if (v71 <= v69)
    {
      v96 = v69;
    }

    else
    {
      v96 = v71;
    }

    v97 = v96 - v71;
    v98 = (v89 + 8 * v71);
    v2 = &off_277D9A000;
    while (v97)
    {
      v99 = *v98++;
      v100 = *(v145 + v94);
      v101 = v99;
      [v100 removeArrangedSubview_];
      [v101 removeFromSuperview];

      --v97;
      if (!--v95)
      {
        goto LABEL_90;
      }
    }
  }

LABEL_90:
  swift_unknownObjectRelease_n();
  v2 = v145;
  v14 = v142;
  v67 = *(v145 + v142);
  if (!(v67 >> 62))
  {
    v102 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_92;
  }

LABEL_126:
  v102 = sub_20C13DB34();
LABEL_92:
  v103 = *(*&v9[v2] + 16);
  v104 = v102 - v103;
  if (__OFSUB__(v102, v103))
  {
    __break(1u);
    goto LABEL_128;
  }

  *(v2 + v14) = sub_20BBD1450(v104, v67);

LABEL_102:
  v106 = *(v2 + v14);
  v107 = *(v2 + v132);
  if (v106 >> 62)
  {
    goto LABEL_122;
  }

  v108 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_104:

  if (v108)
  {
    v109 = 0;
    v144 = (v106 & 0xC000000000000001);
    do
    {
      if (v144)
      {
        v116 = MEMORY[0x20F2F5430](v109, v106);
      }

      else
      {
        if (v109 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          v108 = sub_20C13DB34();
          goto LABEL_104;
        }

        v116 = *(v106 + 8 * v109 + 32);
      }

      v117 = v116;
      v118 = *(v107 + 16);
      if (v109 == v118)
      {

        break;
      }

      if (v109 >= v118)
      {
        goto LABEL_121;
      }

      v119 = (type metadata accessor for ButtonAction(0) - 8);
      v120 = v107 + ((*(*v119 + 80) + 32) & ~*(*v119 + 80)) + *(*v119 + 72) * v109;
      v121 = *(v135 + 48);
      v122 = v137;
      v123 = v137 + v121;
      *v137 = v117;
      sub_20B7632E0(v120, v122 + v121, type metadata accessor for ButtonAction);
      v124 = &v123[v119[9]];
      v125 = v134;
      sub_20B7632E0(v124, v134, type metadata accessor for ButtonAction.ActionType);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        if ((*v125 & 1) == 0)
        {
          v126 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
          v113 = TVButtonTextContentView.init(title:)(0, 0);
          v114 = 1;
          v115 = &selRef_removeTarget_action_forControlEvents_;
          goto LABEL_108;
        }
      }

      else
      {
        sub_20B93D9CC(v125, type metadata accessor for ButtonAction.ActionType);
      }

      v110 = *(v123 + 4);
      v111 = *(v123 + 5);
      v112 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());

      v113 = TVButtonTextContentView.init(title:)(v110, v111);
      v114 = 0;
      v115 = &selRef_addTarget_action_forControlEvents_;
LABEL_108:
      ++v109;
      sub_20BB88C24(v113, v117);
      v117[OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading] = v114;
      sub_20B9DDDD4();
      [v117 *v115];

      sub_20B520158(v137, &unk_27C76BAC0, &qword_20C1639A8);
    }

    while (v108 != v109);
  }

  [v145 setNeedsUpdateConstraints];
  sub_20B93B1A8();
}

void sub_20B93CA14(uint64_t a1)
{
  v3 = sub_20C133244();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonAction(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v1 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonStackView) subviews];
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v15 = sub_20C13CC74();

  v16 = sub_20BBD18BC(v15);

  if (v16)
  {
    v17 = sub_20BD904F4(a1, v16);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonActions);
      if (v17 < *(v20 + 16))
      {
        if (v17 < 0)
        {
          __break(1u);
        }

        else
        {
          sub_20B7632E0(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v13, type metadata accessor for ButtonAction);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v22 = Strong;
            sub_20B7632E0(v13, v8, type metadata accessor for ButtonAction);
            v23 = swift_storeEnumTagMultiPayload();
            v24 = MEMORY[0x28223BE20](v23);
            *(&v29 - 4) = 0;
            *(&v29 - 24) = 1;
            *(&v29 - 2) = v8;
            *(&v29 - 1) = v22;
            v25 = [*(v22 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
            if (v25)
            {
              v26 = v25;
              sub_20C1331E4();

              sub_20C0C1CDC(v5, sub_20B5E27BC);
              (*(v30 + 8))(v5, v3);
            }

            swift_unknownObjectRelease();
            sub_20B93D9CC(v13, type metadata accessor for ButtonAction);
            v27 = type metadata accessor for ShelfItemAction;
            v28 = v8;
          }

          else
          {
            v27 = type metadata accessor for ButtonAction;
            v28 = v13;
          }

          sub_20B93D9CC(v28, v27);
        }
      }
    }
  }
}

id sub_20B93CF24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVDetailHeaderCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVDetailHeaderCell(uint64_t a1)
{
  result = qword_27C767DF0;
  if (!qword_27C767DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B93D0FC(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20B93D1F0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B93D23C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B93D294(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B93D30C(double a1, double a2)
{
  if (a2 <= 0.0)
  {
    v8 = [v2 contentView];
    [v8 setAlpha_];
  }

  else
  {
    v4 = &v2[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_layout];
    v5 = *&v2[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_layout + 40];
    v6 = [v2 contentView];
    v7 = v4[7];
    v8 = v6;
    if (v5 > a2 && v7 <= 1.0 - a2 / v5)
    {
      v7 = 1.0 - a2 / v5;
    }

    [v6 setAlpha_];
  }
}

uint64_t sub_20B93D3DC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementAppearance);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementAppearance);
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementAppearance + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4, v5);
}

uint64_t sub_20B93D3FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementDisappearance);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementDisappearance);
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementDisappearance + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4, v5);
}

uint64_t sub_20B93D41C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onImpressionableBoundsChange);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onImpressionableBoundsChange);
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onImpressionableBoundsChange + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4, v5);
}

uint64_t sub_20B93D43C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onVisibleBoundsChange);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onVisibleBoundsChange);
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onVisibleBoundsChange + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4, v5);
}

void sub_20B93D45C(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 9)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
      v11 = *&v1[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_descriptionTextView];
      v12 = v7;
      v13 = v9;
      v14 = v10;
      [v11 setAttributedText_];
      v15 = [v11 textContainer];
      [v15 setLineBreakMode_];

      v16 = [objc_opt_self() preferredFontForTextStyle_];
      [v11 setFont_];

      v17 = *&v1[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_traitsTextView];
      [v17 setAttributedText_];
      v18 = *MEMORY[0x277D76C80];
      v19 = *(MEMORY[0x277D76C80] + 8);
      v20 = *&v1[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_traitsWidthConstraint];
      [v17 sizeThatFits_];
      [v20 setConstant_];

      v21 = *&v1[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_captionTagsLabel];
      [v21 setAttributedText_];
      sub_20B93B9D0(v8);
      [v21 setHidden_];
      v48 = sub_20C13CC54();
      [v1 setAccessibilityMediaTags_];

      v22 = v48;
    }

    else
    {
      v34 = *&v1[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_descriptionTextView];
      v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v36 = sub_20C13C914();
      v37 = [v35 initWithString_];

      [v34 setAttributedText_];
      v38 = *&v1[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_traitsTextView];
      v39 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v40 = sub_20C13C914();
      v41 = [v39 initWithString_];

      [v38 setAttributedText_];
      v42 = *&v1[OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_captionTagsLabel];
      v43 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v44 = sub_20C13C914();
      v45 = [v43 initWithString_];

      [v42 setAttributedText_];
      v46 = MEMORY[0x277D84F90];

      sub_20B93B9D0(v46);
    }
  }

  else
  {
    sub_20C13B534();

    v23 = v1;
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = a1;
      v50 = v48;
      *v26 = 138543618;
      *(v26 + 4) = v23;
      *v27 = v23;
      *(v26 + 12) = 2082;
      v28 = sub_20B5F66D0();
      v29 = v23;
      v30 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v28);
      v32 = sub_20B51E694(v30, v31, &v50);

      *(v26 + 14) = v32;
      _os_log_impl(&dword_20B517000, v24, v25, "Attempted to configure %{public}@ with item: %{public}s", v26, 0x16u);
      sub_20B520158(v27, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      v33 = v48;
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x20F2F6A40](v33, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20B93D9CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20B93DA2C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementAppearance);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onElementDisappearance);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onVisibleBoundsChange);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v1 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_onImpressionableBoundsChange);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonStackView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v9 setAxis_];
  [v9 setAlignment_];
  [v9 setDistribution_];
  [v9 setSpacing_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_descriptionStack;
  v11 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v11 setAxis_];
  [v11 setAlignment_];
  [v11 setDistribution_];
  [v11 setSpacing_];
  [v11 &selRef_count + 2];
  *(v1 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_descriptionTextView;
  v13 = objc_opt_self();
  v14 = [v13 textViewUsingTextLayoutManager_];
  [v14 setTextAlignment_];
  v15 = [v14 textContainer];
  [v15 setMaximumNumberOfLines_];

  v16 = v14;
  [v16 setScrollEnabled_];
  [v16 setContentInsetAdjustmentBehavior_];

  v17 = *MEMORY[0x277D768C8];
  v18 = *(MEMORY[0x277D768C8] + 8);
  v19 = *(MEMORY[0x277D768C8] + 16);
  v20 = *(MEMORY[0x277D768C8] + 24);
  v21 = sub_20BD517F0(*MEMORY[0x277D768C8], v18, v19, v20);

  v22 = sub_20BD518BC();
  *(v1 + v12) = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_traitsTextView;
  v24 = [v13 textViewUsingTextLayoutManager_];
  [v24 setTextAlignment_];
  v25 = objc_opt_self();
  v26 = [v25 preferredFontForTextStyle_];
  [v24 setFont_];

  [v24 setContentInsetAdjustmentBehavior_];
  v27 = sub_20BD517F0(v17, v18, v19, v20);

  v28 = sub_20BD518BC();
  [v28 setScrollEnabled_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v23) = v28;
  v29 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_captionTagsLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v30 setTextAlignment_];
  [v30 setLineBreakMode_];
  [v30 setNumberOfLines_];
  v31 = [v25 preferredFontForTextStyle_];
  [v30 setFont_];

  v32 = v30;
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [v32 setContentHuggingPriority:1 forAxis:v34];

  v35 = sub_20BD518BC();
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v29) = v35;
  v36 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttons) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonActions) = v36;
  v37 = OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_focusContainerGuide;
  *(v1 + v37) = [objc_opt_self() smu_focusContainerGuide];
  v38 = v1 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_layout;
  *v38 = xmmword_20C156DE0;
  *(v38 + 16) = xmmword_20C156DF0;
  *(v38 + 32) = xmmword_20C156E10;
  *(v38 + 48) = xmmword_20C1638A0;
  *(v38 + 64) = 0x404B000000000000;
  *(v1 + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_accessibilityMediaTags) = 0;
  sub_20C13DE24();
  __break(1u);
}

void *sub_20B93DFB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_floatingView);
  v2 = v1;
  return v1;
}

char *sub_20B93DFE4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout];
  sub_20B941FA8(v155);
  v12 = v155[5];
  *(v11 + 4) = v155[4];
  *(v11 + 5) = v12;
  v13 = v155[7];
  *(v11 + 6) = v155[6];
  *(v11 + 7) = v13;
  v14 = v155[1];
  *v11 = v155[0];
  *(v11 + 1) = v14;
  v15 = v155[3];
  v16 = &v4[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView];
  *(v11 + 2) = v155[2];
  *(v11 + 3) = v15;
  v17 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v17 setClipsToBounds_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  *v16 = v17;
  *(v16 + 1) = &off_2822B63E8;
  v18 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_titleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v19 setLineBreakMode_];
  [v19 setNumberOfLines_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  v20 = objc_opt_self();
  v21 = *MEMORY[0x277D76920];
  v22 = [v20 preferredFontForTextStyle_];
  [v22 pointSize];
  v24 = v23;

  v25 = [v20 boldSystemFontOfSize_];
  [v19 setFont_];

  v26 = objc_opt_self();
  v27 = [v26 whiteColor];
  [v19 setTextColor_];

  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  *&v4[v18] = v19;
  v28 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_subtitleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v29 setLineBreakMode_];
  [v29 setNumberOfLines_];
  [v29 setAllowsDefaultTighteningForTruncation_];
  v30 = [v20 preferredFontForTextStyle_];
  [v29 setFont_];

  v31 = [v26 whiteColor];
  [v29 setTextColor_];

  v32 = v29;
  [v32 setAlpha_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];

  [v32 setAdjustsFontForContentSizeCategory_];
  *&v4[v28] = v32;
  v33 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  v34 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_floatingView;
  *&v4[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_floatingView] = v33;
  v35 = qword_27C760820;
  v36 = v33;
  if (v35 != -1)
  {
    swift_once();
  }

  [v36 setCornerRadius_];

  [*&v4[v34] setContinuousCornerEnabled_];
  [*&v4[v34] setRoundContentWhenDeselected_];
  [*&v4[v34] setFocusedSizeIncrease_];
  [*&v4[v34] setContentMotionRotation:0.0 translation:{0.0, *(v11 + 5), *(v11 + 6)}];
  v37 = *&v4[v34];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 configurationWithStyle_];
  [v39 setFocusAnimationConfiguration_];

  [*&v4[v34] setBackgroundColor:*(v11 + 12) forState:0];
  [*&v4[v34] setShadowVerticalOffset_];
  [*&v4[v34] setShadowOpacity:0 forUserInterfaceStyle:*(v11 + 10)];
  [*&v4[v34] setShadowOpacity:2 forUserInterfaceStyle:*(v11 + 10)];
  [*&v4[v34] setShadowOpacity:1 forUserInterfaceStyle:*(v11 + 10)];
  [*&v4[v34] setShadowRadius_];
  v154.receiver = v4;
  v154.super_class = type metadata accessor for TVMusicTrackCell(0);
  v41 = objc_msgSendSuper2(&v154, sel_initWithFrame_, a1, a2, a3, a4);
  v42 = [v41 contentView];
  v43 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_floatingView;
  [v42 addSubview_];

  v44 = &v41[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView];
  v45 = *&v41[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView];
  v46 = *&v41[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v48 = *(v46 + 288);
  v49 = v45;
  v48(2, ObjectType, v46);

  v50 = v43;
  result = [*&v41[v43] contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v52 = result;
  [result addSubview_];

  result = [*&v41[v43] contentView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v53 = result;
  v152 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_titleLabel;
  [result addSubview_];

  result = [*&v41[v43] contentView];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v54 = result;
  v55 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_subtitleLabel;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_20C152A00;
  v57 = [v41 contentView];
  v58 = [v57 widthAnchor];

  v59 = &v41[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout];
  v60 = [v58 constraintEqualToConstant_];

  *(v56 + 32) = v60;
  v61 = [v41 contentView];
  v62 = [v61 heightAnchor];

  v63 = [v62 constraintEqualToConstant_];
  *(v56 + 40) = v63;
  v64 = [*v44 topAnchor];
  result = [*&v41[v50] contentView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v65 = result;
  v66 = [result topAnchor];

  v67 = [v64 constraintEqualToAnchor_];
  *(v56 + 48) = v67;
  v68 = [*v44 leadingAnchor];
  result = [*&v41[v50] contentView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v69 = result;
  v70 = [result leadingAnchor];

  v71 = [v68 constraintEqualToAnchor_];
  *(v56 + 56) = v71;
  v72 = [*v44 bottomAnchor];
  result = [*&v41[v50] contentView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v73 = result;
  v74 = [result bottomAnchor];

  v75 = [v72 constraintEqualToAnchor_];
  *(v56 + 64) = v75;
  v76 = [*v44 widthAnchor];
  v77 = [v76 constraintEqualToConstant_];

  *(v56 + 72) = v77;
  v78 = [*&v41[v152] topAnchor];
  result = [*&v41[v50] contentView];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v79 = result;
  v80 = [result topAnchor];

  v81 = [v78 constraintEqualToAnchor:v80 constant:*v59];
  *(v56 + 80) = v81;
  v82 = [*&v41[v152] leadingAnchor];
  v83 = [*v44 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:v59[1]];

  *(v56 + 88) = v84;
  v85 = [*&v41[v152] trailingAnchor];
  result = [*&v41[v50] contentView];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v86 = result;
  v87 = [result trailingAnchor];

  v88 = [v85 constraintLessThanOrEqualToAnchor:v87 constant:-v59[1]];
  *(v56 + 96) = v88;
  v89 = [*&v41[v55] bottomAnchor];
  result = [*&v41[v50] contentView];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v90 = result;
  v91 = [result bottomAnchor];

  v92 = [v89 constraintEqualToAnchor:v91 constant:-*v59];
  *(v56 + 104) = v92;
  v93 = [*&v41[v55] leadingAnchor];
  v94 = [*v44 trailingAnchor];
  v95 = [v93 &selRef_passwordEntryCancelledHandler + 6];

  *(v56 + 112) = v95;
  v96 = [*&v41[v55] trailingAnchor];
  result = [*&v41[v50] contentView];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v97 = result;
  v98 = [result trailingAnchor];

  v99 = [v96 constraintLessThanOrEqualToAnchor:v98 constant:-v59[1]];
  *(v56 + 120) = v99;
  v149 = v50;
  v100 = *&v41[v50];
  v101 = [v41 contentView];
  v102 = *MEMORY[0x277D768C8];
  v103 = *(MEMORY[0x277D768C8] + 8);
  v105 = *(MEMORY[0x277D768C8] + 16);
  v104 = *(MEMORY[0x277D768C8] + 24);
  v106 = [v100 leadingAnchor];
  v107 = [v101 leadingAnchor];
  v108 = [v106 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v109) = 1148846080;
  [v108 setPriority_];
  v153 = v108;
  v110 = [v100 trailingAnchor];
  v111 = [v101 trailingAnchor];
  v112 = -v104;
  v113 = [v110 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v114) = 1148846080;
  [v113 setPriority_];
  v115 = v113;
  v116 = [v100 topAnchor];
  v117 = [v101 topAnchor];
  v118 = [v116 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v119) = 1148846080;
  [v118 setPriority_];
  v120 = [v100 bottomAnchor];
  v121 = [v101 bottomAnchor];
  v122 = -v105;
  v123 = [v120 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v124) = 1148846080;
  [v123 setPriority_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v153;
  *(inited + 40) = v115;
  *(inited + 48) = v118;
  *(inited + 56) = v123;
  v126 = v118;

  sub_20B8D9310(inited);
  result = [*&v41[v149] contentView];
  if (result)
  {
    v127 = result;
    v151 = objc_opt_self();
    v128 = [v41 contentView];

    v129 = [v127 leadingAnchor];
    v130 = [v128 leadingAnchor];
    v131 = [v129 constraintEqualToAnchor:v130 constant:v103];

    LODWORD(v132) = 1148846080;
    [v131 setPriority_];
    v150 = v131;
    v133 = [v127 trailingAnchor];
    v134 = [v128 trailingAnchor];
    v135 = [v133 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v136) = 1148846080;
    [v135 setPriority_];
    v137 = v135;
    v138 = [v127 topAnchor];
    v139 = [v128 topAnchor];
    v140 = [v138 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v141) = 1148846080;
    [v140 setPriority_];
    v142 = [v127 bottomAnchor];
    v143 = [v128 bottomAnchor];
    v144 = [v142 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v145) = 1148846080;
    [v144 setPriority_];
    v146 = swift_initStackObject();
    *(v146 + 16) = xmmword_20C14FE90;
    *(v146 + 32) = v150;
    *(v146 + 40) = v137;
    *(v146 + 48) = v140;
    *(v146 + 56) = v144;
    v147 = v140;

    sub_20B8D9310(v146);
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v148 = sub_20C13CC54();

    [v151 activateConstraints_];

    return v41;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_20B93F3E4(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v8 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v9 = [v3 contentView];
    v10 = [v9 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v11 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F2F5430](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v8 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_20B6FFB30(&v32, v14);

        ++v13;
        if (v8 == i)
        {
          v15 = aBlock[0];
          v8 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v15 = MEMORY[0x277D84FA0];
LABEL_16:

    v33 = v15;
    sub_20B6FFB30(aBlock, *&v4[v8[414]]);

    sub_20B8E9218(v33);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, aBlock);
        v20 = *&v4[v7];
        v21 = v29;
        v22 = v30;
        __swift_project_boxed_opaque_existential_1(aBlock, v29);
        (*(v22 + 2))(v20, a2 & 1, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v19 += 40;
        --v18;
      }

      while (v18);
    }

    v6 = a1;
  }

  [*&v4[v8[414]] setControlState:v6 animated:a2 & 1];
  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = v4;
  *(v24 + 24) = v6;
  v30 = sub_20B9424B8;
  v31 = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  v29 = &block_descriptor_57_1;
  v25 = _Block_copy(aBlock);
  v26 = v4;

  [v23 animateWithDuration:v25 animations:0.5];
  _Block_release(v25);
}

void sub_20B93F714(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v8 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
  if (*&v4[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v4[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v9 = [v4 contentView];
    v10 = [v9 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v11 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F2F5430](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v8 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_20B6FFB30(&v31, v14);

        ++v13;
        if (v8 == i)
        {
          v15 = aBlock[0];
          v8 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v15 = MEMORY[0x277D84FA0];
LABEL_16:

    v32 = v15;
    sub_20B6FFB30(aBlock, *&v4[v8[414]]);

    sub_20B8E9218(v32);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, aBlock);
        v20 = *&v4[v7];
        v21 = v28;
        v22 = v29;
        __swift_project_boxed_opaque_existential_1(aBlock, v28);
        (*(v22 + 3))(v20, a2, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v19 += 40;
        --v18;
      }

      while (v18);
    }

    v6 = a1;
  }

  [*&v4[v8[414]] setControlState:v6 withAnimationCoordinator:a2];
  if (a2)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = v6;
    v29 = sub_20B941F34;
    v30 = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v28 = &block_descriptor_54;
    v24 = _Block_copy(aBlock);
    v25 = v4;

    [a2 addCoordinatedAnimations:v24 completion:0];
    _Block_release(v24);
  }
}

id sub_20B93FA38(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_titleLabel];
  v4 = sub_20B93FAE0(a1);
  [v3 setAttributedText_];

  v5 = 112;
  if (a1)
  {
    v5 = 104;
  }

  [*&v1[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_subtitleLabel] setTextColor_];

  return [v1 layoutIfNeeded];
}

int *sub_20B93FAE0(int a1)
{
  LODWORD(v88) = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A80, &unk_20C1624A0);
  MEMORY[0x28223BE20](v89);
  v3 = &v80 - v2;
  v4 = type metadata accessor for ShelfCellItemInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v80 - v9;
  v11 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_itemInfo;
  swift_beginAccess();
  v12 = v1 + v11;
  v13 = v1;
  sub_20B52F9E8(v12, v10, &qword_27C762550, &unk_20C1505A0);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_20B520158(v10, &qword_27C762550, &unk_20C1505A0);
    return [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  v14 = v3;
  v15 = v89;
  sub_20B86C00C(v10, v7);
  sub_20B520158(v10, &qword_27C762550, &unk_20C1505A0);
  v16 = *(v7 + 1);

  sub_20B86C070(v7);
  if (((v16 >> 57) & 0x78 | v16 & 7) != 0x29)
  {

    return [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  v17 = swift_projectBox();
  sub_20B52F9E8(v17, v14, &qword_27C767A80, &unk_20C1624A0);
  v18 = *v14;
  v19 = *(v14 + 1);

  v20 = v15[16];
  v21 = &v14[v15[20]];
  v22 = *v21;
  v86 = *(v21 + 1);
  v87 = v22;
  LODWORD(v85) = v21[16];
  v23 = *&v14[v15[24]];
  v24 = sub_20C137C24();
  (*(*(v24 - 8) + 8))(&v14[v20], v24);

  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
  inited = swift_initStackObject();
  v84 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v26 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v83 = v13;
  v27 = 112;
  if (v88)
  {
    v27 = 104;
  }

  v28 = *(v13 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout + v27);
  v82 = sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
  *(inited + 64) = v82;
  *(inited + 40) = v28;
  v29 = v26;
  v30 = v28;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C763978, &unk_20C163AF0);
  *&v90 = v23;
  v92 = sub_20C13DFA4();
  v93 = v31;
  MEMORY[0x20F2F4230](8238, 0xE200000000000000);
  MEMORY[0x20F2F4230](v18, v19);

  MEMORY[0x20F2F4230](32, 0xE100000000000000);
  v32 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v33 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B941F60(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
  v34 = sub_20C13C744();

  v89 = [v32 initWithString:v33 attributes:v34];

  v36 = v86;
  v35 = v87;
  v92 = v87;
  v93 = v86;
  LOBYTE(v32) = v85;
  v94 = v85;
  v90 = xmmword_20C152300;
  v91 = 1;
  sub_20B654378();
  sub_20B652F70();
  LOBYTE(v34) = sub_20C133BF4();
  sub_20B583F4C(v35, v36, v32);
  if ((v34 & 1) == 0)
  {
    return v89;
  }

  v37 = sub_20C13C914();
  v38 = [objc_opt_self() systemImageNamed_];

  if (!v38)
  {
    return v89;
  }

  v39 = [v38 imageWithRenderingMode_];
  if (v39)
  {
    v40 = v39;
    v41 = [objc_opt_self() textAttachmentWithImage_];
    v87 = v41;
    sub_20B51C88C(0, &qword_27C766940, 0x277CCAB48);
    v85 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_20C1517D0;
    *(v42 + 32) = v29;
    v81 = v42 + 32;
    v43 = objc_opt_self();
    v44 = v29;
    v45 = &selRef_darkGrayColor;
    if ((v88 & 1) == 0)
    {
      v45 = &selRef_lightGrayColor;
    }

    v46 = [v43 *v45];
    v47 = MEMORY[0x277D740A8];
    *(v42 + 40) = v46;
    v86 = v40;
    v48 = *v47;
    *(v42 + 64) = v82;
    *(v42 + 72) = v48;
    v88 = v38;
    v49 = *MEMORY[0x277D76938];
    v50 = *MEMORY[0x277D743F8];
    v51 = objc_opt_self();
    v52 = v48;
    v82 = [v51 preferredFontDescriptorWithTextStyle:v49 compatibleWithTraitCollection:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
    v53 = swift_initStackObject();
    *(v53 + 16) = v84;
    v54 = *MEMORY[0x277D74380];
    *(v53 + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
    v55 = swift_initStackObject();
    v56 = MEMORY[0x277D74430];
    *(v55 + 16) = v84;
    v57 = *v56;
    *(v55 + 32) = *v56;
    *(v55 + 40) = v50;
    v58 = v54;
    v59 = v57;
    v60 = sub_20B6B134C(v55);
    swift_setDeallocating();
    sub_20B520158(v55 + 32, &unk_27C773200, qword_20C158A40);
    *(v53 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
    *(v53 + 40) = v60;
    sub_20B6B143C(v53);
    swift_setDeallocating();
    sub_20B520158(v53 + 32, &qword_27C773210, &qword_20C159860);
    type metadata accessor for AttributeName(0);
    sub_20B941F60(&qword_27C7618A0, type metadata accessor for AttributeName, &unk_20C14D960);
    v61 = sub_20C13C744();

    v62 = v82;
    v63 = [v82 fontDescriptorByAddingAttributes_];

    v64 = [objc_opt_self() fontWithDescriptor:v63 size:0.0];
    v65 = sub_20B51C88C(0, &qword_27C767A60, 0x277D74300);
    *(v42 + 80) = v64;
    v66 = *MEMORY[0x277D74078];
    *(v42 + 104) = v65;
    *(v42 + 112) = v66;
    v67 = v83;
    v68 = *(v83 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout + 120);
    *(v42 + 144) = MEMORY[0x277D85048];
    *(v42 + 120) = v68;
    v69 = v66;
    sub_20B6B1650(v42);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978, &unk_20C163AF0);
    swift_arrayDestroy();
    v70 = sub_20C13C744();

    v71 = v85;
    [v85 addAttributes:v70 range:{0, objc_msgSend(v85, sel_length)}];

    v72 = v89;
    [v89 appendAttributedString_];
    v73 = *(v67 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_titleLabel);
    v74 = [v72 string];
    v75 = sub_20C13C954();
    v77 = v76;

    v92 = v75;
    v93 = v77;

    MEMORY[0x20F2F4230](0x6963696C70784528, 0xEF296E6F63492074);

    v78 = sub_20C13C914();

    [v73 setAccessibilityIdentifier_];

    return v72;
  }

  else
  {

    return v89;
  }
}

void sub_20B940558()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_itemInfo, &qword_27C762550, &unk_20C1505A0);
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout + 80);
  v5[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout + 64);
  v5[5] = v1;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout + 112);
  v5[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout + 96);
  v5[7] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout + 16);
  v5[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout);
  v5[1] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout + 48);
  v5[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout + 32);
  v5[3] = v4;
  sub_20B941F04(v5);
}

id sub_20B940618()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVMusicTrackCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVMusicTrackCell(uint64_t a1)
{
  result = qword_27C767E10;
  if (!qword_27C767E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B940770(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
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

uint64_t sub_20B940854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B94089C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_20B94090C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B940958@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20B9409C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B940A68(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v180 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v159 = v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v160 = v142 - v8;
  v158 = v9;
  MEMORY[0x28223BE20](v10);
  v161 = v142 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v12 - 8);
  v170 = v142 - v13;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v173 = *(v177 - 8);
  v14 = *(v173 + 64);
  MEMORY[0x28223BE20](v177);
  MEMORY[0x28223BE20](v15);
  v175 = v142 - v16;
  v169 = sub_20C1391C4();
  v167 = *(v169 - 1);
  MEMORY[0x28223BE20](v169);
  v168 = v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C138A64();
  v171 = *(v18 - 8);
  v172 = v18;
  MEMORY[0x28223BE20](v18);
  v174 = v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v20 - 8);
  v166 = v142 - v21;
  v179 = sub_20C13C554();
  v22 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v24 = (v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A80, &unk_20C1624A0);
  MEMORY[0x28223BE20](v25);
  v27 = v142 - v26;
  v28 = *(sub_20C137C24() - 8);
  MEMORY[0x28223BE20](*(v28 + 64));
  MEMORY[0x28223BE20](v29);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x29)
  {
    v154 = v30;
    v165 = v34;
    v150 = v14;
    v151 = v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v176 = v1;
    v35 = v32;
    v36 = v142 - v31;
    v37 = v33;
    v38 = swift_projectBox();
    sub_20B52F9E8(v38, v27, &qword_27C767A80, &unk_20C1624A0);

    v164 = *(v27 + 2);
    v39 = *(v25 + 64);
    sub_20B583F4C(*&v27[*(v25 + 80)], *&v27[*(v25 + 80) + 8], v27[*(v25 + 80) + 16]);
    v180 = v37;
    v40 = v37;
    v41 = v36;
    v42 = *(v40 + 32);
    v178 = v35;
    v43 = v35;
    v44 = v176;
    v156 = v40 + 32;
    v155 = v42;
    v42(v36, &v27[v39], v43);
    v45 = *&v44[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView];
    v46 = *&v44[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView + 8];
    ObjectType = swift_getObjectType();
    [v45 setClipsToBounds_];
    v47 = *&v44[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_titleLabel];
    v48 = sub_20B93FAE0(0);
    [v47 setAttributedText_];

    v49 = *&v44[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_subtitleLabel];
    v50 = sub_20C13C914();

    [v49 setText_];

    v51 = sub_20C138044();
    v157 = v52;
    v53 = sub_20C138054();
    v164 = v54;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v24 = sub_20C13D374();
    v55 = v179;
    (*(v22 + 104))(v24, *MEMORY[0x277D85200], v179);
    LOBYTE(v49) = sub_20C13C584();
    result = (*(v22 + 8))(v24, v55);
    if (v49)
    {
      [v45 setContentMode_];
      if (sub_20BA66C54())
      {
        v179 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v58 = v180 + 16;
        v57 = *(v180 + 16);
        v152 = v41;
        v59 = v178;
        v143 = v57;
        v57(v165, v41, v178);
        v144 = v58;
        v60 = *(v58 + 64);
        v149 = v46;
        v61 = v51;
        v62 = (v60 + 24) & ~v60;
        v142[0] = v154 + 7;
        v148 = v45;
        v63 = (v154 + 7 + v62) & 0xFFFFFFFFFFFFFFF8;
        v64 = v53;
        v65 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
        v66 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
        v67 = v157;
        v68 = v164;
        v147 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v66 + 31) & 0xFFFFFFFFFFFFFFF8;
        v145 = v60;
        v69 = swift_allocObject();
        *(v69 + 16) = v179;
        v155(v69 + v62, v165, v59);
        v70 = (v69 + v63);
        v71 = v148;
        v142[2] = v61;
        *v70 = v61;
        v70[1] = v67;
        v72 = v149;
        v73 = (v69 + v65);
        v142[1] = v64;
        *v73 = v64;
        v73[1] = v68;
        *(v69 + v66) = 2;
        v74 = v69 + v147;
        *v74 = MEMORY[0x277D84F90];
        *(v74 + 8) = 0;
        v75 = (v69 + v146);
        *v75 = 0;
        v75[1] = 0;
        v76 = *(v72 + 152);

        v77 = ObjectType;
        v76(sub_20B941CBC, v69, ObjectType, v72);

        [v71 bounds];
        if (v78 <= 0.0)
        {

LABEL_15:
          v110 = *(v180 + 8);
          v111 = v152;
          return v110(v111, v178);
        }

        v80 = v79;
        v41 = v152;
        if (v79 > 0.0)
        {
          v81 = v78;
          v179 = ~v145;
          (*(v72 + 120))(0, v77, v72);
          v82 = v166;
          v83 = v178;
          v143(v166, v41, v178);
          (*(v180 + 56))(v82, 0, 1, v83);
          (*(v72 + 16))(v82, v77, v72);
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v84 = sub_20C13D5A4();
          [v71 setBackgroundColor_];

          (*(v72 + 176))(COERCE_DOUBLE(*&v81), COERCE_DOUBLE(*&v80), 0, v77, v72);
          v85 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v86 = v165;
          v87 = v41;
          v88 = v143;
          v143(v165, v87, v83);
          v89 = (v145 + 16) & v179;
          v90 = (v142[0] + v89) & 0xFFFFFFFFFFFFFFF8;
          v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
          v92 = swift_allocObject();
          v155(v92 + v89, v86, v83);
          *(v92 + v90) = v85;
          v93 = (v92 + v91);
          *v93 = v81;
          v93[1] = v80;
          v166 = v92;
          v94 = (v92 + ((v91 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v94 = 0;
          v94[1] = 0;
          v88(v86, v152, v83);
          (*(v167 + 104))(v168, *MEMORY[0x277D542A8], v169);
          v95 = v174;
          sub_20C138A54();
          v96 = v170;
          sub_20B5F1848(v95, v170);
          v97 = v173;
          v98 = v177;
          if ((*(v173 + 48))(v96, 1, v177) == 1)
          {
            sub_20B520158(v96, &unk_27C766670, &unk_20C151580);
            sub_20BA1D974();

            (*(v171 + 8))(v95, v172);
          }

          else
          {
            v169 = *(v97 + 32);
            v169(v175, v96, v98);
            v112 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v113 = v178;
            v88(v86, v152, v178);
            v114 = (v145 + 40) & v179;
            v115 = v114 + v154;
            v116 = (v114 + v154) & 0xFFFFFFFFFFFFFFF8;
            v117 = swift_allocObject();
            *(v117 + 2) = v112;
            v117[3] = v81;
            v117[4] = v80;
            v155(v117 + v114, v86, v113);
            *(v117 + v115) = 0;
            v118 = v117 + v116;
            *(v118 + 1) = 0;
            *(v118 + 2) = 0;
            v119 = swift_allocObject();
            *(v119 + 16) = sub_20B941E50;
            *(v119 + 24) = v117;
            v120 = v151;
            v121 = v177;
            (*(v97 + 16))(v151, v175, v177);
            v122 = v97;
            v123 = (*(v97 + 80) + 16) & ~*(v97 + 80);
            v124 = (v150 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
            v125 = swift_allocObject();
            v169((v125 + v123), v120, v121);
            v126 = (v125 + v124);
            *v126 = sub_20B5F67A4;
            v126[1] = v119;
            v127 = v160;
            sub_20C137C94();
            v128 = swift_allocObject();
            v129 = v166;
            *(v128 + 16) = sub_20B941D94;
            *(v128 + 24) = v129;
            v130 = swift_allocObject();
            *(v130 + 16) = sub_20B5F67D4;
            *(v130 + 24) = v128;
            v131 = v162;
            v132 = v159;
            v133 = v163;
            (*(v162 + 16))(v159, v127, v163);
            v134 = (*(v131 + 80) + 16) & ~*(v131 + 80);
            v135 = (v158 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
            v136 = swift_allocObject();
            (*(v131 + 32))(v136 + v134, v132, v133);
            v137 = (v136 + v135);
            *v137 = sub_20B5DF204;
            v137[1] = v130;

            v138 = v161;
            sub_20C137C94();
            v139 = *(v131 + 8);
            v139(v127, v133);
            v140 = sub_20C137CB4();
            v141 = swift_allocObject();
            *(v141 + 16) = 0;
            *(v141 + 24) = 0;
            v140(sub_20B52347C, v141);

            v139(v138, v133);
            (*(v122 + 8))(v175, v177);
            (*(v171 + 8))(v174, v172);
          }

          goto LABEL_15;
        }
      }

      v110 = *(v180 + 8);
      v111 = v41;
      return v110(v111, v178);
    }

    __break(1u);
  }

  else
  {
    sub_20C13B534();

    v99 = v1;
    v100 = sub_20C13BB74();
    v101 = sub_20C13D1D4();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v181 = a1;
      v182 = v104;
      *v102 = 138543618;
      *(v102 + 4) = v99;
      *v103 = v99;
      *(v102 + 12) = 2082;
      v105 = sub_20B5F66D0();
      v106 = v99;
      v107 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v105);
      v109 = sub_20B51E694(v107, v108, &v182);

      *(v102 + 14) = v109;
      _os_log_impl(&dword_20B517000, v100, v101, "Attempted to configure %{public}@ with item: %{public}s", v102, 0x16u);
      sub_20B520158(v103, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v103, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v104);
      MEMORY[0x20F2F6A40](v104, -1, -1);
      MEMORY[0x20F2F6A40](v102, -1, -1);
    }

    return (*(v180 + 8))(v5, v3);
  }

  return result;
}

void sub_20B941CBC()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA335F0(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B941D94(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA62F20(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B941E50(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2628(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_20B941F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_20B941FA8@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v2 whiteColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v2 blackColor];
  v7 = [v2 whiteColor];
  *a1 = xmmword_20C1639D0;
  *(a1 + 16) = vdupq_n_s64(0x405B800000000000uLL);
  *(a1 + 32) = xmmword_20C1639E0;
  *(a1 + 48) = xmmword_20C161770;
  result = 25.0;
  *(a1 + 64) = xmmword_20C151BD0;
  *(a1 + 80) = 0x3FC999999999999ALL;
  *(a1 + 88) = v3;
  *(a1 + 96) = v5;
  *(a1 + 104) = v6;
  *(a1 + 112) = v7;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

void sub_20B9420C0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_layout);
  sub_20B941FA8(v25);
  v4 = v25[5];
  v3[4] = v25[4];
  v3[5] = v4;
  v5 = v25[7];
  v3[6] = v25[6];
  v3[7] = v5;
  v6 = v25[1];
  *v3 = v25[0];
  v3[1] = v6;
  v7 = v25[3];
  v3[2] = v25[2];
  v3[3] = v7;
  v8 = (v0 + OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView);
  v9 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v9 setClipsToBounds_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  *v8 = v9;
  v8[1] = &off_2822B63E8;
  v10 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_titleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  [v11 setAllowsDefaultTighteningForTruncation_];
  v12 = objc_opt_self();
  v13 = *MEMORY[0x277D76920];
  v14 = [v12 preferredFontForTextStyle_];
  [v14 pointSize];
  v16 = v15;

  v17 = [v12 boldSystemFontOfSize_];
  [v11 setFont_];

  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  [v11 setTextColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  *(v0 + v10) = v11;
  v20 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_subtitleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  [v21 setAllowsDefaultTighteningForTruncation_];
  v22 = [v12 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = [v18 whiteColor];
  [v21 setTextColor_];

  v24 = v21;
  [v24 setAlpha_];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  [v24 setAdjustsFontForContentSizeCategory_];
  *(v0 + v20) = v24;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B9424BC(void *a1, __n128 a2)
{
  v3 = sub_20C136094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[9] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767E20, "\n?\t");
  v8 = sub_20C13C9F4();
  v10 = v9;
  swift_getErrorValue();
  if (sub_20C13E0C4() == v8 && v11 == v10)
  {
  }

  else
  {
    v13 = sub_20C13DFF4();

    if ((v13 & 1) == 0)
    {

      return 3;
    }
  }

  swift_getErrorValue();
  v15 = sub_20C13E0B4();
  v16 = *(v4 + 104);
  v17.n128_f64[0] = v16(v6, *MEMORY[0x277D525E0], v3);
  sub_20B94276C(v17);
  v18 = sub_20C13E0B4();
  v19 = *(v4 + 8);
  v19(v6, v3);
  if (v18 == v15)
  {

    return 1;
  }

  else
  {
    v16(v6, *MEMORY[0x277D52648], v3);
    v20 = sub_20C13E0B4();
    v19(v6, v3);
    if (v20 == v15)
    {

      return 0;
    }

    else
    {
      v16(v6, *MEMORY[0x277D52618], v3);
      v21 = sub_20C13E0B4();

      v19(v6, v3);
      if (v21 == v15)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_20B94276C(__n128 a1)
{
  result = qword_27C767910;
  if (!qword_27C767910)
  {
    sub_20C136094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767910);
  }

  return result;
}

double sub_20B9429F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_20B51F1D8(v3, v9);
      if (swift_dynamicCast())
      {
        if (v8 == 1)
        {
          v5 = (v1 + OBJC_IVAR____TtC9SeymourUI33DownloadWorkoutShareSheetActivity_workoutIdentifier);
          *v5 = v6;
          v5[1] = v7;

          return result;
        }

        result = sub_20B624748(v6, v7, v8);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

id sub_20B942B14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  if (*&v0[OBJC_IVAR____TtC9SeymourUI33DownloadWorkoutShareSheetActivity_workoutIdentifier + 8])
  {
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI33DownloadWorkoutShareSheetActivity_assetClient], *&v0[OBJC_IVAR____TtC9SeymourUI33DownloadWorkoutShareSheetActivity_assetClient + 24]);

    sub_20C139E24();

    v6 = sub_20C137CB4();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_20B52347C, v7);

    (*(v2 + 8))(v5, v1);
    return [v0 activityDidFinish_];
  }

  else
  {

    return [v0 activityDidFinish_];
  }
}

id sub_20B942D7C(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DownloadWorkoutShareSheetActivity();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_20B942E24(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_platter;
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v12 layer];
  [v13 setCornerRadius_];

  [v12 setClipsToBounds_];
  *&v4[v11] = v12;
  v14 = OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setAllowsDefaultTighteningForTruncation_];
  [v15 setAdjustsFontSizeToFitWidth_];
  [v15 setTextAlignment_];
  *&v4[v14] = v15;
  v16 = &v4[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider];
  sub_20B94450C(v83);
  v17 = v83[1];
  *v16 = v83[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v83[2];
  *(v16 + 6) = v84;
  *(v16 + 56) = xmmword_20C163B60;
  *(v16 + 9) = 0x4028000000000000;
  v78.receiver = v4;
  v78.super_class = type metadata accessor for StandardFilterCell(0);
  v18 = objc_msgSendSuper2(&v78, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = [v18 contentView];
  v20 = OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_platter;
  [v19 addSubview_];

  v21 = v18;
  v22 = [v21 contentView];
  v23 = OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_titleLabel;
  v74 = OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_titleLabel;
  [v22 addSubview_];

  v24 = [v21 traitCollection];
  v25 = *&v21[v23];
  v76 = &v21[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider];
  v26 = *&v21[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider + 16];
  v79 = *&v21[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider];
  v80 = v26;
  v81 = *&v21[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider + 32];
  v82 = *&v21[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider + 48];
  v27 = sub_20B7C6A74(v24);
  [v25 setFont_];

  v75 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14FF90;
  v29 = [*&v18[v20] leadingAnchor];
  v30 = [v21 contentView];
  v31 = [v30 leadingAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v28 + 32) = v32;
  v33 = [*&v18[v20] trailingAnchor];
  v34 = [v21 contentView];
  v35 = [v34 trailingAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v28 + 40) = v36;
  v37 = [*&v18[v20] topAnchor];
  v38 = [v21 contentView];
  v39 = [v38 &selRef_setLineBreakMode_];

  v40 = [v37 constraintEqualToAnchor_];
  *(v28 + 48) = v40;
  v41 = [*&v18[v20] bottomAnchor];
  v42 = [v21 contentView];
  v43 = [v42 &selRef_secondaryLabel + 5];

  v44 = [v41 &selRef:v43 alertControllerReleasedDictationButton:? + 5];
  *(v28 + 56) = v44;
  v45 = [*&v21[v74] leadingAnchor];
  v46 = [v21 &selRef_setMaximumFractionDigits_];
  v47 = [v46 leadingAnchor];

  v48 = [v45 constraintEqualToAnchor:v47 constant:v76[7]];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v49) = v77;
  [v48 setPriority_];
  *(v28 + 64) = v48;
  v50 = [*&v21[v74] trailingAnchor];
  v51 = [v21 contentView];
  v52 = [v51 trailingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52 constant:-v76[7]];
  sub_20C13BBA4();
  LODWORD(v54) = v77;
  [v53 setPriority_];
  *(v28 + 72) = v53;
  v55 = [*&v21[v74] centerYAnchor];
  v56 = [v21 contentView];
  v57 = [v56 centerYAnchor];

  v58 = [v55 constraintEqualToAnchor_];
  *(v28 + 80) = v58;
  v59 = [*&v21[v74] topAnchor];
  v60 = [v21 contentView];
  v61 = [v60 topAnchor];

  v62 = [v59 constraintGreaterThanOrEqualToAnchor:v61 constant:v76[9]];
  sub_20C13BBA4();
  LODWORD(v63) = v77;
  [v62 setPriority_];
  *(v28 + 88) = v62;
  v64 = [*&v21[v74] bottomAnchor];
  v65 = [v21 contentView];
  v66 = [v65 bottomAnchor];

  v67 = [v64 constraintLessThanOrEqualToAnchor:v66 constant:-v76[9]];
  sub_20C13BBA4();
  LODWORD(v68) = v77;
  [v67 setPriority_];
  *(v28 + 96) = v67;
  v69 = [v21 contentView];

  v70 = [v69 heightAnchor];
  v71 = [v70 constraintGreaterThanOrEqualToConstant_];

  *(v28 + 104) = v71;
  sub_20B5E29D0();
  v72 = sub_20C13CC54();

  [v75 activateConstraints_];

  return v21;
}

uint64_t sub_20B943A20(void *a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for StandardFilterCell(0);
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        v15 = *&Strong[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_titleLabel];
        v16 = *&Strong[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider + 16];
        v24 = *&Strong[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider];
        v25 = v16;
        v26 = *&Strong[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider + 32];
        v27 = *&Strong[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider + 48];
        v17 = sub_20B7C6A74(v13);
        [v15 setFont_];

        v3 = v17;
      }
    }
  }

  else
  {
    v18 = [v1 traitCollection];
    v19 = swift_unknownObjectUnownedLoadStrong();
    v20 = *&v19[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_titleLabel];
    v21 = *&v19[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider + 16];
    v24 = *&v19[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider];
    v25 = v21;
    v26 = *&v19[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider + 32];
    v27 = *&v19[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider + 48];
    v3 = sub_20B7C6A74(v18);
    [v20 setFont_];
  }

  return swift_unknownObjectUnownedDestroy();
}

id sub_20B943CE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StandardFilterCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StandardFilterCell(uint64_t a1)
{
  result = qword_281102F70;
  if (!qword_281102F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B943E28(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20B943EDC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B943F28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B943F80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B943FE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B944030(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_20B944094(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v8 <= 0x3B && ((1 << v8) & 0x880000004020040) != 0)
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v10 = *&v1[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_titleLabel];
    v11 = sub_20C13C914();

    [v10 setText_];

    [v1 accessibilityApplyState:v9 == 1 disabled:v9 == 2];
    v12 = objc_opt_self();
    if (v9)
    {
      if (v9 == 1)
      {
        v13 = [v12 blackColor];
        [v10 setTextColor_];

        v14 = *&v1[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_platter];
        v15 = [objc_opt_self() briskColors];
        if (v15)
        {
          v16 = v15;
          v36 = [v15 nonGradientTextColor];

          if (v36)
          {
            v17 = v36;
LABEL_11:
            [v14 setBackgroundColor_];
            v23 = v36;

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v21 = v12;
      v22 = [v12 darkGrayColor];
      [v10 setTextColor_];

      v14 = *&v1[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_platter];
      v20 = [v21 systemGray5Color];
    }

    else
    {
      v18 = v12;
      v19 = [v12 whiteColor];
      [v10 setTextColor_];

      v14 = *&v1[OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_platter];
      v20 = [v18 systemGray5Color];
    }

    v17 = v20;
    v36 = v17;
    goto LABEL_11;
  }

  v36 = v5;
  sub_20C13B534();

  v24 = v1;
  v25 = sub_20C13BB74();
  v26 = sub_20C13D1D4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = a1;
    v38 = v29;
    *v27 = 138543618;
    *(v27 + 4) = v24;
    *v28 = v24;
    *(v27 + 12) = 2082;
    v30 = sub_20B5F66D0();
    v31 = v24;
    v32 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v30);
    v34 = sub_20B51E694(v32, v33, &v38);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_20B517000, v25, v26, "Attempted to configure %{public}@ with item: %{public}s", v27, 0x16u);
    sub_20B520158(v28, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v27, -1, -1);
  }

  (*(v4 + 8))(v7, v36);
}

void sub_20B94450C(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D76940];
  v16 = *MEMORY[0x277D743F8];
  v3 = *MEMORY[0x277D76800];
  v18 = MEMORY[0x277D84FA0];
  v15 = v3;
  sub_20B6FF83C(v17, 1);
  v20 = 1;
  v19 = 0;
  v4 = v18;
  sub_20C13E164();
  v14 = v2;
  sub_20C13CA64();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 >= 4)
      {
        break;
      }

      v10 = sub_20C13DFF4();

      if (v10)
      {
        goto LABEL_7;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v4;
    sub_20B706478(4u, v7, isUniquelyReferenced_nonNull_native);
    v4 = *v17;
  }

LABEL_7:
  v12 = v20;
  v13 = v19;
  *a1 = 0;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  *(a1 + 24) = 0;
  *(a1 + 28) = v12;
  *(a1 + 29) = 9;
  *(a1 + 32) = v16;
  *(a1 + 40) = v13;
  *(a1 + 48) = v4;
}

void sub_20B944748()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_platter;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v4 layer];
  [v5 setCornerRadius_];

  [v4 setClipsToBounds_];
  *(v0 + v3) = v4;
  v6 = OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_titleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAdjustsFontForContentSizeCategory_];
  [v7 setAllowsDefaultTighteningForTruncation_];
  [v7 setAdjustsFontSizeToFitWidth_];
  [v7 setTextAlignment_];
  *(v0 + v6) = v7;
  v8 = v0 + OBJC_IVAR____TtC9SeymourUI18StandardFilterCell_styleProvider;
  sub_20B94450C(v10);
  v9 = v10[1];
  *v8 = v10[0];
  *(v8 + 16) = v9;
  *(v8 + 32) = v10[2];
  *(v8 + 48) = v11;
  *(v8 + 56) = xmmword_20C163B60;
  *(v8 + 72) = 0x4028000000000000;
  sub_20C13DE24();
  __break(1u);
}

void sub_20B9449A0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = v2;
  v5 = sub_20C136CD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134E44();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  (a2)(v13);
  sub_20C134E34();
  sub_20B62A2AC(v11);
  sub_20C136CB4();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v17 = sub_20C137C24();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  v18 = OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_artwork;
  swift_beginAccess();
  sub_20B69AB5C(v15, v4 + v18);
  v19 = swift_endAccess();
  a2(v19);
  sub_20C134E34();
  sub_20B62A2AC(v11);
  v20 = sub_20C136CC4();
  v22 = v21;
  v16(v8, v5);
  v23 = (v4 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_cropCode);
  *v23 = v20;
  v23[1] = v22;

  sub_20B944C18();
}

void sub_20B944C18()
{
  v1 = sub_20C13C554();
  v35 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = (&v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B38, &qword_20C1569D8);
  v5 = swift_allocBox();
  v7 = v6;
  v8 = (v6 + *(v4 + 48));
  v9 = OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_artwork;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v9, v7, &unk_27C766680, &unk_20C14F920);
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_cropCode + 8);
  *v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_cropCode);
  v8[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20C14F980;
  *(v11 + 32) = v5 | 5;
  v39 = 0uLL;
  LOBYTE(v40) = 1;
  *(&v40 + 1) = *v38;
  DWORD1(v40) = *&v38[3];
  *(&v40 + 1) = 0;
  *&v41 = 0;
  WORD4(v41) = 128;
  *(&v41 + 10) = *&v36[7];
  HIWORD(v41) = v37;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  LOBYTE(v45) = 0;
  *(&v45 + 1) = *v36;
  DWORD1(v45) = *&v36[3];
  *(&v45 + 1) = v11;
  *&v46[0] = MEMORY[0x277D84F90];
  *(v46 + 8) = 0u;
  *(&v46[1] + 8) = 0u;
  *(&v46[2] + 1) = 0;
  v47 = 2;
  nullsub_1();
  v12 = v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 144);
  v48[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 128);
  v48[9] = v13;
  v49 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 160);
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 80);
  v48[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 64);
  v48[5] = v14;
  v15 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 112);
  v48[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 96);
  v48[7] = v15;
  v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 16);
  v48[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row);
  v48[1] = v16;
  v17 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 48);
  v48[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 32);
  v48[3] = v17;
  v18 = v46[2];
  *(v12 + 128) = v46[1];
  *(v12 + 144) = v18;
  *(v12 + 160) = v47;
  v19 = v44;
  *(v12 + 64) = v43;
  *(v12 + 80) = v19;
  v20 = v46[0];
  *(v12 + 96) = v45;
  *(v12 + 112) = v20;
  v21 = v40;
  *v12 = v39;
  *(v12 + 16) = v21;
  v22 = v42;
  *(v12 + 32) = v41;
  *(v12 + 48) = v22;

  sub_20B520158(v48, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v24 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    sub_20B61CE48(v0, Strong);
    if (v26)
    {
      v28 = v25;
      v29 = v26;
      v30 = v27;
      v34 = v0;
      sub_20B5E2E18();
      *v3 = sub_20C13D374();
      v31 = v35;
      (*(v35 + 104))(v3, *MEMORY[0x277D85200], v1);
      v32 = sub_20C13C584();
      (*(v31 + 8))(v3, v1);
      if ((v32 & 1) == 0)
      {
        __break(1u);
        return;
      }

      sub_20B620364(v28, v29, v30, v34, 1, v24);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_20B944FBC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_artwork, &unk_27C766680, &unk_20C14F920);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArtworkHeaderShelf(uint64_t a1)
{
  result = qword_27C767E40;
  if (!qword_27C767E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B945138(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20B52CA1C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20B945224@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B94529C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI18ArtworkHeaderShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

char *sub_20B94535C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_layout];
  sub_20BD3E4B4(v83);
  v13 = v83[3];
  *(v12 + 2) = v83[2];
  *(v12 + 3) = v13;
  *(v12 + 4) = v83[4];
  *(v12 + 10) = v84;
  v14 = v83[1];
  *v12 = v83[0];
  *(v12 + 1) = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_platter;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setClipsToBounds_];
  *&v5[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  [v18 setAdjustsFontSizeToFitWidth_];
  *&v5[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkContainer;
  v20 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setClipsToBounds_];
  *&v5[v19] = v20;
  v21 = &v5[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView];
  v22 = objc_allocWithZone(type metadata accessor for ArtworkView(0));
  v23 = sub_20B91B5FC(1);
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setClipsToBounds_];

  *v21 = v23;
  v21[1] = &off_2822B63E8;
  v82.receiver = v5;
  v82.super_class = type metadata accessor for TrainerFilterCell(0);
  v24 = objc_msgSendSuper2(&v82, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = [v24 contentView];
  v76 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_platter;
  [v25 addSubview_];

  v26 = [v24 &selRef_setMaximumFractionDigits_];
  v78 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_titleLabel;
  [v26 addSubview_];

  v27 = v24;
  v28 = [v27 &selRef_setMaximumFractionDigits_];
  v29 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkContainer;
  v75 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkContainer;
  [v28 addSubview_];

  v30 = &v27[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView];
  v31 = *&v27[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView];
  v32 = *&v27[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v34 = *(v32 + 288);
  v35 = v31;
  v34(2, ObjectType, v32);

  [*&v27[v29] addSubview_];
  v36 = [v27 traitCollection];

  v37 = *&v24[v78];
  v38 = &v27[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_layout];
  v39 = *&v27[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_layout + 16];
  v89 = *&v27[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_layout];
  v90 = v39;
  v91 = *&v27[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_layout + 32];
  v92 = *&v27[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_layout + 48];
  v40 = sub_20B7C6A74(v36);
  [v37 setFont_];

  v41 = *&v24[v78];
  v42 = [v36 preferredContentSizeCategory];
  LOBYTE(v21) = sub_20C13D424();

  if (v21)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  [v41 setNumberOfLines_];

  v44 = *(v38 + 1);
  v80[0] = *v38;
  v80[1] = v44;
  v45 = *(v38 + 2);
  v46 = *(v38 + 3);
  v47 = *(v38 + 4);
  v81 = *(v38 + 10);
  v80[3] = v46;
  v80[4] = v47;
  v80[2] = v45;
  v48 = *&v24[v76];
  sub_20B839890(v80, v87);
  v49 = v48;
  v50 = [v27 contentView];
  v77 = sub_20BD3E708(v49, v50);

  sub_20B8398EC(v80);
  v51 = *(v38 + 1);
  v87[0] = *v38;
  v87[1] = v51;
  v53 = *(v38 + 3);
  v52 = *(v38 + 4);
  v54 = *(v38 + 2);
  v88 = *(v38 + 10);
  v87[3] = v53;
  v87[4] = v52;
  v87[2] = v54;
  v55 = *&v27[v75];
  v56 = *v30;
  sub_20B839890(v87, v85);
  v57 = v55;
  v58 = v56;
  v59 = [v27 contentView];
  v60 = sub_20BD3DD68(v57, v58, v59);

  sub_20B8398EC(v87);
  v61 = *(v38 + 1);
  v85[0] = *v38;
  v85[1] = v61;
  v63 = *(v38 + 3);
  v62 = *(v38 + 4);
  v64 = *(v38 + 2);
  v86 = *(v38 + 10);
  v85[3] = v63;
  v85[4] = v62;
  v85[2] = v64;
  v65 = *&v24[v78];
  v66 = *&v27[v75];
  sub_20B839890(v85, &v79);
  v67 = v65;
  v68 = v66;
  v69 = [v27 contentView];

  v70 = sub_20BD3E11C(v67, v68, v69);
  sub_20B8398EC(v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 32) = v77;
  *(inited + 16) = xmmword_20C1517D0;
  *(inited + 40) = v60;
  *(inited + 48) = v70;
  v72 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v73 = sub_20C13CC54();

  [v72 activateConstraints_];

  return v27;
}

void sub_20B945AAC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TrainerFilterCell(0);
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_platter] layer];
  [v0 bounds];
  [v1 setCornerRadius_];

  v3 = [*&v0[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkContainer] layer];
  [v3 setCornerRadius_];
}

uint64_t sub_20B945D7C(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for TrainerFilterCell(0);
  objc_msgSendSuper2(&v16, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        sub_20B945F18(v13, v15);

        v3 = v13;
      }
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    sub_20B945F18(v3, v15);
  }

  return swift_unknownObjectUnownedDestroy();
}

void sub_20B945F18(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_titleLabel;
  v4 = *&Strong[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_titleLabel];
  v5 = sub_20B7C6A74(a1);
  [v4 setFont_];

  v6 = *&Strong[v3];
  v7 = [a1 preferredContentSizeCategory];
  LOBYTE(v4) = sub_20C13D424();

  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v6 setNumberOfLines_];
}

id sub_20B946078(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_titleLabel];
  v4 = objc_opt_self();
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a1 != 1)
  {
    v12 = v4;
    v13 = [v4 darkGrayColor];
    [v3 setTextColor_];

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_platter];
    v11 = [v12 systemGray5Color];
    goto LABEL_8;
  }

  v5 = [v4 blackColor];
  [v3 setTextColor_];

  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_platter];
  result = [objc_opt_self() briskColors];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result nonGradientTextColor];

  if (!v8)
  {
    __break(1u);
LABEL_6:
    v9 = v4;
    v10 = [v4 whiteColor];
    [v3 setTextColor_];

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_platter];
    v11 = [v9 systemGray5Color];
LABEL_8:
    v8 = v11;
  }

  [v3 setBackgroundColor_];

  return [v1 accessibilityApplyState:a1 == 1 disabled:a1 == 2];
}

id sub_20B946258()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrainerFilterCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TrainerFilterCell(uint64_t a1)
{
  result = qword_2811032C0;
  if (!qword_2811032C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B9463B0(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20B946470(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B9464BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B946514(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B946598(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v171 = *(v4 - 8);
  v172 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v7 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v155 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v156 = &v134 - v10;
  v154 = v11;
  MEMORY[0x28223BE20](v12);
  v157 = &v134 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v14 - 8);
  v163 = &v134 - v15;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v166 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v153 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v16;
  MEMORY[0x28223BE20](v17);
  v169 = &v134 - v18;
  v162 = sub_20C1391C4();
  v160 = *(v162 - 1);
  MEMORY[0x28223BE20](v162);
  v161 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C138A64();
  v164 = *(v20 - 8);
  v165 = v20;
  MEMORY[0x28223BE20](v20);
  v168 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v22 - 8);
  v159 = &v134 - v23;
  v24 = sub_20C13C554();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20C137C24();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v134 - v34;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x3C)
  {
    v148 = v32;
    v167 = v31;
    v144 = v7;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767E58, &qword_20C17E670);
    v37 = swift_projectBox();
    LODWORD(v172) = *v37;
    v38 = *(v29 + 16);
    v39 = &v37[*(v36 + 64)];
    v151 = v29 + 16;
    v171 = v38;
    v38(v35, v39, v28);
    v40 = *&v2[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_titleLabel];

    v41 = sub_20C13C914();

    [v40 setText_];

    v150 = sub_20C138044();
    v43 = v42;
    v149 = sub_20C138054();
    v45 = v44;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v27 = sub_20C13D374();
    (*(v25 + 104))(v27, *MEMORY[0x277D85200], v24);
    LOBYTE(v40) = sub_20C13C584();
    result = (*(v25 + 8))(v27, v24);
    if (v40)
    {
      v47 = *&v2[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView];
      v48 = *&v2[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v47 setContentMode_];
      if (sub_20BA66C54())
      {
        v50 = swift_allocObject();
        v147 = v43;
        v51 = v50;
        v146 = v2;
        swift_unknownObjectWeakInit();
        v145 = v45;
        v141 = v35;
        v171(v167, v35, v28);
        v52 = *(v29 + 80);
        v139 = ObjectType;
        v53 = (v52 + 24) & ~v52;
        v135 = v148 + 7;
        v54 = (v148 + 7 + v53) & 0xFFFFFFFFFFFFFFF8;
        v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
        v140 = v48;
        v56 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
        v138 = ((v56 + 15) & 0xFFFFFFFFFFFFFFF8);
        v57 = (v56 + 31) & 0xFFFFFFFFFFFFFFF8;
        v137 = v52;
        v58 = swift_allocObject();
        *(v58 + 16) = v51;
        v142 = v29;
        v60 = v29 + 32;
        v59 = *(v29 + 32);
        v61 = v145;
        v143 = v28;
        v62 = v28;
        v63 = v59;
        v136 = v60;
        (v59)(v58 + v53, v167, v62);
        v64 = (v58 + v54);
        v65 = v147;
        *v64 = v150;
        v64[1] = v65;
        v66 = (v58 + v55);
        *v66 = v149;
        v66[1] = v61;
        *(v58 + v56) = 2;
        v67 = v140;
        v68 = v138 + v58;
        *v68 = MEMORY[0x277D84F90];
        v68[8] = 0;
        v69 = (v58 + v57);
        *v69 = 0;
        v69[1] = 0;
        v70 = *(v67 + 152);

        v71 = v139;
        v70(sub_20B9477B0, v58, v139, v67);

        [v47 bounds];
        if (v72 <= 0.0 || (v74 = v73, v73 <= 0.0))
        {

          v28 = v143;
          v29 = v142;
          v35 = v141;
        }

        else
        {
          v75 = v72;
          v76 = v71;
          v134 = ~v137;
          (*(v67 + 120))(0, v71, v67);
          v77 = v159;
          v35 = v141;
          v138 = v63;
          v28 = v143;
          v78 = v171;
          v171(v159, v141, v143);
          v29 = v142;
          (*(v142 + 56))(v77, 0, 1, v28);
          (*(v67 + 16))(v77, v76, v67);
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v79 = sub_20C13D5A4();
          [v47 setBackgroundColor_];

          (*(v67 + 176))(COERCE_DOUBLE(*&v75), COERCE_DOUBLE(*&v74), 0, v76, v67);
          v159 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v80 = v167;
          v78(v167, v35, v28);
          v81 = (v137 + 16) & v134;
          v82 = (v135 + v81) & 0xFFFFFFFFFFFFFFF8;
          v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
          v84 = swift_allocObject();
          v138(v84 + v81, v80, v28);
          *(v84 + v82) = v159;
          v85 = (v84 + v83);
          *v85 = v75;
          v85[1] = v74;
          v159 = v84;
          v86 = (v84 + ((v83 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v86 = 0;
          v86[1] = 0;
          v171(v80, v35, v28);
          (*(v160 + 104))(v161, *MEMORY[0x277D542A8], v162);
          v87 = v168;
          sub_20C138A54();
          v88 = v163;
          sub_20B5F1898(v87, v163);
          v89 = v166;
          v90 = v170;
          if ((*(v166 + 48))(v88, 1, v170) == 1)
          {
            sub_20B520158(v88, &unk_27C766670, &unk_20C151580);
            sub_20BA1D98C();

            (*(v164 + 8))(v87, v165);
          }

          else
          {
            v162 = *(v89 + 32);
            v162(v169, v88, v90);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v105 = v167;
            v171(v167, v35, v28);
            v106 = (v137 + 40) & v134;
            v107 = v106 + v148;
            v108 = (v106 + v148) & 0xFFFFFFFFFFFFFFF8;
            v109 = swift_allocObject();
            *(v109 + 2) = v104;
            v109[3] = v75;
            v109[4] = v74;
            v138(v109 + v106, v105, v28);
            *(v109 + v107) = 0;
            v110 = v109 + v108;
            *(v110 + 1) = 0;
            *(v110 + 2) = 0;
            v111 = swift_allocObject();
            *(v111 + 16) = sub_20B947944;
            *(v111 + 24) = v109;
            v112 = v153;
            (*(v89 + 16))(v153, v169, v90);
            v113 = (*(v89 + 80) + 16) & ~*(v89 + 80);
            v114 = (v152 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
            v115 = swift_allocObject();
            v162((v115 + v113), v112, v90);
            v116 = (v115 + v114);
            *v116 = sub_20B5F67A4;
            v116[1] = v111;
            v117 = v156;
            sub_20C137C94();
            v118 = swift_allocObject();
            v119 = v159;
            *(v118 + 16) = sub_20B947888;
            *(v118 + 24) = v119;
            v120 = swift_allocObject();
            *(v120 + 16) = sub_20B5F67D4;
            *(v120 + 24) = v118;
            v121 = v144;
            v122 = v155;
            v123 = v158;
            (*(v144 + 16))(v155, v117, v158);
            v124 = (*(v121 + 80) + 16) & ~*(v121 + 80);
            v125 = (v154 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
            v126 = swift_allocObject();
            (*(v121 + 32))(v126 + v124, v122, v123);
            v127 = (v126 + v125);
            *v127 = sub_20B5DF204;
            v127[1] = v120;

            v128 = v157;
            sub_20C137C94();
            v129 = *(v121 + 8);
            v130 = v117;
            v28 = v143;
            v129(v130, v123);
            v131 = sub_20C137CB4();
            v132 = swift_allocObject();
            *(v132 + 16) = 0;
            *(v132 + 24) = 0;
            v131(sub_20B52347C, v132);

            v133 = v123;
            v29 = v142;
            v129(v128, v133);
            v35 = v141;
            (*(v89 + 8))(v169, v170);
            (*(v164 + 8))(v168, v165);
          }
        }
      }

      else
      {
      }

      sub_20B946078(v172);
      return (*(v29 + 8))(v35, v28);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_titleLabel] setText_];
    v91 = *&v2[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView + 8];
    v92 = swift_getObjectType();
    (*(v91 + 120))(0, v92, v91);
    sub_20C13B534();

    v93 = v2;
    v94 = sub_20C13BB74();
    v95 = sub_20C13D1D4();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v173 = a1;
      v174 = v98;
      *v96 = 138543618;
      *(v96 + 4) = v93;
      *v97 = v93;
      *(v96 + 12) = 2082;
      v99 = sub_20B5F66D0();
      v100 = v93;
      v101 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v99);
      v103 = sub_20B51E694(v101, v102, &v174);

      *(v96 + 14) = v103;
      _os_log_impl(&dword_20B517000, v94, v95, "Attempted to configure %{public}@ with item: %{public}s", v96, 0x16u);
      sub_20B520158(v97, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v97, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x20F2F6A40](v98, -1, -1);
      MEMORY[0x20F2F6A40](v96, -1, -1);
    }

    return (*(v171 + 1))(v6, v172);
  }

  return result;
}

void sub_20B9477B0()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA35700(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B947888(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA62F60(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B947944(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2668(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

void sub_20B9479F8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_layout;
  sub_20BD3E4B4(v15);
  v4 = v15[3];
  *(v3 + 32) = v15[2];
  *(v3 + 48) = v4;
  *(v3 + 64) = v15[4];
  *(v3 + 80) = v16;
  v5 = v15[1];
  *v3 = v15[0];
  *(v3 + 16) = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_platter;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setClipsToBounds_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setAllowsDefaultTighteningForTruncation_];
  [v9 setAdjustsFontSizeToFitWidth_];
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkContainer;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setClipsToBounds_];
  *(v0 + v10) = v11;
  v12 = (v0 + OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView);
  v13 = objc_allocWithZone(type metadata accessor for ArtworkView(0));
  v14 = sub_20B91B5FC(1);
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setClipsToBounds_];

  *v12 = v14;
  v12[1] = &off_2822B63E8;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B947C80()
{
  v1 = *(v0 + 8);
  sub_20C13E164();
  if (v1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
    sub_20C13CA64();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20B947D0C(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x20F2F58E0](0);
  }

  MEMORY[0x20F2F58E0](1);
  sub_20C13CA64();

  return sub_20C13CA64();
}

uint64_t sub_20B947DA4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_20C13E164();
  if (v2)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
    sub_20C13CA64();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20B947E2C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *a1 == *a2 && v3 == v4;
  if (v9 || (v10 = sub_20C13DFF4(), result = 0, (v10 & 1) != 0))
  {
    if (v5 != v7 || v6 != v8)
    {

      return sub_20C13DFF4();
    }

    return 1;
  }

  return result;
}

unint64_t sub_20B947EEC()
{
  result = qword_27C767E60;
  if (!qword_27C767E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767E60);
  }

  return result;
}

uint64_t sub_20B947F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return !a6;
  }

  if (!a6)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6 || (v9 = a3, v10 = a4, v11 = a8, v12 = a7, v13 = sub_20C13DFF4(), a3 = v9, a4 = v10, a7 = v12, a8 = v11, v14 = v13, result = 0, (v14 & 1) != 0))
  {
    if (a3 != a7 || a4 != a8)
    {

      return sub_20C13DFF4();
    }

    return 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI25FilterOptionCategoryStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20B948018(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B948068(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_20B9480C0(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_20B9480F4()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76920];
  v2 = [v0 preferredFontForTextStyle_];
  [v2 pointSize];
  v4 = v3;

  v5 = [v0 preferredFontForTextStyle_];
  [v5 pointSize];
  v7 = v6;

  sub_20C1380F4();
  v8 = sub_20C138104();
  if (v8 != sub_20C138104())
  {
    v9 = sub_20C138104();
    if (v9 == sub_20C138104())
    {
      v7 = 15.0;
    }

    else
    {
      v7 = v4;
    }
  }

  v10 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:v7];

  return v10;
}

char *sub_20B948218(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI13StackIconView_title];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI13StackIconView_layout];
  sub_20B948F38(v63);
  v11 = v63[3];
  *(v10 + 2) = v63[2];
  *(v10 + 3) = v11;
  *(v10 + 4) = v63[4];
  v12 = v63[1];
  *v10 = v63[0];
  *(v10 + 1) = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI13StackIconView_imageView;
  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v14 setBackgroundColor_];

  [v14 setContentMode_];
  v17 = [v15 whiteColor];
  [v14 setTintColor_];

  *&v4[v13] = v14;
  v18 = OBJC_IVAR____TtC9SeymourUI13StackIconView_stackIconView;
  v19 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [v15 clearColor];
  [v19 setBackgroundColor_];

  [v19 setContentMode_];
  v21 = [v15 whiteColor];
  [v19 setTintColor_];

  *&v4[v18] = v19;
  *&v4[OBJC_IVAR____TtC9SeymourUI13StackIconView_layoutView] = 0;
  v62.receiver = v4;
  v62.super_class = type metadata accessor for StackIconView();
  v22 = objc_msgSendSuper2(&v62, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = OBJC_IVAR____TtC9SeymourUI13StackIconView_stackIconView;
  v24 = *&v22[OBJC_IVAR____TtC9SeymourUI13StackIconView_stackIconView];
  v25 = &v22[OBJC_IVAR____TtC9SeymourUI13StackIconView_layout];
  v26 = *&v22[OBJC_IVAR____TtC9SeymourUI13StackIconView_layout + 72];
  v27 = v22;
  v28 = v24;

  v29 = v26;
  v30 = sub_20C13C914();

  v31 = [objc_opt_self() smm:v30 systemImageNamed:v29 withConfiguration:?];

  [v28 setImage_];
  v32 = *&v27[OBJC_IVAR____TtC9SeymourUI13StackIconView_imageView];
  v33 = v27;
  [v33 addSubview_];
  [v33 addSubview_];
  [v33 setClipsToBounds_];
  v34 = [v33 layer];
  [v34 setCornerRadius_];

  v35 = [v33 layer];
  [v35 setCornerCurve_];

  v61 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_20C151DF0;
  v37 = [v33 widthAnchor];

  v38 = [v37 constraintGreaterThanOrEqualToConstant_];
  *(v36 + 32) = v38;
  v39 = [v33 heightAnchor];

  v40 = [v39 constraintGreaterThanOrEqualToConstant_];
  *(v36 + 40) = v40;
  v41 = [*&v22[v23] leadingAnchor];
  v42 = [v33 leadingAnchor];

  v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42 constant:v25[2]];
  *(v36 + 48) = v43;
  v44 = [*&v22[v23] trailingAnchor];
  v45 = [v33 trailingAnchor];

  v46 = [v44 constraintLessThanOrEqualToAnchor:v45 constant:-v25[4]];
  *(v36 + 56) = v46;
  v47 = [*&v22[v23] topAnchor];
  v48 = [v33 topAnchor];

  v49 = [v47 constraintGreaterThanOrEqualToAnchor:v48 constant:v25[1]];
  *(v36 + 64) = v49;
  v50 = [*&v22[v23] bottomAnchor];
  v51 = [v33 bottomAnchor];

  v52 = [v50 constraintLessThanOrEqualToAnchor:v51 constant:-v25[3]];
  *(v36 + 72) = v52;
  v53 = [*&v22[v23] centerXAnchor];
  v54 = [v33 centerXAnchor];

  v55 = [v53 constraintEqualToAnchor_];
  *(v36 + 80) = v55;
  v56 = [*&v22[v23] centerYAnchor];
  v57 = [v33 centerYAnchor];

  v58 = [v56 constraintEqualToAnchor_];
  *(v36 + 88) = v58;
  sub_20B5E29D0();
  v59 = sub_20C13CC54();

  [v61 activateConstraints_];

  return v33;
}

void sub_20B94897C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StackIconView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI13StackIconView_layoutView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC9SeymourUI13StackIconView_imageView];
    v3 = v1;
  }

  else
  {
    v4 = [v0 superview];
    if (!v4)
    {
      return;
    }

    v3 = v4;
    v2 = *&v0[OBJC_IVAR____TtC9SeymourUI13StackIconView_imageView];
  }

  [v3 bounds];
  [v0 convertRect:v3 fromCoordinateSpace:?];
  [v2 setFrame_];
}

double sub_20B948A94()
{
  v1 = v0;
  v2 = sub_20C13C4C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StackIconView();
  v17.receiver = v0;
  v17.super_class = v6;
  objc_msgSendSuper2(&v17, sel_didMoveToSuperview);
  v7 = [v0 superview];
  if (v7)
  {
    v9 = v7;
    ObjectType = swift_getObjectType();
    v11 = swift_conformsToProtocol2();
    if (v11 && (v12 = (*(v11 + 8))(ObjectType, v11)) != 0)
    {
      v13 = v12;
      v14 = [*&v1[OBJC_IVAR____TtC9SeymourUI13StackIconView_imageView] image];
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v3 + 104))(v5, *MEMORY[0x277D851C0], v2);

        sub_20BD519D8(v13, v5, sub_20B94923C, v16);

        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_20B948CB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC9SeymourUI13StackIconView_imageView) setImage_];
    [v4 setNeedsLayout];
  }
}

id sub_20B948DA8(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StackIconView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20B948E8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B948ED4(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

double sub_20B948F38@<D0>(uint64_t a2@<X8>)
{
  sub_20C1380F4();
  v3 = sub_20C138104();
  if (v3 == sub_20C138104())
  {
    v4 = 20.0;
    v5 = 32.0;
  }

  else
  {
    v6 = sub_20C138104();
    v7 = sub_20C138104();
    if (v6 == v7)
    {
      v5 = 44.0;
    }

    else
    {
      v5 = 32.0;
    }

    if (v6 == v7)
    {
      v4 = 29.0;
    }

    else
    {
      v4 = 20.0;
    }
  }

  v8 = sub_20B9480F4();
  result = 4.0;
  *a2 = xmmword_20C163EB0;
  *(a2 + 16) = xmmword_20C163EB0;
  *(a2 + 32) = 0x4010000000000000;
  *(a2 + 40) = v5;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0xD000000000000013;
  *(a2 + 64) = 0x800000020C19DA40;
  *(a2 + 72) = v8;
  return result;
}

void sub_20B94900C(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC9SeymourUI13StackIconView_title);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC9SeymourUI13StackIconView_layout);
  sub_20B948F38(v15);
  v4 = v15[3];
  v3[2] = v15[2];
  v3[3] = v4;
  v3[4] = v15[4];
  v5 = v15[1];
  *v3 = v15[0];
  v3[1] = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI13StackIconView_imageView;
  v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = objc_opt_self();
  v9 = [v8 clearColor];
  [v7 setBackgroundColor_];

  [v7 setContentMode_];
  v10 = [v8 whiteColor];
  [v7 setTintColor_];

  *(v1 + v6) = v7;
  v11 = OBJC_IVAR____TtC9SeymourUI13StackIconView_stackIconView;
  v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v8 clearColor];
  [v12 setBackgroundColor_];

  [v12 setContentMode_];
  v14 = [v8 whiteColor];
  [v12 setTintColor_];

  *(v1 + v11) = v12;
  *(v1 + OBJC_IVAR____TtC9SeymourUI13StackIconView_layoutView) = 0;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20B949248()
{
  result = qword_27C767E90;
  if (!qword_27C767E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767E90);
  }

  return result;
}

unint64_t sub_20B9492AC()
{
  v1 = v0;
  v2 = sub_20C1341A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C135C84();
  MEMORY[0x28223BE20](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B747A04(v1, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *v8;
      v14 = *(v8 + 1);
      v15 = 0x636F665F79646F62;
      v16 = 0xEB000000005F7375;
      goto LABEL_16;
    case 2u:
      v13 = *v8;
      v14 = *(v8 + 1);
      v15 = 0x75626972746E6F63;
      v17 = 1601335156;
      goto LABEL_15;
    case 3u:
      v13 = *v8;
      v14 = *(v8 + 1);
      v15 = 0x6E656D7069757165;
      v16 = 0xEA00000000005F74;
      goto LABEL_16;
    case 4u:
    case 0xAu:
      return *v8;
    case 5u:
      v13 = *v8;
      v14 = *(v8 + 1);
      v15 = 0x65675F636973756DLL;
      v17 = 1600483950;
      goto LABEL_15;
    case 6u:
      (*(v3 + 32))(v5, v8, v2);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_20C13DC94();

      v23 = 0x75645F616964656DLL;
      v24 = 0xEF5F6E6F69746172;
      v18 = sub_20C134154();
      MEMORY[0x20F2F4230](v18);

      v19 = v23;
      (*(v3 + 8))(v5, v2);
      return v19;
    case 7u:
      v13 = *v8;
      v14 = *(v8 + 1);
      v15 = 0x656C5F6C6C696B73;
      v17 = 1600939382;
LABEL_15:
      v16 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      goto LABEL_16;
    case 8u:
      v13 = *v8;
      v14 = *(v8 + 1);
      v15 = 0x5F656D656874;
      v16 = 0xE600000000000000;
      goto LABEL_16;
    case 9u:
      v20 = *v8;
      v21 = *(v8 + 1);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_20C13DC94();

      v23 = 0xD000000000000015;
      v24 = 0x800000020C1A1400;
      MEMORY[0x20F2F4230](v20, v21);
      goto LABEL_17;
    case 0xBu:
      v10 = *v8;
      v11 = *(v8 + 1);
      v12 = v8[16];
      v26 = 0x5F7469617274;
      v27 = 0xE600000000000000;
      v23 = v10;
      v24 = v11;
      v25 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767E98, &qword_20C163FD0);
      goto LABEL_10;
    case 0xCu:
      v13 = *v8;
      v14 = *(v8 + 1);
      v15 = 0x5F74756F6B726F77;
      v16 = 0xE800000000000000;
LABEL_16:
      v23 = v15;
      v24 = v16;
      MEMORY[0x20F2F4230](v13, v14);
LABEL_17:

      result = v23;
      break;
    default:
      v10 = *v8;
      v11 = *(v8 + 1);
      v12 = v8[16];
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_20C13DC94();

      v26 = 0x5F746E65746E6F63;
      v27 = 0xEF5F676E69746172;
      v23 = v10;
      v24 = v11;
      v25 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00, &unk_20C152DE0);
LABEL_10:
      sub_20C133BB4();
      sub_20B583F4C(v10, v11, v12);
      MEMORY[0x20F2F4230](v22[1], v22[2]);

      result = v26;
      break;
  }

  return result;
}

uint64_t URL.openLinkAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8, &unk_20C1896B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_20C132704();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132684();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_20B520158(v2, &qword_27C7665D8, &unk_20C1896B0);
    return 4;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = sub_20C1326A4();
  if (!v8)
  {
    (*(v4 + 8))(v6, v3);
    return 4;
  }

  v9 = MEMORY[0x20F2F1C80](v7);
  (*(v4 + 8))(v6, v3);
  result = v9;
  if (v9 == 4)
  {
    return 4;
  }

  return result;
}

uint64_t URL.decodedOpenLink.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v98 = a1;
  v4 = sub_20C132704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v87 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_20C132C14();
  v101 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v102 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = v86 - v9;
  v10 = sub_20C13BB84();
  v93 = *(v10 - 8);
  v94 = v10;
  MEMORY[0x28223BE20](v10);
  v104 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13C9C4();
  MEMORY[0x28223BE20](v12 - 8);
  v86[1] = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C132654();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EA8, &qword_20C188480);
  MEMORY[0x28223BE20](v18 - 8);
  v95 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = v86 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8, &unk_20C1896B0);
  MEMORY[0x28223BE20](v22 - 8);
  v91 = v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v86 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v86 - v28;
  v92 = v3;
  sub_20C132684();
  v96 = v29;
  sub_20B52F9E8(v29, v26, &qword_27C7665D8, &unk_20C1896B0);
  v30 = *(v5 + 48);
  v31 = v30(v26, 1, v4);
  v88 = v5;
  v89 = v30;
  v90 = v5 + 48;
  if (v31 == 1)
  {
    sub_20B520158(v26, &qword_27C7665D8, &unk_20C1896B0);
LABEL_12:
    v41 = v103;
    (*(v15 + 56))(v103, 1, 1, v14);
    v42 = v97;
    goto LABEL_16;
  }

  v32 = sub_20C132664();
  result = (*(v5 + 8))(v26, v4);
  if (!v32)
  {
    goto LABEL_12;
  }

  v86[0] = v4;
  v34 = *(v32 + 16);
  if (v34)
  {
    v35 = 0;
    v100 = v15 + 16;
    while (v35 < *(v32 + 16))
    {
      (*(v15 + 16))(v17, v32 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v35, v14);
      v36 = sub_20C132634();
      v38 = v37;
      if (v36 == sub_20C13A8A4() && v38 == v39)
      {

LABEL_14:

        v41 = v103;
        (*(v15 + 32))(v103, v17, v14);
        (*(v15 + 56))(v41, 0, 1, v14);
        goto LABEL_15;
      }

      v40 = sub_20C13DFF4();

      if (v40)
      {
        goto LABEL_14;
      }

      ++v35;
      result = (*(v15 + 8))(v17, v14);
      if (v34 == v35)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    return result;
  }

LABEL_11:

  v41 = v103;
  (*(v15 + 56))(v103, 1, 1, v14);
LABEL_15:
  v42 = v97;
  v4 = v86[0];
LABEL_16:
  v43 = v95;
  sub_20B52F9E8(v41, v95, &qword_27C767EA8, &qword_20C188480);
  v44 = (*(v15 + 48))(v43, 1, v14);
  v45 = v104;
  v46 = v102;
  if (v44 == 1)
  {
    sub_20B520158(v43, &qword_27C767EA8, &qword_20C188480);
  }

  else
  {
    sub_20C132644();
    v48 = v47;
    (*(v15 + 8))(v43, v14);
    if (v48)
    {
      v49 = sub_20C132C24();
      v51 = v50;

      if (v51 >> 60 != 15)
      {
        sub_20C13C9B4();
        sub_20C13C974();
        if (v52)
        {
          sub_20C132C04();
          sub_20B94ACA8(v49, v51);

          sub_20B520158(v41, &qword_27C767EA8, &qword_20C188480);
          return sub_20B520158(v96, &qword_27C7665D8, &unk_20C1896B0);
        }

        sub_20B94ACA8(v49, v51);
      }
    }
  }

  v53 = v4;
  sub_20C13B534();
  v54 = v101;
  v55 = *(v101 + 16);
  v56 = v99;
  v57 = v92;
  v55(v99, v92, v42);
  v55(v46, v57, v42);
  v58 = sub_20C13BB74();
  v59 = sub_20C13D1D4();
  if (os_log_type_enabled(v58, v59))
  {
    LODWORD(v100) = v59;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v105[0] = v61;
    *v60 = 136446722;
    v62 = v91;
    sub_20C132684();
    v63 = v53;
    if (v89(v62, 1, v53) == 1)
    {
      v64 = v56;
      v65 = 1852141679;
      sub_20B520158(v62, &qword_27C7665D8, &unk_20C1896B0);
      v66 = 0xE400000000000000;
    }

    else
    {
      v65 = 1852141679;
      v69 = v88;
      v70 = v62;
      v71 = v87;
      (*(v88 + 32))(v87, v70, v63);
      v72 = sub_20C1326A4();
      if (v73)
      {
        v74 = MEMORY[0x20F2F1C80](v72);
        (*(v69 + 8))(v71, v63);
        if (v74 == 4)
        {
          v66 = 0xE400000000000000;
        }

        else
        {
          v65 = sub_20C13A524();
          v66 = v75;
        }
      }

      else
      {
        (*(v69 + 8))(v71, v63);
        v66 = 0xE400000000000000;
      }

      v64 = v99;
    }

    v76 = v61;
    v77 = v101;
    v78 = *(v101 + 8);
    v78(v64, v42);
    v79 = sub_20B51E694(v65, v66, v105);

    *(v60 + 4) = v79;
    *(v60 + 12) = 2160;
    *(v60 + 14) = 1752392040;
    *(v60 + 22) = 2080;
    v80 = v102;
    v81 = sub_20C132B24();
    v83 = v82;
    v78(v80, v42);
    v84 = sub_20B51E694(v81, v83, v105);

    *(v60 + 24) = v84;
    _os_log_impl(&dword_20B517000, v58, v100, "Failed to decode %{public}s link from %{mask.hash}s", v60, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v76, -1, -1);
    v85 = v60;
    v54 = v77;
    MEMORY[0x20F2F6A40](v85, -1, -1);

    (*(v93 + 8))(v104, v94);
    v68 = v103;
  }

  else
  {

    v67 = *(v54 + 8);
    v67(v46, v42);
    v67(v56, v42);
    (*(v93 + 8))(v45, v94);
    v68 = v41;
  }

  sub_20B520158(v68, &qword_27C767EA8, &qword_20C188480);
  sub_20B520158(v96, &qword_27C7665D8, &unk_20C1896B0);
  return (*(v54 + 56))(v98, 1, 1, v42);
}

uint64_t URL.encodedOpenLink(for:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v30[3] = a1;
  v36 = a2;
  v35 = sub_20C132C14();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C132704();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13C9C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132B24();
  sub_20C13C9B4();
  v15 = sub_20C13C964();
  v17 = v16;

  (*(v12 + 8))(v14, v11);
  if (v17 >> 60 == 15)
  {
    v18 = v36;
    sub_20C13B534();
    v19 = v35;
    (*(v37 + 16))(v4, v2, v35);
    v20 = sub_20C13BB74();
    v21 = sub_20C13D1D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 141558274;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2080;
      v24 = sub_20C132B24();
      v26 = v25;
      (*(v37 + 8))(v4, v19);
      v27 = sub_20B51E694(v24, v26, &v38);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_20B517000, v20, v21, "Failed to encode open link from %{mask.hash}s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      MEMORY[0x20F2F6A40](v22, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v4, v19);
    }

    (*(v33 + 8))(v7, v34);
    return (*(v37 + 56))(v18, 1, 1, v19);
  }

  else
  {
    sub_20C132C44();
    sub_20B94ACA8(v15, v17);
    sub_20C1326F4();
    sub_20C13A8B4();
    sub_20C1326D4();
    v28 = sub_20C13A524();
    MEMORY[0x20F2E9E20](v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EB0, &qword_20C163FE8);
    sub_20C132654();
    *(swift_allocObject() + 16) = xmmword_20C14F980;
    sub_20C13A8A4();
    sub_20C132624();

    sub_20C132674();
    sub_20C132694();
    return (*(v31 + 8))(v10, v32);
  }
}

void *sub_20B94A94C(uint64_t a1, unint64_t a2)
{
  v3 = sub_20B94A998(a1, a2);
  sub_20B94AAC8(&unk_282286500);
  return v3;
}

void *sub_20B94A998(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20C0B6B5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20C13DD04();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20C13CAD4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20C0B6B5C(v10, 0);
        result = sub_20C13DC54();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_20B94AAC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_20B94ABB4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_20B94ABB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EB8, &unk_20C163FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double sub_20B94ACA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20B7197A0(a1, a2);
  }

  return result;
}

void NavigationResource.hash(into:)(uint64_t a1)
{
  v72 = a1;
  v2 = type metadata accessor for WorkoutSessionConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for WorkoutNavigationResource(0);
  MEMORY[0x28223BE20](v63);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v59 - v7;
  v8 = sub_20C138204();
  v62 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C1387E4();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x28223BE20](v11);
  v61 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C138894();
  v67 = *(v13 - 8);
  v68 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C1388F4();
  v70 = *(v16 - 8);
  v71 = v16;
  MEMORY[0x28223BE20](v16);
  v69 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C132C14();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B94D5C8(v1, v24, type metadata accessor for NavigationResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0, &unk_20C155B00) + 48);
      (*(v19 + 32))(v21, v24, v18);
      v47 = v70;
      v46 = v71;
      v48 = v24 + v45;
      v49 = v69;
      (*(v70 + 32))(v69, v48, v71);
      MEMORY[0x20F2F58E0](1);
      sub_20B94D6E0(&qword_27C762CB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_20C13C7C4();
      sub_20B94D6E0(&qword_27C767EC8, MEMORY[0x277D540D8], MEMORY[0x277D540E0]);
      sub_20C13C7C4();
      sub_20C136EA4();
      sub_20C13CA64();

      (*(v47 + 8))(v49, v46);
      goto LABEL_17;
    case 2u:
      v41 = v67;
      v42 = v68;
      (*(v67 + 32))(v15, v24, v68);
      MEMORY[0x20F2F58E0](2);
      sub_20B94D6E0(&qword_27C767EC0, MEMORY[0x277D540B0], MEMORY[0x277D540B8]);
      sub_20C13C7C4();
      (*(v41 + 8))(v15, v42);
      return;
    case 3u:
      v44 = *v24;
      MEMORY[0x20F2F58E0](3);
      sub_20C13D604();
      sub_20C13CA64();

      return;
    case 4u:
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0, &unk_20C15F290) + 48);
      v31 = v64;
      v30 = v65;
      v32 = v61;
      (*(v64 + 32))(v61, v24, v65);
      v34 = v70;
      v33 = v71;
      v35 = v24 + v29;
      v36 = v69;
      (*(v70 + 32))(v69, v35, v71);
      MEMORY[0x20F2F58E0](4);
      sub_20B94D6E0(&qword_27C767ED0, MEMORY[0x277D540A0], MEMORY[0x277D540A8]);
      sub_20C13C7C4();
      sub_20B94D6E0(&qword_27C767EC8, MEMORY[0x277D540D8], MEMORY[0x277D540E0]);
      sub_20C13C7C4();
      sub_20C136EA4();
      sub_20C13CA64();

      (*(v34 + 8))(v36, v33);
      (*(v31 + 8))(v32, v30);
      return;
    case 5u:
      v51 = *v24;
      MEMORY[0x20F2F58E0](5);
      sub_20C13D604();

      return;
    case 6u:
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763FD0, &unk_20C155B10) + 48);
      v54 = v67;
      v53 = v68;
      (*(v67 + 32))(v15, v24, v68);
      v56 = v69;
      v55 = v70;
      v57 = v71;
      (*(v70 + 32))(v69, v24 + v52, v71);
      MEMORY[0x20F2F58E0](6);
      sub_20B94D6E0(&qword_27C767EC0, MEMORY[0x277D540B0], MEMORY[0x277D540B8]);
      sub_20C13C7C4();
      sub_20B94D6E0(&qword_27C767EC8, MEMORY[0x277D540D8], MEMORY[0x277D540E0]);
      sub_20C13C7C4();
      sub_20C136EA4();
      sub_20C13CA64();

      (*(v55 + 8))(v56, v57);
      (*(v54 + 8))(v15, v53);
      return;
    case 7u:
      v25 = 7;
      goto LABEL_27;
    case 8u:
      v25 = 10;
      goto LABEL_27;
    case 9u:
      (*(v19 + 32))(v21, v24, v18);
      MEMORY[0x20F2F58E0](11);
      sub_20B94D6E0(&qword_27C762CB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_20C13C7C4();
LABEL_17:
      (*(v19 + 8))(v21, v18);
      return;
    case 0xAu:
      v58 = *v24;
      MEMORY[0x20F2F58E0](12);
      v50 = v58;
      goto LABEL_31;
    case 0xBu:
      v25 = 13;
      goto LABEL_27;
    case 0xCu:
      v37 = *v24;
      v38 = v24[1];
      MEMORY[0x20F2F58E0](15);
      if (v37)
      {
        sub_20C13E184();
        v39 = v37;
        sub_20C13D604();

        if (v38)
        {
LABEL_10:
          sub_20C13E184();
          v40 = v38;
          sub_20C13D604();

          return;
        }
      }

      else
      {
        sub_20C13E184();
        if (v38)
        {
          goto LABEL_10;
        }
      }

      sub_20C13E184();

      return;
    case 0xDu:
      v25 = 16;
      goto LABEL_27;
    case 0xEu:
      MEMORY[0x20F2F58E0](17);
      sub_20C13CA64();

      sub_20C135184();
      sub_20C13CA64();

      sub_20C13CA64();

      return;
    case 0xFu:
      v43 = v62;
      (*(v62 + 32))(v10, v24, v8);
      MEMORY[0x20F2F58E0](18);
      sub_20B94D6E0(&qword_27C763318, MEMORY[0x277D53C88], MEMORY[0x277D53C90]);
      sub_20C13C7C4();
      (*(v43 + 8))(v10, v8);
      return;
    case 0x10u:
      v26 = v66;
      sub_20B94D630(v24, v66, type metadata accessor for WorkoutNavigationResource);
      v27 = v72;
      MEMORY[0x20F2F58E0](19);
      sub_20B94D5C8(v26, v5, type metadata accessor for WorkoutNavigationResource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v60;
        sub_20B94D630(v5, v60, type metadata accessor for WorkoutSessionConfiguration);
        MEMORY[0x20F2F58E0](1);
        WorkoutSessionConfiguration.hash(into:)(v27);
        sub_20B94DB64(v28, type metadata accessor for WorkoutSessionConfiguration);
      }

      else
      {
        MEMORY[0x20F2F58E0](0);
        sub_20C13CA64();
      }

      sub_20B94DB64(v26, type metadata accessor for WorkoutNavigationResource);
      return;
    case 0x11u:
      v50 = 8;
      goto LABEL_31;
    case 0x12u:
      v50 = 9;
      goto LABEL_31;
    case 0x13u:
      v50 = 14;
      goto LABEL_31;
    case 0x14u:
      v50 = 20;
      goto LABEL_31;
    case 0x15u:
      v50 = 21;
      goto LABEL_31;
    case 0x16u:
      v50 = 22;
      goto LABEL_31;
    case 0x17u:
      v50 = 23;
LABEL_31:
      MEMORY[0x20F2F58E0](v50);
      return;
    default:
      v25 = 0;
LABEL_27:
      MEMORY[0x20F2F58E0](v25);
      sub_20C13CA64();

      return;
  }
}

uint64_t NavigationResource.hashValue.getter()
{
  sub_20C13E164();
  NavigationResource.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B94B9E0()
{
  sub_20C13E164();
  NavigationResource.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B94BA24(uint64_t a1)
{
  sub_20C13E164();
  NavigationResource.hash(into:)(v2);
  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI18NavigationResourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v267 = a1;
  v268 = a2;
  v2 = type metadata accessor for WorkoutNavigationResource(0);
  MEMORY[0x28223BE20](v2 - 8);
  v239 = &v233 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C138204();
  v257 = *(v4 - 8);
  v258 = v4;
  MEMORY[0x28223BE20](v4);
  v235 = &v233 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C1387E4();
  v259 = *(v6 - 8);
  v260 = v6;
  MEMORY[0x28223BE20](v6);
  v242 = &v233 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C138894();
  v263 = *(v8 - 8);
  v264 = v8;
  MEMORY[0x28223BE20](v8);
  v241 = &v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v234 = &v233 - v11;
  v12 = sub_20C1388F4();
  v13 = *(v12 - 8);
  v265 = v12;
  v266 = v13;
  MEMORY[0x28223BE20](v12);
  v238 = &v233 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v240 = &v233 - v16;
  MEMORY[0x28223BE20](v17);
  v236 = &v233 - v18;
  MEMORY[0x28223BE20](v19);
  v237 = &v233 - v20;
  MEMORY[0x28223BE20](v21);
  v243 = &v233 - v22;
  MEMORY[0x28223BE20](v23);
  v256 = &v233 - v24;
  v25 = sub_20C132C14();
  v261 = *(v25 - 8);
  v262 = v25;
  MEMORY[0x28223BE20](v25);
  v233 = &v233 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v244 = &v233 - v28;
  v29 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v29);
  v255 = &v233 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v254 = &v233 - v32;
  MEMORY[0x28223BE20](v33);
  v252 = (&v233 - v34);
  MEMORY[0x28223BE20](v35);
  v250 = (&v233 - v36);
  MEMORY[0x28223BE20](v37);
  v248 = &v233 - v38;
  MEMORY[0x28223BE20](v39);
  v246 = (&v233 - v40);
  MEMORY[0x28223BE20](v41);
  v247 = &v233 - v42;
  MEMORY[0x28223BE20](v43);
  v251 = &v233 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = (&v233 - v46);
  MEMORY[0x28223BE20](v48);
  v50 = (&v233 - v49);
  MEMORY[0x28223BE20](v51);
  v253 = &v233 - v52;
  MEMORY[0x28223BE20](v53);
  v55 = (&v233 - v54);
  MEMORY[0x28223BE20](v56);
  v249 = &v233 - v57;
  MEMORY[0x28223BE20](v58);
  v60 = (&v233 - v59);
  MEMORY[0x28223BE20](v61);
  v63 = &v233 - v62;
  MEMORY[0x28223BE20](v64);
  v245 = &v233 - v65;
  MEMORY[0x28223BE20](v66);
  v68 = (&v233 - v67);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EE8, &unk_20C164100);
  MEMORY[0x28223BE20](v69 - 8);
  v71 = &v233 - v70;
  v73 = (&v233 + *(v72 + 56) - v70);
  sub_20B94D5C8(v267, &v233 - v70, type metadata accessor for NavigationResource);
  v269 = v73;
  sub_20B94D5C8(v268, v73, type metadata accessor for NavigationResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v268 = v71;
      v93 = v245;
      sub_20B94D5C8(v71, v245, type metadata accessor for NavigationResource);
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0, &unk_20C155B00);
      v153 = *(v152 + 48);
      v154 = *(v152 + 64);
      v155 = *(v93 + v154);
      v156 = v269;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v266 + 8))(v93 + v153, v265);
        v207 = v261;
        v206 = v262;
        goto LABEL_91;
      }

      LODWORD(v267) = v155;
      LODWORD(v264) = *(v156 + v154);
      v157 = v261;
      v158 = v262;
      v159 = v244;
      (*(v261 + 32))(v244, v156, v262);
      v160 = v266;
      v161 = *(v266 + 32);
      v162 = v156;
      v163 = v265;
      v161(v256, v93 + v153, v265);
      v164 = v162 + v153;
      v165 = v243;
      v161(v243, v164, v163);
      v166 = sub_20C132B84();
      v167 = *(v157 + 8);
      v167(v93, v158);
      if ((v166 & 1) == 0)
      {
        v215 = *(v160 + 8);
        v215(v165, v163);
        v215(v256, v163);
        v167(v159, v158);
        goto LABEL_126;
      }

      v168 = v256;
      v169 = MEMORY[0x20F2F0040](v256, v165);
      v170 = v165;
      v171 = v168;
      if ((v169 & 1) == 0)
      {
        v222 = *(v160 + 8);
        v222(v170, v163);
        v222(v168, v163);
        v167(v244, v158);
        goto LABEL_126;
      }

      v172 = sub_20C136EA4();
      v174 = v173;
      if (v172 == sub_20C136EA4() && v174 == v175)
      {

        v176 = *(v160 + 8);
        v176(v243, v163);
        v176(v171, v163);
        v167(v244, v158);
        goto LABEL_129;
      }

      v229 = sub_20C13DFF4();

      v230 = *(v160 + 8);
      v230(v243, v163);
      v230(v171, v163);
      v167(v244, v158);
      if (v229)
      {
        goto LABEL_129;
      }

      goto LABEL_126;
    case 2u:
      sub_20B94D5C8(v71, v63, type metadata accessor for NavigationResource);
      v137 = v269;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v139 = v263;
        v138 = v264;
        v140 = v234;
        (*(v263 + 32))(v234, v137, v264);
        v80 = MEMORY[0x20F2EFFB0](v63, v140);
        v141 = *(v139 + 8);
        v141(v140, v138);
        v141(v63, v138);
        goto LABEL_30;
      }

      (*(v263 + 8))(v63, v264);
      goto LABEL_92;
    case 3u:
      sub_20B94D5C8(v71, v60, type metadata accessor for NavigationResource);
      v145 = *v60;
      v144 = v60[1];
      v146 = v60[2];
      v147 = v269;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

LABEL_87:

        goto LABEL_92;
      }

      v126 = v71;
      v149 = *v147;
      v148 = v147[1];
      v150 = v147[2];
      sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
      v151 = sub_20C13D5F4();

      if ((v151 & 1) == 0)
      {

        goto LABEL_132;
      }

      if (v144 == v148 && v146 == v150)
      {

        goto LABEL_123;
      }

      v221 = sub_20C13DFF4();

      if ((v221 & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_123;
    case 4u:
      v268 = v71;
      v93 = v249;
      sub_20B94D5C8(v71, v249, type metadata accessor for NavigationResource);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0, &unk_20C15F290);
      v95 = *(v94 + 48);
      v96 = *(v94 + 64);
      v97 = *(v93 + v96);
      v98 = v269;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v266 + 8))(v93 + v95, v265);
        v207 = v259;
        v206 = v260;
        goto LABEL_91;
      }

      LODWORD(v267) = v97;
      LODWORD(v264) = *(v98 + v96);
      v99 = v259;
      v100 = v260;
      v101 = v242;
      (*(v259 + 32))(v242, v98, v260);
      v102 = v265;
      v103 = v266;
      v104 = *(v266 + 32);
      v105 = v237;
      v104(v237, v93 + v95, v265);
      v106 = v269 + v95;
      v107 = v101;
      v108 = v236;
      v104(v236, v106, v102);
      v109 = v99;
      v110 = v107;
      LOBYTE(v107) = sub_20C1387B4();
      v111 = *(v109 + 8);
      v112 = v93;
      v113 = v100;
      v111(v112, v100);
      if ((v107 & 1) == 0)
      {
        goto LABEL_85;
      }

      v114 = v110;
      if ((MEMORY[0x20F2F0040](v105, v108) & 1) == 0)
      {
        v220 = *(v103 + 8);
        v220(v108, v102);
        v220(v105, v102);
        v111(v110, v260);
        goto LABEL_126;
      }

      v115 = sub_20C136EA4();
      v117 = v116;
      if (v115 == sub_20C136EA4() && v117 == v118)
      {

        v119 = *(v103 + 8);
        v119(v108, v102);
        v119(v105, v102);
        v111(v114, v260);
        goto LABEL_129;
      }

      v224 = v114;
      v225 = sub_20C13DFF4();

      v226 = *(v103 + 8);
      v226(v108, v102);
      v226(v105, v102);
      v227 = v224;
      v228 = v260;
      goto LABEL_128;
    case 5u:
      sub_20B94D5C8(v71, v55, type metadata accessor for NavigationResource);
      v177 = v71;
      v178 = *v55;
      v179 = v269;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v180 = *v179;
        sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
        v80 = sub_20C13D5F4();

        sub_20B94DB64(v177, type metadata accessor for NavigationResource);
        return v80 & 1;
      }

      v71 = v177;
      goto LABEL_92;
    case 6u:
      v268 = v71;
      v93 = v253;
      sub_20B94D5C8(v71, v253, type metadata accessor for NavigationResource);
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763FD0, &unk_20C155B10);
      v183 = *(v182 + 48);
      v184 = *(v182 + 64);
      v185 = *(v93 + v184);
      v186 = v269;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        LODWORD(v267) = v185;
        LODWORD(v262) = *(v186 + v184);
        v187 = v263;
        v188 = v264;
        v189 = v241;
        (*(v263 + 32))(v241, v186, v264);
        v102 = v265;
        v103 = v266;
        v190 = *(v266 + 32);
        v105 = v240;
        v190(v240, v93 + v183, v265);
        v191 = v269 + v183;
        v192 = v189;
        v108 = v238;
        v190(v238, v191, v102);
        v193 = v187;
        v110 = v192;
        LOBYTE(v192) = MEMORY[0x20F2EFFB0](v93, v192);
        v111 = *(v193 + 8);
        v194 = v93;
        v113 = v188;
        v111(v194, v188);
        if (v192)
        {
          v195 = v110;
          if (MEMORY[0x20F2F0040](v105, v108))
          {
            v196 = sub_20C136EA4();
            v198 = v197;
            if (v196 == sub_20C136EA4() && v198 == v199)
            {

              v200 = *(v103 + 8);
              v200(v108, v102);
              v200(v105, v102);
              v111(v195, v264);
LABEL_129:
              v205 = v268;
              goto LABEL_76;
            }

            v231 = v195;
            v225 = sub_20C13DFF4();

            v232 = *(v103 + 8);
            v232(v108, v102);
            v232(v105, v102);
            v227 = v231;
            v228 = v264;
LABEL_128:
            v111(v227, v228);
            if (v225)
            {
              goto LABEL_129;
            }
          }

          else
          {
            v223 = *(v103 + 8);
            v223(v108, v102);
            v223(v105, v102);
            v111(v110, v264);
          }
        }

        else
        {
LABEL_85:
          v208 = *(v103 + 8);
          v208(v108, v102);
          v208(v105, v102);
          v111(v110, v113);
        }

LABEL_126:
        sub_20B94DB64(v268, type metadata accessor for NavigationResource);
        goto LABEL_93;
      }

      (*(v266 + 8))(v93 + v183, v265);
      v207 = v263;
      v206 = v264;
LABEL_91:
      (*(v207 + 8))(v93, v206);
      v71 = v268;
LABEL_92:
      sub_20B94DAFC(v71);
      goto LABEL_93;
    case 7u:
      sub_20B94D5C8(v71, v50, type metadata accessor for NavigationResource);
      v75 = *v50;
      v74 = v50[1];
      v76 = v269;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_87;
      }

      goto LABEL_65;
    case 8u:
      sub_20B94D5C8(v71, v47, type metadata accessor for NavigationResource);
      v75 = *v47;
      v74 = v47[1];
      v76 = v269;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_65;
      }

      goto LABEL_87;
    case 9u:
      v130 = v251;
      sub_20B94D5C8(v71, v251, type metadata accessor for NavigationResource);
      v131 = v269;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v133 = v261;
      if (EnumCaseMultiPayload == 9)
      {
        v134 = v233;
        v135 = v262;
        (*(v261 + 32))(v233, v131, v262);
        v136 = sub_20C132B84();
        goto LABEL_29;
      }

      (*(v261 + 8))(v130, v262);
      goto LABEL_92;
    case 0xAu:
      v201 = v247;
      sub_20B94D5C8(v71, v247, type metadata accessor for NavigationResource);
      v202 = v269;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_92;
      }

      v203 = *v201 ^ *v202;
      sub_20B94DB64(v71, type metadata accessor for NavigationResource);
      v80 = v203 ^ 1;
      return v80 & 1;
    case 0xBu:
      v92 = v246;
      sub_20B94D5C8(v71, v246, type metadata accessor for NavigationResource);
      v75 = *v92;
      v74 = v92[1];
      v76 = v269;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_87;
      }

      goto LABEL_65;
    case 0xCu:
      v120 = v248;
      sub_20B94D5C8(v71, v248, type metadata accessor for NavigationResource);
      v121 = *v120;
      v122 = *(v120 + 8);
      v123 = v269;
      if (swift_getEnumCaseMultiPayload() != 12)
      {

        goto LABEL_92;
      }

      v125 = *v123;
      v124 = v123[1];
      if (v121)
      {
        if (!v125)
        {
LABEL_109:

          sub_20B94DB64(v71, type metadata accessor for NavigationResource);
          goto LABEL_93;
        }

        v126 = v71;
        sub_20B51C88C(0, &qword_281100520, 0x277CCA898);
        v127 = v121;
        v128 = v125;
        v129 = sub_20C13D5F4();

        if ((v129 & 1) == 0)
        {

          v121 = v128;
LABEL_108:
          v71 = v126;
          goto LABEL_109;
        }
      }

      else
      {
        v126 = v71;
        if (v125)
        {
          v121 = v124;
          v124 = v122;
          v122 = v125;
          goto LABEL_108;
        }
      }

      if (!v122)
      {

        if (!v124)
        {
          goto LABEL_123;
        }

LABEL_131:

LABEL_132:
        sub_20B94DB64(v126, type metadata accessor for NavigationResource);
        goto LABEL_93;
      }

      if (!v124)
      {

        v124 = v122;
        goto LABEL_131;
      }

      sub_20B51C88C(0, &qword_281100520, 0x277CCA898);
      v217 = v122;
      v218 = sub_20C13D5F4();

      if ((v218 & 1) == 0)
      {
        goto LABEL_132;
      }

LABEL_123:
      v205 = v126;
LABEL_76:
      sub_20B94DB64(v205, type metadata accessor for NavigationResource);
      v80 = 1;
      return v80 & 1;
    case 0xDu:
      v181 = v250;
      sub_20B94D5C8(v71, v250, type metadata accessor for NavigationResource);
      v75 = *v181;
      v74 = v181[1];
      v76 = v269;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_87;
      }

      goto LABEL_65;
    case 0xEu:
      v81 = v71;
      v82 = v252;
      sub_20B94D5C8(v71, v252, type metadata accessor for NavigationResource);
      v84 = *v82;
      v83 = v82[1];
      v86 = v82[3];
      v85 = v82[4];
      v87 = v269;
      if (swift_getEnumCaseMultiPayload() != 14)
      {

        v71 = v81;
        goto LABEL_92;
      }

      v88 = *v87;
      v89 = v87[1];
      v91 = v87[3];
      v90 = v87[4];
      if (v84 == v88 && v83 == v89)
      {
      }

      else
      {
        v210 = sub_20C13DFF4();

        if ((v210 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      v211 = sub_20C135184();
      v213 = v212;
      if (v211 == sub_20C135184() && v213 == v214)
      {

        goto LABEL_102;
      }

      v216 = sub_20C13DFF4();

      if (v216)
      {
LABEL_102:
        if (v86 == v91 && v85 == v90)
        {

LABEL_115:
          v205 = v81;
          goto LABEL_76;
        }

        v219 = sub_20C13DFF4();

        if (v219)
        {
          goto LABEL_115;
        }

        goto LABEL_116;
      }

LABEL_105:

LABEL_116:
      sub_20B94DB64(v81, type metadata accessor for NavigationResource);
      goto LABEL_93;
    case 0xFu:
      v130 = v254;
      sub_20B94D5C8(v71, v254, type metadata accessor for NavigationResource);
      v142 = v269;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        (*(v257 + 8))(v130, v258);
        goto LABEL_92;
      }

      v133 = v257;
      v135 = v258;
      v134 = v235;
      (*(v257 + 32))(v235, v142, v258);
      v136 = MEMORY[0x20F2EF930](v130, v134);
LABEL_29:
      v80 = v136;
      v143 = *(v133 + 8);
      v143(v134, v135);
      v143(v130, v135);
      goto LABEL_30;
    case 0x10u:
      v77 = v255;
      sub_20B94D5C8(v71, v255, type metadata accessor for NavigationResource);
      v78 = v269;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        sub_20B94DB64(v77, type metadata accessor for WorkoutNavigationResource);
        goto LABEL_92;
      }

      v79 = v239;
      sub_20B94D630(v78, v239, type metadata accessor for WorkoutNavigationResource);
      v80 = _s9SeymourUI25WorkoutNavigationResourceO2eeoiySbAC_ACtFZ_0(v77, v79);
      sub_20B94DB64(v79, type metadata accessor for WorkoutNavigationResource);
      sub_20B94DB64(v77, type metadata accessor for WorkoutNavigationResource);
LABEL_30:
      sub_20B94DB64(v71, type metadata accessor for NavigationResource);
      return v80 & 1;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_92;
      }

      goto LABEL_75;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_92;
      }

      goto LABEL_75;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_92;
      }

      goto LABEL_75;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_92;
      }

      goto LABEL_75;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_92;
      }

      goto LABEL_75;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_92;
      }

      goto LABEL_75;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_92;
      }

LABEL_75:
      v205 = v71;
      goto LABEL_76;
    default:
      sub_20B94D5C8(v71, v68, type metadata accessor for NavigationResource);
      v75 = *v68;
      v74 = v68[1];
      v76 = v269;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_87;
      }

LABEL_65:
      if (v75 == *v76 && v74 == v76[1])
      {
      }

      else
      {
        v204 = sub_20C13DFF4();

        if ((v204 & 1) == 0)
        {
          sub_20B94DB64(v71, type metadata accessor for NavigationResource);
LABEL_93:
          v80 = 0;
          return v80 & 1;
        }
      }

      v205 = v71;
      goto LABEL_76;
  }
}

uint64_t type metadata accessor for NavigationResource(uint64_t a1)
{
  result = qword_281103048;
  if (!qword_281103048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B94D5C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B94D630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B94D6E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20B94D728(uint64_t a1)
{
  sub_20B94D8F4();
  if (v1 <= 0x3F)
  {
    sub_20B94D9A0(319, &qword_281103E38, MEMORY[0x277CC9260], "url metric topicRoutingBehavior ");
    if (v2 <= 0x3F)
    {
      sub_20C138894();
      if (v3 <= 0x3F)
      {
        sub_20B94D924(319);
        if (v4 <= 0x3F)
        {
          sub_20B94D9A0(319, &unk_281103B58, MEMORY[0x277D540A0], " metric topicRoutingBehavior ");
          if (v5 <= 0x3F)
          {
            sub_20B51C88C(319, &qword_281100578, 0x277CEE660);
            if (v6 <= 0x3F)
            {
              sub_20B94D9A0(319, &qword_281103B48, MEMORY[0x277D540B0], " metric topicRoutingBehavior ");
              if (v7 <= 0x3F)
              {
                sub_20B52CB58();
                if (v8 <= 0x3F)
                {
                  sub_20B94DA20(319);
                  if (v9 <= 0x3F)
                  {
                    sub_20B94DA94();
                    if (v10 <= 0x3F)
                    {
                      sub_20C138204();
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for WorkoutNavigationResource(319);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_20B94D8F4()
{
  result = qword_2811005C0;
  if (!qword_2811005C0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_2811005C0);
  }

  return result;
}

void sub_20B94D924(uint64_t a1)
{
  if (!qword_2811004E8)
  {
    sub_20B51C88C(255, &unk_2811004F0, 0x277CEE4C8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811004E8);
    }
  }
}

void sub_20B94D9A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    sub_20C1388F4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_20B94DA20(uint64_t a1)
{
  if (!qword_281100518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767EE0, "\n;\t");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281100518);
    }
  }
}

void sub_20B94DA94()
{
  if (!qword_2811005C8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2811005C8);
    }
  }
}

uint64_t sub_20B94DAFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EE8, &unk_20C164100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B94DB64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_20B94DBC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_floatingView);
  v2 = v1;
  return v1;
}

char *sub_20B94DBF4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_layout];
  v13 = objc_opt_self();
  v14 = [v13 preferredFontForTextStyle_];
  v15 = [objc_opt_self() configurationWithFont_];

  *v12 = xmmword_20C151470;
  *(v12 + 1) = xmmword_20C164110;
  *(v12 + 2) = xmmword_20C161770;
  *(v12 + 3) = xmmword_20C151BD0;
  *(v12 + 8) = 0x3FC999999999999ALL;
  *(v12 + 9) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_tvArtworkView;
  v17 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v86 = v16;
  *&v5[v16] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_titleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v20 = sub_20C13C914();
  [v19 setText_];

  [v19 setNumberOfLines_];
  v21 = [v13 preferredFontForTextStyle_];
  [v19 setFont_];

  v85 = objc_opt_self();
  v22 = [v85 labelColor];
  [v19 setTextColor_];

  v23 = v19;
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v24) = 1148846080;
  [v23 setContentCompressionResistancePriority:1 forAxis:v24];

  *&v5[v18] = v23;
  v25 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  v26 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_floatingView;
  *&v5[OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_floatingView] = v25;
  v27 = qword_27C760820;
  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = *&qword_27C79ACA0;
  [v28 setCornerRadius_];

  [*&v5[v26] setContinuousCornerEnabled_];
  [*&v5[v26] setRoundContentWhenDeselected_];
  [*&v5[v26] setFocusedSizeIncrease_];
  [*&v5[v26] setContentMotionRotation:0.0 translation:{0.0, *(v12 + 3), *(v12 + 4)}];
  v30 = *&v5[v26];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 configurationWithStyle_];
  [v32 setFocusAnimationConfiguration_];

  [*&v5[v26] setShadowVerticalOffset_];
  [*&v5[v26] setShadowOpacity:0 forUserInterfaceStyle:*(v12 + 8)];
  [*&v5[v26] setShadowOpacity:2 forUserInterfaceStyle:*(v12 + 8)];
  [*&v5[v26] setShadowOpacity:1 forUserInterfaceStyle:*(v12 + 8)];
  [*&v5[v26] setShadowRadius_];
  v34 = *&v5[v26];
  v35 = [v85 systemGray3Color];
  v36 = objc_opt_self();
  v37 = [v36 currentTraitCollection];
  v38 = sub_20C13D3B4();
  v39 = [v35 resolvedColorWithTraitCollection_];

  [v34 setBackgroundColor:v39 forState:0];
  v40 = *&v5[v26];
  v41 = [v85 systemGray3Color];
  v42 = [v36 currentTraitCollection];
  v43 = sub_20C13D3B4();
  v44 = [v41 resolvedColorWithTraitCollection_];

  [v40 setBackgroundColor:v44 forState:8];
  v45 = [*&v5[v26] layer];
  [v45 setCornerRadius_];

  v46 = *&v5[v86];
  v47 = objc_allocWithZone(MEMORY[0x277D75348]);
  v48 = v46;
  v49 = [v47 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v48 setTintColor_];

  v88.receiver = v5;
  v88.super_class = type metadata accessor for TVMyLibraryEntryCell(0);
  v50 = objc_msgSendSuper2(&v88, sel_initWithFrame_, a1, a2, a3, a4);
  v51 = [v50 contentView];
  v52 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_floatingView;
  [v51 addSubview_];

  result = [*&v50[v52] contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v54 = result;
  v55 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_tvArtworkView;
  [result addSubview_];

  v56 = [v50 contentView];
  v57 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_titleLabel;
  [v56 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_20C151850;
  v59 = [*&v50[v55] centerXAnchor];
  result = [*&v50[v52] contentView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v60 = result;
  v61 = [result centerXAnchor];

  v62 = [v59 constraintEqualToAnchor_];
  *(v58 + 32) = v62;
  v63 = [*&v50[v55] centerYAnchor];
  result = [*&v50[v52] contentView];
  if (result)
  {
    v64 = result;
    v65 = objc_opt_self();
    v66 = [v64 centerYAnchor];

    v67 = [v63 &selRef:v66 alertControllerReleasedDictationButton:? + 5];
    *(v58 + 40) = v67;
    v68 = [*&v50[v57] leadingAnchor];
    v69 = [v50 contentView];
    v70 = [v69 leadingAnchor];

    v71 = [v68 &selRef:v70 alertControllerReleasedDictationButton:? + 5];
    *(v58 + 48) = v71;
    v72 = [*&v50[v57] topAnchor];
    v73 = [*&v50[v52] bottomAnchor];
    v74 = [v72 constraintEqualToAnchor:v73 constant:*&v50[OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_layout]];

    *(v58 + 56) = v74;
    v75 = [*&v50[v57] trailingAnchor];
    v76 = [v50 contentView];
    v77 = [v76 trailingAnchor];

    v78 = [v75 &selRef:v77 alertControllerReleasedDictationButton:? + 5];
    *(v58 + 64) = v78;
    v79 = [*&v50[v57] bottomAnchor];
    v80 = [v50 contentView];

    v81 = [v80 bottomAnchor];
    v82 = [v79 &selRef:v81 alertControllerReleasedDictationButton:? + 5];

    type metadata accessor for UILayoutPriority(0);
    sub_20B60B184();
    sub_20C13BBA4();
    LODWORD(v83) = v87;
    [v82 setPriority_];
    *(v58 + 72) = v82;
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v84 = sub_20C13CC54();

    [v65 activateConstraints_];

    return v50;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_20B94E984(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v8 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
  if (*&v4[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v4[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v9 = [v4 contentView];
    v10 = [v9 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v11 = sub_20C13CC74();

    v28[0] = MEMORY[0x277D84FA0];
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F2F5430](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v8 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_20B6FFB30(&v31, v14);

        ++v13;
        if (v8 == i)
        {
          v15 = v28[0];
          v8 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v15 = MEMORY[0x277D84FA0];
LABEL_16:

    v32 = v15;
    sub_20B6FFB30(v28, *&v4[v8[423]]);

    sub_20B8E9218(v32);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, v28);
        v20 = *&v4[v7];
        v21 = v29;
        v22 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        (*(v22 + 16))(v20, a2 & 1, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v19 += 40;
        --v18;
      }

      while (v18);
    }

    v6 = a1;
  }

  [*&v4[v8[423]] setControlState:v6 animated:a2 & 1];
  v23 = (v6 & 8) >> 3;
  v24 = *&v4[OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_titleLabel];
  if ((v6 & 8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = 4;
  }

  [v24 setSmu:v23 marqueeEnabled:?];
  return [v24 setLineBreakMode_];
}

void sub_20B94EC3C(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v8 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
  if (*&v4[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v4[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v9 = [v4 contentView];
    v10 = [v9 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v11 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F2F5430](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v8 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_20B6FFB30(&v31, v14);

        ++v13;
        if (v8 == i)
        {
          v15 = aBlock[0];
          v8 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v15 = MEMORY[0x277D84FA0];
LABEL_16:

    v32 = v15;
    sub_20B6FFB30(aBlock, *&v4[v8[423]]);

    sub_20B8E9218(v32);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, aBlock);
        v20 = *&v4[v7];
        v21 = v28;
        v22 = v29;
        __swift_project_boxed_opaque_existential_1(aBlock, v28);
        (*(v22 + 3))(v20, a2, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v19 += 40;
        --v18;
      }

      while (v18);
    }

    v6 = a1;
  }

  [*&v4[v8[423]] setControlState:v6 withAnimationCoordinator:a2];
  if (a2)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = v6;
    v29 = sub_20B94F824;
    v30 = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v28 = &block_descriptor_55;
    v24 = _Block_copy(aBlock);
    v25 = v4;

    [a2 addCoordinatedAnimations:v24 completion:0];
    _Block_release(v24);
  }
}

id sub_20B94EF60(unsigned __int8 a1)
{
  if (a1 > 2u || a1 == 1 || a1 == 2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_layout + 72);
    v3 = sub_20C13C914();
    v4 = [objc_opt_self() smm:v3 systemImageNamed:v2 withConfiguration:?];

    return v4;
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

void sub_20B94F110()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_itemInfo, &qword_27C762550, &unk_20C1505A0);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_titleLabel);
}

id sub_20B94F1A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVMyLibraryEntryCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVMyLibraryEntryCell(uint64_t a1)
{
  result = qword_27C767EF8;
  if (!qword_27C767EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B94F2D0(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B94F388(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B94F3D0(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

double sub_20B94F434(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B94F480@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B94F4D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B94F550(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x2A)
  {
    v7 = sub_20B94EF60(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x30));
    [*&v1[OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_tvArtworkView] setImage_];
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_titleLabel];
    v22 = sub_20C13C914();
    [v8 setText_];

    v9 = v22;
  }

  else
  {
    sub_20C13B534();

    v10 = v1;
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1D4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = a1;
      v24 = v22;
      *v13 = 138543618;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2082;
      v15 = sub_20B5F66D0();
      v16 = v10;
      v17 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v15);
      v19 = sub_20B51E694(v17, v18, &v24);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_20B517000, v11, v12, "Attempted to configure %{public}@ with item: %{public}s", v13, 0x16u);
      sub_20B520158(v14, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v14, -1, -1);
      v20 = v22;
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x20F2F6A40](v20, -1, -1);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

id sub_20B94F824()
{
  v1 = (*(v0 + 24) & 8uLL) >> 3;
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_titleLabel);
  if ((*(v0 + 24) & 8) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  [v2 setSmu:v1 marqueeEnabled:?];

  return [v2 setLineBreakMode_];
}

void sub_20B94F894()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_layout;
  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle_];
  v6 = [objc_opt_self() configurationWithFont_];

  *v3 = xmmword_20C151470;
  *(v3 + 16) = xmmword_20C164110;
  *(v3 + 32) = xmmword_20C161770;
  *(v3 + 48) = xmmword_20C151BD0;
  *(v3 + 64) = 0x3FC999999999999ALL;
  *(v3 + 72) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_tvArtworkView;
  v8 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI20TVMyLibraryEntryCell_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = sub_20C13C914();
  [v10 setText_];

  [v10 setNumberOfLines_];
  v12 = [v4 preferredFontForTextStyle_];
  [v10 setFont_];

  v13 = [objc_opt_self() labelColor];
  [v10 setTextColor_];

  v14 = v10;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v15];

  *(v0 + v9) = v14;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B94FB68(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_20B94FBC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_20B94FC38(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    v7 = (*(a4 + 80))(a2, a4);

    sub_20B95191C(v7);

    v8 = (*(a4 + 96))(v45, a2, a4);
    *v9 = 0;

    v8(v45, 0);
    v10 = (*(a4 + 32))(a2, a4);
    if (v10)
    {
      v11 = v10;
      [v10 removeFromSuperview];
    }

    (*(a4 + 40))(0, a2, a4);
    goto LABEL_10;
  }

  v6 = (*(a4 + 32))(a2, a4, a3);
  if (!v6)
  {
    v13 = objc_allocWithZone(type metadata accessor for CompletedIconView());
    v14 = sub_20B9931C0(1, 0.0, 0.0, 0.0, 0.0);
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    type metadata accessor for UILayoutPriority(0);
    v49 = 1144750080;
    v48 = 1065353216;
    sub_20B60B184();
    sub_20C13BB94();
    LODWORD(v15) = v45[0];
    [v14 setContentHuggingPriority:0 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [v14 setContentCompressionResistancePriority:0 forAxis:v16];
    v17 = *(a4 + 104);
    v43 = v14;
    v18 = v17(a2, a4);
    [v18 addSubview_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_20C151490;
    v39 = [v14 trailingAnchor];
    v19 = v17(a2, a4);
    v20 = [v19 trailingAnchor];

    v42 = *(a4 + 136);
    v42(v45, a2, a4);
    v21 = v46;
    v22 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v23 = -(*(v22 + 8))(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v41 = *(a4 + 240);
    v41(a2, a4);
    v25 = [v39 constraintEqualToAnchor:v20 constant:v23 - v24];

    *(v44 + 32) = v25;
    v40 = [v43 bottomAnchor];

    v26 = v17(a2, a4);
    v27 = [v26 bottomAnchor];

    v42(v45, a2, a4);
    v28 = v46;
    v29 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v30 = -(*(v29 + 16))(v28, v29);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v41(a2, a4);
    v32 = [v40 constraintEqualToAnchor:v27 constant:v30 - v31];

    *(v44 + 40) = v32;
    v33 = objc_opt_self();
    sub_20B5E29D0();
    v34 = sub_20C13CC54();
    [v33 activateConstraints_];

    v35 = (*(a4 + 96))(v45, a2, a4);
    *v36 = v44;

    v35(v45, 0);
    v37 = *(a4 + 40);
    v38 = v43;
    v37(v43, a2, a4);

LABEL_10:
    sub_20B9510A8(a2, v12, a4);
    return;
  }
}

void sub_20B950214(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_20C13C4C4();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    (*(a4 + 80))(a2, a4, v10);
    v16 = v15;

    sub_20B95191C(v16);

    v17 = (*(a4 + 96))(v62, a2, a4);
    *(v18 + 24) = 0;

    v17(v62, 0);
    v19 = (*(a4 + 216))(a2, a4);
    if (v19)
    {
      v20 = v19;
      [v19 removeFromSuperview];
    }

    (*(a4 + 224))(0, a2, a4);
    goto LABEL_12;
  }

  v13 = v9;
  v14 = (*(a4 + 216))(a2, a4, v10);
  if (!v14)
  {
    type metadata accessor for StackIconView();
    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    type metadata accessor for UILayoutPriority(0);
    v66 = 1144750080;
    v65 = 1065353216;
    sub_20B60B184();
    sub_20C13BB94();
    LODWORD(v23) = v62[0];
    [v22 setContentHuggingPriority:0 forAxis:v23];
    v60 = *(a4 + 104);
    v61 = a4 + 104;
    v24 = v60(a2, a4);
    v25 = v22;
    [v24 addSubview_];

    v26 = (*(a4 + 112))(a2, a4);
    if (v26)
    {
      v27 = v26;
      v28 = swift_allocObject();
      *(v28 + 16) = v25;
      (*(v8 + 104))(v12, *MEMORY[0x277D851C0], v13);
      v29 = v25;
      sub_20BD519D8(v27, v12, sub_20B9519A8, v28);

      (*(v8 + 8))(v12, v13);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_20C151490;
    v30 = [v25 leadingAnchor];

    v31 = v60(a2, a4);
    v32 = [v31 leadingAnchor];

    v56 = *(a4 + 136);
    v56(v62, a2, a4);
    v58 = v25;
    v33 = v63;
    v34 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v35 = (*(v34 + 48))(v33, v34);
    v57 = *(a4 + 240);
    v57(a2, a4);
    v37 = v35 + v36;
    __swift_destroy_boxed_opaque_existential_1(v62);
    v38 = [v30 constraintEqualToAnchor:v32 constant:v37];

    *(v59 + 32) = v38;
    v39 = v58;
    v40 = [v58 bottomAnchor];

    v41 = v60(a2, a4);
    v42 = [v41 bottomAnchor];

    v56(v62, a2, a4);
    v43 = v63;
    v44 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v45 = -(*(v44 + 56))(v43, v44);
    __swift_destroy_boxed_opaque_existential_1(v62);
    v57(a2, a4);
    v47 = [v40 constraintEqualToAnchor:v42 constant:v45 - v46];

    v48 = v59;
    *(v59 + 40) = v47;
    v49 = objc_opt_self();
    sub_20B5E29D0();
    v50 = sub_20C13CC54();
    [v49 activateConstraints_];

    v51 = (*(a4 + 96))(v62, a2, a4);
    *(v52 + 24) = v48;

    v51(v62, 0);
    v53 = *(a4 + 224);
    v54 = v58;
    v55 = v58;
    v53(v54, a2, a4);

LABEL_12:
    sub_20B9510A8(a2, v21, a4);
    return;
  }
}