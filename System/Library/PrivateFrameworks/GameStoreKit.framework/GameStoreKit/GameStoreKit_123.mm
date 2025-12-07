uint64_t sub_24F28E900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_24F28E924, 0, 0);
}

uint64_t sub_24F28E924()
{
  v1 = v0[6];
  v0[2] = *(v1 + *(type metadata accessor for AchievementsByGameView.PageContent(0) + 24));

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_24F28E9E4;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return AchievementsByGameShelfIntentImplementation.perform(_:objectGraph:)(v5, v3, v4);
}

uint64_t sub_24F28E9E4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F0EBF64, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24F28EB28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F28EB90()
{
  v1 = *(*(type metadata accessor for AchievementsByGameView(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v3 = type metadata accessor for Player(0);
  if (!(*(*(v3 - 1) + 48))(v2, 1, v3))
  {

    v4 = v3[6];
    v5 = sub_24F9289E8();
    v51 = (*(v5 - 8) + 8);
    v52 = *(v5 - 8);
    v50 = *v51;
    (*v51)(v2 + v4, v5);

    if (*(v2 + v3[9] + 8) != 1)
    {
    }

    v6 = v2 + v3[13];
    v7 = type metadata accessor for CallProviderConversationHandleSet(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v48 = v5;
      v8 = type metadata accessor for CallProviderConversationHandle(0);
      v9 = *(*(v8 - 8) + 48);
      if (!v9(v6, 1, v8))
      {

        v10 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v52 + 48))(v6 + v10, 1, v48))
        {
          v50(v6 + v10, v48);
        }
      }

      v11 = v6 + *(v7 + 20);
      v12 = v9(v11, 1, v8);
      v5 = v48;
      if (!v12)
      {

        v13 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v52 + 48))(v11 + v13, 1, v48))
        {
          v50(v11 + v13, v48);
        }
      }
    }

    if (*(v2 + v3[15] + 8))
    {
    }

    v14 = v2 + v3[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
    {

      v16 = type metadata accessor for Game(0);
      v50(v14 + v16[18], v5);
      v17 = v16[19];
      if (!(*(v52 + 48))(v14 + v17, 1, v5))
      {
        v50(v14 + v17, v5);
      }

      v49 = v5;

      v18 = v16[21];
      v19 = sub_24F920818();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v14 + v18, 1, v19))
      {
        (*(v20 + 8))(v14 + v18, v19);
      }

      v5 = v49;
    }

    v21 = v2 + v3[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
    {

      v23 = type metadata accessor for Game(0);
      v50(v21 + v23[18], v5);
      v24 = v23[19];
      if (!(*(v52 + 48))(v21 + v24, 1, v5))
      {
        v50(v21 + v24, v5);
      }

      v25 = v23[21];
      v26 = sub_24F920818();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(v21 + v25, 1, v26))
      {
        (*(v27 + 8))(v21 + v25, v26);
      }
    }
  }

  v28 = v2 + *(type metadata accessor for AchievementsPageIntent(0) + 20);
  v29 = type metadata accessor for Page.Background(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v33 = sub_24F9289E8();
          (*(*(v33 - 8) + 8))(v28, v33);
          v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v35 = sub_24F922348();
          v36 = *(v35 - 8);
          if (!(*(v36 + 48))(v28 + v34, 1, v35))
          {
            (*(v36 + 8))(v28 + v34, v35);
          }
        }
      }

      else
      {
        v47 = sub_24F9289E8();
        (*(*(v47 - 8) + 8))(v28, v47);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v37 = sub_24F9289E8();
      v38 = *(v37 - 8);
      if (!(*(v38 + 48))(v28, 1, v37))
      {
        (*(v38 + 8))(v28, v37);
      }

      v39 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v40 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v40 - 1) + 48))(v39, 1, v40))
      {
        v41 = sub_24F91F4A8();
        (*(*(v41 - 8) + 8))(v39, v41);
        (*(v38 + 8))(v39 + v40[5], v37);
        v42 = v40[9];
        v43 = sub_24F928698();
        v44 = *(v43 - 8);
        v45 = *(v44 + 48);
        if (!v45(v39 + v42, 1, v43))
        {
          (*(v44 + 8))(v39 + v42, v43);
        }

        v46 = v40[10];
        if (!v45(v39 + v46, 1, v43))
        {
          (*(v44 + 8))(v39 + v46, v43);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v32 = sub_24F928388();
      (*(*(v32 - 8) + 8))(v28, v32);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F28F67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AchievementsByGameView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F28D4F4(a1, v6, a2);
}

uint64_t sub_24F28F758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Page(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F28F82C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Page(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24F28F8E8(uint64_t a1)
{
  result = type metadata accessor for Page(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AchievementsByGameOptionProvider(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F28F9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F28FA40@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AchievementsByGameView.PageContent(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24F28DD98(a1, a2, v8, a3);
}

uint64_t sub_24F28FAC8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(*(type metadata accessor for AchievementsByGameView.PageContent(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v3 = sub_24F92A708();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for Page(0);

  v5 = v4[6];
  v6 = sub_24F928818();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v2 + v4[20];
  v8 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    goto LABEL_55;
  }

  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v7, 1, v9))
  {

    v11 = v7 + v9[5];
    v12 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v85 = sub_24F9289E8();
          (*(*(v85 - 8) + 8))(v11, v85);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v13 = v7 + v9[7];
          v14 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v16 = sub_24F928388();
              (*(*(v16 - 8) + 8))(v13, v16);
            }
          }

          v17 = (v7 + v9[10]);
          if (v17[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v17);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v73 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v74 = type metadata accessor for JSColor(0);
        if (!(*(*(v74 - 8) + 48))(v73, 1, v74))
        {
          v75 = sub_24F928388();
          (*(*(v75 - 8) + 8))(v73, v75);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v82 = sub_24F9289E8();
        v83 = *(v82 - 8);
        if (!(*(v83 + 48))(v11, 1, v82))
        {
          (*(v83 + 8))(v11, v82);
        }

        if (*(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v18 = v7 + v8[5];
  if (v10(v18, 1, v9))
  {
    goto LABEL_32;
  }

  v19 = v18 + v9[5];
  v20 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    goto LABEL_17;
  }

  v23 = swift_getEnumCaseMultiPayload();
  if (v23 <= 2)
  {
    if (!v23)
    {

      v76 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v77 = type metadata accessor for JSColor(0);
      if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
      {
        v78 = sub_24F928388();
        (*(*(v78 - 8) + 8))(v76, v78);
      }

      goto LABEL_17;
    }

    if (v23 == 1)
    {
      v84 = sub_24F9289E8();
      v104 = *(v84 - 8);
      if (!(*(v104 + 48))(v19, 1, v84))
      {
        (*(v104 + 8))(v19, v84);
      }

      if (*(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v23 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v23)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v87 = sub_24F9289E8();
      (*(*(v87 - 8) + 8))(v19, v87);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v21 = v18 + v9[7];
  v22 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v24 = sub_24F928388();
      (*(*(v24 - 8) + 8))(v21, v24);
    }
  }

  v25 = (v18 + v9[10]);
  if (v25[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

LABEL_32:
  v26 = v7 + v8[6];
  if (v10(v26, 1, v9))
  {
    goto LABEL_49;
  }

  v27 = v26 + v9[5];
  v28 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    goto LABEL_34;
  }

  v31 = swift_getEnumCaseMultiPayload();
  if (v31 <= 2)
  {
    if (!v31)
    {

      v79 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v80 = type metadata accessor for JSColor(0);
      if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        v81 = sub_24F928388();
        (*(*(v81 - 8) + 8))(v79, v81);
      }

      goto LABEL_34;
    }

    if (v31 == 1)
    {
      v86 = sub_24F9289E8();
      v105 = *(v86 - 8);
      if (!(*(v105 + 48))(v27, 1, v86))
      {
        (*(v105 + 8))(v27, v86);
      }

      if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v31 != 2)
    {
      goto LABEL_34;
    }

LABEL_103:

    goto LABEL_34;
  }

  switch(v31)
  {
    case 3:
      goto LABEL_103;
    case 4:
      v88 = sub_24F9289E8();
      (*(*(v88 - 8) + 8))(v27, v88);
      break;
    case 5:
      goto LABEL_103;
  }

LABEL_34:
  v29 = v26 + v9[7];
  v30 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v32 = sub_24F928388();
      (*(*(v32 - 8) + 8))(v29, v32);
    }
  }

  v33 = (v26 + v9[10]);
  if (v33[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

LABEL_49:
  v34 = v7 + v8[7];
  if (*(v34 + 56) == 1)
  {
  }

  else if (!*(v34 + 56))
  {

    if (*(v34 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v34 + 16));
    }
  }

  v35 = v7 + v8[8];
  v36 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 == 2)
    {
      goto LABEL_149;
    }

    if (v50 != 1)
    {
      if (v50)
      {
        goto LABEL_55;
      }

      v51 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v51 - 8) + 48))(v35, 1, v51))
      {
        goto LABEL_55;
      }

      v52 = swift_getEnumCaseMultiPayload();
      if (v52 > 2)
      {
        if (v52 != 3)
        {
          if (v52 == 4)
          {
            v103 = sub_24F9289E8();
            (*(*(v103 - 8) + 8))(v35, v103);
            goto LABEL_55;
          }

          if (v52 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_149;
      }

      if (v52)
      {
        if (v52 == 1)
        {
          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v35, 1, v101))
          {
            (*(v102 + 8))(v35, v101);
          }

          if (!*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v52 != 2)
        {
          goto LABEL_55;
        }

LABEL_149:

        goto LABEL_55;
      }

      v68 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v69 = type metadata accessor for JSColor(0);
      if ((*(*(v69 - 8) + 48))(v68, 1, v69))
      {
        goto LABEL_55;
      }

LABEL_99:
      v70 = sub_24F928388();
      (*(*(v70 - 8) + 8))(v68, v70);

      goto LABEL_55;
    }

    v64 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v65 = *(*(v64 - 8) + 48);
    if (v65(v35, 1, v64))
    {
LABEL_97:
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v67 = v35 + *(v66 + 48);
      if (v65(v67, 1, v64))
      {
        goto LABEL_98;
      }

      v72 = swift_getEnumCaseMultiPayload();
      if (v72 <= 2)
      {
        if (v72)
        {
          if (v72 != 1)
          {
            if (v72 != 2)
            {
              goto LABEL_98;
            }

LABEL_145:

            goto LABEL_98;
          }

          v97 = sub_24F9289E8();
          v98 = *(v97 - 8);
          if (!(*(v98 + 48))(v67, 1, v97))
          {
            (*(v98 + 8))(v67, v97);
          }

          if (*(v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
          }
        }

        else
        {

          v92 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
          v93 = type metadata accessor for JSColor(0);
          if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
          {
            v94 = sub_24F928388();
            (*(*(v94 - 8) + 8))(v92, v94);
          }
        }

LABEL_98:
        v68 = v35 + *(v66 + 80);
        v69 = type metadata accessor for JSColor(0);
        if ((*(*(v69 - 8) + 48))(v68, 1, v69))
        {
          goto LABEL_55;
        }

        goto LABEL_99;
      }

      if (v72 != 3)
      {
        if (v72 == 4)
        {
          v100 = sub_24F9289E8();
          (*(*(v100 - 8) + 8))(v67, v100);
          goto LABEL_98;
        }

        if (v72 != 5)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_145;
    }

    v71 = swift_getEnumCaseMultiPayload();
    if (v71 > 2)
    {
      if (v71 != 3)
      {
        if (v71 == 4)
        {
          v99 = sub_24F9289E8();
          (*(*(v99 - 8) + 8))(v35, v99);
          goto LABEL_97;
        }

        if (v71 != 5)
        {
          goto LABEL_97;
        }
      }
    }

    else
    {
      if (!v71)
      {

        v89 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v90 = type metadata accessor for JSColor(0);
        if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
        {
          v91 = sub_24F928388();
          (*(*(v91 - 8) + 8))(v89, v91);
        }

        goto LABEL_97;
      }

      if (v71 == 1)
      {
        v95 = sub_24F9289E8();
        v96 = *(v95 - 8);
        if (!(*(v96 + 48))(v35, 1, v95))
        {
          (*(v96 + 8))(v35, v95);
        }

        if (*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_97;
      }

      if (v71 != 2)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_97;
  }

LABEL_55:
  if (*(v2 + v4[23]))
  {
  }

  v37 = v2 + v4[24];
  v38 = type metadata accessor for Page.Background(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 <= 1)
    {
      if (v44)
      {
        if (v44 == 1)
        {
          v46 = sub_24F9289E8();
          (*(*(v46 - 8) + 8))(v37, v46);
          v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v48 = sub_24F922348();
          v49 = *(v48 - 8);
          if (!(*(v49 + 48))(v37 + v47, 1, v48))
          {
            (*(v49 + 8))(v37 + v47, v48);
          }
        }
      }

      else
      {
        v63 = sub_24F9289E8();
        (*(*(v63 - 8) + 8))(v37, v63);
      }
    }

    else if (v44 == 2)
    {
      v53 = sub_24F9289E8();
      v54 = *(v53 - 8);
      if (!(*(v54 + 48))(v37, 1, v53))
      {
        (*(v54 + 8))(v37, v53);
      }

      v55 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v56 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v56 - 1) + 48))(v55, 1, v56))
      {
        v57 = sub_24F91F4A8();
        (*(*(v57 - 8) + 8))(v55, v57);
        (*(v54 + 8))(v55 + v56[5], v53);
        v58 = v56[9];
        v59 = sub_24F928698();
        v60 = *(v59 - 8);
        v61 = *(v60 + 48);
        if (!v61(v55 + v58, 1, v59))
        {
          (*(v60 + 8))(v55 + v58, v59);
        }

        v62 = v56[10];
        if (!v61(v55 + v62, 1, v59))
        {
          (*(v60 + 8))(v55 + v62, v59);
        }
      }
    }

    else if (v44 == 3 || v44 == 4)
    {
      v45 = sub_24F928388();
      (*(*(v45 - 8) + 8))(v37, v45);
    }
  }

  v39 = (v2 + v4[27]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = (v2 + v4[28]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = (v2 + v4[29]);
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = (v2 + v4[30]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return swift_deallocObject();
}

uint64_t sub_24F2914DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AchievementsByGameView.PageContent(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24E614970;

  return sub_24F28E900(a1, a2, a3, v3 + v9);
}

unint64_t sub_24F2915D0()
{
  result = qword_27F23D980;
  if (!qword_27F23D980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D960, &unk_24F9DD5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315B8, &qword_24F9DD610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D970, &unk_24F9DD618);
    sub_24F921C98();
    sub_24F921C78();
    sub_24E602068(&qword_27F2315C8, &qword_27F2315B8, &qword_24F9DD610, MEMORY[0x277D21CF8]);
    sub_24E602068(&qword_27F23D978, &qword_27F23D970, &unk_24F9DD618, MEMORY[0x277D7EC28]);
    sub_24F293354(&qword_27F2315D0, MEMORY[0x277D7ECA0], MEMORY[0x277D7EC98]);
    sub_24F293354(&qword_27F2315D8, MEMORY[0x277D7EC90], MEMORY[0x277D7EC88]);
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
    sub_24F293354(&qword_27F238838, type metadata accessor for GSKShelf, &protocol conformance descriptor for GSKShelf);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D980);
  }

  return result;
}

uint64_t sub_24F29182C()
{
  v1 = *(*(type metadata accessor for AchievementsByGameView.PageContent(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v3 = sub_24F92A708();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for Page(0);

  v5 = v4[6];
  v6 = sub_24F928818();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v2 + v4[20];
  v8 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    goto LABEL_55;
  }

  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v7, 1, v9))
  {

    v11 = v7 + v9[5];
    v12 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v85 = sub_24F9289E8();
          (*(*(v85 - 8) + 8))(v11, v85);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v13 = v7 + v9[7];
          v14 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v16 = sub_24F928388();
              (*(*(v16 - 8) + 8))(v13, v16);
            }
          }

          v17 = (v7 + v9[10]);
          if (v17[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v17);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v73 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v74 = type metadata accessor for JSColor(0);
        if (!(*(*(v74 - 8) + 48))(v73, 1, v74))
        {
          v75 = sub_24F928388();
          (*(*(v75 - 8) + 8))(v73, v75);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v82 = sub_24F9289E8();
        v83 = *(v82 - 8);
        if (!(*(v83 + 48))(v11, 1, v82))
        {
          (*(v83 + 8))(v11, v82);
        }

        if (*(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v18 = v7 + v8[5];
  if (v10(v18, 1, v9))
  {
    goto LABEL_32;
  }

  v19 = v18 + v9[5];
  v20 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    goto LABEL_17;
  }

  v23 = swift_getEnumCaseMultiPayload();
  if (v23 <= 2)
  {
    if (!v23)
    {

      v76 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v77 = type metadata accessor for JSColor(0);
      if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
      {
        v78 = sub_24F928388();
        (*(*(v78 - 8) + 8))(v76, v78);
      }

      goto LABEL_17;
    }

    if (v23 == 1)
    {
      v84 = sub_24F9289E8();
      v104 = *(v84 - 8);
      if (!(*(v104 + 48))(v19, 1, v84))
      {
        (*(v104 + 8))(v19, v84);
      }

      if (*(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v23 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v23)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v87 = sub_24F9289E8();
      (*(*(v87 - 8) + 8))(v19, v87);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v21 = v18 + v9[7];
  v22 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v24 = sub_24F928388();
      (*(*(v24 - 8) + 8))(v21, v24);
    }
  }

  v25 = (v18 + v9[10]);
  if (v25[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

LABEL_32:
  v26 = v7 + v8[6];
  if (v10(v26, 1, v9))
  {
    goto LABEL_49;
  }

  v27 = v26 + v9[5];
  v28 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    goto LABEL_34;
  }

  v31 = swift_getEnumCaseMultiPayload();
  if (v31 <= 2)
  {
    if (!v31)
    {

      v79 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v80 = type metadata accessor for JSColor(0);
      if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        v81 = sub_24F928388();
        (*(*(v81 - 8) + 8))(v79, v81);
      }

      goto LABEL_34;
    }

    if (v31 == 1)
    {
      v86 = sub_24F9289E8();
      v105 = *(v86 - 8);
      if (!(*(v105 + 48))(v27, 1, v86))
      {
        (*(v105 + 8))(v27, v86);
      }

      if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v31 != 2)
    {
      goto LABEL_34;
    }

LABEL_103:

    goto LABEL_34;
  }

  switch(v31)
  {
    case 3:
      goto LABEL_103;
    case 4:
      v88 = sub_24F9289E8();
      (*(*(v88 - 8) + 8))(v27, v88);
      break;
    case 5:
      goto LABEL_103;
  }

LABEL_34:
  v29 = v26 + v9[7];
  v30 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v32 = sub_24F928388();
      (*(*(v32 - 8) + 8))(v29, v32);
    }
  }

  v33 = (v26 + v9[10]);
  if (v33[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

LABEL_49:
  v34 = v7 + v8[7];
  if (*(v34 + 56) == 1)
  {
  }

  else if (!*(v34 + 56))
  {

    if (*(v34 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v34 + 16));
    }
  }

  v35 = v7 + v8[8];
  v36 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 == 2)
    {
      goto LABEL_149;
    }

    if (v50 != 1)
    {
      if (v50)
      {
        goto LABEL_55;
      }

      v51 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v51 - 8) + 48))(v35, 1, v51))
      {
        goto LABEL_55;
      }

      v52 = swift_getEnumCaseMultiPayload();
      if (v52 > 2)
      {
        if (v52 != 3)
        {
          if (v52 == 4)
          {
            v103 = sub_24F9289E8();
            (*(*(v103 - 8) + 8))(v35, v103);
            goto LABEL_55;
          }

          if (v52 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_149;
      }

      if (v52)
      {
        if (v52 == 1)
        {
          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v35, 1, v101))
          {
            (*(v102 + 8))(v35, v101);
          }

          if (!*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v52 != 2)
        {
          goto LABEL_55;
        }

LABEL_149:

        goto LABEL_55;
      }

      v68 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v69 = type metadata accessor for JSColor(0);
      if ((*(*(v69 - 8) + 48))(v68, 1, v69))
      {
        goto LABEL_55;
      }

LABEL_99:
      v70 = sub_24F928388();
      (*(*(v70 - 8) + 8))(v68, v70);

      goto LABEL_55;
    }

    v64 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v65 = *(*(v64 - 8) + 48);
    if (v65(v35, 1, v64))
    {
LABEL_97:
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v67 = v35 + *(v66 + 48);
      if (v65(v67, 1, v64))
      {
        goto LABEL_98;
      }

      v72 = swift_getEnumCaseMultiPayload();
      if (v72 <= 2)
      {
        if (v72)
        {
          if (v72 != 1)
          {
            if (v72 != 2)
            {
              goto LABEL_98;
            }

LABEL_145:

            goto LABEL_98;
          }

          v97 = sub_24F9289E8();
          v98 = *(v97 - 8);
          if (!(*(v98 + 48))(v67, 1, v97))
          {
            (*(v98 + 8))(v67, v97);
          }

          if (*(v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
          }
        }

        else
        {

          v92 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
          v93 = type metadata accessor for JSColor(0);
          if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
          {
            v94 = sub_24F928388();
            (*(*(v94 - 8) + 8))(v92, v94);
          }
        }

LABEL_98:
        v68 = v35 + *(v66 + 80);
        v69 = type metadata accessor for JSColor(0);
        if ((*(*(v69 - 8) + 48))(v68, 1, v69))
        {
          goto LABEL_55;
        }

        goto LABEL_99;
      }

      if (v72 != 3)
      {
        if (v72 == 4)
        {
          v100 = sub_24F9289E8();
          (*(*(v100 - 8) + 8))(v67, v100);
          goto LABEL_98;
        }

        if (v72 != 5)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_145;
    }

    v71 = swift_getEnumCaseMultiPayload();
    if (v71 > 2)
    {
      if (v71 != 3)
      {
        if (v71 == 4)
        {
          v99 = sub_24F9289E8();
          (*(*(v99 - 8) + 8))(v35, v99);
          goto LABEL_97;
        }

        if (v71 != 5)
        {
          goto LABEL_97;
        }
      }
    }

    else
    {
      if (!v71)
      {

        v89 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v90 = type metadata accessor for JSColor(0);
        if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
        {
          v91 = sub_24F928388();
          (*(*(v91 - 8) + 8))(v89, v91);
        }

        goto LABEL_97;
      }

      if (v71 == 1)
      {
        v95 = sub_24F9289E8();
        v96 = *(v95 - 8);
        if (!(*(v96 + 48))(v35, 1, v95))
        {
          (*(v96 + 8))(v35, v95);
        }

        if (*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_97;
      }

      if (v71 != 2)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_97;
  }

LABEL_55:
  if (*(v2 + v4[23]))
  {
  }

  v37 = v2 + v4[24];
  v38 = type metadata accessor for Page.Background(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 <= 1)
    {
      if (v44)
      {
        if (v44 == 1)
        {
          v46 = sub_24F9289E8();
          (*(*(v46 - 8) + 8))(v37, v46);
          v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v48 = sub_24F922348();
          v49 = *(v48 - 8);
          if (!(*(v49 + 48))(v37 + v47, 1, v48))
          {
            (*(v49 + 8))(v37 + v47, v48);
          }
        }
      }

      else
      {
        v63 = sub_24F9289E8();
        (*(*(v63 - 8) + 8))(v37, v63);
      }
    }

    else if (v44 == 2)
    {
      v53 = sub_24F9289E8();
      v54 = *(v53 - 8);
      if (!(*(v54 + 48))(v37, 1, v53))
      {
        (*(v54 + 8))(v37, v53);
      }

      v55 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v56 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v56 - 1) + 48))(v55, 1, v56))
      {
        v57 = sub_24F91F4A8();
        (*(*(v57 - 8) + 8))(v55, v57);
        (*(v54 + 8))(v55 + v56[5], v53);
        v58 = v56[9];
        v59 = sub_24F928698();
        v60 = *(v59 - 8);
        v61 = *(v60 + 48);
        if (!v61(v55 + v58, 1, v59))
        {
          (*(v60 + 8))(v55 + v58, v59);
        }

        v62 = v56[10];
        if (!v61(v55 + v62, 1, v59))
        {
          (*(v60 + 8))(v55 + v62, v59);
        }
      }
    }

    else if (v44 == 3 || v44 == 4)
    {
      v45 = sub_24F928388();
      (*(*(v45 - 8) + 8))(v37, v45);
    }
  }

  v39 = (v2 + v4[27]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = (v2 + v4[28]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = (v2 + v4[29]);
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = (v2 + v4[30]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return swift_deallocObject();
}

uint64_t sub_24F293214@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for AchievementsByGameView.PageContent(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F28E330(a1, v2 + v6, v7, a2);
}

uint64_t sub_24F2932C0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AchievementsByGameView.PageContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F28E5D8(a1, a2, v6);
}

uint64_t sub_24F293354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F2933A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F293404()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D960, &unk_24F9DD5D0);
  type metadata accessor for AchievementsByGameShelfIntent(255);
  sub_24F2915D0();
  sub_24F293354(&qword_27F215158, type metadata accessor for AchievementsByGameShelfIntent, &protocol conformance descriptor for AchievementsByGameShelfIntent);
  return swift_getOpaqueTypeConformance2();
}

uint64_t Box.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Box.init(value:)(a1);
  return v2;
}

uint64_t Box.value.setter(uint64_t a1)
{
  v3 = *v1;
  sub_24F294158(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t Box.write(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12 = a2;
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  v16 = v9;
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  v13 = a1;
  v14 = v12;
  v15 = v3;
  sub_24F92BF08();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F293848@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  swift_beginAccess();
  return (*(*(*(v4 + 80) - 8) + 16))(a2, &a1[v5]);
}

uint64_t sub_24F2938FC(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(&a1[v5], a2);
  return swift_endAccess();
}

void (*Box.value.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(*v2 + 80);
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v4)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[4] = v10;
  sub_24F92BF18();
  return sub_24F293B0C;
}

void sub_24F293B0C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_24F294158(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_24F294158(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Box.init(value:)(uint64_t a1)
{
  v11 = *v1;
  v12 = a1;
  v10 = sub_24F92BEE8();
  v2 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F92BE88();
  MEMORY[0x28223BE20](v6);
  v9[1] = sub_24E74EC40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v13 = v7;
  sub_24E9BFCB4(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v10);
  *(v1 + 2) = sub_24F92BF38();
  (*(*(*(v11 + 80) - 8) + 32))(&v1[*(*v1 + 96)], v12);
  return v1;
}

uint64_t sub_24F293F30(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - v7;
  v10 = *(v9 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, a3 + v10, v5);
  a1(v8);
  return (*(v6 + 8))(v8, v5);
}

id *Box.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t Box.__deallocating_deinit()
{
  Box.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F294158(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F927D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  v13 = v8;
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  v11 = v2;
  v12 = a1;
  sub_24F92BF08();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24F294358()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(*v2 + 96);
  swift_beginAccess();
  v1(v2 + v3);
  return swift_endAccess();
}

uint64_t sub_24F29445C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t NSUserDefaults.date(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_24F92C888();

  *&v17 = 0xD00000000000001BLL;
  *(&v17 + 1) = 0x800000024FA54720;
  v5 = 0xED000065726F7453;
  v6 = 0x7070416F5477656ELL;
  v7 = 0xEF676E6972696150;
  v8 = 0x686374615777656ELL;
  if (v3 != 2)
  {
    v8 = 0xD000000000000013;
    v7 = 0x800000024FA42E60;
  }

  if (v3)
  {
    v6 = 0xD000000000000010;
    v5 = 0x800000024FA42E30;
  }

  if (v3 <= 1)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (v3 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x253050C20](v9, v10);

  v11 = sub_24F92B098();

  v12 = [v4 objectForKey_];

  if (v12)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    v13 = sub_24F91F648();
    v14 = swift_dynamicCast();
    return (*(*(v13 - 8) + 56))(a2, v14 ^ 1u, 1, v13);
  }

  else
  {
    sub_24E857CC8(v19);
    v16 = sub_24F91F648();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

void _sSo14NSUserDefaultsC12GameStoreKitE3add_4withyAC26TodayCardTriggerIdentifierO_10Foundation4DateVtF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F91F578();
  sub_24F92C888();

  v4 = 0xED000065726F7453;
  v5 = 0x7070416F5477656ELL;
  v6 = 0xEF676E6972696150;
  v7 = 0x686374615777656ELL;
  if (v1 != 2)
  {
    v7 = 0xD000000000000013;
    v6 = 0x800000024FA42E60;
  }

  if (v1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000024FA42E30;
  }

  if (v1 <= 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v1 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x253050C20](v8, v9);

  v10 = sub_24F92B098();

  [v2 setObject:v3 forKey:v10];
}

void _sSo14NSUserDefaultsC12GameStoreKitE6removeyyAC26TodayCardTriggerIdentifierOF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  sub_24F92C888();

  v3 = 0xED000065726F7453;
  v4 = 0x7070416F5477656ELL;
  v5 = 0xEF676E6972696150;
  v6 = 0x686374615777656ELL;
  if (v1 != 2)
  {
    v6 = 0xD000000000000013;
    v5 = 0x800000024FA42E60;
  }

  if (v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000024FA42E30;
  }

  if (v1 <= 1)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v1 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x253050C20](v7, v8);

  v9 = sub_24F92B098();

  [v2 removeObjectForKey_];
}

uint64_t sub_24F294B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v6 = sub_24F92A9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F928F28();
  v7 = v21;
  ObjectType = swift_getObjectType();
  v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId + 8);
  v20 = *(a1 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_adamId);
  v21 = v9;
  v10 = *(v7 + 56);

  v11 = v10(&v20, ObjectType, v7);
  v13 = v12;

  v14 = OfferStateAction.preferredAction(for:)(v11, v13);
  v22 = type metadata accessor for Action(0);
  v23 = sub_24F294D7C(&qword_27F216DE8, type metadata accessor for Action);
  v20 = v14;
  type metadata accessor for OfferStateActionImplementation(0, a3, v15, v16);
  swift_getWitnessTable();
  sub_24F1489C4(&v20, a2);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  v17 = sub_24E74EC40();
  swift_retain_n();
  v18 = sub_24F92BEF8();
  v22 = v17;
  v23 = MEMORY[0x277D225C0];
  v20 = v18;
  sub_24F92A958();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  return v6;
}

uint64_t sub_24F294D7C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

void sub_24F294DD0()
{
  if (qword_27F2103E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27F22B5C0;
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_24F92B0D8();
    v4 = v3;
  }

  else
  {
    v4 = 0x800000024FA44B00;
    v2 = 0xD000000000000012;
  }

  qword_27F23DAB0 = v2;
  *algn_27F23DAB8 = v4;
}

uint64_t static Signposter.subsystem.getter()
{
  if (qword_27F211058 != -1)
  {
    swift_once();
  }

  v0 = qword_27F23DAB0;

  return v0;
}

uint64_t sub_24F294F18()
{
  v0 = sub_24F922058();
  __swift_allocate_value_buffer(v0, qword_27F23DAC0);
  __swift_project_value_buffer(v0, qword_27F23DAC0);
  if (qword_27F211058 != -1)
  {
    swift_once();
  }

  return sub_24F922048();
}

uint64_t sub_24F294FF4()
{
  v0 = sub_24F922058();
  __swift_allocate_value_buffer(v0, qword_27F23DAD8);
  __swift_project_value_buffer(v0, qword_27F23DAD8);
  if (qword_27F211058 != -1)
  {
    swift_once();
  }

  return sub_24F922048();
}

uint64_t sub_24F2950D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_24F922058();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void *sub_24F29517C(void **a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_24F92A8D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v62[-v13];
  v15 = sub_24F91F648();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  v65 = &v62[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = *a3;
  v4[5] = MEMORY[0x277D84F90];
  v64 = (v4 + 5);
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v72 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v17 = off_27F22D9A0;
  if (off_27F22D9A0)
  {

    v18 = v65;
    sub_24F91F638();
    sub_24F91F5E8();
    v20 = v19;
    (*(v66 + 8))(v18, v67);
    swift_beginAccess();
    v17[16] = v20;
    *(v17 + 136) = 0;
  }

  v69 = v4;
  [v72 unlock];
  v21 = sub_24F92A8C8();
  v23 = ASKPerformanceProfileGetForCurrentDevice(v21, v22);
  v71 = a2;
  v24 = v14;
  if (v23)
  {
    v25 = v14;
    v26 = a1;
    v27 = v9;
    v28 = v8;
    v29 = ASKDeviceTypeGetCurrent();
    v30 = sub_24F92B0D8();
    v32 = v31;
    if (v30 == sub_24F92B0D8() && v32 == v33)
    {

      v8 = v28;
      v9 = v27;
      a1 = v26;
      v24 = v25;
    }

    else
    {
      v34 = sub_24F92CE08();

      v8 = v28;
      v9 = v27;
      a1 = v26;
      v24 = v25;
      if ((v34 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  sub_24F92A8B8();
LABEL_13:
  sub_24F92A918();
  v35 = *a1;
  v36 = *(v9 + 16);
  v70 = v24;
  v36(v11, v24, v8);

  v37 = v35;
  sub_24F0C63E4();
  v38 = v68;
  v39 = sub_24F92A8F8();
  if (v38)
  {
    sub_24E93E448(v38);
    sub_24F929388();
    v40 = _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    sub_24EF9B244(v40, MEMORY[0x277D21E70], 7368801, 0xE300000000000000);
    v41 = v69;

    swift_willThrow();

    sub_24ED44774(a1);
    (*(v9 + 8))(v70, v8);

    type metadata accessor for JSService();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v69;
    v69[2] = v39;
    if (qword_27F20FFE8 != -1)
    {
      swift_once();
    }

    [qword_27F39B150 setValue_];
    v42 = v41[2];
    type metadata accessor for JSGarbageCollector(0);
    v43 = swift_allocObject();
    *(v43 + 24) = v42;
    v44 = objc_allocWithZone(MEMORY[0x277D225F0]);

    *(v43 + 32) = [v44 init];
    sub_24F928BF8();
    *(v43 + 16) = v63;
    v41[3] = v43;
    type metadata accessor for NetworkActivity();
    sub_24F928EF8();
    v41[4] = *&v73[0];
    v45 = swift_allocObject();
    swift_weakInit();

    sub_24EC61F2C(sub_24F299168, v45, v73);

    v46 = v64;
    swift_beginAccess();
    v47 = v41[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41[5] = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = sub_24E618554(0, *(v47 + 2) + 1, 1, v47);
      *v46 = v47;
    }

    v50 = *(v47 + 2);
    v49 = *(v47 + 3);
    if (v50 >= v49 >> 1)
    {
      v47 = sub_24E618554((v49 > 1), v50 + 1, 1, v47);
    }

    *(v47 + 2) = v50 + 1;
    sub_24E612B0C(v73, &v47[32 * v50 + 32]);
    v41[5] = v47;
    swift_endAccess();
    v51 = swift_allocObject();
    swift_weakInit();

    sub_24EC61F04(sub_24F299188, v51, v73);

    swift_beginAccess();
    v52 = v41[5];
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v41[5] = v52;
    if ((v53 & 1) == 0)
    {
      v52 = sub_24E618554(0, *(v52 + 2) + 1, 1, v52);
      *v46 = v52;
    }

    v55 = *(v52 + 2);
    v54 = *(v52 + 3);
    if (v55 >= v54 >> 1)
    {
      v52 = sub_24E618554((v54 > 1), v55 + 1, 1, v52);
    }

    *(v52 + 2) = v55 + 1;
    sub_24E612B0C(v73, &v52[32 * v55 + 32]);
    v41[5] = v52;
    swift_endAccess();
    swift_allocObject();
    swift_weakInit();

    sub_24F92A888();

    v56 = *(v41[3] + 16) == 1;

    sub_24EE948E8(v56);

    [v72 lock];
    v57 = off_27F22D9A0;
    if (off_27F22D9A0)
    {

      v58 = v65;
      sub_24F91F638();
      sub_24F91F5E8();
      v60 = v59;
      (*(v66 + 8))(v58, v67);
      swift_beginAccess();
      v57[18] = v60;
      *(v57 + 152) = 0;
    }

    [v72 unlock];

    sub_24ED44774(a1);
    (*(v9 + 8))(v70, v8);
  }

  return v41;
}

double sub_24F295AD8(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24F92A8E8();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v4 = sub_24EE946E8(a2);
    sub_24EE948E8(v4);
  }

  return result;
}

void sub_24F295BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24F92A868();
  sub_24F2991B0(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
  v5 = swift_allocError();
  (*(*(v4 - 8) + 16))(v6, a2, v4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v8 = Strong;
  if (Strong)
  {
    Strong = type metadata accessor for JSService();
  }

  else
  {
    v9[1] = 0;
    v9[2] = 0;
  }

  v9[0] = v8;
  v9[3] = Strong;
  sub_24EE93D6C(v5, v9);
  sub_24E601704(v9, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24F295CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[63] = a7;
  v8[64] = v7;
  v8[61] = a5;
  v8[62] = a6;
  v8[59] = a3;
  v8[60] = a4;
  v8[57] = a1;
  v8[58] = a2;
  v8[65] = type metadata accessor for JSRequestIntentFetchError(0);
  v8[66] = swift_task_alloc();
  sub_24F928418();
  v8[67] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[68] = AssociatedTypeWitness;
  v8[69] = *(AssociatedTypeWitness - 8);
  v8[70] = swift_task_alloc();
  v11 = sub_24F928E28();
  v8[71] = v11;
  v8[72] = *(v11 - 8);
  v8[73] = swift_task_alloc();
  v12 = sub_24F929058();
  v8[74] = v12;
  v8[75] = *(v12 - 8);
  v8[76] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v8[77] = v13;
  v8[78] = *(v13 - 8);
  v8[79] = swift_task_alloc();
  v14 = sub_24F9288E8();
  v8[80] = v14;
  v8[81] = *(v14 - 8);
  v8[82] = swift_task_alloc();
  v15 = sub_24F929C38();
  v8[83] = v15;
  v8[84] = *(v15 - 8);
  v8[85] = swift_task_alloc();
  v8[86] = *(a6 - 8);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v16 = sub_24F922028();
  v8[89] = v16;
  v8[90] = *(v16 - 8);
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2960D4, 0, 0);
}

uint64_t sub_24F2960D4()
{
  v77 = v0;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 496);
  v4 = *(v0 + 464);
  v5 = sub_24F922058();
  __swift_project_value_buffer(v5, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v73 = *(v2 + 16);
  v73(v1, v4, v3);
  v6 = sub_24F922038();
  v7 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v8 = *(v0 + 704);
    v9 = *(v0 + 688);
    v11 = *(v0 + 496);
    v10 = *(v0 + 504);
    v12 = swift_slowAlloc();
    v71 = v7;
    v13 = swift_slowAlloc();
    v75 = v13;
    *v12 = 136315138;
    v14 = sub_24F29784C(v8, v11, v10);
    v16 = v15;
    (*(v9 + 8))(v8, v11);
    v17 = sub_24E7620D4(v14, v16, &v75);

    *(v12 + 4) = v17;
    v18 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v6, v71, v18, "JSService.JSIntentDispatch", "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2530542D0](v13, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {
    v19 = *(v0 + 704);
    v20 = *(v0 + 688);
    v21 = *(v0 + 496);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 544);
  (*(*(v0 + 720) + 16))(*(v0 + 728), *(v0 + 736), *(v0 + 712));
  sub_24F922098();
  swift_allocObject();
  *(v0 + 744) = sub_24F922088();
  v23 = swift_allocObject();
  *(v0 + 752) = v23;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0xE000000000000000;
  sub_24F9284B8();
  *(v0 + 424) = v22;
  swift_getExtendedExistentialTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB00, &qword_24F9DD8B8);
  if (swift_dynamicCast())
  {
    sub_24E8EA128((v0 + 64), (v0 + 16));
    sub_24F929C28();
    v24 = swift_dynamicCastClass();

    if (!v24)
    {
      sub_24F928FE8();
    }

    type metadata accessor for ASKBagContract(0);
    sub_24F928FD8();
    sub_24F92A758();
    *(v0 + 760) = *(v0 + 432);
    if (qword_27F210840 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 680);
    v47 = *(v0 + 672);
    v48 = *(v0 + 656);
    v49 = *(v0 + 648);
    v50 = *(v0 + 640);
    v51 = *(v0 + 632);
    v52 = *(v0 + 624);
    v67 = *(v0 + 616);
    v70 = *(v0 + 496);
    v72 = *(v0 + 696);
    v68 = *(v0 + 664);
    v69 = *(v0 + 464);
    (*(v49 + 104))(v48, *MEMORY[0x277D21C40], v50);
    sub_24F92A368();
    (*(v49 + 8))(v48, v50);
    sub_24F92A408();
    (*(v52 + 8))(v51, v67);
    *v46 = *(v0 + 440);
    v53 = *(v47 + 104);
    v53(v46, *MEMORY[0x277D220F0], v68);
    v54 = sub_24F929BE8();

    v55 = *(v47 + 8);
    v55(v46, v68);
    v73(v72, v69, v70);
    if (swift_dynamicCast())
    {
      v56 = *(v0 + 680);
      v57 = *(v0 + 664);

      v53(v56, *MEMORY[0x277D220E8], v57);
      v58 = sub_24F929BD8();

      v55(v56, v57);
      v54 = v58;
    }

    *(v0 + 768) = v54;
    v59 = *(v0 + 512);
    sub_24E8F997C(v0 + 16, v0 + 112);
    sub_24F929068();
    v60 = *(v59 + 32);
    *(v0 + 776) = v60;
    if (v60)
    {
      NetworkActivity.begin()();
    }

    *(v0 + 784) = *(*(v0 + 512) + 16);
    v61 = swift_task_alloc();
    *(v0 + 792) = v61;
    *v61 = v0;
    v61[1] = sub_24F296C54;
    v62 = *(v0 + 608);
    v63 = *(v0 + 592);
    v64 = *(v0 + 584);
    v65 = *(v0 + 488);
    v66 = MEMORY[0x277D21DD0];

    return MEMORY[0x282180628](v64, v62, v65, v63, v66);
  }

  else
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
    sub_24E601704(v0 + 64, &qword_27F23DB08, &unk_24F9DD8C0);
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 496);
    v25 = *(v0 + 504);
    v74 = *(v0 + 464);
    v27 = sub_24F92AAE8();
    __swift_project_value_buffer(v27, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v28 = sub_24F9284D8();
    *(v0 + 304) = MEMORY[0x277D837D0];
    *(v0 + 280) = v28;
    *(v0 + 288) = v29;
    sub_24F9283D8();
    sub_24E601704(v0 + 280, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA71BD0);
    v30 = sub_24F29784C(v74, v26, v25);
    MEMORY[0x253050C20](v30);

    MEMORY[0x253050C20](0xD000000000000022, 0x800000024FA71BA0);
    v32 = v75;
    v31 = v76;
    *(v23 + 16) = v75;
    *(v23 + 24) = v31;
    v33 = sub_24F922038();
    v34 = sub_24F92C068();
    if (sub_24F92C478())
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v75 = v36;
      *v35 = 136315138;

      v37 = sub_24E7620D4(v32, v31, &v75);

      *(v35 + 4) = v37;
      v38 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v33, v34, v38, "Error", "%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x2530542D0](v36, -1, -1);
      MEMORY[0x2530542D0](v35, -1, -1);
    }

    v39 = sub_24F929C48();
    sub_24F2991B0(&qword_27F23BEB0, MEMORY[0x277D22110], MEMORY[0x277D22118]);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D220F8], v39);
    swift_willThrow();
    v41 = *(v0 + 736);
    v42 = *(v0 + 720);
    v43 = *(v0 + 712);
    sub_24F297B58("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

    (*(v42 + 8))(v41, v43);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_24F296C54()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
    v2 = sub_24F297488;
  }

  else
  {
    v2 = sub_24F296D68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_24F296D68()
{
  v1 = sub_24F928E18();
  if (*(v1 + 16))
  {
    v2 = *(v0 + 512);
    v3 = v1;
    *(v0 + 368) = type metadata accessor for JSService();
    *(v0 + 344) = v2;

    sub_24EE93AC4(v3, v0 + 344);

    sub_24E601704(v0 + 344, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
  }

  v4 = *(v0 + 800);
  sub_24F297EF0(*(v0 + 584), *(v0 + 472), *(v0 + 480), *(v0 + 544), *(v0 + 560));
  if (!v4)
  {
    v22 = *(v0 + 776);
    if (v22)
    {
      v23 = *(v22 + 16);
      result = [v23 lock];
      v24 = *(v22 + 80);
      v10 = __OFSUB__(v24, 1);
      v25 = v24 - 1;
      if (v10)
      {
        goto LABEL_27;
      }

      *(v22 + 80) = v25;
      if (!v25)
      {
        swift_beginAccess();
        sub_24E615E00(v22 + 40, v0 + 240);
        __swift_project_boxed_opaque_existential_1((v0 + 240), *(v0 + 264));
        v26 = swift_allocObject();
        v26[2] = v22;
        v26[3] = sub_24EF2A56C;
        v26[4] = 0;

        sub_24F928C78();

        __swift_destroy_boxed_opaque_existential_1((v0 + 240));
      }

      [v23 unlock];
    }

    v27 = *(v0 + 608);
    v28 = *(v0 + 600);
    v29 = *(v0 + 592);
    v30 = *(v0 + 584);
    v31 = *(v0 + 576);
    v32 = *(v0 + 568);
    v43 = *(v0 + 560);
    v33 = *(v0 + 552);
    v34 = *(v0 + 544);
    v35 = *(v0 + 456);

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    (*(v33 + 32))(v35, v43, v34);
    sub_24F928EF8();
    if (*(v0 + 809))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    else
    {
      sub_24F92A8A8();

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    v40 = *(v0 + 736);
    v41 = *(v0 + 720);
    v42 = *(v0 + 712);
    sub_24F297B58("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

    (*(v41 + 8))(v40, v42);

    v39 = *(v0 + 8);
    goto LABEL_23;
  }

  v5 = v4;
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
  v6 = *(v0 + 776);
  if (v6)
  {
    v7 = *(v6 + 16);
    result = [v7 lock];
    v9 = *(v6 + 80);
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (!v10)
    {
      *(v6 + 80) = v11;
      if (!v11)
      {
        swift_beginAccess();
        sub_24E615E00(v6 + 40, v0 + 200);
        __swift_project_boxed_opaque_existential_1((v0 + 200), *(v0 + 224));
        v12 = swift_allocObject();
        v12[2] = v6;
        v12[3] = sub_24EF2A56C;
        v12[4] = 0;

        sub_24F928C78();

        __swift_destroy_boxed_opaque_existential_1((v0 + 200));
      }

      [v7 unlock];
      goto LABEL_10;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

LABEL_10:
  v13 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v18 = *(v0 + 512);
  (*(v14 + 16))(v16, v13, v15);
  *(v16 + *(v17 + 20)) = v5;
  sub_24F2991B0(&qword_27F239F98, type metadata accessor for JSRequestIntentFetchError, &unk_24F9CC210);
  v19 = swift_allocError();
  sub_24F29906C(v16, v20);
  *(v0 + 336) = type metadata accessor for JSService();
  *(v0 + 312) = v18;

  v21 = v5;
  sub_24EE93D6C(v19, v0 + 312);
  sub_24E601704(v0 + 312, &qword_27F2129B0, &unk_24F945320);

  swift_willThrow();

  sub_24F2990D0(v16);
  (*(v14 + 8))(v13, v15);
  sub_24F928EF8();
  if (*(v0 + 808))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_24F92A8A8();

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v36 = *(v0 + 736);
  v37 = *(v0 + 720);
  v38 = *(v0 + 712);
  sub_24F297B58("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

  (*(v37 + 8))(v36, v38);

  v39 = *(v0 + 8);
LABEL_23:

  return v39();
}

id sub_24F297488()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 776);
  if (v2)
  {
    v3 = *(v2 + 16);
    result = [v3 lock];
    v5 = *(v2 + 80);
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v6)
    {
      __break(1u);
      return result;
    }

    *(v2 + 80) = v7;
    if (!v7)
    {
      swift_beginAccess();
      sub_24E615E00(v2 + 40, v0 + 200);
      __swift_project_boxed_opaque_existential_1((v0 + 200), *(v0 + 224));
      v8 = swift_allocObject();
      v8[2] = v2;
      v8[3] = sub_24EF2A56C;
      v8[4] = 0;

      sub_24F928C78();

      __swift_destroy_boxed_opaque_existential_1((v0 + 200));
    }

    [v3 unlock];
  }

  v9 = *(v0 + 608);
  v10 = *(v0 + 600);
  v11 = *(v0 + 592);
  v12 = *(v0 + 528);
  v13 = *(v0 + 520);
  v14 = *(v0 + 512);
  (*(v10 + 16))(v12, v9, v11);
  *(v12 + *(v13 + 20)) = v1;
  sub_24F2991B0(&qword_27F239F98, type metadata accessor for JSRequestIntentFetchError, &unk_24F9CC210);
  v15 = swift_allocError();
  sub_24F29906C(v12, v16);
  *(v0 + 336) = type metadata accessor for JSService();
  *(v0 + 312) = v14;

  v17 = v1;
  sub_24EE93D6C(v15, v0 + 312);
  sub_24E601704(v0 + 312, &qword_27F2129B0, &unk_24F945320);

  swift_willThrow();

  sub_24F2990D0(v12);
  (*(v10 + 8))(v9, v11);
  sub_24F928EF8();
  if (*(v0 + 808))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_24F92A8A8();

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v18 = *(v0 + 736);
  v19 = *(v0 + 720);
  v20 = *(v0 + 712);
  sub_24F297B58("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

  (*(v19 + 8))(v18, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24F29784C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for AnyJSIntent(255, AssociatedTypeWitness, v6, v7);
  v9 = sub_24F92C4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v8 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v29 - v19;
  (*(v21 + 16))(v15, a1, a2, v18);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v12, 0, 1, v8);
    (*(v16 + 32))(v20, v12, v8);
    strcpy(v29, "AnyJSIntent<");
    BYTE5(v29[1]) = 0;
    HIWORD(v29[1]) = -5120;
    v24 = sub_24F7E3804();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    MEMORY[0x253050C20](v24, v26);

    MEMORY[0x253050C20](62, 0xE100000000000000);
    v27 = v29[0];
    (*(v16 + 8))(v20, v8);
    return v27;
  }

  else
  {
    v23(v12, 1, 1, v8);
    (*(v10 + 8))(v12, v9);
    return sub_24F9284D8();
  }
}

uint64_t sub_24F297B58(const char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v7 = sub_24F922068();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_24F922028();
  v11 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v14 = sub_24F922058();
  __swift_project_value_buffer(v14, qword_27F23DAC0);

  v15 = sub_24F922038();
  sub_24F922078();
  v27 = sub_24F92C048();
  result = sub_24F92C478();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((a3 & 1) == 0)
  {

    if (!v29)
    {
      __break(1u);
LABEL_7:

      return (*(v11 + 8))(v13, v28);
    }

LABEL_12:

    sub_24F9220A8();

    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D85B00])
    {
      v17 = 0;
      v18 = 0;
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v19 = "%s";
      v18 = 2;
      v17 = 1;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = v18;
    *(v20 + 1) = v17;
    *(v20 + 2) = 2080;
    swift_beginAccess();
    v22 = *(a5 + 16);
    v23 = *(a5 + 24);

    v24 = sub_24E7620D4(v22, v23, &v31);

    *(v20 + 4) = v24;
    v25 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v15, v27, v25, v29, v19, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x2530542D0](v21, -1, -1);
    MEMORY[0x2530542D0](v20, -1, -1);

    return (*(v11 + 8))(v13, v28);
  }

  if (v29 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v29 & 0xFFFFF800) != 0xD800)
  {
    if (v29 >> 16 <= 0x10)
    {

      v29 = &v30;
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_24F297EF0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = a2;
  v108 = a3;
  v114 = a1;
  v99 = a5;
  v6 = sub_24F928418();
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_24F922068();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v106 = *(v9 - 8);
  v107 = v9;
  MEMORY[0x28223BE20](v9);
  v105 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a4;
  v98 = *(a4 - 8);
  MEMORY[0x28223BE20](v11);
  v118 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F91EAE8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v93 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v86 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DAF0, &qword_24F9DD8A0);
  v104 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v103 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v102 = &v86 - v22;
  v23 = sub_24F91F648();
  v116 = *(v23 - 8);
  v117 = v23;
  MEMORY[0x28223BE20](v23);
  v92 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v91 = &v86 - v26;
  MEMORY[0x28223BE20](v27);
  v101 = &v86 - v28;
  MEMORY[0x28223BE20](v29);
  v115 = &v86 - v30;
  v31 = sub_24F922028();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v97 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v86 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v86 - v38;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v112 = v18;
  v113 = v13;
  v121 = v14;
  v40 = sub_24F922058();
  v41 = __swift_project_value_buffer(v40, qword_27F23DAC0);
  sub_24F922018();
  v89 = v41;
  v42 = sub_24F922038();
  v43 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v44 = v32;
    v45 = v31;
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v42, v43, v47, "JSService.parseModel", "", v46, 2u);
    v48 = v46;
    v31 = v45;
    v32 = v44;
    MEMORY[0x2530542D0](v48, -1, -1);
  }

  v95 = v31;

  (*(v32 + 16))(v36, v39, v31);
  sub_24F922098();
  swift_allocObject();
  v111 = sub_24F922088();
  v49 = *(v32 + 8);
  v94 = v32 + 8;
  v90 = v49;
  v49(v39, v31);
  v50 = v102;
  sub_24F928DF8();
  v51 = v112;
  sub_24F928B18();
  v52 = *(v104 + 8);
  v52(v50, v19);
  v53 = v115;
  sub_24F91EAD8();
  v54 = v121 + 8;
  v55 = *(v121 + 8);
  (v55)(v51, v113);
  v56 = v103;
  sub_24F928DF8();
  v57 = v105;
  sub_24F928B28();
  v52(v56, v19);
  v58 = v118;
  v59 = v110;
  v109(v57);
  if (v59)
  {

    (*(v106 + 8))(v57, v107);
    return (*(v116 + 8))(v53, v117);
  }

  else
  {
    v109 = v55;
    v110 = 0;
    v121 = v54;
    (*(v106 + 8))(v57, v107);
    v61 = v101;
    sub_24F91F638();
    sub_24F2991B0(&qword_27F2363D0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v62 = v117;
    v63 = v53;
    if (sub_24F92AF78())
    {
      if (qword_27F210580 != -1)
      {
        swift_once();
      }

      v121 = sub_24F92AAE8();
      v114 = __swift_project_value_buffer(v121, qword_27F39C3E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      v113 = *(*(sub_24F928468() - 8) + 72);
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      sub_24F928408();
      sub_24F9283F8();
      sub_24F91F5E8();
      v64 = MEMORY[0x277D839F8];
      v120 = MEMORY[0x277D839F8];
      v119 = v65;
      sub_24F9283D8();
      sub_24E601704(&v119, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283F8();
      v61 = v101;
      sub_24F91F5E8();
      v120 = v64;
      v119 = v66;
      sub_24F9283D8();
      sub_24E601704(&v119, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A5A8();

      v67 = v100;
      v68 = v98;
      v62 = v117;
      v69 = v118;
    }

    else
    {
      v70 = *(v116 + 16);
      v70(v91, v53, v62);
      v70(v92, v61, v62);
      v71 = v112;
      sub_24F91EAC8();
      v72 = v93;
      sub_24F928E08();
      v67 = v100;
      v120 = v100;
      v73 = __swift_allocate_boxed_opaque_existential_1(&v119);
      v68 = v98;
      (*(v98 + 16))(v73, v58, v67);
      sub_24F298D80(v71, v72, &v119);
      v74 = v113;
      v75 = v109;
      (v109)(v72, v113);
      (v75)(v71, v74);
      __swift_destroy_boxed_opaque_existential_1(&v119);
      v76 = sub_24F922038();
      v77 = v97;
      sub_24F922078();
      v78 = sub_24F92C048();
      if (sub_24F92C478())
      {

        v79 = v86;
        sub_24F9220A8();

        v80 = v87;
        v81 = v88;
        if ((*(v87 + 88))(v79, v88) == *MEMORY[0x277D85B00])
        {
          v82 = "[Error] Interval already ended";
        }

        else
        {
          (*(v80 + 8))(v79, v81);
          v82 = "";
        }

        v77 = v97;
        v83 = swift_slowAlloc();
        *v83 = 0;
        v84 = sub_24F922008();
        _os_signpost_emit_with_name_impl(&dword_24E5DD000, v76, v78, v84, "JSService.parseModel", v82, v83, 2u);
        MEMORY[0x2530542D0](v83, -1, -1);
        v62 = v117;
        v61 = v101;
      }

      v90(v77, v95);
      v63 = v115;
      v69 = v118;
    }

    v85 = *(v116 + 8);
    v85(v61, v62);
    v85(v63, v62);
    return (*(v68 + 32))(v99, v69, v67);
  }
}

uint64_t sub_24F298BE4()
{

  return swift_deallocClassInstance();
}

uint64_t IntentDispatchOptions.withGarbageCollection()()
{
  v0 = sub_24F928188();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928178();
  v4 = sub_24F928F88();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_24F298D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E643A9C(a3, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DAF8, &unk_24F9DD8A8);
  if (swift_dynamicCast())
  {
    sub_24E8EA128(v23, &v25);
    v8 = v26;
    v9 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    v10 = (*(v9 + 8))(v8, v9);
    if (v10)
    {
      v11 = v10;
      sub_24F91EAD8();
      sub_24F91F5E8();
      v13 = v12;
      v14 = *(v5 + 8);
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 184) = v13;
      *(v11 + 192) = 0;
      sub_24F91EAB8();
      sub_24F91F5E8();
      v16 = v15;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 200) = v16;
      *(v11 + 208) = 0;
      sub_24F91EAD8();
      sub_24F91F5E8();
      v18 = v17;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 232) = v18;
      *(v11 + 240) = 0;
      sub_24F91EAB8();
      sub_24F91F5E8();
      v20 = v19;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 248) = v20;
      *(v11 + 256) = 0;
    }

    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
    return sub_24E601704(v23, &qword_27F224F98, &unk_24F974A70);
  }
}

uint64_t sub_24F299034()
{

  return swift_deallocObject();
}

uint64_t sub_24F29906C(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for JSRequestIntentFetchError(0);
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

uint64_t sub_24F2990D0(uint64_t a1)
{
  Error = type metadata accessor for JSRequestIntentFetchError(0);
  (*(*(Error - 8) + 8))(a1, Error);
  return a1;
}

uint64_t sub_24F299130()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F2991B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F299210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F2992FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for DefaultPageHeaderView(uint64_t a1)
{
  result = qword_27F23DB18;
  if (!qword_27F23DB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F29940C(uint64_t a1)
{
  sub_24F299490(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24F299490(uint64_t a1)
{
  if (!qword_27F220EC8)
  {
    type metadata accessor for HeaderPresentation(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F220EC8);
    }
  }
}

uint64_t sub_24F299504@<X0>(uint64_t a1@<X8>)
{
  v139 = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB28, &qword_24F9DD938);
  MEMORY[0x28223BE20](v107);
  v109 = &v105 - v1;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB30, &qword_24F9DD940);
  MEMORY[0x28223BE20](v136);
  v108 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v110 = &v105 - v4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB38, &qword_24F9DD948);
  MEMORY[0x28223BE20](v134);
  v135 = &v105 - v5;
  v117 = sub_24F924258();
  MEMORY[0x28223BE20](v117);
  v119 = (&v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = sub_24F924248();
  MEMORY[0x28223BE20](v125);
  v122 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v123 = &v105 - v9;
  v131 = type metadata accessor for DefaultPageHeaderView(0);
  v112 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v113 = v10;
  v114 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v11 - 8);
  v115 = &v105 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB40, &unk_24FA1A590);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = &v105 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB48, &qword_24F9DD950);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v124 = &v105 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB50, &qword_24F9DD958);
  MEMORY[0x28223BE20](v116);
  v129 = &v105 - v15;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB58, &unk_24F9DD960);
  MEMORY[0x28223BE20](v133);
  v128 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v130 = &v105 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223138, &unk_24F972860);
  MEMORY[0x28223BE20](v19 - 8);
  v106 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v111 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v105 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v105 - v27;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB60, &unk_24F9DD970);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v132 = &v105 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v105 - v31;
  v33 = type metadata accessor for HeaderPresentation(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v105 - v38;
  sub_24E60169C(v140, v32, qword_27F220E38, &unk_24F965190);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_24E601704(v32, qword_27F220E38, &unk_24F965190);
    v40 = 1;
    v41 = v139;
    return (*(v137 + 56))(v41, v40, 1, v138);
  }

  sub_24F29DDC8(v32, v39, type metadata accessor for HeaderPresentation);
  sub_24E60169C(v39, v28, &qword_27F223138, &unk_24F972860);
  v42 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v45 = v43 + 48;
  if (v44(v28, 1, v42) == 1)
  {
    sub_24E601704(v28, &qword_27F223138, &unk_24F972860);
    v146 = 0u;
    v147 = 0u;
    v148 = 0;
  }

  else
  {
    sub_24E60169C(&v28[*(v42 + 40)], &v146, &qword_27F213EA8, &unk_24F93D030);
    sub_24F29DFB8(v28, type metadata accessor for HeaderPresentation.HeaderLabel);
    if (*(&v147 + 1))
    {
      sub_24E612C80(&v146, &v141);
      goto LABEL_12;
    }
  }

  sub_24E60169C(&v39[*(v33 + 24)], v25, &qword_27F223138, &unk_24F972860);
  if (v44(v25, 1, v42) == 1)
  {
    sub_24E601704(v25, &qword_27F223138, &unk_24F972860);
    v141 = 0u;
    v142 = 0u;
    v143 = 0;
    if (!*(&v147 + 1))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_24E60169C(&v25[*(v42 + 40)], &v141, &qword_27F213EA8, &unk_24F93D030);
  sub_24F29DFB8(v25, type metadata accessor for HeaderPresentation.HeaderLabel);
  if (*(&v147 + 1))
  {
LABEL_11:
    sub_24E601704(&v146, qword_27F21B590, &unk_24F93BE30);
  }

LABEL_12:
  if (*(&v142 + 1))
  {
    sub_24E612C80(&v141, &v149);
    v46 = sub_24F9232F8();
    (*(*(v46 - 8) + 56))(v115, 1, 1, v46);
    sub_24E615E00(&v149, &v141);
    v110 = v45;
    v47 = v39;
    v48 = v114;
    sub_24F29DF50(v140, v114, type metadata accessor for DefaultPageHeaderView);
    sub_24F29DF50(v47, v36, type metadata accessor for HeaderPresentation);
    v49 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v50 = (v113 + *(v34 + 80) + v49) & ~*(v34 + 80);
    v51 = v44;
    v52 = swift_allocObject();
    sub_24F29DDC8(v48, v52 + v49, type metadata accessor for DefaultPageHeaderView);
    sub_24F29DDC8(v36, v52 + v50, type metadata accessor for HeaderPresentation);
    type metadata accessor for HeaderContentView(0);
    sub_24F29DE30(&qword_27F23DB98, type metadata accessor for HeaderContentView, &unk_24FA118A0);
    v53 = v118;
    sub_24F921788();
    v54 = *(v33 + 20);
    v115 = v47;
    v55 = v47 + v54;
    v56 = v111;
    sub_24E60169C(v55, v111, &qword_27F223138, &unk_24F972860);
    LODWORD(v49) = v51(v56, 1, v42);
    sub_24E601704(v56, &qword_27F223138, &unk_24F972860);
    v57 = 12.0;
    if (v49 == 1)
    {
      v58 = &v115[*(v33 + 24)];
      v59 = v106;
      sub_24E60169C(v58, v106, &qword_27F223138, &unk_24F972860);
      v60 = v51(v59, 1, v42);
      sub_24E601704(v59, &qword_27F223138, &unk_24F972860);
      if (v60 == 1)
      {
        v57 = 6.0;
      }

      else
      {
        v57 = 12.0;
      }
    }

    v61 = *(v117 + 20);
    v62 = *MEMORY[0x277CE0118];
    v63 = sub_24F924B38();
    v64 = v119;
    (*(*(v63 - 8) + 104))(v119 + v61, v62, v63);
    *v64 = v57;
    v64[1] = v57;
    v65 = v123;
    sub_24F29DDC8(v64, v123, MEMORY[0x277CDFC08]);
    *(v65 + *(v125 + 20)) = 0xC024000000000000;
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v66 = sub_24F926D08();

    sub_24F29DF50(v65, v122, MEMORY[0x277CDFBC8]);
    sub_24F29DE30(&qword_27F214338, MEMORY[0x277CDFBC8], MEMORY[0x277CDFBC0]);
    v67 = sub_24F927348();
    sub_24F29DFB8(v65, MEMORY[0x277CDFBC8]);
    v144 = v67;
    v145 = v66;
    sub_24F29B450();
    sub_24E62A2EC();
    v141 = 0u;
    v142 = 0u;
    v143 = 0;
    v68 = v124;
    v69 = v121;
    sub_24F926178();
    sub_24E64594C(&v141);
    (*(v120 + 8))(v53, v69);
    v70 = v131;
    v71 = v140;
    LOBYTE(v66) = *(v140 + *(v131 + 20));
    KeyPath = swift_getKeyPath();
    v73 = swift_getKeyPath();
    v74 = v129;
    v75 = &v129[*(v116 + 36)];
    *v75 = v66;
    v75[1] = 0;
    *(v75 + 1) = 0;
    v75[16] = 1;
    *(v75 + 3) = KeyPath;
    v75[32] = 0;
    *(v75 + 5) = v73;
    v76 = type metadata accessor for PageMarginsViewModifier(0);
    *(v75 + 7) = 0;
    *(v75 + 8) = 0;
    *(v75 + 6) = 0;
    v75[72] = 0;
    v77 = *(v76 + 36);
    *&v75[v77] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    (*(v126 + 32))(v74, v68, v127);
    v78 = 0;
    if (*(v71 + *(v70 + 24)) == 1)
    {
      v78 = sub_24F29A8E0();
    }

    v79 = [objc_opt_self() systemBackgroundColor];
    v80 = sub_24F926BF8();
    v81 = v128;
    sub_24E6009C8(v74, v128, &qword_27F23DB50, &qword_24F9DD958);
    v82 = (v81 + *(v133 + 36));
    *v82 = v78;
    v82[1] = 0x4059000000000000;
    v82[2] = v80;
    v83 = v81;
    v84 = v130;
    sub_24E6009C8(v83, v130, &qword_27F23DB58, &unk_24F9DD960);
    sub_24F29DE78(v84, v135);
    swift_storeEnumTagMultiPayload();
    sub_24F29B2B0();
    sub_24F29B508();
    v85 = v132;
    sub_24F924E28();
    sub_24F29DEE8(v84);
    __swift_destroy_boxed_opaque_existential_1(&v149);
    v86 = v115;
  }

  else
  {
    sub_24E601704(&v141, qword_27F21B590, &unk_24F93BE30);
    v87 = type metadata accessor for HeaderContentView(0);
    v88 = v109;
    sub_24F29DF50(v39, &v109[v87[6]], type metadata accessor for HeaderPresentation);
    v89 = v88 + v87[7];
    *(v89 + 32) = 0;
    *v89 = 0u;
    *(v89 + 16) = 0u;
    *v88 = swift_getKeyPath();
    *(v88 + 8) = 0;
    *(v88 + 16) = swift_getKeyPath();
    *(v88 + 24) = 0;
    *(v88 + v87[8]) = 1;
    v90 = v131;
    v91 = v140;
    v92 = *(v140 + *(v131 + 20));
    v93 = swift_getKeyPath();
    v94 = swift_getKeyPath();
    v95 = v88 + *(v107 + 36);
    *v95 = v92;
    *(v95 + 1) = 0;
    *(v95 + 8) = 0;
    *(v95 + 16) = 1;
    *(v95 + 24) = v93;
    *(v95 + 32) = 0;
    *(v95 + 40) = v94;
    v96 = type metadata accessor for PageMarginsViewModifier(0);
    *(v95 + 56) = 0;
    *(v95 + 64) = 0;
    *(v95 + 48) = 0;
    *(v95 + 72) = 0;
    v97 = *(v96 + 36);
    *(v95 + v97) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v98 = 0;
    if (*(v91 + *(v90 + 24)) == 1)
    {
      v98 = sub_24F29A8E0();
    }

    v99 = [objc_opt_self() systemBackgroundColor];
    v100 = sub_24F926BF8();
    v101 = v108;
    sub_24E6009C8(v88, v108, &qword_27F23DB28, &qword_24F9DD938);
    v102 = (v101 + *(v136 + 36));
    *v102 = v98;
    v102[1] = 0x4059000000000000;
    v102[2] = v100;
    v103 = v110;
    sub_24E6009C8(v101, v110, &qword_27F23DB30, &qword_24F9DD940);
    sub_24E60169C(v103, v135, &qword_27F23DB30, &qword_24F9DD940);
    swift_storeEnumTagMultiPayload();
    sub_24F29B2B0();
    sub_24F29B508();
    v85 = v132;
    sub_24F924E28();
    sub_24E601704(v103, &qword_27F23DB30, &qword_24F9DD940);
    v86 = v39;
  }

  sub_24F29DFB8(v86, type metadata accessor for HeaderPresentation);
  v41 = v139;
  sub_24E6009C8(v85, v139, &qword_27F23DB60, &unk_24F9DD970);
  v40 = 0;
  return (*(v137 + 56))(v41, v40, 1, v138);
}

uint64_t sub_24F29A83C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeaderContentView(0);
  sub_24F29DF50(a1, a2 + v4[6], type metadata accessor for HeaderPresentation);
  v5 = a2 + v4[7];
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  result = swift_getKeyPath();
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + v4[8]) = 1;
  return result;
}

uint64_t sub_24F29A8E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223130, &qword_24F96D648);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728, &unk_24F956450);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DBA0, &qword_24F9DDA30);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v57 - v26;
  v28 = type metadata accessor for HeaderPresentation(0);
  sub_24E60169C(v0 + *(v28 + 32), v27, &qword_27F23DBA0, &qword_24F9DDA30);
  v29 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  v30 = 0;
  if ((*(*(v29 - 8) + 48))(v27, 1, v29) == 1)
  {
    goto LABEL_24;
  }

  sub_24E60169C(v27, v24, &qword_27F23DBA0, &qword_24F9DDA30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24F29DFB8(v24, type metadata accessor for HeaderPresentation.HeaderStyle);
LABEL_23:
    v30 = 0;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v35 = *v24;
    if (*(*v24 + 16))
    {
      v36 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      v37 = *(v36 - 8);
      v38 = v60;
      sub_24F29DF50(v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v60, type metadata accessor for HeaderPresentation.HeaderIconType);

      (*(v37 + 56))(v38, 0, 1, v36);
      sub_24E60169C(v38, v7, &qword_27F223130, &qword_24F96D648);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48)];
        sub_24E6E8664(*v39, v39[1], v39[2], v39[3], v39[4], v39[5]);
        v40 = v58;
        sub_24E6009C8(v7, v58, &qword_27F213FB0, &qword_24F93E6B0);
        v41 = v59;
        sub_24E60169C(v40, v59, &qword_27F213FB0, &qword_24F93E6B0);
        v42 = sub_24F9289E8();
        v43 = *(v42 - 8);
        if ((*(v43 + 48))(v41, 1, v42) == 1)
        {
          sub_24E601704(v40, &qword_27F213FB0, &qword_24F93E6B0);
          sub_24E601704(v41, &qword_27F213FB0, &qword_24F93E6B0);
          v30 = 0;
LABEL_35:
          sub_24E601704(v38, &qword_27F223130, &qword_24F96D648);
          goto LABEL_24;
        }

        v52 = sub_24F9289A8();
        if (v52)
        {
          if (qword_27F20FEE0 != -1)
          {
            v56 = v52;
            swift_once();
            v52 = v56;
          }

          v53 = v52;
          v54 = sub_24F926BD8();
          ColorGrouping.colorGroup(for:)(v54);
          v55 = type metadata accessor for ColorGroup(0);
          if ((*(*(v55 - 8) + 48))(v12, 1, v55) != 1)
          {
            v30 = *&v12[*(v55 + 28)];

            sub_24F29DFB8(v12, type metadata accessor for ColorGroup);

            goto LABEL_34;
          }

          sub_24E601704(v12, &qword_27F2190D8, &unk_24F94BD70);
        }

        v30 = 0;
LABEL_34:
        sub_24E601704(v40, &qword_27F213FB0, &qword_24F93E6B0);
        (*(v43 + 8))(v41, v42);
        goto LABEL_35;
      }

      sub_24F29DFB8(v7, type metadata accessor for HeaderPresentation.HeaderIconType);
    }

    else
    {

      v49 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      v38 = v60;
      (*(*(v49 - 8) + 56))(v60, 1, 1, v49);
    }

    v50 = v38;
LABEL_22:
    sub_24E601704(v50, &qword_27F223130, &qword_24F96D648);
    goto LABEL_23;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
  v33 = *(v32 + 48);
  sub_24E6009C8(&v24[*(v32 + 80)], v21, &qword_27F21C728, &unk_24F956450);
  sub_24E60169C(v21, v18, &qword_27F21C728, &unk_24F956450);
  v34 = type metadata accessor for JSColor(0);
  if ((*(*(v34 - 8) + 48))(v18, 1, v34) == 1)
  {
    sub_24E601704(v21, &qword_27F21C728, &unk_24F956450);
LABEL_21:
    sub_24E601704(v18, &qword_27F21C728, &unk_24F956450);
    sub_24E601704(&v24[v33], &qword_27F223130, &qword_24F96D648);
    v50 = v24;
    goto LABEL_22;
  }

  v44 = *&v18[*(v34 + 24)];

  sub_24F29DFB8(v18, type metadata accessor for JSColor);
  if (!v44 || (v45 = sub_24F926BE8(), , !v45))
  {
    v18 = v21;
    goto LABEL_21;
  }

  if (qword_27F20FEE0 != -1)
  {
    swift_once();
  }

  v46 = v45;
  v47 = sub_24F926BD8();
  ColorGrouping.colorGroup(for:)(v47);
  v48 = type metadata accessor for ColorGroup(0);
  if ((*(*(v48 - 8) + 48))(v15, 1, v48) == 1)
  {
    sub_24E601704(v15, &qword_27F2190D8, &unk_24F94BD70);

    v30 = 0;
  }

  else
  {
    v30 = *&v15[*(v48 + 28)];

    sub_24F29DFB8(v15, type metadata accessor for ColorGroup);
  }

  sub_24E601704(v21, &qword_27F21C728, &unk_24F956450);
  sub_24E601704(&v24[v33], &qword_27F223130, &qword_24F96D648);
  sub_24E601704(v24, &qword_27F223130, &qword_24F96D648);
LABEL_24:
  sub_24E601704(v27, &qword_27F23DBA0, &qword_24F9DDA30);
  return v30;
}

unint64_t sub_24F29B2B0()
{
  result = qword_27F23DB68;
  if (!qword_27F23DB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB58, &unk_24F9DD960);
    sub_24F29B33C();
    sub_24F29B4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB68);
  }

  return result;
}

unint64_t sub_24F29B33C()
{
  result = qword_27F23DB70;
  if (!qword_27F23DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB50, &qword_24F9DD958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB40, &unk_24FA1A590);
    sub_24F29B450();
    sub_24E62A2EC();
    swift_getOpaqueTypeConformance2();
    sub_24F29DE30(&qword_27F222448, type metadata accessor for PageMarginsViewModifier, &unk_24F9F5C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB70);
  }

  return result;
}

unint64_t sub_24F29B450()
{
  result = qword_27F23DB78;
  if (!qword_27F23DB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB40, &unk_24FA1A590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB78);
  }

  return result;
}

unint64_t sub_24F29B4B4()
{
  result = qword_27F23DB80;
  if (!qword_27F23DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB80);
  }

  return result;
}

unint64_t sub_24F29B508()
{
  result = qword_27F23DB88;
  if (!qword_27F23DB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB30, &qword_24F9DD940);
    sub_24F29B594();
    sub_24F29B4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB88);
  }

  return result;
}

unint64_t sub_24F29B594()
{
  result = qword_27F23DB90;
  if (!qword_27F23DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB28, &qword_24F9DD938);
    sub_24F29DE30(&qword_27F23DB98, type metadata accessor for HeaderContentView, &unk_24FA118A0);
    sub_24F29DE30(&qword_27F222448, type metadata accessor for PageMarginsViewModifier, &unk_24F9F5C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DB90);
  }

  return result;
}

uint64_t sub_24F29B680()
{
  v1 = *(type metadata accessor for DefaultPageHeaderView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = type metadata accessor for HeaderPresentation(0);
  v5 = *(v4 - 1);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + v2;
  v159 = v6;
  if ((*(v5 + 48))(v7, 1, v4))
  {
    goto LABEL_55;
  }

  v8 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v9 = *(*(v8 - 1) + 48);
  if (!v9(v7, 1, v8))
  {

    v10 = v7 + v8[5];
    v11 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v114 = sub_24F9289E8();
          (*(*(v114 - 8) + 8))(v10, v114);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v12 = v7 + v8[7];
          v13 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v15 = sub_24F928388();
              (*(*(v15 - 8) + 8))(v12, v15);
            }
          }

          v16 = (v7 + v8[10]);
          if (v16[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v16);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v102 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v103 = type metadata accessor for JSColor(0);
        if (!(*(*(v103 - 8) + 48))(v102, 1, v103))
        {
          v104 = sub_24F928388();
          (*(*(v104 - 8) + 8))(v102, v104);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v111 = sub_24F9289E8();
        v112 = *(v111 - 8);
        if (!(*(v112 + 48))(v10, 1, v111))
        {
          (*(v112 + 8))(v10, v111);
        }

        v6 = v159;
        if (*(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v17 = v7 + v4[5];
  if (v9(v17, 1, v8))
  {
    goto LABEL_32;
  }

  v18 = v17 + v8[5];
  v19 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    goto LABEL_17;
  }

  v22 = swift_getEnumCaseMultiPayload();
  if (v22 <= 2)
  {
    if (!v22)
    {

      v105 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v106 = type metadata accessor for JSColor(0);
      if (!(*(*(v106 - 8) + 48))(v105, 1, v106))
      {
        v107 = sub_24F928388();
        (*(*(v107 - 8) + 8))(v105, v107);
      }

      goto LABEL_17;
    }

    if (v22 == 1)
    {
      v113 = sub_24F9289E8();
      v158 = *(v113 - 8);
      if (!(*(v158 + 48))(v18, 1, v113))
      {
        (*(v158 + 8))(v18, v113);
      }

      if (*(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v22 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v22)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v117 = sub_24F9289E8();
      (*(*(v117 - 8) + 8))(v18, v117);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v20 = v17 + v8[7];
  v21 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v23 = sub_24F928388();
      (*(*(v23 - 8) + 8))(v20, v23);
    }
  }

  v24 = (v17 + v8[10]);
  v6 = v159;
  if (v24[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

LABEL_32:
  v25 = v7 + v4[6];
  if (v9(v25, 1, v8))
  {
    goto LABEL_49;
  }

  v26 = v25 + v8[5];
  v27 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    goto LABEL_34;
  }

  v30 = swift_getEnumCaseMultiPayload();
  if (v30 <= 2)
  {
    if (!v30)
    {

      v108 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v109 = type metadata accessor for JSColor(0);
      if (!(*(*(v109 - 8) + 48))(v108, 1, v109))
      {
        v110 = sub_24F928388();
        (*(*(v110 - 8) + 8))(v108, v110);
      }

      goto LABEL_34;
    }

    if (v30 == 1)
    {
      v115 = sub_24F9289E8();
      v116 = *(v115 - 8);
      if (!(*(v116 + 48))(v26, 1, v115))
      {
        (*(v116 + 8))(v26, v115);
      }

      if (*(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v30 != 2)
    {
      goto LABEL_34;
    }

LABEL_155:

    goto LABEL_34;
  }

  switch(v30)
  {
    case 3:
      goto LABEL_155;
    case 4:
      v118 = sub_24F9289E8();
      (*(*(v118 - 8) + 8))(v26, v118);
      break;
    case 5:
      goto LABEL_155;
  }

LABEL_34:
  v28 = v25 + v8[7];
  v29 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v31 = sub_24F928388();
      (*(*(v31 - 8) + 8))(v28, v31);
    }
  }

  v32 = (v25 + v8[10]);
  v6 = v159;
  if (v32[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

LABEL_49:
  v33 = v7 + v4[7];
  if (*(v33 + 56) == 1)
  {
  }

  else if (!*(v33 + 56))
  {

    if (*(v33 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v33 + 16));
    }
  }

  v34 = v7 + v4[8];
  v35 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
  {
    v43 = swift_getEnumCaseMultiPayload();
    if (v43 == 2)
    {
      goto LABEL_232;
    }

    if (v43 != 1)
    {
      if (v43)
      {
        goto LABEL_55;
      }

      v44 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v44 - 8) + 48))(v34, 1, v44))
      {
        goto LABEL_55;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 2)
      {
        if (v45 != 3)
        {
          if (v45 == 4)
          {
            v156 = sub_24F9289E8();
            (*(*(v156 - 8) + 8))(v34, v156);
            goto LABEL_55;
          }

          if (v45 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_232;
      }

      if (v45)
      {
        if (v45 == 1)
        {
          v154 = sub_24F9289E8();
          v155 = *(v154 - 8);
          if (!(*(v155 + 48))(v34, 1, v154))
          {
            (*(v155 + 8))(v34, v154);
          }

          if (!*(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v45 != 2)
        {
          goto LABEL_55;
        }

LABEL_232:

        goto LABEL_55;
      }

      v144 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
LABEL_277:
      v150 = v34 + v144;
      v151 = type metadata accessor for JSColor(0);
      if (!(*(*(v151 - 8) + 48))(v150, 1, v151))
      {
        v152 = sub_24F928388();
        (*(*(v152 - 8) + 8))(v150, v152);
      }

      goto LABEL_55;
    }

    v77 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v78 = *(*(v77 - 8) + 48);
    if (v78(v34, 1, v77))
    {
LABEL_141:
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v80 = v34 + *(v79 + 48);
      v81 = v78(v80, 1, v77);
      v6 = v159;
      if (!v81)
      {
        v82 = swift_getEnumCaseMultiPayload();
        if (v82 <= 2)
        {
          switch(v82)
          {
            case 0:

              v138 = v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
              v139 = type metadata accessor for JSColor(0);
              if (!(*(*(v139 - 8) + 48))(v138, 1, v139))
              {
                v140 = sub_24F928388();
                (*(*(v140 - 8) + 8))(v138, v140);
              }

              goto LABEL_276;
            case 1:
              v145 = sub_24F9289E8();
              v146 = *(v145 - 8);
              if (!(*(v146 + 48))(v80, 1, v145))
              {
                (*(v146 + 8))(v80, v145);
              }

              v6 = v159;
              if (!*(v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
              {
                goto LABEL_276;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_276;
          }

LABEL_270:

          goto LABEL_276;
        }

        switch(v82)
        {
          case 3:
            goto LABEL_270;
          case 4:
            v149 = sub_24F9289E8();
            (*(*(v149 - 8) + 8))(v80, v149);
            break;
          case 5:
            goto LABEL_270;
        }
      }

LABEL_276:
      v144 = *(v79 + 80);
      goto LABEL_277;
    }

    v101 = swift_getEnumCaseMultiPayload();
    if (v101 > 2)
    {
      if (v101 != 3)
      {
        if (v101 == 4)
        {
          v153 = sub_24F9289E8();
          (*(*(v153 - 8) + 8))(v34, v153);
          goto LABEL_141;
        }

        if (v101 != 5)
        {
          goto LABEL_141;
        }
      }
    }

    else
    {
      if (!v101)
      {

        v141 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v142 = type metadata accessor for JSColor(0);
        if (!(*(*(v142 - 8) + 48))(v141, 1, v142))
        {
          v143 = sub_24F928388();
          (*(*(v143 - 8) + 8))(v141, v143);
        }

        goto LABEL_141;
      }

      if (v101 == 1)
      {
        v147 = sub_24F9289E8();
        v148 = *(v147 - 8);
        if (!(*(v148 + 48))(v34, 1, v147))
        {
          (*(v148 + 8))(v34, v147);
        }

        if (*(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_141;
      }

      if (v101 != 2)
      {
        goto LABEL_141;
      }
    }

    goto LABEL_141;
  }

LABEL_55:
  v36 = v0 + v6;
  v37 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v38 = *(*(v37 - 1) + 48);
  if (v38(v0 + v6, 1, v37))
  {
    goto LABEL_77;
  }

  v39 = v36 + v37[5];
  v40 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    goto LABEL_57;
  }

  v46 = swift_getEnumCaseMultiPayload();
  if (v46 <= 2)
  {
    if (!v46)
    {

      v84 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v85 = type metadata accessor for JSColor(0);
      if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
      {
        v86 = sub_24F928388();
        (*(*(v86 - 8) + 8))(v84, v86);
      }

      goto LABEL_57;
    }

    if (v46 == 1)
    {
      v93 = sub_24F9289E8();
      v94 = *(v93 - 8);
      if (!(*(v94 + 48))(v39, 1, v93))
      {
        (*(v94 + 8))(v39, v93);
      }

      if (*(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_57;
    }

    if (v46 != 2)
    {
      goto LABEL_57;
    }

LABEL_90:

    goto LABEL_57;
  }

  switch(v46)
  {
    case 3:
      goto LABEL_90;
    case 4:
      v96 = sub_24F9289E8();
      (*(*(v96 - 8) + 8))(v39, v96);
      break;
    case 5:
      goto LABEL_90;
  }

LABEL_57:
  v41 = v36 + v37[7];
  v42 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v47 = sub_24F928388();
      (*(*(v47 - 8) + 8))(v41, v47);
    }
  }

  v48 = (v36 + v37[10]);
  if (v48[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

LABEL_77:
  v49 = v36 + v4[5];
  if (v38(v49, 1, v37))
  {
    goto LABEL_94;
  }

  v50 = v49 + v37[5];
  v51 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v51 - 8) + 48))(v50, 1, v51))
  {
    goto LABEL_79;
  }

  v54 = swift_getEnumCaseMultiPayload();
  if (v54 <= 2)
  {
    if (!v54)
    {

      v87 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v88 = type metadata accessor for JSColor(0);
      if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
      {
        v89 = sub_24F928388();
        (*(*(v89 - 8) + 8))(v87, v89);
      }

      goto LABEL_79;
    }

    if (v54 == 1)
    {
      v95 = sub_24F9289E8();
      v157 = *(v95 - 8);
      if (!(*(v157 + 48))(v50, 1, v95))
      {
        (*(v157 + 8))(v50, v95);
      }

      if (*(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_79;
    }

    if (v54 != 2)
    {
      goto LABEL_79;
    }

LABEL_107:

    goto LABEL_79;
  }

  switch(v54)
  {
    case 3:
      goto LABEL_107;
    case 4:
      v99 = sub_24F9289E8();
      (*(*(v99 - 8) + 8))(v50, v99);
      break;
    case 5:
      goto LABEL_107;
  }

LABEL_79:
  v52 = v49 + v37[7];
  v53 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v53 - 8) + 48))(v52, 1, v53))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v55 = sub_24F928388();
      (*(*(v55 - 8) + 8))(v52, v55);
    }
  }

  v56 = (v49 + v37[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

LABEL_94:
  v57 = v36 + v4[6];
  if (v38(v57, 1, v37))
  {
    goto LABEL_111;
  }

  v58 = v57 + v37[5];
  v59 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v59 - 8) + 48))(v58, 1, v59))
  {
    goto LABEL_96;
  }

  v62 = swift_getEnumCaseMultiPayload();
  if (v62 <= 2)
  {
    if (!v62)
    {

      v90 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v91 = type metadata accessor for JSColor(0);
      if (!(*(*(v91 - 8) + 48))(v90, 1, v91))
      {
        v92 = sub_24F928388();
        (*(*(v92 - 8) + 8))(v90, v92);
      }

      goto LABEL_96;
    }

    if (v62 == 1)
    {
      v97 = sub_24F9289E8();
      v98 = *(v97 - 8);
      if (!(*(v98 + 48))(v58, 1, v97))
      {
        (*(v98 + 8))(v58, v97);
      }

      if (*(v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_96;
    }

    if (v62 != 2)
    {
      goto LABEL_96;
    }

LABEL_139:

    goto LABEL_96;
  }

  switch(v62)
  {
    case 3:
      goto LABEL_139;
    case 4:
      v100 = sub_24F9289E8();
      (*(*(v100 - 8) + 8))(v58, v100);
      break;
    case 5:
      goto LABEL_139;
  }

LABEL_96:
  v60 = v57 + v37[7];
  v61 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v61 - 8) + 48))(v60, 1, v61))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v63 = sub_24F928388();
      (*(*(v63 - 8) + 8))(v60, v63);
    }
  }

  v64 = (v57 + v37[10]);
  if (v64[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

LABEL_111:
  v65 = v36 + v4[7];
  if (*(v65 + 56) == 1)
  {
  }

  else if (!*(v65 + 56))
  {

    if (*(v65 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v65 + 16));
    }
  }

  v66 = v36 + v4[8];
  v67 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
  {
    v69 = swift_getEnumCaseMultiPayload();
    if (v69 == 2)
    {
      goto LABEL_191;
    }

    if (v69 != 1)
    {
      if (v69)
      {
        goto LABEL_117;
      }

      v70 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v70 - 8) + 48))(v66, 1, v70))
      {
        goto LABEL_117;
      }

      v71 = swift_getEnumCaseMultiPayload();
      if (v71 > 2)
      {
        if (v71 != 3)
        {
          if (v71 == 4)
          {
            v137 = sub_24F9289E8();
            (*(*(v137 - 8) + 8))(v66, v137);
            goto LABEL_117;
          }

          if (v71 != 5)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_191;
      }

      if (v71)
      {
        if (v71 == 1)
        {
          v135 = sub_24F9289E8();
          v136 = *(v135 - 8);
          if (!(*(v136 + 48))(v66, 1, v135))
          {
            (*(v136 + 8))(v66, v135);
          }

          if (!*(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_117;
          }
        }

        else if (v71 != 2)
        {
          goto LABEL_117;
        }

LABEL_191:

        goto LABEL_117;
      }

      v125 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
LABEL_251:
      v131 = v66 + v125;
      v132 = type metadata accessor for JSColor(0);
      if (!(*(*(v132 - 8) + 48))(v131, 1, v132))
      {
        v133 = sub_24F928388();
        (*(*(v133 - 8) + 8))(v131, v133);
      }

      goto LABEL_117;
    }

    v72 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v73 = *(*(v72 - 8) + 48);
    if (v73(v66, 1, v72))
    {
LABEL_130:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v75 = v66 + *(v74 + 48);
      if (!v73(v75, 1, v72))
      {
        v76 = swift_getEnumCaseMultiPayload();
        if (v76 <= 2)
        {
          switch(v76)
          {
            case 0:

              v119 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
              v120 = type metadata accessor for JSColor(0);
              if (!(*(*(v120 - 8) + 48))(v119, 1, v120))
              {
                v121 = sub_24F928388();
                (*(*(v121 - 8) + 8))(v119, v121);
              }

              goto LABEL_250;
            case 1:
              v126 = sub_24F9289E8();
              v127 = *(v126 - 8);
              if (!(*(v127 + 48))(v75, 1, v126))
              {
                (*(v127 + 8))(v75, v126);
              }

              if (!*(v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
              {
                goto LABEL_250;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_250;
          }

LABEL_244:

          goto LABEL_250;
        }

        switch(v76)
        {
          case 3:
            goto LABEL_244;
          case 4:
            v130 = sub_24F9289E8();
            (*(*(v130 - 8) + 8))(v75, v130);
            break;
          case 5:
            goto LABEL_244;
        }
      }

LABEL_250:
      v125 = *(v74 + 80);
      goto LABEL_251;
    }

    v83 = swift_getEnumCaseMultiPayload();
    if (v83 > 2)
    {
      if (v83 != 3)
      {
        if (v83 == 4)
        {
          v134 = sub_24F9289E8();
          (*(*(v134 - 8) + 8))(v66, v134);
          goto LABEL_130;
        }

        if (v83 != 5)
        {
          goto LABEL_130;
        }
      }
    }

    else
    {
      if (!v83)
      {

        v122 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v123 = type metadata accessor for JSColor(0);
        if (!(*(*(v123 - 8) + 48))(v122, 1, v123))
        {
          v124 = sub_24F928388();
          (*(*(v124 - 8) + 8))(v122, v124);
        }

        goto LABEL_130;
      }

      if (v83 == 1)
      {
        v128 = sub_24F9289E8();
        v129 = *(v128 - 8);
        if (!(*(v129 + 48))(v66, 1, v128))
        {
          (*(v129 + 8))(v66, v128);
        }

        if (*(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_130;
      }

      if (v83 != 2)
      {
        goto LABEL_130;
      }
    }

    goto LABEL_130;
  }

LABEL_117:

  return swift_deallocObject();
}

uint64_t sub_24F29DCF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DefaultPageHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for HeaderPresentation(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24F29A83C(v7, a1);
}

uint64_t sub_24F29DDC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F29DE30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F29DE78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB58, &unk_24F9DD960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F29DEE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DB58, &unk_24F9DD960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F29DF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F29DFB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F29E01C()
{
  result = qword_27F23DBA8;
  if (!qword_27F23DBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DBB0, &qword_24F9DDA38);
    sub_24F29E0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DBA8);
  }

  return result;
}

unint64_t sub_24F29E0A0()
{
  result = qword_27F23DBB8;
  if (!qword_27F23DBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DB60, &unk_24F9DD970);
    sub_24F29B2B0();
    sub_24F29B508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DBB8);
  }

  return result;
}

uint64_t sub_24F29E12C()
{
  type metadata accessor for GenericPage(0);
  sub_24F29F9D0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v3 == 255)
  {
    return 0;
  }

  if (v3)
  {
    v0 = 0;
  }

  else
  {
    v0 = *&v2[OBJC_IVAR____TtC12GameStoreKit11GenericPage_title];
  }

  sub_24E683B84(v2, v3);
  return v0;
}

uint64_t sub_24F29E2B0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v3;
}

double sub_24F29E320(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24F9230A8();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24F9230A8();
    *(v1 + *(*v1 + 200)) = 0;
  }

  else
  {
    sub_24F29EDB0(*a1, v1[13], v1);
    *(v1 + *(*v1 + 200)) = *&v2[OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction];
  }

  return sub_24F404120(v2, v3, v4, v5);
}

double sub_24F29E498()
{
  v1 = qword_27F23DBC0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C660, &unk_24F9DDBA0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_27F23DBC8, v2);
  v4 = qword_27F23DBD0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C658, &qword_24F9909F0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + qword_27F23DBD8, v5);

  return result;
}

uint64_t sub_24F29E5C8()
{
  v0 = sub_24F404544();
  v1 = qword_27F23DBC0;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C660, &unk_24F9DDBA0);
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[v1], v2);
  v3(&v0[qword_27F23DBC8], v2);
  v4 = qword_27F23DBD0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C658, &qword_24F9909F0);
  v6 = *(*(v5 - 8) + 8);
  v6(&v0[v4], v5);
  v6(&v0[qword_27F23DBD8], v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GenericPageViewModel(uint64_t a1)
{
  result = qword_27F23DBE0;
  if (!qword_27F23DBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F29E790(uint64_t a1)
{
  sub_24EEFCB4C(319, &qword_27F23DBF0, &qword_27F22C668, &unk_24F9909F8);
  if (v1 <= 0x3F)
  {
    sub_24EEFCB4C(319, &qword_27F23DBF8, &qword_27F215390, &qword_24F93FC50);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_24F29E8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v5;
}

uint64_t sub_24F29E954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F29E9E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F29EA68(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

void sub_24F29EAE0(uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a4 = v5;
  *(a4 + 8) = v6;
}

uint64_t sub_24F29EB8C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

double sub_24F29ED24(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t, _UNKNOWN **))
{
  v4 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = type metadata accessor for GenericPageViewModel(0);
    a3(v4, 0, v6, &off_286215270);
  }

  return result;
}

double sub_24F29EDB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v25 = a2;
  v6 = *a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC00, &qword_24F9DDBB0);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v26 = &v24 - v8;
  v9 = sub_24F923F78();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 104);
  v14(v13, *MEMORY[0x277CDFA88], v9, v11);
  v15 = sub_24F29F21C(a1, v13, a2);
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_24F29E8A8(v15, v6, &off_286215270);
  (v14)(v13, *MEMORY[0x277CDFA90], v9);
  v17 = sub_24F29F21C(a1, v13, v25);
  v16(v13, v9);
  sub_24F29E940(v17, v6, &off_286215270);
  if (sub_24F29E894(v6, &off_286215270))
  {

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC08, &qword_24FA2B330);
    v18 = v26;
    sub_24F923068();
    swift_endAccess();

    swift_allocObject();
    swift_weakInit();
    sub_24F29F914();
    v19 = v28;
    v20 = sub_24F923148();

    v21 = v27;
    (*(v27 + 8))(v18, v19);
  }

  else
  {
    v20 = 0;
    v21 = v27;
    v19 = v28;
    v18 = v26;
  }

  *(a3 + qword_27F39E160) = v20;

  if (sub_24F29E8BC(v6, &off_286215270))
  {

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC08, &qword_24FA2B330);
    sub_24F923068();
    swift_endAccess();

    swift_allocObject();
    swift_weakInit();
    sub_24F29F914();
    v22 = sub_24F923148();

    (*(v21 + 8))(v18, v19);
  }

  else
  {
    v22 = 0;
  }

  *(a3 + qword_27F39E168) = v22;

  return result;
}

void *sub_24F29F21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v41 = a2;
  v40 = sub_24F923F78();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v44 = v5;
  v6 = *(a1 + v5);
  v7 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    v12 = v7;
    goto LABEL_14;
  }

  v10 = 0;
  v11 = v6 + 32;
  v37 = v8 - 1;
  v12 = MEMORY[0x277D84F90];
  v38 = v6 + 32;
  do
  {
    v13 = v11 + 40 * v10;
    v14 = v10;
    while (1)
    {
      if (v14 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_24E65864C(v13, v45);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v14;
      sub_24E6585F8(v45);
      v13 += 40;
      if (v8 == v14)
      {
        goto LABEL_14;
      }
    }

    sub_24E76D934(v45);
    if ((v15 & 1) == 0)
    {

      goto LABEL_4;
    }

    v16 = sub_24E6585F8(v45);
    MEMORY[0x253050F00](v16);
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v10 = v14 + 1;
    sub_24F92B638();
    v12 = v46;
    v11 = v38;
  }

  while (v37 != v14);
LABEL_14:

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_24:
  if (!sub_24F92C738())
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x253052270](0, v12);
    goto LABEL_19;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_56;
  }

  v17 = *(v12 + 32);

LABEL_19:

  v18 = *(v17 + 24);

  if (!*(v18 + 16))
  {
    goto LABEL_25;
  }

  sub_24E615E00(v18 + 32, v47);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  type metadata accessor for HeroCarousel(0);
  if (swift_dynamicCast())
  {
    v19 = v45[0];
    v20 = v42;
    (*(v39 + 16))(v42, v41, v40);
    type metadata accessor for HeroCarouselViewModel();
    swift_allocObject();
    v21 = v43;

    return sub_24ECB8008(v19, v20, v21);
  }

LABEL_26:
  v23 = *(a1 + v44);
  v46 = v7;
  v24 = *(v23 + 16);

  swift_beginAccess();
  if (!v24)
  {
    goto LABEL_37;
  }

  v25 = 0;
  v44 = v24 - 1;
  v7 = MEMORY[0x277D84F90];
  while (2)
  {
    v26 = v23 + 32 + 40 * v25;
    v27 = v25;
    while (2)
    {
      if (v27 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      sub_24E65864C(v26, v47);
      if (!*(*(a1 + v9) + 16))
      {
LABEL_30:
        ++v27;
        sub_24E6585F8(v47);
        v26 += 40;
        if (v24 == v27)
        {
          goto LABEL_37;
        }

        continue;
      }

      break;
    }

    sub_24E76D934(v47);
    if ((v28 & 1) == 0)
    {

      goto LABEL_30;
    }

    v29 = sub_24E6585F8(v47);
    MEMORY[0x253050F00](v29);
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v25 = v27 + 1;
    sub_24F92B638();
    v7 = v46;
    if (v44 != v27)
    {
      continue;
    }

    break;
  }

LABEL_37:

  if (v7 >> 62)
  {
LABEL_51:
    result = sub_24F92C738();
    if (!result)
    {
      goto LABEL_52;
    }

LABEL_39:
    if ((v7 & 0xC000000000000001) == 0)
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v30 = *(v7 + 32);

LABEL_42:

      v47[0] = *(v30 + 16);
      if (Shelf.ContentType.rawValue.getter() == 0x72426C6C65737075 && v31 == 0xEE0074756F6B6165)
      {
      }

      else
      {
        v32 = sub_24F92CE08();

        if ((v32 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      v33 = *(v30 + 24);
      if (*(v33 + 16))
      {
        sub_24E615E00(v33 + 32, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
        type metadata accessor for UpsellBreakout(0);
        if (swift_dynamicCast())
        {
          v34 = v46;
          type metadata accessor for HeroCarouselViewModel();
          swift_allocObject();
          v35 = v43;

          v36 = sub_24ECB8660(v34, v35);

          return v36;
        }
      }

LABEL_49:

      return 0;
    }

LABEL_56:
    v30 = MEMORY[0x253052270](0, v7);
    goto LABEL_42;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_39;
  }

LABEL_52:

  return 0;
}

uint64_t sub_24F29F8AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_24F29F914()
{
  result = qword_27F23DC10;
  if (!qword_27F23DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DC00, &qword_24F9DDBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DC10);
  }

  return result;
}

__n128 sub_24F29F9BC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

unint64_t sub_24F29F9D0()
{
  result = qword_27F235598;
  if (!qword_27F235598)
  {
    type metadata accessor for GenericPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235598);
  }

  return result;
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3)
{
  [a2 displayScale];
  if (v6 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v7 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  return CGFloat.rounded(_:toScale:)(a1, v7, a3);
}

{
  v5 = [a2 traitCollection];
  [v5 displayScale];
  if (v6 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v7 = *&qword_27F23DC18;
  }

  else
  {
    [v5 displayScale];
  }

  v8 = CGFloat.rounded(_:toScale:)(a1, v7, a3);

  return v8;
}

double CGFloat.rounded(_:toScale:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 * a3;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6, v8);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x277D84668])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_24F92BA48();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 / a2;
}

void sub_24F29FDA8()
{
  v9 = 0x3FF0000000000000;
  if ([objc_opt_self() isMainThread])
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 nativeScale];
    v2 = v1;

    v3 = 0;
    v4 = 0;
    v9 = v2;
LABEL_5:
    sub_24E824448(v3, v4);
    return;
  }

  sub_24E74EC40();
  v5 = sub_24F92BEF8();
  v4 = swift_allocObject();
  *(v4 + 16) = &v9;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24F2A000C;
  *(v6 + 24) = v4;
  aBlock[4] = sub_24E972460;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_134;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    v3 = sub_24F2A000C;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_24F29FF98(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 nativeScale];
  v4 = v3;

  *a1 = v4;
}

uint64_t block_copy_helper_134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

GameStoreKit::InformationRibbon::Alignment_optional __swiftcall InformationRibbon.Alignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

  *v2 = v5;
  return result;
}

uint64_t InformationRibbon.Alignment.rawValue.getter()
{
  if (*v0)
  {
    return 0x656966697473756ALL;
  }

  else
  {
    return 0x7265746E6563;
  }
}

uint64_t sub_24F2A00DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656966697473756ALL;
  }

  else
  {
    v3 = 0x7265746E6563;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x656966697473756ALL;
  }

  else
  {
    v5 = 0x7265746E6563;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F2A0184()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2A0208(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F2A0278()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2A02F8@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24F2A0358(uint64_t *a1@<X8>)
{
  v2 = 0x7265746E6563;
  if (*v1)
  {
    v2 = 0x656966697473756ALL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t InformationRibbon.__allocating_init(id:badges:hasTopSeparator:hasBottomSeparator:separatorsAreFullWidth:alignment:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, int a4, int a5, char *a6, uint64_t a7)
{
  v23 = a4;
  v24 = a5;
  v25 = a2;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *a6;
  sub_24E60169C(a1, &v28, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v29 + 1))
  {
    v17 = v29;
    *(v15 + 32) = v28;
    *(v15 + 48) = v17;
    *(v15 + 64) = v30;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v22 = a7;
    v20 = v19;
    (*(v12 + 8))(v14, v11);
    v26 = v18;
    v27 = v20;
    a7 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(a7, v15 + OBJC_IVAR____TtC12GameStoreKit17InformationRibbon_impressionMetrics);
  *(v15 + 16) = v25;
  *(v15 + 24) = a3 & 1;
  *(v15 + 25) = v23 & 1;
  *(v15 + 26) = v24 & 1;
  *(v15 + 27) = v16;
  return v15;
}

uint64_t InformationRibbon.init(id:badges:hasTopSeparator:hasBottomSeparator:separatorsAreFullWidth:alignment:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, int a4, int a5, char *a6, uint64_t a7)
{
  v8 = v7;
  v24 = a4;
  v25 = a5;
  v26 = a2;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a6;
  sub_24E60169C(a1, &v29, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v23 = a7;
    v20 = v19;
    (*(v14 + 8))(v16, v13);
    v27 = v18;
    v28 = v20;
    a7 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v21 = v33;
  *(v8 + 32) = v32;
  *(v8 + 48) = v21;
  *(v8 + 64) = v34;
  sub_24E65E0D4(a7, v8 + OBJC_IVAR____TtC12GameStoreKit17InformationRibbon_impressionMetrics);
  *(v8 + 16) = v26;
  *(v8 + 24) = a3 & 1;
  *(v8 + 25) = v24 & 1;
  *(v8 + 26) = v25 & 1;
  *(v8 + 27) = v17;
  return v8;
}

uint64_t InformationRibbon.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v64 = sub_24F91F6B8();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_24F9285B8();
  v5 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v85 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v60[-v8];
  v10 = sub_24F928388();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x28223BE20](v10);
  v68 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v67 = &v60[-v13];
  MEMORY[0x28223BE20](v14);
  v66 = &v60[-v15];
  MEMORY[0x28223BE20](v16);
  v65 = &v60[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v60[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v21 - 8);
  v69 = &v60[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v60[-v24];
  sub_24F929608();
  sub_24F928398();
  v76 = v5;
  v26 = *(v5 + 16);
  v70 = v9;
  v27 = v9;
  v28 = v71;
  v26(v27, a2, v71);
  v78 = v25;
  sub_24F929548();
  v29 = v85;
  v75 = a2;
  v26(v85, a2, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214490, &qword_24F93CD40);
  v77 = a1;
  sub_24F928398();
  v26(v70, v29, v28);
  sub_24E62B34C();
  v30 = v20;
  sub_24F929548();
  if (*v84)
  {
    v70 = *v84;
    v31 = v28;
    v32 = v65;
    sub_24F928398();
    v61 = sub_24F928278();
    v33 = *(v72 + 8);
    v34 = v32;
    v35 = v73;
    v33(v34, v73);
    v36 = v66;
    sub_24F928398();
    LODWORD(v72) = sub_24F928278();
    v33(v36, v35);
    v37 = v67;
    sub_24F928398();
    LODWORD(v66) = sub_24F928278();
    v33(v37, v35);
    sub_24F928398();
    sub_24F2A1138();
    sub_24F928208();
    v33(v30, v35);
    LODWORD(v67) = v84[0];
    v38 = v68;
    sub_24F928398();
    v39 = sub_24F928348();
    if (v40)
    {
      *&v81 = v39;
      *(&v81 + 1) = v40;
    }

    else
    {
      v44 = v62;
      sub_24F91F6A8();
      v45 = sub_24F91F668();
      v47 = v46;
      (*(v63 + 8))(v44, v64);
      *&v81 = v45;
      *(&v81 + 1) = v47;
    }

    sub_24F92C7F8();
    v48 = v38;
    v49 = v35;
    v33(v48, v35);
    v51 = v75;
    v50 = v76;
    v52 = v69;
    sub_24E60169C(v78, v69, &qword_27F213E68, &unk_24F93BC80);
    v43 = swift_allocObject();
    sub_24E60169C(v84, &v81, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v82 + 1))
    {
      v53 = v82;
      *(v43 + 32) = v81;
      *(v43 + 48) = v53;
      *(v43 + 64) = v83;
    }

    else
    {
      v54 = v62;
      sub_24F91F6A8();
      v55 = sub_24F91F668();
      v57 = v56;
      (*(v63 + 8))(v54, v64);
      v79 = v55;
      v80 = v57;
      v52 = v69;
      v50 = v76;
      sub_24F92C7F8();
      sub_24E601704(&v81, &qword_27F235830, &qword_24F93B8C0);
    }

    v58 = *(v50 + 8);
    v58(v51, v31);
    v33(v77, v49);
    sub_24E601704(v84, &qword_27F235830, &qword_24F93B8C0);
    v58(v85, v31);
    sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
    sub_24E65E0D4(v52, v43 + OBJC_IVAR____TtC12GameStoreKit17InformationRibbon_impressionMetrics);
    *(v43 + 16) = v70;
    *(v43 + 24) = v61 & 1;
    *(v43 + 25) = v72 & 1;
    *(v43 + 26) = v66 & 1;
    *(v43 + 27) = v67;
  }

  else
  {
    v41 = sub_24F92AC38();
    sub_24F2A12F8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v42 = 0x736567646162;
    v42[1] = 0xE600000000000000;
    v42[2] = v74;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D22530], v41);
    swift_willThrow();
    v43 = *(v76 + 8);
    (v43)(v75, v28);
    (*(v72 + 8))(v77, v73);
    (v43)(v85, v28);
    sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
  }

  return v43;
}

unint64_t sub_24F2A1138()
{
  result = qword_27F23DC20;
  if (!qword_27F23DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DC20);
  }

  return result;
}

uint64_t InformationRibbon.deinit()
{

  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17InformationRibbon_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t InformationRibbon.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17InformationRibbon_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

unint64_t sub_24F2A125C()
{
  result = qword_27F23DC28;
  if (!qword_27F23DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DC28);
  }

  return result;
}

uint64_t sub_24F2A12F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for InformationRibbon(uint64_t a1)
{
  result = qword_27F23DC38;
  if (!qword_27F23DC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2A138C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = InformationRibbon.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24F2A13FC(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ArtworkLoaderConfig.__allocating_init(template:size:scale:crop:format:quality:useWideGamut:)(uint64_t *a1, uint64_t *a2, char *a3, uint64_t a4, char a5, char a6, double a7, double a8, double a9)
{
  v10 = v9;
  v20 = swift_allocObject();
  v21 = *a1;
  v22 = a1[1];
  v23 = *a2;
  v24 = a2[1];
  v25 = *a3;
  *(v20 + 16) = *a1;
  *(v20 + 24) = v22;
  *(v20 + 32) = a7;
  *(v20 + 40) = a8;
  *(v20 + 72) = v25;
  *(v20 + 48) = v23;
  *(v20 + 56) = v24;
  *(v20 + 64) = a9;
  *(v20 + 80) = a4;
  *(v20 + 88) = a5 & 1;
  *(v20 + 89) = a6;
  v28[0] = v21;
  v28[1] = v22;
  if (!Artwork.URLTemplate.isSystemImage.getter() && (a7 <= 0.0 || a8 <= 0.0))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    __swift_project_value_buffer(v26, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v28[3] = v10;
    v28[0] = v20;

    sub_24F928458();
    sub_24E601704(v28, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();
  }

  return v20;
}

double ArtworkLoaderConfig.template.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

double ArtworkLoaderConfig.crop.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

uint64_t ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)(uint64_t *a1, uint64_t *a2, char *a3, uint64_t a4, char a5, char a6, double a7, double a8, double a9)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = *a2;
  v15 = a2[1];
  v16 = *a3;
  *(v9 + 16) = *a1;
  *(v9 + 24) = v13;
  *(v9 + 32) = a7;
  *(v9 + 40) = a8;
  *(v9 + 72) = v16;
  *(v9 + 48) = v14;
  *(v9 + 56) = v15;
  *(v9 + 64) = a9;
  *(v9 + 80) = a4;
  *(v9 + 88) = a5 & 1;
  *(v9 + 89) = a6;
  v19[0] = v12;
  v19[1] = v13;
  if (!Artwork.URLTemplate.isSystemImage.getter() && (a7 <= 0.0 || a8 <= 0.0))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v17 = sub_24F92AAE8();
    __swift_project_value_buffer(v17, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v19[3] = type metadata accessor for ArtworkLoaderConfig();
    v19[0] = v9;

    sub_24F928458();
    sub_24E601704(v19, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5B8();
  }

  return v9;
}

void sub_24F2A197C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32) * v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC48, &qword_24F9DDE20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = inited;
  v6 = v1 * v2;
  *(inited + 40) = sub_24F92CD88();
  *(v5 + 48) = v7;
  *(v5 + 56) = 1;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v6 < 9.22337204e18)
  {
    *(v5 + 64) = sub_24F92CD88();
    *(v5 + 72) = v8;
    *(v5 + 80) = 2;
    *(v5 + 88) = sub_24F2A2258();
    *(v5 + 96) = v9;
    *(v5 + 104) = 3;
    if (*(v0 + 72) > 1u)
    {
      if (*(v0 + 72) == 2)
      {
        v10 = 0xE400000000000000;
        v11 = 1667851624;
      }

      else
      {
        v10 = 0xE300000000000000;
        v11 = 7496556;
      }
    }

    else if (*(v0 + 72))
    {
      v10 = 0xE400000000000000;
      v11 = 1734701162;
    }

    else
    {
      v10 = 0xE300000000000000;
      v11 = 6778480;
    }

    *(v5 + 112) = v11;
    *(v5 + 120) = v10;
    v12 = sub_24E60B4B0(v5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC50, &qword_24F9DDE28);
    swift_arrayDestroy();
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    if (v15)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        sub_24F91F488();

        return;
      }

      v15 = *(v12 + 64 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        do
        {
LABEL_22:
          v15 &= v15 - 1;
          sub_24E600AEC();

          sub_24F92C568();
        }

        while (v15);
        continue;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
}

void sub_24F2A1CF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC48, &qword_24F9DDE20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 2;
  *(inited + 40) = sub_24F2A2258();
  *(inited + 48) = v2;
  *(inited + 56) = 3;
  if (*(v0 + 72) > 1u)
  {
    if (*(v0 + 72) == 2)
    {
      v3 = 0xE400000000000000;
      v4 = 1667851624;
    }

    else
    {
      v3 = 0xE300000000000000;
      v4 = 7496556;
    }
  }

  else if (*(v0 + 72))
  {
    v3 = 0xE400000000000000;
    v4 = 1734701162;
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 6778480;
  }

  *(inited + 64) = v4;
  *(inited + 72) = v3;
  v5 = sub_24E60B4B0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC50, &qword_24F9DDE28);
  swift_arrayDestroy();
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      sub_24F92B098();

      return;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      do
      {
LABEL_16:
        v8 &= v8 - 1;
        sub_24E600AEC();

        sub_24F92C568();
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_24F2A1F6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F2A197C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24E601704(v3, &qword_27F228530, &unk_24F93C6E0);
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v8 = sub_24F92AAE8();
    __swift_project_value_buffer(v8, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v11[3] = type metadata accessor for ArtworkLoaderConfig();
    v11[0] = v0;

    sub_24F9283B8();
    sub_24E601704(v11, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    return sub_24F92B098();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = sub_24F91F3B8();
    (*(v5 + 8))(v7, v4);
    return v10;
  }
}

uint64_t sub_24F2A2258()
{
  if (*(v0 + 88) != 1)
  {
    v4 = *(v0 + 48);

    v1 = sub_24F92CD88();
    MEMORY[0x253050C20](v1);

    MEMORY[0x253050C20](45, 0xE100000000000000);

    if (*(v0 + 89) != 1)
    {
      return v4;
    }

LABEL_5:
    MEMORY[0x253050C20](3362861, 0xE300000000000000);
    return v4;
  }

  if (*(v0 + 89) == 1)
  {
    v4 = *(v0 + 48);

    goto LABEL_5;
  }

  v3 = *(v0 + 48);

  return v3;
}

BOOL sub_24F2A234C()
{
  if (Artwork.URLTemplate.isSystemImage.getter())
  {
    return 1;
  }

  if (*(v0 + 32) <= 0.0)
  {
    return 0;
  }

  return *(v0 + 40) > 0.0;
}

uint64_t sub_24F2A23D8()
{
  v1 = *(v0 + 32);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = *(v0 + 40);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2;
  v4 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = v3 + v6 / 2;
  if (__OFADD__(v3, v6 / 2))
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_24F2A24AC(uint64_t a1)
{
  v1 = sub_24F92BA38();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](120, 0xE100000000000000);
  v2 = sub_24F92BA38();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](64, 0xE100000000000000);
  v3 = sub_24F92BA38();
  MEMORY[0x253050C20](v3);

  MEMORY[0x253050C20](14968, 0xE200000000000000);
  sub_24F92CA38();
  return 0;
}

unint64_t sub_24F2A2598()
{
  MEMORY[0x253050C20](0x6574616C706D6574, 0xEA0000000000203ALL);
  sub_24F92CA38();
  MEMORY[0x253050C20](8236, 0xE200000000000000);
  MEMORY[0x253050C20](0, 0xE000000000000000);

  MEMORY[0x253050C20](0x203A657A6973, 0xE600000000000000);
  type metadata accessor for CGSize(0);
  sub_24F92CA38();
  MEMORY[0x253050C20](8236, 0xE200000000000000);

  MEMORY[0x253050C20](0, 0xE000000000000000);

  v0 = sub_24F92BA38();
  MEMORY[0x253050C20](v0);

  MEMORY[0x253050C20](8236, 0xE200000000000000);

  MEMORY[0x253050C20](0x203A656C616373, 0xE700000000000000);

  MEMORY[0x253050C20](0x203A74616D726F66, 0xE800000000000000);
  sub_24F92CA38();
  MEMORY[0x253050C20](8236, 0xE200000000000000);

  MEMORY[0x253050C20](0, 0xE000000000000000);

  MEMORY[0x253050C20](0x203A706F7263, 0xE600000000000000);
  sub_24F92CA38();

  MEMORY[0x253050C20](0, 0xE000000000000000);

  MEMORY[0x253050C20](41, 0xE100000000000000);

  return 0xD000000000000014;
}

uint64_t ArtworkLoaderConfig.deinit()
{

  return v0;
}

uint64_t ArtworkLoaderConfig.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F2A299C()
{
  sub_24F92D068();
  v0 = sub_24F2A23D8();
  MEMORY[0x253052A00](v0);
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit19ArtworkLoaderConfigC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (sub_24F0C96A0(*(a1 + 72), *(a2 + 72)))
  {
    v6 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
    if (v6 || (sub_24F92CE08()) && *(a1 + 64) == *(a2 + 64) && (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_24F92CE08()))
    {
      v7 = *(a2 + 88);
      if (*(a1 + 88))
      {
        if (!*(a2 + 88))
        {
          return v7 & 1;
        }

        goto LABEL_24;
      }

      if (*(a1 + 80) != *(a2 + 80))
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
LABEL_24:
        v7 = *(a1 + 89) ^ *(a2 + 89) ^ 1;
        return v7 & 1;
      }
    }
  }

  v7 = 0;
  return v7 & 1;
}

unint64_t sub_24F2A2B18()
{
  result = qword_27F23DC58;
  if (!qword_27F23DC58)
  {
    type metadata accessor for ArtworkLoaderConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DC58);
  }

  return result;
}

uint64_t ProductStarRatings.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v20);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
  return v25;
}

uint64_t ProductStarRatings.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v27 - v20;
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v21);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
  return v25;
}

uint64_t ProductStarRatings.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t ProductStarRatings.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductStarRatings(uint64_t a1)
{
  result = qword_27F23DC60;
  if (!qword_27F23DC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24F2A3210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC78, &qword_24F9DE078);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 multiplayerServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24F2A4C08;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_135;
  v10 = _Block_copy(aBlock);

  [v7 getMultiPlayerGroups_];
  _Block_release(v10);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24F2A3404(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC78, &qword_24F9DE078);
    return sub_24F92B788();
  }

  else
  {
    if (a1)
    {
      sub_24F2A4CAC();
      sub_24F92B598();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC78, &qword_24F9DE078);
    return sub_24F92B798();
  }
}

uint64_t sub_24F2A34C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24E67D244;

  return sub_24F2A356C(a3);
}

uint64_t sub_24F2A356C(uint64_t a1)
{
  v1[11] = a1;
  v1[12] = *(type metadata accessor for Player(0) - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = sub_24F9288E8();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_24F91F648();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2A3778, 0, 0);
}

uint64_t sub_24F2A3778()
{
  *(v0 + 216) = sub_24F92B7F8();
  *(v0 + 224) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F2A3810, v2, v1);
}

uint64_t sub_24F2A3810()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 232) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24F2A3898, 0, 0);
}

uint64_t sub_24F2A3898(uint64_t a1)
{
  *(v1 + 240) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F2A3924, v3, v2);
}

uint64_t sub_24F2A3924()
{
  v1 = v0[29];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[31] = *v2;
  v0[32] = v2[1];

  v3 = swift_task_alloc();
  v0[33] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC70, &qword_24F9DE070);
  *v3 = v0;
  v3[1] = sub_24F2A3A9C;

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0x70756F7247746567, 0xEB00000000292873, sub_24F2A3210, 0, v4);
}

uint64_t sub_24F2A3A9C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {

    v2 = sub_24F2A3EB0;
  }

  else
  {
    v2 = sub_24F2A3BB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F2A3BB8(__n128 a1)
{
  v29 = v1;
  v2 = v1[7];
  v1[35] = v2;
  if (v2 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v1[36] = i;
    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x253052270](v5, v2, a1);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v1 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v7 participants];
      v28 = 0;
      sub_24F92B598();

      v10 = v4;
      v11 = v4;
      v12 = *(v4 + 16);
      v13 = *(v6 + 2);
      v14 = v13 + v12;
      if (__OFADD__(v13, v12))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v14 > *(v6 + 3) >> 1)
      {
        if (v13 <= v14)
        {
          v16 = v13 + v12;
        }

        else
        {
          v16 = v13;
        }

        v6 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v16, 1, v6);
      }

      v4 = v10;
      if (*(v11 + 16))
      {
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v12)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v6 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_37;
          }

          *(v6 + 2) = v19;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_35;
        }
      }

      ++v5;
      if (v1 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_25:
  v20 = sub_24F45D828(v6);

  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = sub_24EAE678C(*(v20 + 16), 0);
    v23 = sub_24EAE7C84(&v28, v22 + 4, v21, v20);
    sub_24E6586B4(v28);
    if (v23 == v21)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  v22 = MEMORY[0x277D84F90];
LABEL_29:
  v27[37] = v22;
  v24 = swift_task_alloc();
  v27[38] = v24;
  *v24 = v27;
  v24[1] = sub_24F2A3F78;
  v25 = v27[11];

  return sub_24E6473DC(v22, 1, v25);
}

uint64_t sub_24F2A3EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2A3F78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {

    v4 = sub_24F2A42A0;
  }

  else
  {
    v4 = sub_24F2A40A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F2A40A0()
{

  *(v0 + 64) = MEMORY[0x277D84FA0];
  v1 = type metadata accessor for ASKBagContract(0);
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_24F2A4164;

  return MEMORY[0x28217F228](v0 + 72, v1, v1);
}

uint64_t sub_24F2A4164()
{
  *(*v1 + 336) = v0;

  if (v0)
  {

    v2 = sub_24F2A4AA4;
  }

  else
  {
    v2 = sub_24F2A4370;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F2A42A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2A4370(uint64_t a1)
{
  v74 = v1;
  v2 = v1[9];
  sub_24F91F638();
  if (qword_27F210A40 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v71 = v1[36];
    v67 = v1[25];
    v3 = v1[23];
    v69 = v1[22];
    v4 = v1[20];
    v5 = v1[21];
    v7 = v1[18];
    v6 = v1[19];
    v9 = v1[16];
    v8 = v1[17];
    (*(v4 + 104))(v5, *MEMORY[0x277D21C40], v6);
    v57 = v2;
    sub_24F92A368();
    (*(v4 + 8))(v5, v6);
    sub_24F92A408();
    (*(v8 + 8))(v7, v9);
    v2 = v67;
    sub_24F91F568();
    v10 = *(v3 + 8);
    v10(v67, v69);
    v11 = MEMORY[0x277D84F90];
    if (!v71)
    {
      break;
    }

    v12 = 0;
    v13 = v1[35];
    v14 = v1[13];
    v68 = v1[12];
    v70 = v1[39];
    v65 = v13 & 0xC000000000000001;
    v58 = v13 + 32;
    v59 = v13 & 0xFFFFFFFFFFFFFF8;
    v60 = MEMORY[0x277D84F90];
    v61 = v10;
    while (1)
    {
      if (v65)
      {
        v15 = MEMORY[0x253052270](v12, v1[35]);
      }

      else
      {
        if (v12 >= *(v59 + 16))
        {
          goto LABEL_54;
        }

        v15 = *(v58 + 8 * v12);
      }

      v16 = v15;
      if (__OFADD__(v12++, 1))
      {
        break;
      }

      v2 = v1[26];
      [v15 playedAt];
      sub_24F91F5D8();
      if (sub_24F91F598())
      {
        v64 = v12;
        v18 = [v16 participants];
        v73 = 0;
        sub_24F92B598();

        if (v73)
        {
          v19 = v73;
        }

        else
        {
          v19 = v11;
        }

        v66 = v16;
        v2 = [v16 groupID];
        v62 = sub_24F92B0D8();
        v63 = v20;

        v21 = v19[2];
        if (v21)
        {
          v22 = 0;
          v23 = v19 + 5;
          v72 = v11;
          while (v22 < v19[2])
          {
            v24 = *(v23 - 1);
            v25 = *v23;
            v26 = v24 == v1[31] && v25 == v1[32];
            if (!v26 && (sub_24F92CE08() & 1) == 0 && *(v70 + 16))
            {
              v2 = v1[39];

              v27 = sub_24E76D644(v24, v25);
              if (v28)
              {
                v30 = v1[14];
                v29 = v1[15];
                v31 = *(v68 + 72);
                sub_24E70D960(*(v70 + 56) + v31 * v27, v30);

                sub_24E61C0A8(v30, v29);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v72 = sub_24E618138(0, v72[2] + 1, 1, v72);
                }

                v33 = v72[2];
                v32 = v72[3];
                v2 = (v33 + 1);
                if (v33 >= v32 >> 1)
                {
                  v72 = sub_24E618138((v32 > 1), v33 + 1, 1, v72);
                }

                v34 = v1[15];
                v72[2] = v2;
                sub_24E61C0A8(v34, v72 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + v33 * v31);
                v11 = MEMORY[0x277D84F90];
              }

              else
              {
              }
            }

            ++v22;
            v23 += 2;
            if (v21 == v22)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
          break;
        }

        v72 = v11;
LABEL_33:

        v35 = v72;
        v36 = v72[2];
        if (v36)
        {
          v73 = v11;
          sub_24F4578E0(0, v36, 0);
          v37 = v73;
          v38 = v72 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
          v39 = *(v68 + 72);
          do
          {
            v40 = v1[13];
            sub_24E70D960(v38, v40);
            v41 = *v40;
            v42 = *(v14 + 8);

            sub_24E71BF38(v40);
            v73 = v37;
            v44 = *(v37 + 16);
            v43 = *(v37 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_24F4578E0((v43 > 1), v44 + 1, 1);
              v37 = v73;
            }

            *(v37 + 16) = v44 + 1;
            v45 = v37 + 16 * v44;
            *(v45 + 32) = v41;
            *(v45 + 40) = v42;
            v38 += v39;
            --v36;
          }

          while (v36);
          v11 = MEMORY[0x277D84F90];
          v35 = v72;
        }

        else
        {
          v37 = v11;
        }

        v46 = sub_24F45D828(v37);

        v10 = v61;
        v12 = v64;
        v2 = v66;
        if (v35[2] <= 1uLL || (sub_24F4D4EB4(v46, v1[8]) & 1) != 0)
        {
          v61(v1[24], v1[22]);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_24E6195A8(0, *(v60 + 2) + 1, 1, v60);
          }

          v48 = *(v60 + 2);
          v47 = *(v60 + 3);
          if (v48 >= v47 >> 1)
          {
            v60 = sub_24E6195A8((v47 > 1), v48 + 1, 1, v60);
          }

          v49 = v1[24];
          v50 = v1[22];
          *(v60 + 2) = v48 + 1;
          v51 = &v60[24 * v48];
          *(v51 + 4) = v62;
          *(v51 + 5) = v63;
          *(v51 + 6) = v72;
          v2 = v1 + 8;
          sub_24ED7FF20(&v73, v46);

          v61(v49, v50);
        }
      }

      else
      {
        v10(v1[24], v1[22]);
      }

      if (v12 == v1[36])
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

  v60 = MEMORY[0x277D84F90];
LABEL_49:
  v52 = v1[26];
  v53 = v10;
  v54 = v1[22];

  v53(v52, v54);

  v55 = v1[1];

  return v55(v60);
}

uint64_t sub_24F2A4AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2A4B74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC78, &qword_24F9DE078);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F2A4C08(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC78, &qword_24F9DE078);

  return sub_24F2A3404(a1, a2);
}

uint64_t block_copy_helper_135(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F2A4CAC()
{
  result = qword_27F23DC80;
  if (!qword_27F23DC80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23DC80);
  }

  return result;
}

uint64_t Artwork.ImageScale.imageScale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_24F926E78();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_27968F4D8 + v3);

  return v5(a1, v6, v4);
}

UIImageSymbolConfiguration_optional __swiftcall Artwork.configuration(with:)(UIImageSymbolConfiguration_optional with)
{
  isa = with.value.super.super.isa;
  if (*(v1 + 96) > 1u)
  {
    if (*(v1 + 96) != 2)
    {
LABEL_11:
      v8 = isa;
      goto LABEL_12;
    }

    v3 = 3;
  }

  else if (*(v1 + 96))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [objc_opt_self() configurationWithScale_];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  if (!isa)
  {

    goto LABEL_11;
  }

  v6 = isa;
  isa = [v5 configurationByApplyingConfiguration_];

LABEL_12:
  v9 = isa;
  result.value.super.super.isa = v9;
  result.is_nil = v7;
  return result;
}

uint64_t Artwork.ImageScale.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24F92CB88();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t Artwork.ImageScale.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_24F2A4EFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 0x656772616CLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F2A4FF0()
{
  result = qword_27F23DC88;
  if (!qword_27F23DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DC88);
  }

  return result;
}

uint64_t sub_24F2A5044()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2A50DC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F2A5160()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2A5200(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6C616D73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void AchievementSummaryLayout.Metrics.achievementStackInsets.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t AchievementSummaryLayout.Metrics.outOfTotalLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_24E612C80(a1, v1 + 8);
}

uint64_t AchievementSummaryLayout.Metrics.chevronLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));

  return sub_24E612C80(a1, v1 + 48);
}

uint64_t AchievementSummaryLayout.Metrics.chevronTrailingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 88));

  return sub_24E612C80(a1, v1 + 88);
}

void AchievementSummaryLayout.Metrics.componentHeight.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 128) = v2;
}

uint64_t AchievementSummaryLayout.Metrics.init(achievementStackInsets:outOfTotalLeadingMargin:chevronLeadingMargin:chevronTrailingMargin:componentHeight:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v9 = *a5;
  *a6 = *a1;
  sub_24E612C80(a2, (a6 + 1));
  sub_24E612C80(a3, (a6 + 6));
  result = sub_24E612C80(a4, (a6 + 11));
  a6[16] = v9;
  return result;
}

__n128 AchievementSummaryLayout.init(metrics:achievementGroupView:numberCompletedLabel:outOfTotalLabel:completedLabel:chevronView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 112);
  *(a7 + 96) = *(a1 + 96);
  *(a7 + 112) = v12;
  *(a7 + 128) = *(a1 + 128);
  v13 = *(a1 + 48);
  *(a7 + 32) = *(a1 + 32);
  *(a7 + 48) = v13;
  v14 = *(a1 + 80);
  *(a7 + 64) = *(a1 + 64);
  *(a7 + 80) = v14;
  v15 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v15;
  sub_24E612C80(a2, a7 + 136);
  sub_24E612C80(a3, a7 + 176);
  sub_24E612C80(a4, a7 + 216);
  sub_24E612C80(a5, a7 + 256);
  result = *a6;
  v17 = *(a6 + 16);
  *(a7 + 296) = *a6;
  *(a7 + 312) = v17;
  *(a7 + 328) = *(a6 + 32);
  return result;
}

double AchievementSummaryLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_24F92CDB8();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = sub_24F92BF98();

  if (v13)
  {
    sub_24E94275C((v4 + 37), &v25);
    if (v26)
    {
      sub_24E612C80(&v25, v27);
      __swift_project_boxed_opaque_existential_1(v27, v28);
      sub_24F922298();
      v14 = v4[9];
      __swift_project_boxed_opaque_existential_1(v4 + 6, v14);
      sub_24E8ED7D8(v14);
      sub_24F9223A8();
      v15 = *(v8 + 8);
      v15(v11, v7);
      v16 = v4[14];
      __swift_project_boxed_opaque_existential_1(v4 + 11, v16);
      sub_24E8ED7D8(v16);
      sub_24F9223A8();
      v15(v11, v7);
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      sub_24E942EA8(&v25);
      v19 = v4[9];
      __swift_project_boxed_opaque_existential_1(v4 + 6, v19);
      sub_24E8ED7D8(v19);
      sub_24F9223A8();
      v20 = *(v8 + 8);
      v20(v11, v7);
      v21 = v4[14];
      __swift_project_boxed_opaque_existential_1(v4 + 11, v21);
      sub_24E8ED7D8(v21);
      sub_24F9223A8();
      v20(v11, v7);
    }

    __swift_project_boxed_opaque_existential_1(v4 + 17, v4[20]);
    sub_24F92C228();
    sub_24F922298();
    v22 = *v4;
    *&v25 = a1;
    v23 = *(*v22 + 104);
    v23(v27, &v25);
    *&v25 = a1;
    v23(v27, &v25);
    __swift_project_boxed_opaque_existential_1(v4 + 22, v4[25]);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v4 + 32, v4[35]);
    sub_24F922298();
  }

  else
  {
    v17 = v4[16];
    *&v25 = a1;
    (*(*v17 + 104))(v27, &v25);
    v18 = v28;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    sub_24E8ED7D8(v18);
    sub_24F9223A8();
    (*(v8 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  return a2;
}

double static AchievementSummaryLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 128);
  v14 = a2;
  (*(*v11 + 104))(v15, &v14, v8);
  v12 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_24E8ED7D8(v12);
  sub_24F9223A8();
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a3;
}

uint64_t AchievementSummaryLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v101 = a2;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v6 + 17, v6[20]);
  sub_24F922298();
  v18 = v17;
  v20 = v19;
  v126.origin.x = a3;
  v126.origin.y = a4;
  v126.size.width = a5;
  v126.size.height = a6;
  MidX = CGRectGetMidX(v126);
  v22 = *v6;
  *&v120 = a1;
  v23 = *(*v22 + 104);
  *&v24 = *v22 + 104;
  v23(&v122, &v120);
  v107 = v18;
  v25 = MidX - *&v125 - v18;
  v127.origin.x = a3;
  v127.origin.y = a4;
  v127.size.width = a5;
  v127.size.height = a6;
  MinX = CGRectGetMinX(v127);
  *&v120 = a1;
  v23(&v122, &v120);
  v27 = MinX + v123;
  if (v25 > MinX + v123)
  {
    v27 = v25;
  }

  v116 = v27;
  v128.origin.x = a3;
  v128.origin.y = a4;
  v128.size.width = a5;
  v128.size.height = a6;
  MinY = CGRectGetMinY(v128);
  *&v120 = a1;
  v111 = *&v23;
  v110 = v24;
  v23(&v122, &v120);
  v29 = v122;
  sub_24E94275C((v6 + 37), &v120);
  v117 = a3;
  height = v20;
  v112 = v14;
  if (v121)
  {
    sub_24E612C80(&v120, &v122);
    __swift_project_boxed_opaque_existential_1(&v122, v125);
    sub_24F922298();
    v31 = v30;
    v119 = MinY;
    v33 = v32;
    v129.origin.x = a3;
    v129.origin.y = a4;
    v129.size.width = a5;
    v129.size.height = a6;
    MaxX = CGRectGetMaxX(v129);
    x = v29;
    v35 = MaxX;
    v36 = v6[14];
    __swift_project_boxed_opaque_existential_1(v7 + 11, v7[14]);
    sub_24E8ED7D8(v36);
    v37 = sub_24F9223A8();
    v38 = *(*&v14 + 8);
    v38(v16, v13);
    v98 = v35 - v37 - v31;
    v130.origin.x = a3;
    v130.origin.y = a4;
    v130.size.width = a5;
    v130.size.height = a6;
    MidY = CGRectGetMidY(v130);
    v99 = v33;
    v40 = v33 * -0.5;
    MinY = v119;
    v97 = floor(MidY + v40);
    v41 = v7[9];
    __swift_project_boxed_opaque_existential_1(v7 + 6, v41);
    sub_24E8ED7D8(v41);
    v42 = sub_24F9223A8();
    v38(v16, v13);
    v100 = v31;
    v43 = v31 + v42;
    v20 = height;
    v44 = v7[14];
    __swift_project_boxed_opaque_existential_1(v7 + 11, v44);
    sub_24E8ED7D8(v44);
    v45 = sub_24F9223A8();
    v46 = v13;
    v38(v16, v13);
    v47 = v43 + v45;
    v29 = x;
    __swift_destroy_boxed_opaque_existential_1(&v122);
  }

  else
  {
    v46 = v13;
    sub_24E942EA8(&v120);
    v98 = 0.0;
    v97 = 0.0;
    v100 = 0.0;
    v99 = 0.0;
    v47 = 0.0;
  }

  v106 = MinY + v29;
  v48 = [a1 traitCollection];
  v49 = sub_24F92BF98();

  v50 = v116;
  if ((v49 & 1) == 0)
  {
    v51 = v117;
    v131.origin.x = v117;
    v131.origin.y = a4;
    v131.size.width = a5;
    v131.size.height = a6;
    v50 = CGRectGetMidX(v131);
    v132.origin.x = v51;
    v132.origin.y = a4;
    v132.size.width = a5;
    v132.size.height = a6;
    v52 = CGRectGetMinX(v132);
    *&v120 = a1;
    v53 = v111;
    (*&v111)(&v122, &v120);
    v54 = v52 + v123;
    v133.origin.x = v116;
    v133.origin.y = v106;
    v133.size.width = v107;
    v133.size.height = v20;
    v55 = v54 + CGRectGetWidth(v133);
    *&v120 = a1;
    (*&v53)(&v122, &v120);
    if (v50 <= v55 + *&v125)
    {
      v50 = v55 + *&v125;
    }
  }

  v56 = v117;
  v134.origin.x = v117;
  v134.origin.y = a4;
  v134.size.width = a5;
  v134.size.height = a6;
  v57 = CGRectGetMaxX(v134);
  x = v50;
  v58 = v57 - v47 - v50;
  v59 = ceil(v58 * 0.44);
  __swift_project_boxed_opaque_existential_1(v7 + 22, v7[25]);
  v135.origin.x = v56;
  v135.origin.y = a4;
  v135.size.width = a5;
  v135.size.height = a6;
  CGRectGetHeight(v135);
  sub_24F922288();
  v61 = v60;
  v119 = v62;
  y = v63;
  __swift_project_boxed_opaque_existential_1(v7 + 27, v7[30]);
  v136.origin.x = v56;
  v136.origin.y = a4;
  v136.size.width = a5;
  v136.size.height = a6;
  CGRectGetHeight(v136);
  sub_24F922288();
  width = v64;
  v113 = v65;
  v108 = v66;
  __swift_project_boxed_opaque_existential_1(v7 + 32, v7[35]);
  v137.origin.x = v56;
  v137.origin.y = a4;
  v137.size.width = a5;
  v137.size.height = a6;
  CGRectGetHeight(v137);
  sub_24F922298();
  v104 = v67;
  v69 = v68;
  v70 = [a1 traitCollection];
  v71 = sub_24F92BF98();

  v102 = a6;
  v103 = a4;
  v114 = v69;
  if (v71)
  {
    v138.origin.x = v116;
    v138.origin.y = v106;
    v138.size.width = v107;
    v138.size.height = height;
    MaxY = CGRectGetMaxY(v138);
    *&v120 = a1;
    (*&v111)(&v122, &v120);
    v73 = MaxY + v124;
  }

  else
  {
    v139.origin.x = v56;
    v139.origin.y = a4;
    v139.size.width = a5;
    v139.size.height = a6;
    v73 = floor((CGRectGetHeight(v139) - (v119 + v69)) * 0.5);
  }

  if (v59 >= v61)
  {
    v74 = v61;
  }

  else
  {
    v74 = v59;
  }

  v75 = x;
  v140.origin.x = x;
  v140.origin.y = v73;
  v140.size.width = v74;
  v76 = v119;
  v140.size.height = v119;
  v77 = CGRectGetMaxX(v140);
  v78 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7 + 1, v78);
  sub_24E8ED7D8(v78);
  v79 = sub_24F9223A8();
  (*(*&v112 + 8))(v16, v46);
  v141.origin.x = v75;
  v141.origin.y = v73;
  v141.size.width = v74;
  v141.size.height = v76;
  v80 = v58 - CGRectGetWidth(v141);
  if (v80 >= width)
  {
    v80 = width;
  }

  v111 = v80;
  v110 = v77 + v79;
  y = y + v73 - v108;
  v142.origin.x = v75;
  v142.origin.y = v73;
  v142.size.width = v74;
  v142.size.height = v76;
  v112 = CGRectGetMinX(v142);
  v143.origin.x = v75;
  v143.origin.y = v73;
  width = v74;
  v143.size.width = v74;
  v143.size.height = v76;
  v108 = CGRectGetMaxY(v143);
  if (v58 >= v104)
  {
    v81 = v104;
  }

  else
  {
    v81 = v58;
  }

  v82 = [a1 traitCollection];
  v83 = sub_24F92BF68();

  v104 = v81;
  if ((v83 & 1) == 0)
  {
    v84 = v106;
    v85 = v116;
    v144.origin.x = v116;
    v144.origin.y = v106;
    v96 = a5;
    v86 = v107;
    v144.size.width = v107;
    v87 = height;
    v144.size.height = height;
    v88 = CGRectGetMinX(v144);
    v145.origin.x = v110;
    v145.origin.y = y;
    v145.size.width = v111;
    v145.size.height = v113;
    v89 = CGRectGetMaxX(v145);
    v146.origin.x = v112;
    v146.origin.y = v108;
    v146.size.width = v81;
    v146.size.height = v114;
    v90 = CGRectGetMaxX(v146);
    if (v89 > v90)
    {
      v90 = v89;
    }

    v91 = v90 - v88;
    v147.origin.x = v117;
    v147.origin.y = v103;
    v147.size.width = v96;
    v147.size.height = v102;
    v92 = ceil((CGRectGetWidth(v147) - v91) * 0.5);
    v148.origin.x = v85;
    v148.origin.y = v84;
    v148.size.width = v86;
    v148.size.height = v87;
    v93 = v92 - CGRectGetMinX(v148);
    v149.origin.x = v85;
    v149.origin.y = v84;
    v149.size.width = v86;
    v149.size.height = v87;
    v150 = CGRectOffset(v149, v93, 0.0);
    height = v150.size.height;
    v150.origin.x = x;
    v150.origin.y = v73;
    v150.size.width = width;
    v150.size.height = v119;
    v151 = CGRectOffset(v150, v93, 0.0);
    x = v151.origin.x;
    width = v151.size.width;
    v119 = v151.size.height;
    v151.origin.x = v110;
    v151.origin.y = y;
    v151.size.width = v111;
    v151.size.height = v113;
    v152 = CGRectOffset(v151, v93, 0.0);
    v110 = v152.origin.x;
    y = v152.origin.y;
    v111 = v152.size.width;
    v113 = v152.size.height;
    v152.origin.x = v112;
    v152.origin.y = v108;
    v152.size.width = v104;
    v152.size.height = v114;
    v153 = CGRectOffset(v152, v93, 0.0);
    v112 = v153.origin.x;
    v108 = v153.origin.y;
    v104 = v153.size.width;
    v114 = v153.size.height;
  }

  __swift_project_boxed_opaque_existential_1(v7 + 17, v7[20]);
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7 + 22, v7[25]);
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7 + 27, v7[30]);
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7 + 32, v7[35]);
  sub_24F92C1D8();
  sub_24F922228();
  sub_24E94275C((v7 + 37), &v122);
  if (*&v125 == 0.0)
  {
    sub_24E942EA8(&v122);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v122, v125);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v122);
  }

  return sub_24F922128();
}

uint64_t sub_24F2A697C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
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

uint64_t sub_24F2A69C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F2A6A6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_24F2A6AB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F2A6B24(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929DD8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F2A6D28();
  v12 = [v2 session];
  sub_24F929DC8();
  v13 = *(v11 + 2);
  if (v13)
  {
    v20 = v8;
    v21 = v7;
    v16 = *(v4 + 16);
    v14 = v4 + 16;
    v15 = v16;
    v17 = &v11[(*(v14 + 64) + 32) & ~*(v14 + 64)];
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v3);
      sub_24F929DB8();
      (*(v14 - 8))(v6, v3);
      v17 += v18;
      --v13;
    }

    while (v13);

    v8 = v20;
    v7 = v21;
  }

  else
  {
  }

  return (*(v8 + 8))(v10, v7);
}

char *sub_24F2A6D28()
{
  v0 = sub_24F928418();
  MEMORY[0x28223BE20](v0 - 8);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_24F91F4A8();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v25 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8, &qword_24F9730D8);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  if (qword_27F210C00 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    sub_24F92A428();
    sub_24F92A3F8();
    (*(v13 + 8))(v15, v12);
    if (!v38[0])
    {
      return MEMORY[0x277D84F90];
    }

    v16 = sub_24E9E2340(v38[0]);

    if (!v16)
    {
      return MEMORY[0x277D84F90];
    }

    v37 = *(v16 + 16);
    if (!v37)
    {
      break;
    }

    v13 = 0;
    v34 = (v32 + 32);
    v35 = (v32 + 48);
    v26 = "eArray8@NSError16";
    v17 = MEMORY[0x277D84F90];
    v18 = (v16 + 40);
    v25 = xmmword_24F93DE60;
    v33 = v4;
    v27 = v11;
    v28 = v5;
    v36 = v16;
    while (v13 < *(v16 + 16))
    {
      v15 = *(v18 - 1);
      v12 = *v18;

      sub_24F91F488();
      if ((*v35)(v4, 1, v5) == 1)
      {
        sub_24E601704(v4, &qword_27F228530, &unk_24F93C6E0);
        if (qword_27F210568 != -1)
        {
          swift_once();
        }

        v20 = sub_24F92AAE8();
        __swift_project_value_buffer(v20, qword_27F39C398);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = v25;
        sub_24F928408();
        sub_24F9283F8();
        v38[3] = MEMORY[0x277D837D0];
        v38[0] = v15;
        v38[1] = v12;

        sub_24F9283D8();
        sub_24E601704(v38, &qword_27F2129B0, &unk_24F945320);
        sub_24F9283F8();
        sub_24F928428();
        sub_24F92A5A8();

        v4 = v33;
        v11 = v27;
        v5 = v28;
        v16 = v36;
      }

      else
      {

        v12 = *v34;
        v21 = v30;
        (*v34)(v30, v4, v5);
        v22 = v29;
        v12(v29, v21, v5);
        v12(v11, v22, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_24E6191C8(0, *(v17 + 2) + 1, 1, v17);
        }

        v15 = *(v17 + 2);
        v23 = *(v17 + 3);
        v16 = v36;
        if (v15 >= v23 >> 1)
        {
          v17 = sub_24E6191C8((v23 > 1), v15 + 1, 1, v17);
        }

        v19 = v32;
        v4 = v33;
        *(v17 + 2) = v15 + 1;
        v12(&v17[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15], v11, v5);
      }

      ++v13;
      v18 += 2;
      if (v37 == v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  v17 = MEMORY[0x277D84F90];
LABEL_19:

  return v17;
}

void *sub_24F2A7354()
{
  result = sub_24E60CFB0(MEMORY[0x277D84F90]);
  qword_27F39E178 = result;
  return result;
}

void *sub_24F2A737C()
{
  result = sub_24E60CFB0(MEMORY[0x277D84F90]);
  qword_27F39E180 = result;
  return result;
}

void *sub_24F2A73A4()
{
  result = sub_24E60CFB0(MEMORY[0x277D84F90]);
  qword_27F39E188 = result;
  return result;
}

uint64_t AccountSectionText.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccountSectionText.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AccountSectionText.__allocating_init(id:paragraph:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_24E65E064(a1, &v15);
  if (*(&v16 + 1))
  {
    sub_24E9BBAA8(a1);
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_24F91F6A8();
    v9 = sub_24F91F668();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v14[1] = v9;
    v14[2] = v11;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v15);
  }

  v12 = v19;
  *(v8 + 24) = v18;
  *(v8 + 40) = v12;
  *(v8 + 56) = v20;
  *(v8 + 16) = a2;
  return v8;
}

uint64_t AccountSectionText.init(id:paragraph:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v16);
  if (*(&v17 + 1))
  {
    sub_24E9BBAA8(a1);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_24F91F6A8();
    v10 = sub_24F91F668();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v15[1] = v10;
    v15[2] = v12;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v16);
  }

  v13 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v13;
  *(v3 + 56) = v21;
  *(v3 + 16) = a2;
  return v3;
}

uint64_t AccountSectionText.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v39 = sub_24F9285B8();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F6B8();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = a1;
  sub_24F928398();
  v17 = sub_24F928348();
  v35 = v10;
  if (v18)
  {
    v40 = v17;
    v41 = v18;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v20 = v6;
    v22 = v21;
    (*(v34 + 8))(v8, v20);
    v40 = v19;
    v41 = v22;
  }

  sub_24F92C7F8();
  v23 = *(v10 + 8);
  v24 = v9;
  v23(v15, v9);
  v25 = v43;
  *(v3 + 24) = v42;
  *(v3 + 40) = v25;
  *(v3 + 56) = v44;
  sub_24F928398();
  v26 = v36;
  v27 = v37;
  v28 = v39;
  (*(v37 + 16))(v36, v45, v39);
  v29 = v38;
  v30 = sub_24F0151C0(v12, v26);
  if (v29)
  {
    (*(v27 + 8))(v45, v28);
    v23(v16, v24);
    sub_24E6585F8(v3 + 24);
    type metadata accessor for AccountSectionText();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v30;
    (*(v27 + 8))(v45, v28);
    v23(v16, v24);
    *(v3 + 16) = v31;
  }

  return v3;
}

uint64_t AccountSectionText.deinit()
{

  sub_24E6585F8(v0 + 24);
  return v0;
}

uint64_t AccountSectionText.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24F2A7B1C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for AccountSectionText();
  v7 = swift_allocObject();
  result = AccountSectionText.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

id sub_24F2A7BFC()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_24E9421D0();
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_24E857CC8(v8);
  }

  return 0;
}

uint64_t NSUserDefaults.arcadeUpsellAutoPresentationCount.getter()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_24E857CC8(v7);
  }

  return 0;
}

void NSUserDefaults.arcadeUpsellAutoPresentationCount.setter(uint64_t a1)
{
  v3 = sub_24F92B098();
  [v1 setInteger:a1 forKey:v3];
}

uint64_t NSUserDefaults.shelfOrthogonalScrollingBehavior.getter()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_24E857CC8(v7);
  }

  return 4;
}

void (*NSUserDefaults.arcadeUpsellAutoPresentationCount.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  return sub_24F2A7F94;
}

void sub_24F2A7F94(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_24F92B098();
  [v1 setInteger:v2 forKey:v3];
}

void NSUserDefaults.shelfOrthogonalScrollingBehavior.setter(uint64_t a1)
{
  v3 = sub_24F92B098();
  [v1 setInteger:a1 forKey:v3];
}

void (*NSUserDefaults.shelfOrthogonalScrollingBehavior.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();
  return sub_24F2A80C4;
}

void sub_24F2A80C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_24F92B098();
  [v1 setInteger:v2 forKey:v3];
}

uint64_t sub_24F2A8154@<X0>(uint64_t *a1@<X8>)
{
  result = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  *a1 = result;
  return result;
}

void sub_24F2A8180(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24F92B098();
  [v3 setInteger:v2 forKey:v4];
}

uint64_t sub_24F2A81F8@<X0>(uint64_t *a1@<X8>)
{
  result = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();
  *a1 = result;
  return result;
}

void sub_24F2A8224(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24F92B098();
  [v3 setInteger:v2 forKey:v4];
}

uint64_t sub_24F2A82B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F920418();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F928AD8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F2A83B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24F920418();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F928AD8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for UpdateGamedActivityInstanceAction(uint64_t a1)
{
  result = qword_27F23DC90;
  if (!qword_27F23DC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2A84FC(uint64_t a1)
{
  result = sub_24F920418();
  if (v2 <= 0x3F)
  {
    result = sub_24F928AD8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F2A8580@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_24F928AD8();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24F920418();
  v23 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DCA0, &qword_24F9DE3E8);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v19 - v7;
  updated = type metadata accessor for UpdateGamedActivityInstanceAction(0);
  MEMORY[0x28223BE20](updated);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2A8B6C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = updated;
  v12 = v11;
  v14 = v23;
  v13 = v24;
  v30 = 0;
  sub_24F2A8BC0(&qword_27F23C2C8, MEMORY[0x277D0CB18], MEMORY[0x277D0CB30]);
  v15 = v25;
  sub_24F92CC68();
  v16 = *(v14 + 32);
  v19 = v12;
  v16(v12, v15, v27);
  v29 = 1;
  sub_24F2A8BC0(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
  sub_24F92CC68();
  (*(v26 + 8))(v8, v28);
  v17 = v19;
  (*(v21 + 32))(v19 + *(v20 + 20), v5, v13);
  sub_24E9BCDAC(v17, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F2A8C08(v17);
}

uint64_t sub_24F2A89A0()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24F2A89EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA65660 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24F2A8ADC(uint64_t a1)
{
  v2 = sub_24F2A8B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2A8B18(uint64_t a1)
{
  v2 = sub_24F2A8B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F2A8B6C()
{
  result = qword_27F23DCA8;
  if (!qword_27F23DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DCA8);
  }

  return result;
}

uint64_t sub_24F2A8BC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F2A8C08(uint64_t a1)
{
  updated = type metadata accessor for UpdateGamedActivityInstanceAction(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_24F2A8C78()
{
  result = qword_27F23DCB0;
  if (!qword_27F23DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DCB0);
  }

  return result;
}

unint64_t sub_24F2A8CD0()
{
  result = qword_27F23DCB8;
  if (!qword_27F23DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DCB8);
  }

  return result;
}

unint64_t sub_24F2A8D28()
{
  result = qword_27F23DCC0[0];
  if (!qword_27F23DCC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23DCC0);
  }

  return result;
}