void sub_22751F380(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  sub_2276696A0();
  if (!v3)
  {
    sub_22707E0E4(v23[0], v23[1], a1);
    v12 = v11;

    v23[3] = 0;
    sub_22766A6C0();

    v13 = sub_22766B380();
    v14 = sub_22766C8B0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v22 = a3;
      v16 = v15;
      v21 = swift_slowAlloc();
      v23[0] = v21;
      *v16 = 141558274;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2080;
      sub_227663480();
      sub_227520BCC(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
      v17 = sub_22766C610();
      v19 = sub_226E97AE8(v17, v18, v23);

      *(v16 + 14) = v19;
      _os_log_impl(&dword_226E8E000, v13, v14, "Loading incomplete bundles %{mask.hash}s", v16, 0x16u);
      v20 = v21;
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9A450](v20, -1, -1);
      MEMORY[0x22AA9A450](v16, -1, -1);

      (*(v8 + 8))(v10, v7);
      *v22 = v12;
    }

    else
    {

      (*(v8 + 8))(v10, v7);
      *a3 = v12;
    }
  }
}

void sub_22751F644(uint64_t a1, uint64_t a2)
{

  sub_2273CB458(a1, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v4 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_2273CCBB4(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
  sub_227669240();
}

void sub_22751F728(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  sub_22751FD8C(v3, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v4 = sub_22766C950();
  sub_227669A50();
  sub_227663CF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE478, qword_22768AF58);
  sub_2273CCBB4(&qword_281398FC8, &qword_27D7BE478, qword_22768AF58);
  sub_227669210();
}

uint64_t sub_22751F860(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_22751F904(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE478, qword_22768AF58);

  return sub_227669270();
}

uint64_t sub_22751F9B4(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v47 = sub_2276639B0();
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD990, &qword_227679D00);
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = v35 - v7;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v43 = v8;
    v35[1] = v2;
    v52 = MEMORY[0x277D84F90];
    sub_226F207E8(0, v9, 0);
    v51 = v52;
    v11 = a1 + 56;
    result = sub_22766CC90();
    v12 = v6;
    v13 = result;
    v14 = 0;
    v41 = v4 + 8;
    v42 = v4 + 16;
    v44 = v12;
    v39 = a1 + 56;
    v40 = v12 + 32;
    v36 = a1 + 64;
    v37 = v9;
    v38 = v4;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v18 = *(a1 + 36);
      v49 = v14;
      v50 = v18;
      v19 = *(a1 + 48) + *(v4 + 72) * v13;
      v20 = a1;
      v22 = v46;
      v21 = v47;
      (*(v4 + 16))(v46, v19, v47);
      v23 = v43;
      sub_22751D6FC(v22, v43);
      (*(v4 + 8))(v22, v21);
      v24 = v51;
      v52 = v51;
      v26 = *(v51 + 16);
      v25 = *(v51 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F207E8((v25 > 1), v26 + 1, 1);
        v24 = v52;
      }

      *(v24 + 16) = v26 + 1;
      v27 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v51 = v24;
      result = (*(v44 + 32))(v24 + v27 + *(v44 + 72) * v26, v23, v45);
      v15 = 1 << *(v20 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      a1 = v20;
      v11 = v39;
      v28 = *(v39 + 8 * v17);
      if ((v28 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (v50 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v29 = v28 & (-2 << (v13 & 0x3F));
      if (v29)
      {
        v15 = __clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v37;
      }

      else
      {
        v30 = v17 << 6;
        v31 = v17 + 1;
        v16 = v37;
        v32 = (v36 + 8 * v17);
        while (v31 < (v15 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_226EB526C(v13, v50, 0);
            v15 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v13, v50, 0);
      }

LABEL_4:
      v14 = v49 + 1;
      v13 = v15;
      v4 = v38;
      if (v49 + 1 == v16)
      {
        return v51;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22751FD8C(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v74 = *(v72 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = &v55 - v6;
  v88 = sub_2276639B0();
  v7 = *(v88 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v88);
  v70 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v91 = &v55 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD990, &qword_227679D00);
  v11 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v13 = &v55 - v12;
  v14 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v14)
  {
    v55 = v2;
    v92 = MEMORY[0x277D84F90];
    sub_226F207E8(0, v14, 0);
    v90 = v92;
    v87 = a1 + 56;
    result = sub_22766CC90();
    v16 = 0;
    v85 = v7 + 16;
    v66 = v8 + 7;
    v65 = v7 + 32;
    v64 = v74 + 16;
    v63 = v4 + 7;
    v62 = v74 + 32;
    v61 = v74 + 8;
    v60 = v7 + 8;
    v59 = v11 + 32;
    v56 = a1 + 64;
    v86 = v7;
    v68 = v11;
    v67 = v13;
    v57 = v14;
    v58 = a1;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v87 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_22;
      }

      v77 = 1 << result;
      v78 = result >> 6;
      v18 = *(a1 + 36);
      v75 = v16;
      v76 = v18;
      v19 = *(a1 + 48) + *(v7 + 72) * result;
      v20 = *(v7 + 16);
      v21 = v91;
      v84 = result;
      v22 = v88;
      v20(v91, v19, v88);
      v83 = v20;
      v23 = __swift_project_boxed_opaque_existential_0((v73 + 336), *(v73 + 360));
      v24 = *v23;
      v25 = *(*v23 + 184);
      v81 = *(*v23 + 176);
      v82 = v25;
      v80 = __swift_project_boxed_opaque_existential_0((v24 + 152), v81);
      v26 = v70;
      v20(v70, v21, v22);
      v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v28 = (v66 + v27) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      v79 = *(v86 + 32);
      v79(v29 + v27, v26, v22);
      *(v29 + v28) = v24;

      sub_226ECF5D8(sub_227520540, v29, v81, MEMORY[0x277D84F78] + 8, v82, v89);

      v83(v26, v91, v22);
      v30 = swift_allocObject();
      v31 = v30 + v27;
      v32 = v74;
      v79(v31, v26, v22);
      *(v30 + v28) = v24;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_2273079F4;
      *(v33 + 24) = v30;
      v35 = v71;
      v34 = v72;
      v36 = v89;
      (*(v32 + 16))(v71, v89, v72);
      v37 = (*(v32 + 80) + 16) & ~*(v32 + 80);
      v38 = (v63 + v37) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      v40 = v35;
      v41 = v67;
      (*(v32 + 32))(v39 + v37, v40, v34);
      v42 = (v39 + v38);
      *v42 = sub_226F09740;
      v42[1] = v33;
      sub_227663CF0();

      sub_227669270();
      v43 = v34;
      v7 = v86;
      (*(v32 + 8))(v36, v43);
      (*(v7 + 8))(v91, v88);
      v44 = v90;
      v92 = v90;
      v46 = *(v90 + 16);
      v45 = *(v90 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_226F207E8((v45 > 1), v46 + 1, 1);
        v44 = v92;
      }

      *(v44 + 16) = v46 + 1;
      v47 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v90 = v44;
      (*(v68 + 32))(v44 + v47 + *(v68 + 72) * v46, v41, v69);
      a1 = v58;
      v17 = 1 << *(v58 + 32);
      result = v84;
      if (v84 >= v17)
      {
        goto LABEL_23;
      }

      v48 = *(v87 + 8 * v78);
      if ((v48 & v77) == 0)
      {
        goto LABEL_24;
      }

      if (v76 != *(v58 + 36))
      {
        goto LABEL_25;
      }

      v49 = v48 & (-2 << (v84 & 0x3F));
      if (v49)
      {
        v17 = __clz(__rbit64(v49)) | v84 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v50 = v78 << 6;
        v51 = v78 + 1;
        v52 = (v56 + 8 * v78);
        while (v51 < (v17 + 63) >> 6)
        {
          v54 = *v52++;
          v53 = v54;
          v50 += 64;
          ++v51;
          if (v54)
          {
            sub_226EB526C(v84, v76, 0);
            v17 = __clz(__rbit64(v53)) + v50;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v84, v76, 0);
      }

LABEL_4:
      v16 = v75 + 1;
      result = v17;
      if (v75 + 1 == v57)
      {
        return v90;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227520540(void (***a1)(char *, uint64_t, uint64_t))
{
  v3 = *(sub_2276639B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_22730573C(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_227520698()
{
  result = qword_27D7BE480;
  if (!qword_27D7BE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE480);
  }

  return result;
}

uint64_t objectdestroy_14Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_2Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t objectdestroy_45Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_227520B04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_227520BCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227520C34@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D78];
  v3 = sub_2276694E0();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  return sub_227662640();
}

uint64_t sub_227520CB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D58];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227520D34@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227668350();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_227520D5C(uint64_t a1)
{
  *(a1 + 24) = sub_227520DC4(&qword_2813A5580, &unk_227671E60);
  result = sub_227520DC4(&unk_2813A5570, MEMORY[0x277D53488]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227520DC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227668390();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227520E14(uint64_t a1)
{
  result = sub_227520F04(&qword_27D7BE490, &unk_22768B08C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227520E58(uint64_t a1)
{
  result = sub_227520F04(&qword_27D7BE498, &protocol conformance descriptor for MeditationActivityType);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227520E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_227520F04(&unk_27D7BE7E0, MEMORY[0x277D52380]);

  return MEMORY[0x2821B22E0](a1, a2, v4);
}

uint64_t sub_227520F04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227666520();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227520F54()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_22766D370();
  sub_22766C100();
  sub_22739284C(v4, v2);
  sub_227392BA8(v4, v1);
  return sub_22766D3F0();
}

void sub_227520FC4(__int128 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22766C100();
  sub_22739284C(a1, v4);

  sub_227392BA8(a1, v3);
}

uint64_t sub_22752101C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_22766D370();
  sub_22766C100();
  sub_22739284C(v5, v3);
  sub_227392BA8(v5, v2);
  return sub_22766D3F0();
}

uint64_t sub_227521088(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22766D190() & 1) == 0 || (sub_227034B5C(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_227035EAC(v3, v4);
}

unint64_t sub_227521120()
{
  result = qword_27D7BE4A0;
  if (!qword_27D7BE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE4A0);
  }

  return result;
}

uint64_t sub_227521184(uint64_t a1)
{
  sub_227662B80();
  sub_227662BC0();
  v1 = sub_227662BB0();
  v2 = *(v1 + 16);
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    v3 = v1;
    sub_226F1FB48(0, v2, 0);
    v4 = v3;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v4 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_226F1FB48((v8 > 1), v5 + 1, 1);
        v4 = v3;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + v5 + 32) = v7;
      ++v6;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return sub_227668210();
}

uint64_t sub_2275212BC()
{
  v0 = sub_227669A90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  __swift_allocate_value_buffer(v4, qword_27D7BE4A8);
  __swift_project_value_buffer(v4, qword_27D7BE4A8);
  (*(v1 + 104))(v3, *MEMORY[0x277D4EE48], v0);
  v6[15] = 1;
  return sub_227669760();
}

uint64_t sub_2275213F4(uint64_t a1)
{
  v1 = sub_227669910();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v2 + 104))(v4, *MEMORY[0x277D4E1D0], v1);
    sub_227669660();
    swift_unknownObjectRelease();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_227521540(uint64_t a1)
{
  v2 = v1;
  v3 = sub_227665350();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276652E0();
  sub_227533558(&qword_27D7BE4C0, MEMORY[0x277D515D0], MEMORY[0x277D515E0]);
  v7 = sub_22766BFB0();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = sub_227665A60();
    sub_227533558(&qword_27D7BD250, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D51B88], v8);
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB390, &unk_22767A8A0);
    return sub_227669280();
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
    sub_22766AD70();
    __swift_project_boxed_opaque_existential_0(v13, v13[3]);
    sub_22766AD30();
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }
}

void *sub_2275217BC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  __swift_destroy_boxed_opaque_existential_0(v0 + 53);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_227521844()
{
  sub_2275217BC();

  return swift_deallocClassInstance();
}

double sub_22752189C(void *a1, uint64_t a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4D8, &qword_22768B350);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  v11 = qword_2813B2078;
  swift_beginAccess();
  v12 = sub_227543940(v8 + v11, v7, v6);
  if (v12)
  {
    if (v12 == 1)
    {

LABEL_4:
      v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF80, &qword_227679A30);
      v14 = sub_227668700();
      v15 = *(v14 - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_227670CD0;
      (*(v15 + 16))(v17 + v16, a2, v14);
      sub_227568A58(v17, v13[1], *(v13 + 16), v13[3]);

      return result;
    }

    swift_willThrow();
  }

  else
  {
    v19 = sub_227284A6C(0);
    if (!v24)
    {
      v20 = v19;
      [v19 setResultType_];
      sub_226ED9864();
      v21 = sub_22766C9E0();
      v22 = sub_226EDAB24(v21);

      sub_226EDAB78(v22, v10);

      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_227521B48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD708, &unk_227684D70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v10 + 8))(v12, v9);
  v13 = v1[26];
  v14 = v1[27];
  __swift_project_boxed_opaque_existential_0(v1 + 23, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD720, &qword_227684D88);
  sub_226ECF5D8(sub_227521E54, 0, v13, v15, v14, v8);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_227532264;
  *(v16 + 24) = 0;
  (*(v3 + 16))(v5, v8, v2);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = (v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v17, v5, v2);
  v20 = (v19 + v18);
  *v20 = sub_2275333F0;
  v20[1] = v16;
  sub_227668700();
  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_227521E54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4D8, &qword_22768B350);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  v11 = sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v12 = MEMORY[0x22AA99A00](v11);
  sub_227545070(a2);
  objc_autoreleasePoolPop(v12);
  swift_setDeallocating();

  v13 = qword_2813B2078;
  v14 = sub_22766A100();
  (*(*(v14 - 8) + 8))(v8 + v13, v14);
  return swift_deallocClassInstance();
}

void sub_227521FDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4D0, &unk_22768B340);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v59 = sub_227667670();
  v57 = *(v59 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v48 - v12;
  v13 = sub_227665350();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22766B390();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v50 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  sub_22766A670();
  sub_22766B370();
  v49 = *(v18 + 8);
  v49(v22, v17);
  sub_2276652E0();
  LOBYTE(v22) = MEMORY[0x22AA91650](a1, v16);
  (*(v14 + 8))(v16, v13);
  if (v22)
  {
    v23 = v58;
    sub_227667640();
    v24 = v57;
    v25 = v59;
    if ((*(v57 + 48))(v9, 1, v59) == 1)
    {
      sub_226E97D1C(v9, &qword_27D7BE4D0, &unk_22768B340);
      v26 = __swift_project_boxed_opaque_existential_0((v23 + 344), *(v23 + 368));
      v27 = *(*v26 + 1000);
      MEMORY[0x28223BE20](v26);
      *(&v48 - 2) = v28;
      *(&v48 - 8) = 0;
      os_unfair_lock_lock((v27 + 20));
      sub_2275335D0((v27 + 16), v60);
      os_unfair_lock_unlock((v27 + 20));
    }

    else
    {
      v36 = *(v24 + 32);
      v36(v56, v9, v25);
      v37 = v50;
      sub_22766A670();
      v38 = sub_22766B380();
      v39 = sub_22766C8B0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = v25;
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_226E8E000, v38, v39, "Using fake remote browsing environment!", v41, 2u);
        v42 = v41;
        v25 = v40;
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      v49(v37, v17);
      v44 = v56;
      v43 = v57;
      v45 = v51;
      (*(v57 + 16))(v51, v56, v25);
      v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v47 = swift_allocObject();
      v36((v47 + v46), v45, v25);
      sub_227669280();
      (*(v43 + 8))(v44, v25);
    }
  }

  else
  {
    v29 = v53;
    sub_227521540(a1);
    v31 = v54;
    v30 = v55;
    v32 = v52;
    (*(v54 + 16))(v52, v29, v55);
    v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v34 = swift_allocObject();
    (*(v31 + 32))(v34 + v33, v32, v30);
    v35 = (v34 + ((v4 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = sub_227522658;
    v35[1] = 0;
    sub_227669270();
    (*(v31 + 8))(v29, v30);
  }
}

uint64_t sub_227522688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a1;
  v89 = a2;
  v91 = sub_227665350();
  v5 = *(v91 - 8);
  v75 = *(v5 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB3C0, &unk_22767A8E0);
  v78 = *(v7 - 8);
  v79 = v7;
  v76 = *(v78 + 64);
  MEMORY[0x28223BE20](v7);
  v74 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6F8, &qword_227684D60);
  v83 = *(v12 - 8);
  v84 = v12;
  v81 = *(v83 + 64);
  MEMORY[0x28223BE20](v12);
  v80 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v77 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v87 = *(v16 - 8);
  v88 = v16;
  v86 = *(v87 + 64);
  MEMORY[0x28223BE20](v16);
  v85 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v82 = &v65 - v19;
  v20 = sub_22766B390();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v21 + 8))(v23, v20);
  v67 = sub_2276693A0();
  v66 = v24;
  v25 = *(v3 + 136);
  v26 = v3;
  v68 = v3;
  __swift_project_boxed_opaque_existential_0((v3 + 112), v25);
  v27 = v11;
  v69 = v11;
  sub_22766ABB0();
  v72 = *(v5 + 16);
  v28 = v90;
  v29 = a1;
  v30 = v91;
  v72(v90, v29, v91);
  v31 = *(v5 + 80);
  v75 += (v31 + 24) & ~v31;
  v71 = (v31 + 24) & ~v31;
  v32 = (v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  v70 = *(v5 + 32);
  v70(v33 + ((v31 + 24) & ~v31), v28, v30);
  v34 = (v33 + v32);
  v35 = v66;
  *v34 = v67;
  v34[1] = v35;
  v37 = v78;
  v36 = v79;
  v38 = v74;
  (*(v78 + 16))(v74, v27, v79);
  v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v40 = (v76 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v37 + 32))(v41 + v39, v38, v36);
  v42 = (v41 + v40);
  *v42 = sub_227532E74;
  v42[1] = v33;
  sub_227668BB0();
  v43 = v68;

  v44 = v77;
  sub_227669270();
  (*(v37 + 8))(v69, v36);
  v46 = v90;
  v45 = v91;
  v72(v90, v73, v91);
  v47 = swift_allocObject();
  *(v47 + 16) = v43;
  v70(v47 + v71, v46, v45);
  v49 = v83;
  v48 = v84;
  v50 = v80;
  (*(v83 + 16))(v80, v44, v84);
  v51 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v52 = (v81 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v49 + 32))(v53 + v51, v50, v48);
  v54 = (v53 + v52);
  *v54 = sub_22753301C;
  v54[1] = v47;
  sub_227667670();

  v55 = v82;
  sub_227669270();
  (*(v49 + 8))(v44, v48);
  v56 = v87;
  v57 = v88;
  v58 = v85;
  (*(v87 + 16))(v85, v55, v88);
  v59 = v56;
  v60 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v61 = (v86 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v59 + 32))(v62 + v60, v58, v57);
  v63 = (v62 + v61);
  *v63 = sub_227523588;
  v63[1] = 0;
  sub_227669270();
  return (*(v59 + 8))(v55, v57);
}

uint64_t sub_227522E40@<X0>(uint64_t a1@<X3>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3D0, &unk_22767A8F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_227668BB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = v22 - v10;
  sub_2276693D0();
  v30 = sub_227667BB0();
  sub_227140894();
  sub_227663B80();
  v25 = v31;
  v23 = v32;
  v22[1] = sub_22766AAD0();
  v24 = v11;
  if (sub_2276652F0() == 4 || (v12 = sub_227667BC0(), v12 != sub_227667BC0()))
  {
    v22[0] = sub_22766ACC0();
  }

  else
  {
    v13 = sub_22766ACD0();
    v14 = sub_22766ACC0();
    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v22[0] = v15;
  }

  sub_22766ACE0();

  sub_2276639C0();
  v16 = sub_2276639D0();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  sub_227665310();
  sub_22766C0A0();
  sub_22766C500();
  v17 = v27;
  sub_227668B80();
  v18 = v26;
  (*(v7 + 16))(v26, v17, v6);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + v19, v18, v6);
  sub_227669280();
  return (*(v7 + 8))(v17, v6);
}

uint64_t sub_227523174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  v4 = sub_227668BB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_227521540(v23);
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v15 = v22;
  (*(v7 + 16))(v9, v12, v22);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v15);
  v19 = (v18 + v17);
  *v19 = sub_2275330F0;
  v19[1] = v14;
  sub_227667670();
  sub_227669270();
  return (*(v7 + 8))(v12, v15);
}

uint64_t sub_22752341C(void *a1, uint64_t a2)
{
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D4EDE0], v2);
  sub_227668BB0();
  sub_227667670();
  sub_227669610();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_227523588@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  if (MEMORY[0x22AA953D0](a1) == 4)
  {
    *(swift_allocObject() + 16) = a1;
    v9 = a1;
    sub_227667670();

    return sub_227669280();
  }

  else
  {
    sub_22766A670();
    v11 = sub_22766B380();
    v12 = sub_22766C890();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = a2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446210;
      v16 = sub_2276690C0();
      v18 = sub_226E97AE8(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_226E8E000, v11, v12, "requestEnvironmentWithConfirmation was rejected: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9A450](v15, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_227666740();
    sub_227533558(&qword_28139B638, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v19 = swift_allocError();
    sub_227666730();
    *(swift_allocObject() + 16) = v19;
    sub_227667670();
    return sub_227669280();
  }
}

uint64_t sub_227523880(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v34 = a1;
  v33 = sub_227665350();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v35);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  MEMORY[0x28223BE20](v9);
  v31 = &v30 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v13 + 8))(v15, v12);
  v16 = v32;
  sub_227521540(v32);
  v17 = v33;
  (*(v2 + 16))(&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v33);
  v18 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v19 = swift_allocObject();
  (*(v2 + 32))(v19 + v18, &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v20 = v30;
  v21 = v35;
  (*(v4 + 16))(v30, v8, v35);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  (*(v4 + 32))(v23 + v22, v20, v21);
  v24 = (v23 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_2275324EC;
  v24[1] = v19;
  v25 = v31;
  sub_227669270();
  (*(v4 + 8))(v8, v21);
  v26 = v36;
  v27 = sub_227669290();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  v27(sub_226E9F7B0, v28);

  return (*(v37 + 8))(v25, v26);
}

uint64_t sub_227523D14(uint64_t *a1, uint64_t a2)
{
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D4E340], v2);
  sub_227665350();
  sub_227669620();
  return (*(v3 + 8))(v5, v2);
}

void sub_227523E88(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A670();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  v8 = __swift_project_boxed_opaque_existential_0((v2 + 344), *(v2 + 368));
  v9 = *(*v8 + 1000);
  v11 = *v8;
  v12 = 0;
  os_unfair_lock_lock((v9 + 20));
  sub_2275335D0((v9 + 16), a1);
  os_unfair_lock_unlock((v9 + 20));
}

uint64_t sub_227523FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6C8, &unk_227684D40);
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v26 = &v26 - v8;
  v9 = sub_227669910();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  swift_getObjectType();
  (*(v10 + 104))(v12, *MEMORY[0x277D4E1D8], v9);
  sub_227668BB0();
  sub_227669650();
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_0((v3 + 304), *(v3 + 328));
  v17 = off_283ACA1E0[0];
  type metadata accessor for RemoteBrowsingGuestPairingVerifier();
  v18 = v26;
  v17(a1);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_227532750;
  *(v19 + 24) = v3;
  v21 = v27;
  v20 = v28;
  (*(v5 + 16))(v27, v18, v28);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_22753276C;
  v24[1] = v19;

  sub_227669270();
  return (*(v5 + 8))(v18, v20);
}

uint64_t sub_2275243E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_227669910();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D4E1B8], v2);
  sub_227668720();
  sub_227669650();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_227524530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34 = a1;
  v35 = a2;
  v39 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v33 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v16 + 8))(v18, v15);
  __swift_project_boxed_opaque_existential_0(v4 + 33, v4[36]);
  sub_22713E2E0(v34, v35);
  v19 = __swift_project_boxed_opaque_existential_0(v4 + 43, v4[46]);
  v20 = *(*v19 + 1000);
  v41 = *v19;
  v42 = 0;
  os_unfair_lock_lock((v20 + 20));
  v21 = v40;
  sub_2273B8DFC((v20 + 16), v40);
  os_unfair_lock_unlock((v20 + 20));
  v22 = v36;
  v23 = v21;
  v24 = v38;
  (*(v5 + 16))(v36, v23, v38);
  v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v26 = swift_allocObject();
  (*(v5 + 32))(v26 + v25, v22, v24);
  v27 = v37;
  (*(v9 + 16))(v11, v14, v37);
  v28 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v9 + 32))(v30 + v28, v11, v27);
  v31 = (v30 + v29);
  *v31 = sub_22753269C;
  v31[1] = v26;
  sub_227667670();
  sub_227669270();
  (*(v5 + 8))(v40, v24);
  return (*(v9 + 8))(v14, v27);
}

uint64_t sub_227524954@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = *v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v11 + 8))(v13, v10);
  sub_226E91B50((v2 + 7), v24);
  sub_2276693D0();
  sub_227668B60();
  sub_226E97D1C(v24, &qword_27D7BE4C8, &unk_22768C450);
  v14 = swift_allocObject();
  v15 = v22;
  *(v14 + 16) = v2;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22753279C;
  *(v16 + 24) = v14;
  (*(v4 + 16))(v6, v9, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v6, v3);
  v19 = (v18 + ((v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_226F09740;
  v19[1] = v16;
  sub_227667670();

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

void sub_227524C9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227667670();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18[-v13];
  if (qword_27D7B7F38 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_27D7BE4A8);
  (*(v12 + 16))(v14, v15, v11);
  sub_227669730();
  (*(v12 + 8))(v14, v11);
  if (v18[15] == 1)
  {
    __swift_project_boxed_opaque_existential_0((a1 + 224), *(a1 + 248));
    sub_2273B68D8(a2);
  }

  else
  {
    sub_227667660();
    (*(v5 + 16))(v7, v10, v4);
    v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v17 = swift_allocObject();
    (*(v5 + 32))(v17 + v16, v7, v4);
    sub_227669280();
    (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_227524F54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v10 + 8))(v12, v9);
  v13 = *__swift_project_boxed_opaque_existential_0((v1 + 384), *(v1 + 408));
  v14 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v13 + v14, &v24);
  if (v25)
  {
    sub_226E92AB8(&v24, v23);
    sub_226E91B50(v23, v22);
    v15 = swift_allocObject();
    sub_226E92AB8(v22, v15 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    sub_226F099DC();
    v16 = swift_allocError();
    *v17 = 0;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v3 + 16))(v5, v8, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v18, v5, v2);
  v20 = (v19 + ((v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_22752531C;
  v20[1] = 0;
  sub_227665AD0();
  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_22752531C(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 8))(v5, v6, v7);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_227525438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC0, &qword_22767BB58);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532DA8;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227525874(uint64_t *a1)
{
  v1 = sub_227669A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getObjectType();
  (*(v2 + 104))(v4, *MEMORY[0x277D4ECC8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC0, &qword_22767BB58);
  sub_227668A40();
  v6[14] = v6[15];
  sub_227669620();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2275259DC@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227669040();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4EDE8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC8, &qword_22767BB60);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227525BD0@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_2276668F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E9B8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD0, &qword_22767BB68);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227525DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE8, &qword_22767BB80);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532D30;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227526200@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227666F20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4EA00], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE8, &qword_22767BB80);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2275263F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF0, &qword_22767BB88);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532D08;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227526830@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227667170();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4EA08], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF0, &qword_22767BB88);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227526A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD8, &qword_22767BB70);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532D80;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227526E60@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227666C80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E9C0], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD8, &qword_22767BB70);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227527054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE0, &qword_22767BB78);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532D58;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227527494@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_2276666A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E938], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE0, &qword_22767BB78);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227527688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF8, &unk_22767BB90);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532CE0;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227527AC4@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_2276675F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4EA50], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF8, &unk_22767BB90);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227527CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA0, &qword_22767BB38);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227533330;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_2275280F8@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227666710();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E8E0], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA0, &qword_22767BB38);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2275282EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB00, &unk_22768B330);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532C4C;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227528728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB00, &unk_22768B330);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532B08;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227528B64(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_227669A70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v5 + 104))(v7, *a3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB00, &unk_22768B330);
  sub_227668A40();
  v9[0] = v9[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  sub_227532B14();
  sub_227532B98();
  sub_227669620();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_227528CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB08, &unk_22767BBA0);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532AE0;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227529130@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227669480();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E3E8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB08, &unk_22767BBA0);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227529324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB08, &unk_22767BBA0);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532AB8;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227529760@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227669480();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E3D0], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB08, &unk_22767BBA0);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227529954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB10, &unk_22768B320);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532A90;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227529D90@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227664E20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E668], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB10, &unk_22768B320);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227529F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB18, &qword_22767BBB0);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532A68;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_22752A3C0(uint64_t *a1)
{
  v1 = sub_227669A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v2 + 104))(v4, *MEMORY[0x277D4E6C8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB18, &qword_22767BBB0);
  sub_227668A40();
  v6[0] = v6[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8568, &unk_227685490);
  sub_227453808();
  sub_22745388C();
  sub_227669620();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_22752A550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB20, &qword_22767BBB8);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532A40;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_22752A98C(uint64_t *a1)
{
  v1 = sub_227669A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v2 + 104))(v4, *MEMORY[0x277D4E948], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB20, &qword_22767BBB8);
  sub_227668A40();
  v6[0] = v6[2];
  v6[1] = v6[3];
  sub_227669620();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_22752AB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB28, &qword_22767BBC0);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532A18;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_22752AF40@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227664530();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E5F0], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB28, &qword_22767BBC0);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22752B134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB30, &qword_22767BBC8);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2275329F0;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_22752B570@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_2276650A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E6D8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB30, &qword_22767BBC8);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22752B764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB38, &unk_22767BBD0);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_22753294C;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_22752BBA0(uint64_t *a1)
{
  v1 = sub_227669A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v2 + 104))(v4, *MEMORY[0x277D4E7B0], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB38, &unk_22767BBD0);
  sub_227668A40();
  v6[0] = v6[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE88, &qword_227681D50);
  sub_227532974();
  sub_2273601B4();
  sub_227669620();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_22752BD30(uint64_t *a1)
{
  v1 = sub_227669A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v2 + 104))(v4, *MEMORY[0x277D4E9B0], v1);
  sub_227669640();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_22752BE50@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_227669A70();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v47);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  sub_22766A670();
  sub_22766B370();
  v19 = v18;
  v20 = v48;
  v46 = *(v10 + 8);
  v46(v19, v9);
  v21 = *(v20 + 176);
  if (v21 >= 2)
  {
    if (v21 == 2)
    {
      sub_22766A670();
      v29 = sub_22766B380();
      v30 = sub_22766C8B0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_226E8E000, v29, v30, "Forwarding plan creation prompt to paired phone", v31, 2u);
        MEMORY[0x22AA9A450](v31, -1, -1);
      }

      v46(v15, v9);
      swift_getObjectType();
      v33 = v43;
      v32 = v44;
      v34 = v45;
      (*(v44 + 104))(v43, *MEMORY[0x277D4E9B0], v45);
      sub_227669640();
      return (*(v32 + 8))(v33, v34);
    }

    else
    {
      sub_22766A670();
      v35 = sub_22766B380();
      v36 = sub_22766C890();
      if (os_log_type_enabled(v35, v36))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_226E8E000, v35, v36, "Platform TV does not support plan creation prompt", v38, 2u);
        MEMORY[0x22AA9A450](v38, -1, -1);
      }

      v46(v12, v9);
      v39 = sub_227665A60();
      sub_227533558(&qword_27D7BD250, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
      v40 = swift_allocError();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51B98], v39);
      *(swift_allocObject() + 16) = v40;
      return sub_227669280();
    }
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = "SeymourServices/RemoteBrowsingSystem.swift";
    *(v22 + 24) = 42;
    *(v22 + 32) = 2;
    *(v22 + 40) = 409;
    *(v22 + 48) = &unk_22768B2D0;
    *(v22 + 56) = v20;

    sub_227669270();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_22752C748;
    *(v23 + 24) = 0;
    v24 = v47;
    (*(v3 + 16))(v5, v8, v47);
    v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v26 = swift_allocObject();
    (*(v3 + 32))(v26 + v25, v5, v24);
    v27 = (v26 + ((v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v27 = sub_226F5B0C0;
    v27[1] = v23;
    sub_227669270();
    return (*(v3 + 8))(v8, v24);
  }
}

uint64_t sub_22752C4DC()
{
  v1 = v0[2];
  v3 = v1[56];
  v2 = v1[57];
  __swift_project_boxed_opaque_existential_0(v1 + 53, v3);
  v4 = sub_22701AA24();
  v0[3] = v4;
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_22752C5A8;

  return MEMORY[0x2821AF658](v4, v3, v2);
}

uint64_t sub_22752C5A8()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22752C6E4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22752C6E4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22752C768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v34 = a2;
  v33 = sub_2276690F0();
  v2 = *(v33 - 8);
  v32 = *(v2 + 64);
  MEMORY[0x28223BE20](v33);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_227665350();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v31;
  sub_2276690E0();
  sub_227521540(v6);
  (*(v4 + 8))(v6, v28);
  v18 = v30;
  v19 = v33;
  (*(v2 + 16))(v30, v17, v33);
  v20 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v21 = swift_allocObject();
  (*(v2 + 32))(v21 + v20, v18, v19);
  v22 = v29;
  (*(v7 + 16))(v9, v12, v29);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v7 + 32))(v25 + v23, v9, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532E20;
  v26[1] = v21;
  sub_227669270();
  return (*(v7 + 8))(v12, v22);
}

uint64_t sub_22752CB94@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227666D60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4ED28], v6);
  sub_2276690D0();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22752CD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v61 = a2;
  v2 = sub_227669A70();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227666D60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v50 - v10;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  sub_22766A670();
  sub_22766B370();
  v21 = v20;
  v22 = v59;
  v54 = *(v12 + 8);
  v54(v21, v11);
  v23 = *(v22 + 176);
  if (v23 >= 2)
  {
    if (v23 == 2)
    {
      sub_22766A670();
      v37 = sub_22766B380();
      v38 = sub_22766C8B0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_226E8E000, v37, v38, "Forwarding personalized plan creation prompt to paired phone", v39, 2u);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      v54(v17, v11);
      swift_getObjectType();
      v41 = v51;
      v40 = v52;
      v42 = v53;
      (*(v52 + 104))(v51, *MEMORY[0x277D4ED28], v53);
      sub_227669620();
      return (*(v40 + 8))(v41, v42);
    }

    else
    {
      sub_22766A670();
      v43 = sub_22766B380();
      v44 = sub_22766C890();
      if (os_log_type_enabled(v43, v44))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_226E8E000, v43, v44, "Platform TV does not support personalized plan creation prompt", v46, 2u);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      v54(v14, v11);
      v47 = sub_227665A60();
      sub_227533558(&qword_27D7BD250, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
      v48 = swift_allocError();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D51B98], v47);
      *(swift_allocObject() + 16) = v48;
      return sub_227669280();
    }
  }

  else
  {
    (*(v5 + 16))(&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v4);
    v24 = v22;
    v25 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    (*(v5 + 32))(v26 + v25, &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v27 = swift_allocObject();
    *(v27 + 16) = "SeymourServices/RemoteBrowsingSystem.swift";
    *(v27 + 24) = 42;
    *(v27 + 32) = 2;
    *(v27 + 40) = 435;
    *(v27 + 48) = &unk_22768B2B8;
    *(v27 + 56) = v26;

    v28 = v56;
    sub_227669270();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_22752D784;
    *(v29 + 24) = 0;
    v31 = v57;
    v30 = v58;
    v32 = v55;
    (*(v57 + 16))(v55, v28, v58);
    v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v34 = swift_allocObject();
    (*(v31 + 32))(v34 + v33, v32, v30);
    v35 = (v34 + ((v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = sub_226F5AAF8;
    v35[1] = v29;
    sub_227669270();
    return (*(v31 + 8))(v28, v30);
  }
}

uint64_t sub_22752D4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_22752D514, 0, 0);
}

uint64_t sub_22752D514()
{
  v1 = v0[2];
  v2 = v1[56];
  v3 = v1[57];
  __swift_project_boxed_opaque_existential_0(v1 + 53, v2);
  v4 = sub_22701ACB8();
  v0[4] = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_22752D5E4;

  return MEMORY[0x2821AF658](v4, v2, v3);
}

uint64_t sub_22752D5E4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22752D720, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22752D720()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_22752D7A4(void *a1, const char *a2, ...)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  v8 = a1;
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_226E8E000, v9, v10, a2, v11, 0xCu);
    sub_226E97D1C(v12, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_willThrow();
  return a1;
}

uint64_t sub_22752D968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA8, &qword_22767BB40);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532E4C;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_22752DDA8@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227666650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E930], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA8, &qword_22767BB40);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22752DFCC(uint64_t *a1, unsigned int *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v12[1] = a5;
  v7 = sub_227669A70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v8 + 104))(v10, *a2, v7);
  a3(0);
  sub_227669630();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22752E118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB0, &qword_22767BB48);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532DF8;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_22752E554@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227668A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E808], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB0, &qword_22767BB48);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22752E748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB8, &qword_22767BB50);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532DD0;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_22752EB84@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_2276627D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E3D8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB8, &qword_22767BB50);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22752ED78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB40, &unk_22768B310);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532924;
  v26[1] = v20;
  sub_2276638D0();
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_22752F1B4@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227663090();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E4D0], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB40, &unk_22768B310);
  sub_227668A40();
  sub_2276638D0();
  sub_227669610();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22752F3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB48, &unk_22767BBE0);
  v33 = *(v4 - 8);
  v40 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v33 - v5;
  v6 = sub_227665350();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v17, v14);
  __swift_project_boxed_opaque_existential_0((v3 + 16), *(v3 + 40));
  sub_22766AD70();
  __swift_project_boxed_opaque_existential_0(v42, v42[3]);
  v18 = v39;
  sub_227668A30();
  sub_22766AD30();
  (*(v35 + 8))(v8, v36);
  v19 = v33;
  v20 = v38;
  v21 = v18;
  v22 = v4;
  (*(v33 + 16))(v38, v21, v4);
  v23 = v19;
  v24 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v25 = swift_allocObject();
  (*(v23 + 32))(v25 + v24, v20, v22);
  v26 = v34;
  v27 = v13;
  v28 = v37;
  (*(v9 + 16))(v34, v13, v37);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = swift_allocObject();
  (*(v9 + 32))(v30 + v29, v26, v28);
  v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_2275328D4;
  v31[1] = v25;
  sub_2276638D0();
  sub_227669270();
  (*(v9 + 8))(v27, v28);
  return __swift_destroy_boxed_opaque_existential_0(v42);
}

uint64_t sub_22752F860@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_2276638D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4E4D8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB48, &unk_22767BBE0);
  sub_227668A40();
  sub_227669610();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22752FA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB50, &unk_22768B300);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2275328AC;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_22752FE9C@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227667440();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4EB18], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB50, &unk_22768B300);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227530090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB58, &unk_22767BBF0);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532884;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_2275304CC@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227667780();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4EA90], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB58, &unk_22767BBF0);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2275306C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB60, &unk_22768B2F0);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_22753285C;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227530AFC@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_2276682A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4EBA0], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB60, &unk_22768B2F0);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227530CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB68, &qword_22767BC00);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227532834;
  v26[1] = v20;
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227531128@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = sub_227668A00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D4EC88], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB68, &qword_22767BC00);
  sub_227668A40();
  sub_227669620();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22753131C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB70, &qword_22767BC08);
  v3 = *(v2 - 8);
  v33 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - v4;
  v29 = sub_227665350();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = v32;
  sub_227668A30();
  sub_227521540(v7);
  (*(v5 + 8))(v7, v29);
  v18 = v31;
  (*(v3 + 16))(v31, v17, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v18, v2);
  v21 = v28;
  v22 = v30;
  (*(v8 + 16))(v28, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2275327E4;
  v26[1] = v20;
  sub_227664460();
  sub_227669270();
  return (*(v8 + 8))(v12, v22);
}

uint64_t sub_227531758@<X0>(uint64_t a2@<X8>)
{
  v7[1] = a2;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D4E790], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB70, &qword_22767BC08);
  sub_227668A40();
  v7[2] = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2D0, &unk_22768B2E0);
  sub_227664460();
  sub_227128FA8();
  sub_22712902C();
  sub_227669610();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_227531908(uint64_t a1)
{
  v3 = sub_227665350();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  return sub_227669280();
}

uint64_t sub_227531A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v10 + 8))(v12, v9);
  sub_227521540(v17[0]);
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v5, v2);
  v15 = (v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_227523E58;
  v15[1] = 0;
  sub_227665AD0();
  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_227531CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v10 + 8))(v12, v9);
  sub_227521540(v17[0]);
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v5, v2);
  v15 = (v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_22752BD30;
  v15[1] = 0;
  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_227531F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v10 + 8))(v12, v9);
  sub_227521540(v17[0]);
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v5, v2);
  v15 = (v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_22752DF9C;
  v15[1] = 0;
  sub_227666E80();
  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_227532264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD720, &qword_227684D88);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  sub_2275334E8(a1, v12 - v5);
  v7 = sub_227668700();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  sub_226E97D1C(v6, &qword_27D7BD720, &qword_227684D88);
  v9 = sub_227663B90();
  sub_227533558(&qword_28139BC48, MEMORY[0x277D50320], MEMORY[0x277D50328]);
  swift_allocError();
  (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D50318], v9);
  return swift_willThrow();
}

uint64_t sub_227532518(uint64_t a1)
{
  v4 = *(sub_227666D60() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22752D4F4(a1, v6, v1 + v5);
}

uint64_t sub_227532600(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22752C4BC(a1, v1);
}

uint64_t sub_22753269C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22742DF78(v4, a1);
}

unint64_t sub_227532974()
{
  result = qword_2813990A8;
  if (!qword_2813990A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCE88, &qword_227681D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813990A8);
  }

  return result;
}

unint64_t sub_227532B14()
{
  result = qword_281398C40;
  if (!qword_281398C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCB38, &qword_22768C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C40);
  }

  return result;
}

unint64_t sub_227532B98()
{
  result = qword_281398C38;
  if (!qword_281398C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCB38, &qword_22768C990);
    sub_227533558(&qword_28139B288, MEMORY[0x277D53BA0], MEMORY[0x277D53B98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C38);
  }

  return result;
}

uint64_t sub_227532E74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227665350() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_227522E40(v4, a1);
}

uint64_t objectdestroy_61Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22753301C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227665350() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_227523174(a1, v6, a2);
}

uint64_t sub_22753311C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_64Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_227533358(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_227533420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2275334E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD720, &qword_227684D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227533558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227533748(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t, __n128))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    (a2)(0, v3, 0);
    v4 = v13;
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v13 + 16);
      v8 = *(v13 + 24);

      if (v9 >= v8 >> 1)
      {
        (a2)(v8 > 1, v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      v10 = v13 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

double sub_227533858(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 40;
    while (1)
    {
      v5 = objc_opt_self();

      v6 = sub_22766BFD0();
      v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

      type metadata accessor for ManagedCatalogTipCategoryIdentifier();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = sub_22766BFD0();
      [v9 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v17;
      v4 += 16;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v14 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51000], v14);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073BEC(v2);

    v11 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v12 = sub_22766C2B0();

    [v11 initWithArray_];
  }

  return result;
}

double sub_227533AEC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 40;
    while (1)
    {
      v5 = objc_opt_self();

      v6 = sub_22766BFD0();
      v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

      type metadata accessor for ManagedContributorIdentifier();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = sub_22766BFD0();
      [v9 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v17;
      v4 += 16;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v14 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51000], v14);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073CAC(v2);

    v11 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v12 = sub_22766C2B0();

    [v11 initWithArray_];
  }

  return result;
}

double sub_227533D80(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 40;
    while (1)
    {
      v5 = objc_opt_self();

      v6 = sub_22766BFD0();
      v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

      type metadata accessor for ManagedEquipmentIdentifier();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = sub_22766BFD0();
      [v9 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v17;
      v4 += 16;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v14 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51000], v14);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C94(v2);

    v11 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v12 = sub_22766C2B0();

    [v11 initWithArray_];
  }

  return result;
}

double sub_227534014(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 40;
    while (1)
    {
      v5 = objc_opt_self();

      v6 = sub_22766BFD0();
      v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

      type metadata accessor for ManagedModalityIdentifier();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = sub_22766BFD0();
      [v9 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v17;
      v4 += 16;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v14 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51000], v14);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C7C(v2);

    v11 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v12 = sub_22766C2B0();

    [v11 initWithArray_];
  }

  return result;
}

double sub_2275342A8(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 40;
    while (1)
    {
      v5 = objc_opt_self();

      v6 = sub_22766BFD0();
      v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

      type metadata accessor for ManagedMusicGenreIdentifier();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = sub_22766BFD0();
      [v9 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v17;
      v4 += 16;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v14 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51000], v14);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C64(v2);

    v11 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v12 = sub_22766C2B0();

    [v11 initWithArray_];
  }

  return result;
}

double sub_22753453C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 40;
    while (1)
    {
      v5 = objc_opt_self();

      v6 = sub_22766BFD0();
      v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

      type metadata accessor for ManagedThemeIdentifier();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = sub_22766BFD0();
      [v9 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v17;
      v4 += 16;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v14 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51000], v14);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C4C(v2);

    v11 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v12 = sub_22766C2B0();

    [v11 initWithArray_];
  }

  return result;
}

double sub_2275347D0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 40;
    while (1)
    {
      v5 = objc_opt_self();

      v6 = sub_22766BFD0();
      v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

      type metadata accessor for ManagedTrainerIdentifier();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = sub_22766BFD0();
      [v9 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v17;
      v4 += 16;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v14 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51000], v14);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C34(v2);

    v11 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v12 = sub_22766C2B0();

    [v11 initWithArray_];
  }

  return result;
}

double sub_227534A64(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 40;
    while (1)
    {
      v5 = objc_opt_self();

      v6 = sub_22766BFD0();
      v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

      type metadata accessor for ManagedWorkoutIdentifier();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = sub_22766BFD0();
      [v9 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v17;
      v4 += 16;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v14 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51000], v14);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C1C(v2);

    v11 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v12 = sub_22766C2B0();

    [v11 initWithArray_];
  }

  return result;
}

double sub_227534CF8(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 40;
    while (1)
    {
      v5 = objc_opt_self();

      v6 = sub_22766BFD0();
      v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

      type metadata accessor for ManagedBodyFocusIdentifier();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = sub_22766BFD0();
      [v9 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v17;
      v4 += 16;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v14 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51000], v14);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073CDC(v2);

    v11 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v12 = sub_22766C2B0();

    [v11 initWithArray_];
  }

  return result;
}

double sub_227534F8C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 40;
    while (1)
    {
      v5 = objc_opt_self();

      v6 = sub_22766BFD0();
      v7 = [v5 insertNewObjectForEntityForName:v6 inManagedObjectContext:a1];

      type metadata accessor for ManagedSkillLevelIdentifier();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = sub_22766BFD0();
      [v9 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v17;
      v4 += 16;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v14 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51000], v14);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073CC4(v2);

    v11 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v12 = sub_22766C2B0();

    [v11 initWithArray_];
  }

  return result;
}

double sub_227535220(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      v7 = objc_opt_self();
      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedHealthKitActivityType();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v5;
      }

      MEMORY[0x22AA985C0]([v10 setValue_]);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v18;
      if (!--v3)
      {
        goto LABEL_10;
      }
    }

    v15 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51000], v15);
    swift_willThrow();
  }

  else
  {
LABEL_10:
    sub_227073CF4(v2);

    v12 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v13 = sub_22766C2B0();

    [v12 initWithArray_];
  }

  return result;
}

void sub_227535488(void *a1, uint64_t a2)
{
  v49 = a2;
  v3 = sub_227662190();
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276669C0();
  v8 = v7;
  v50 = v6;
  v51 = v7;
  v10 = v9 & 1;
  v52 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
  sub_227663AD0();
  v11 = sub_22766BFD0();
  v12 = v8;
  v13 = a1;
  sub_226EB2DFC(v6, v12, v10);

  [a1 setContentRating_];

  v14 = sub_227666A30();
  v15 = v53;
  v16 = sub_227533748(v14, sub_226F1EE70);
  if (!v15)
  {
    v17 = v48;
    v18 = v49;
    sub_227533AEC(v49, v16);
    v20 = v19;

    [v13 setContributorIdentifierss_];

    sub_2276669A0();
    sub_2276620E0();
    (*(v17 + 8))(v5, v3);
    v21 = sub_22766BFD0();

    [v13 setDateReleased_];

    v22 = sub_227666A10();
    v23 = sub_227533748(v22, sub_226F1EE50);
    sub_227533D80(v18, v23);
    v25 = v24;

    [v13 setEquipmentIdentifierss_];

    sub_227666990();
    v26 = sub_22766BFD0();

    [v13 setIdentifier_];

    v27 = sub_227666A00();
    v28 = sub_227533748(v27, sub_226F1EE30);
    sub_227534014(v18, v28);
    v30 = v29;

    [v13 setModalityIdentifierss_];

    v31 = sub_227666A20();
    v32 = sub_227533748(v31, sub_226F1EE10);
    sub_2275342A8(v18, v32);
    v34 = v33;

    [v13 setMusicGenreIdentifierss_];

    v35 = sub_2276669D0();
    v36 = sub_227533748(v35, sub_226F1EDF0);
    sub_22753453C(v18, v36);
    v38 = v37;

    [v13 setThemeIdentifierss_];

    v39 = sub_2276669E0();
    v40 = sub_227533748(v39, sub_226F1EDD0);
    sub_2275347D0(v18, v40);
    v42 = v41;

    [v13 setTrainerIdentifierss_];

    v43 = sub_2276669F0();
    v44 = sub_227533748(v43, sub_226F1EDB0);
    sub_227534A64(v18, v44);
    v46 = v45;

    [v13 setWorkoutIdentifierss_];
  }
}

void *static CatalogProgramReference.representativeSamples()()
{
  v39 = sub_227662190();
  v47 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v51 = v29 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4E0, &qword_22768B358);
  v1 = *(v38 - 1);
  MEMORY[0x28223BE20](v38);
  v37 = v29 - v2;
  v36 = sub_227666A40();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F976F8();
  sub_226ED978C();
  v50 = sub_227663B50();
  v49 = sub_22766C2D0();
  v48 = MEMORY[0x22AA8E410]();
  v4 = sub_22766C2D0();
  v5 = sub_22766C090();
  v6 = sub_22766C2D0();
  v7 = sub_22766C2D0();
  v8 = sub_22766C2D0();
  v9 = sub_22766C2D0();
  v10 = sub_22766C2D0();
  v81 = v49;
  v82[0] = v50;
  v82[1] = v82;
  v82[2] = &v81;
  v79 = v4;
  v80 = v48;
  v82[3] = &v80;
  v82[4] = &v79;
  v77 = v6;
  v78 = v5;
  v82[5] = &v78;
  v82[6] = &v77;
  v75 = v8;
  v76 = v7;
  v82[7] = &v76;
  v82[8] = &v75;
  v73 = v10;
  v74 = v9;
  v82[9] = &v74;
  v82[10] = &v73;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F0, &qword_227672F88);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E30, &unk_227672460);
  v64 = v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD8, &qword_2276772D8);
  v66 = v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v68 = v11;
  v69 = v11;
  v70 = v11;
  v71 = v11;
  v72 = v11;
  v53 = sub_226F5BF60(&qword_27D7B9100, &qword_27D7B90F0, &qword_227672F88);
  v12 = sub_226F5BF60(&qword_27D7B9FE0, &qword_27D7B8E30, &unk_227672460);
  v54 = v12;
  v55 = sub_226F5BF60(&qword_27D7B9FE8, &qword_27D7B9FD8, &qword_2276772D8);
  v56 = v12;
  v57 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v58 = v12;
  v59 = v12;
  v60 = v12;
  v61 = v12;
  v62 = v12;
  v13 = sub_2276638E0();

  v14 = *(v13 + 16);
  if (v14)
  {
    v52 = MEMORY[0x277D84F90];
    result = sub_226F1F948(0, v14, 0);
    v16 = 0;
    v17 = v52;
    v31 = v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v32 = v14;
    v29[1] = v40 + 32;
    v30 = (v47 + 16);
    v33 = v13;
    v34 = v1;
    while (v16 < *(v13 + 16))
    {
      v18 = v37;
      sub_227536074(v31 + *(v1 + 72) * v16, v37);
      v20 = *v18;
      v47 = *(v18 + 8);
      v19 = v47;
      v48 = v20;
      v21 = *(v18 + 16);
      v46 = v21;
      v22 = v38[16];
      v23 = *(v18 + v38[20]);
      v41 = *(v18 + 24);
      v42 = v23;
      v24 = (v18 + v38[24]);
      v49 = *v24;
      v50 = v17;
      v25 = v24[1];
      v43 = *(v18 + v38[28]);
      v44 = *(v18 + v38[32]);
      v45 = v25;
      (*v30)(v51, v18 + v22, v39);
      sub_226EB396C(v20, v19, v21);

      v26 = v35;
      v17 = v50;
      sub_2276669B0();
      sub_2275360E4(v18);
      v52 = v17;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_226F1F948((v27 > 1), v28 + 1, 1);
        v17 = v52;
      }

      ++v16;
      *(v17 + 16) = v28 + 1;
      result = (*(v40 + 32))(v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v28, v26, v36);
      v13 = v33;
      v1 = v34;
      if (v32 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227536074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4E0, &qword_22768B358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275360E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4E0, &qword_22768B358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22753614C(uint64_t a1)
{
  result = sub_2275361A4(&qword_28139B5F0, MEMORY[0x277D52790], &protocol conformance descriptor for CatalogProgramReference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275361A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2275361FC()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_227664860();
  v8 = MEMORY[0x22AA8E810](v5, v6, v7);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = sub_2276636A0();
    sub_2275365D4(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D500D8], v11);
    return swift_willThrow();
  }

  else
  {
    sub_227667DA0();
    sub_226F5E0B4(v8, v10);
    sub_2275365D4(&qword_27D7BE4E8, MEMORY[0x277D53308], MEMORY[0x277D53300]);
    sub_2276683D0();
    if (v0)
    {
      sub_22766A740();
      v14 = sub_22766B380();
      v15 = sub_22766C8B0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_226E8E000, v14, v15, "[MetricBackgroundAccountEventProvider] failed decoding last metric background account event - skipping background account event", v16, 2u);
        MEMORY[0x22AA9A450](v16, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      swift_willThrow();
    }

    return sub_226FB1424(v8, v10);
  }
}

uint64_t sub_2275364D8()
{
  sub_227667DA0();
  sub_2275365D4(&qword_27D7BE4E8, MEMORY[0x277D53308], MEMORY[0x277D53300]);
  result = sub_2276683C0();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    v5 = [objc_opt_self() standardUserDefaults];
    sub_227664860();
    sub_227662500();

    return sub_226EDC420(v3, v4);
  }

  return result;
}

uint64_t sub_2275365D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_227536628(uint64_t a1)
{
  result = sub_227536650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227536650()
{
  result = qword_27D7BE4F0;
  if (!qword_27D7BE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE4F0);
  }

  return result;
}

unint64_t sub_2275366B0(uint64_t a1)
{
  result = sub_2275366D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2275366D8()
{
  result = qword_27D7BE4F8;
  if (!qword_27D7BE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE4F8);
  }

  return result;
}

uint64_t sub_22753672C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2271E40F0();

  return MEMORY[0x2821B22E0](a1, a2, v4);
}

uint64_t sub_227536778()
{
  v0 = sub_227665E90();
  sub_227215894();
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, *MEMORY[0x277D51ED0], v0);
  return swift_willThrow();
}

uint64_t sub_227536828()
{
  sub_227664900();

  return sub_227669280();
}

uint64_t sub_227536898(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE710, &qword_22768D920);
    v10 = sub_226E9CFD0(&qword_281399110, &qword_27D7BE710, &qword_22768D920, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B9D0, MEMORY[0x277D506C0], &unk_227688540);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275369D4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE898, &qword_22768B688);
    v10 = sub_226E9CFD0(&qword_27D7BE8A0, &qword_27D7BE898, &qword_22768B688, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&unk_27D7BE700, type metadata accessor for SyncEncryptionKey, &unk_227686080);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227536B10(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE890, &qword_22768B680);
    v10 = sub_226E9CFD0(&qword_281398FA8, &qword_27D7BE890, &qword_22768B680, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B070, type metadata accessor for DirtySyncZone, &unk_227682CC0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227536C4C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA20, &qword_227685540);
    v10 = sub_226E9CFD0(&qword_27D7BEA28, &qword_27D7BEA20, &qword_227685540, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5790, MEMORY[0x277D50CD0], &unk_2276858F0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227536D88(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE950, &qword_22768B6D0);
    v10 = sub_226E9CFD0(&unk_27D7BE958, &qword_27D7BE950, &qword_22768B6D0, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5760, MEMORY[0x277D51068], &unk_227689A68);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227536EC4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC90, &qword_2276873F0);
    v10 = sub_226E9CFD0(&unk_27D7BEC98, &qword_27D7BEC90, &qword_2276873F0, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5810, MEMORY[0x277D4FF88], &unk_227673E30);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537000(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
    v10 = sub_226E9CFD0(&qword_281398EE8, &qword_27D7BE6C0, qword_227670F00, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_28139BD60, MEMORY[0x277D4FCA8], &unk_227680DC8);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753713C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BECB8, &unk_22768B8B0);
    v10 = sub_226E9CFD0(&unk_27D7BECC0, &qword_27D7BECB8, &unk_22768B8B0, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139BD60, MEMORY[0x277D4FCA8], &unk_227680DC8);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537278(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8E0, &unk_22768B6A0);
    v10 = sub_226E9CFD0(&unk_27D7BE8E8, &qword_27D7BE8E0, &unk_22768B6A0, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B978, MEMORY[0x277D50B18], &unk_227682058);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275373B4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEAC8, &qword_22768B788);
    v10 = sub_226E9CFD0(&qword_27D7BEAD0, &qword_27D7BEAC8, &qword_22768B788, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5520, MEMORY[0x277D539C0], &unk_2276788A0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275374F0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEAD8, &unk_22768B790);
    v10 = sub_226E9CFD0(&qword_27D7BEAE0, &qword_27D7BEAD8, &unk_22768B790, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A56C8, MEMORY[0x277D520D0], &unk_227681848);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753762C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE6F0, &unk_22768B650);
    v10 = sub_226E9CFD0(&qword_2813990F8, &unk_27D7BE6F0, &unk_22768B650, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A57B0, MEMORY[0x277D50C20], &unk_2276791D8);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537768(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA48, &unk_22768B750);
    v10 = sub_226E9CFD0(&qword_27D7BEA50, &qword_27D7BEA48, &unk_22768B750, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B9F0, MEMORY[0x277D50678], &unk_227678D80);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275378A4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF10, qword_227682280);
    v10 = sub_226E9CFD0(&qword_27D7BEC70, &qword_27D7BCF10, qword_227682280, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&unk_27D7BE758, MEMORY[0x277D522A0], &unk_22768BF18);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275379E0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC28, &qword_22768B880);
    v10 = sub_226E9CFD0(&qword_27D7BEC30, &qword_27D7BEC28, &qword_22768B880, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_27D7BEA80, MEMORY[0x277D50C78], &unk_22768A650);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537B1C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC38, &qword_22768B888);
    v10 = sub_226E9CFD0(&qword_27D7BEC40, &qword_27D7BEC38, &qword_22768B888, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_27D7BEA78, MEMORY[0x277D51130], &unk_22768A718);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537C58(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC08, &unk_22768B870);
    v10 = sub_226E9CFD0(&unk_27D7BEC10, &qword_27D7BEC08, &unk_22768B870, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_27D7BEAA0, MEMORY[0x277D52758], &unk_22767EE70);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537D94(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E0, &qword_22767EF70);
    v10 = sub_226E9CFD0(&qword_27D7BEC20, &qword_27D7BC7E0, &qword_22767EF70, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B588, MEMORY[0x277D52AF8], &unk_227680A50);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537ED0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC48, &qword_22768B890);
    v10 = sub_226E9CFD0(&unk_27D7BEC50, &qword_27D7BEC48, &qword_22768B890, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_27D7BEA88, MEMORY[0x277D52300], &unk_22767B050);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753800C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E88, &qword_2276767D8);
    v10 = sub_226E9CFD0(&unk_27D7BEC60, &qword_27D7B9E88, &qword_2276767D8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B5E0, MEMORY[0x277D52828], &unk_227685010);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538148(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2F0, &qword_22768B810);
    v10 = sub_226E9CFD0(&qword_27D7BEB80, &qword_27D7BC2F0, &qword_22768B810, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_27D7BEA78, MEMORY[0x277D51130], &unk_22768A718);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538284(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
    v10 = sub_226E9CFD0(&unk_27D7BEBA0, &unk_27D7BC970, qword_227675810, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_28139B5E0, MEMORY[0x277D52828], &unk_227685010);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275383C0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2C0, &unk_22768B820);
    v10 = sub_226E9CFD0(&qword_281398D00, &qword_27D7BC2C0, &unk_22768B820, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_28139B610, MEMORY[0x277D52790], &unk_22768B360);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275384FC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB88, &qword_22768B818);
    v10 = sub_226E9CFD0(&unk_27D7BEB90, &qword_27D7BEB88, &qword_22768B818, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&unk_27D7BEA90, MEMORY[0x277D519E0], &unk_2276772E0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538638(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBF8, &qword_22768B868);
    v10 = sub_226E9CFD0(&qword_2813990C0, &unk_27D7BEBF8, &qword_22768B868, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B888, MEMORY[0x277D512F0], &unk_22768D2E0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538774(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB978, &unk_22767B520);
    v10 = sub_226E9CFD0(&qword_281398CC0, &qword_27D7BB978, &unk_22767B520, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_28139B588, MEMORY[0x277D52AF8], &unk_227680A50);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275388B0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC78, &qword_22768B898);
    v10 = sub_226E9CFD0(&qword_281398C90, &qword_27D7BEC78, &qword_22768B898, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_28139B508, MEMORY[0x277D53128], &unk_22768C480);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275389EC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB70, &qword_227682598);
    v10 = sub_226E9CFD0(&qword_27D7BEB78, &qword_27D7BEB70, &qword_227682598, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_2813A5740, MEMORY[0x277D51330], &unk_22767A040);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538B28(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2B8, &qword_22767D530);
    v10 = sub_226E9CFD0(&qword_281398BF0, &qword_27D7BC2B8, &qword_22767D530, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_28139B248, MEMORY[0x277D53E10], &unk_227684278);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538C64(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D0, &qword_22767D538);
    v10 = sub_226E9CFD0(&qword_27D7BEC80, &qword_27D7BC2D0, &qword_22767D538, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_27D7BE830, MEMORY[0x277D50278], &unk_22767D810);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538DA0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2C8, &qword_22768B8A0);
    v10 = sub_226E9CFD0(&qword_281398D50, &qword_27D7BC2C8, &qword_22768B8A0, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_28139B710, MEMORY[0x277D51E30], &unk_227680D68);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538EDC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D8, &unk_22767E5B0);
    v10 = sub_226E9CFD0(&qword_281398BD0, &qword_27D7BC2D8, &unk_22767E5B0, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_28139B218, MEMORY[0x277D53E88], &unk_227689B78);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227539018(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2E0, &unk_22767E5A0);
    v10 = sub_226E9CFD0(&qword_281398ED0, &qword_27D7BC2E0, &unk_22767E5A0, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_28139BD30, MEMORY[0x277D4FE80], &unk_22768A808);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227539154(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2E8, &unk_22767E590);
    v10 = sub_226E9CFD0(&qword_281398EB0, &qword_27D7BC2E8, &unk_22767E590, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_28139BD08, MEMORY[0x277D4FF18], &unk_22767E5C8);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227539290(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA10, &qword_2276724A0);
    v10 = sub_226E9CFD0(&qword_27D7BEA18, &qword_27D7BEA10, &qword_2276724A0, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A57C8, MEMORY[0x277D50978], &unk_22767D4A0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275393CC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BECF0, &qword_22768B8D0);
    v10 = sub_226E9CFD0(&qword_27D7BECF8, &qword_27D7BECF0, &qword_22768B8D0, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A55B0, MEMORY[0x277D533B8], &unk_22767ED78);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227539508(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BECE0, &qword_22768B8C8);
    v10 = sub_226E9CFD0(&qword_27D7BECE8, &qword_27D7BECE0, &qword_22768B8C8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5710, MEMORY[0x277D515B0], &unk_227677430);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227539644(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6E8, &qword_22768B648);
    v10 = sub_226E9CFD0(&qword_281398FF0, &qword_27D7BE6E8, &qword_22768B648, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A55C0, MEMORY[0x277D530A8], &unk_227672EB0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227539780(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEAE8, &qword_22768B7A8);
    v10 = sub_226E9CFD0(&unk_27D7BEAF0, &qword_27D7BEAE8, &qword_22768B7A8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5698, MEMORY[0x277D52578], &unk_2276774F0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275398BC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE998, &qword_22768B6F8);
    v10 = sub_226E9CFD0(&unk_27D7BE9A0, &qword_27D7BE998, &qword_22768B6F8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5560, MEMORY[0x277D53708], &unk_227688C58);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275399F8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB40, &qword_22768B7E0);
    v10 = sub_226E9CFD0(&unk_27D7BEB48, &qword_27D7BEB40, &qword_22768B7E0, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5680, MEMORY[0x277D52700], &unk_227673850);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227539B34(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB30, &qword_22768B7D8);
    v10 = sub_226E9CFD0(&qword_27D7BEB38, &qword_27D7BEB30, &qword_22768B7D8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5650, MEMORY[0x277D52A80], &unk_227685958);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227539C70(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB18, &qword_22768B7C8);
    v10 = sub_226E9CFD0(&unk_27D7BEB20, &qword_27D7BEB18, &qword_22768B7C8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5630, MEMORY[0x277D52C10], &unk_22768D708);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227539DAC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB00, &qword_22768B7B8);
    v10 = sub_226E9CFD0(&qword_27D7BEB08, &qword_27D7BEB00, &qword_22768B7B8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5600, MEMORY[0x277D52EC0], &unk_2276859B0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227539EE8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE6D0, &qword_22768B638);
    v10 = sub_226E9CFD0(&unk_281399018, &unk_27D7BE6D0, &qword_22768B638, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B630, MEMORY[0x277D526D0], &unk_227682DD0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753A024(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8B0, &unk_227676AC8);
    v10 = sub_226E9CFD0(&qword_27D7BE8B8, &qword_27D7BE8B0, &unk_227676AC8, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_2813A5778, MEMORY[0x277D50E98], &unk_227672878);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753A160(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE9C8, &unk_22768B708);
    v10 = sub_226E9CFD0(&unk_27D7BE9D0, &qword_27D7BE9C8, &unk_22768B708, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5540, MEMORY[0x277D538B8], &unk_22768E2C8);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753A29C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8C0, &qword_227676BC0);
    v10 = sub_226E9CFD0(&qword_27D7BE8C8, &qword_27D7BE8C0, &qword_227676BC0, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_2813A5668, MEMORY[0x277D528B8], &unk_22768CE88);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753A3D8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C8, &qword_22768B630);
    v10 = sub_226E9CFD0(&qword_281398FD0, &qword_27D7BE6C8, &qword_22768B630, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B4A8, MEMORY[0x277D535A0], &unk_2276827F0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753A514(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6E0, &qword_22768B640);
    v10 = sub_226E9CFD0(&qword_281399058, &qword_27D7BE6E0, &qword_22768B640, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B6D8, MEMORY[0x277D52038], &unk_227684FA0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753A650(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BECA8, &qword_22768B8A8);
    v10 = sub_226E9CFD0(&qword_27D7BECB0, &qword_27D7BECA8, &qword_22768B8A8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_27D7BEC88, MEMORY[0x277D50D88], &unk_22767F350);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753A78C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE9F8, &qword_22768B728);
    v10 = sub_226E9CFD0(&unk_27D7BEA00, &qword_27D7BE9F8, &qword_22768B728, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5598, MEMORY[0x277D53450], &unk_227673D00);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753A8C8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE9E0, &unk_22768B718);
    v10 = sub_226E9CFD0(&unk_27D7BE9E8, &qword_27D7BE9E0, &unk_22768B718, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5508, MEMORY[0x277D53BA0], &unk_227680918);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753AA04(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE9B0, &qword_22768B700);
    v10 = sub_226E9CFD0(&unk_27D7BE9B8, &qword_27D7BE9B0, &qword_22768B700, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A56B0, MEMORY[0x277D52498], &unk_22767F5F8);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753AB40(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE980, &unk_22768B6E0);
    v10 = sub_226E9CFD0(&qword_27D7BE988, &qword_27D7BE980, &unk_22768B6E0, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A54F0, MEMORY[0x277D53C88], &unk_227673548);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753AC7C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE968, &qword_22768B6D8);
    v10 = sub_226E9CFD0(&unk_27D7BE970, &qword_27D7BE968, &qword_22768B6D8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A57D8, MEMORY[0x277D502D0], &unk_2276753F0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753ADB8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE938, &qword_22768B6C8);
    v10 = sub_226E9CFD0(&unk_27D7BE940, &qword_27D7BE938, &qword_22768B6C8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5618, MEMORY[0x277D52D18], &unk_22767AEF0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753AEF4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE920, &qword_22768B6C0);
    v10 = sub_226E9CFD0(&unk_27D7BE928, &qword_27D7BE920, &qword_22768B6C0, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A56E0, MEMORY[0x277D51CF0], &unk_227670D28);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753B030(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE910, &qword_22768B6B8);
    v10 = sub_226E9CFD0(&qword_27D7BE918, &qword_27D7BE910, &qword_22768B6B8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A55E0, MEMORY[0x277D52F78], &unk_22768BFE8);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753B16C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8F8, &qword_22768B6B0);
    v10 = sub_226E9CFD0(&unk_27D7BE900, &qword_27D7BE8F8, &qword_22768B6B0, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A57F0, MEMORY[0x277D50180], &unk_22768D998);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753B2A8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE728, &qword_22768B668);
    v10 = sub_226E9CFD0(&unk_281398F80, &unk_27D7BE728, &qword_22768B668, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139A508, type metadata accessor for SyncZoneChangeWindow, &unk_227671ED0);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753B3E4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE718, &qword_22768B660);
    v10 = sub_226E9CFD0(&qword_281398FA0, &unk_27D7BE718, &qword_22768B660, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139AFC8, type metadata accessor for SyncChangeTag, &unk_227680B98);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753B520(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
    v10 = sub_226E9CFD0(&qword_281398E28, &qword_27D7BBA20, &qword_22767B6C0, MEMORY[0x277D83B68]);
    v11 = sub_226EB1040(&qword_28139B9A0, MEMORY[0x277D508B0], &unk_227689A00);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753B65C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8A8, &unk_22768B690);
    v10 = sub_226E9CFD0(&unk_2813990B0, &qword_27D7BE8A8, &unk_22768B690, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_2813A5728, MEMORY[0x277D51360], &unk_227687910);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753B798(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE628, &qword_22768B5A8);
    v10 = sub_226E9CFD0(&unk_27D7BE630, &qword_27D7BE628, &qword_22768B5A8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B848, MEMORY[0x277D51680], &unk_22767CA48);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753B8D4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE888, &qword_22768B678);
    v10 = sub_226E9CFD0(&unk_281398F90, &qword_27D7BE888, &qword_22768B678, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139AE98, type metadata accessor for KeyCertificate, &unk_227681638);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753BA10(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t (*a7)(void))
{
  v23 = a1;
  v8 = (a3 + 32);
  v9 = *(a3 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 5;
    v12 = v8[3];
    v11 = v8[4];
    __swift_project_boxed_opaque_existential_0(v8, v12);
    v13 = *(v11 + 16);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_226E9CFD0(a6, a4, a5, MEMORY[0x277D83970]);
    v16 = a7();
    v17 = v13(&v23, a2, v14, v15, v16, v12, v11);
    v8 = v10;
    if (v17)
    {
      return v17;
    }
  }

  return 0;
}

uint64_t sub_22753BB20(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BECD0, &qword_22768B8C0);
    v10 = sub_226E9CFD0(&qword_281399028, &unk_27D7BECD0, &qword_22768B8C0, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&qword_28139B6B0, MEMORY[0x277D52258], &unk_22768C500);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753BC5C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA58, &qword_22768B768);
    v10 = sub_226E9CFD0(&qword_27D7BEA60, &qword_27D7BEA58, &qword_22768B768, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&unk_27D7BEA68, MEMORY[0x277D53548], &unk_22768A760);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t *a7, uint64_t *a8, unint64_t *a9, uint64_t (*a10)(void))
{
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v11 = (a6 + 32);
  v12 = *(a6 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v15 = v11[3];
    v14 = v11[4];
    __swift_project_boxed_opaque_existential_0(v11, v15);
    v16 = *(v14 + 16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v18 = sub_226E9CFD0(a9, a7, a8, MEMORY[0x277D83FB0]);
    v19 = a10();
    v20 = v16(v24, a5, v17, v18, v19, v15, v14);
    v11 = v13;
    if (v20)
    {
      return v20;
    }
  }

  return 0;
}

uint64_t sub_22753BEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF3F8, &qword_22768BC20);
    v13 = sub_226E9CFD0(&qword_27D7BF400, &qword_27D7BF3F8, &qword_22768BC20, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5618, MEMORY[0x277D52D18], &unk_22767AEF0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753BFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF3E0, &qword_22768BC18);
    v13 = sub_226E9CFD0(&qword_27D7BF3E8, &qword_27D7BF3E0, &qword_22768BC18, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BF3F0, MEMORY[0x277D51FE0], &unk_227671D80);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753C138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF3C0, &qword_22768BC10);
    v13 = sub_226E9CFD0(&qword_27D7BF3C8, &qword_27D7BF3C0, &qword_22768BC10, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A56E0, MEMORY[0x277D51CF0], &unk_227670D28);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753C278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF390, &qword_22768BC00);
    v13 = sub_226E9CFD0(&qword_27D7BF398, &qword_27D7BF390, &qword_22768BC00, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BF3A0, MEMORY[0x277D52CE0], &unk_22767B0A8);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753C3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF378, &qword_22768BBF8);
    v13 = sub_226E9CFD0(&qword_27D7BF380, &qword_27D7BF378, &qword_22768BBF8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BF388, MEMORY[0x277D534C8], &unk_227686C48);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753C4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF350, &qword_22768BBE8);
    v13 = sub_226E9CFD0(&qword_27D7BF358, &qword_27D7BF350, &qword_22768BBE8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A57F0, MEMORY[0x277D50180], &unk_22768D998);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF320, &qword_22768BBD0);
    v13 = sub_226E9CFD0(&qword_27D7BF328, &qword_27D7BF320, &qword_22768BBD0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5790, MEMORY[0x277D50CD0], &unk_2276858F0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753C778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF310, &qword_22768BBC8);
    v13 = sub_226E9CFD0(&qword_27D7BF318, &qword_27D7BF310, &qword_22768BBC8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BEA78, MEMORY[0x277D51130], &unk_22768A718);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753C8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF300, &qword_22768BBC0);
    v13 = sub_226E9CFD0(&qword_27D7BF308, &qword_27D7BF300, &qword_22768BBC0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BEA80, MEMORY[0x277D50C78], &unk_22768A650);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753C9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF2E0, &qword_22768BBB0);
    v13 = sub_226E9CFD0(&qword_27D7BF2E8, &qword_27D7BF2E0, &qword_22768BBB0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BE768, MEMORY[0x277D503E8], &unk_22767F9F0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753CB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF2B8, &qword_22768BB98);
    v13 = sub_226E9CFD0(&qword_27D7BF2C0, &qword_27D7BF2B8, &qword_22768BB98, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B9D0, MEMORY[0x277D506C0], &unk_227688540);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753CC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF2A8, &qword_22768BB90);
    v13 = sub_226E9CFD0(&qword_27D7BF2B0, &qword_27D7BF2A8, &qword_22768BB90, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&unk_27D7BE700, type metadata accessor for SyncEncryptionKey, &unk_227686080);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753CDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF298, &qword_22768BB88);
    v13 = sub_226E9CFD0(&qword_27D7BF2A0, &qword_27D7BF298, &qword_22768BB88, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139A508, type metadata accessor for SyncZoneChangeWindow, &unk_227671ED0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753CEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF288, &qword_22768BB80);
    v13 = sub_226E9CFD0(&qword_27D7BF290, &qword_27D7BF288, &qword_22768BB80, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139AFC8, type metadata accessor for SyncChangeTag, &unk_227680B98);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753D038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF268, &qword_22768BB70);
    v13 = sub_226E9CFD0(&qword_27D7BF270, &qword_27D7BF268, &qword_22768BB70, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BE778, MEMORY[0x277D51610], &unk_227673F30);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753D178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF240, &qword_22768BB58);
    v13 = sub_226E9CFD0(&qword_27D7BF248, &qword_27D7BF240, &qword_22768BB58, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139BD08, MEMORY[0x277D4FF18], &unk_22767E5C8);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753D2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF230, &qword_22768BB50);
    v13 = sub_226E9CFD0(&qword_27D7BF238, &qword_27D7BF230, &qword_22768BB50, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B9F0, MEMORY[0x277D50678], &unk_227678D80);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753D3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF218, &qword_22768BB48);
    v13 = sub_226E9CFD0(&qword_27D7BF220, &qword_27D7BF218, &qword_22768BB48, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BF228, MEMORY[0x277D50330], &unk_22767B880);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753D538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF208, &qword_22768BB40);
    v13 = sub_226E9CFD0(&qword_27D7BF210, &qword_27D7BF208, &qword_22768BB40, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A55B0, MEMORY[0x277D533B8], &unk_22767ED78);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753D678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF1F8, &qword_22768BB38);
    v13 = sub_226E9CFD0(&qword_27D7BF200, &qword_27D7BF1F8, &qword_22768BB38, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&unk_27D7BEA68, MEMORY[0x277D53548], &unk_22768A760);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF1E8, &qword_22768BB30);
    v13 = sub_226E9CFD0(&qword_27D7BF1F0, &qword_27D7BF1E8, &qword_22768BB30, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B9A0, MEMORY[0x277D508B0], &unk_227689A00);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753D8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF1D8, &qword_22768BB28);
    v13 = sub_226E9CFD0(&qword_27D7BF1E0, &qword_27D7BF1D8, &qword_22768BB28, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5760, MEMORY[0x277D51068], &unk_227689A68);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF1C8, &qword_22768BB20);
    v13 = sub_226E9CFD0(&qword_27D7BF1D0, &qword_27D7BF1C8, &qword_22768BB20, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5600, MEMORY[0x277D52EC0], &unk_2276859B0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753DB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF1B8, &qword_22768BB18);
    v13 = sub_226E9CFD0(&qword_27D7BF1C0, &qword_27D7BF1B8, &qword_22768BB18, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5710, MEMORY[0x277D515B0], &unk_227677430);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753DCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF1A8, &qword_22768BB10);
    v13 = sub_226E9CFD0(&qword_27D7BF1B0, &qword_27D7BF1A8, &qword_22768BB10, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5698, MEMORY[0x277D52578], &unk_2276774F0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF198, &qword_22768BB08);
    v13 = sub_226E9CFD0(&qword_27D7BF1A0, &qword_27D7BF198, &qword_22768BB08, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A57D8, MEMORY[0x277D502D0], &unk_2276753F0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753DF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF188, &qword_22768BB00);
    v13 = sub_226E9CFD0(&qword_27D7BF190, &qword_27D7BF188, &qword_22768BB00, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A54F0, MEMORY[0x277D53C88], &unk_227673548);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753E078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF178, &qword_22768BAF8);
    v13 = sub_226E9CFD0(&qword_27D7BF180, &qword_27D7BF178, &qword_22768BAF8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A57B0, MEMORY[0x277D50C20], &unk_2276791D8);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753E1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF168, &qword_22768BAF0);
    v13 = sub_226E9CFD0(&qword_27D7BF170, &qword_27D7BF168, &qword_22768BAF0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5560, MEMORY[0x277D53708], &unk_227688C58);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753E2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF158, &qword_22768BAE8);
    v13 = sub_226E9CFD0(&qword_27D7BF160, &qword_27D7BF158, &qword_22768BAE8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A56B0, MEMORY[0x277D52498], &unk_22767F5F8);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753E438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF130, &qword_22768BAD8);
    v13 = sub_226E9CFD0(&qword_27D7BF138, &qword_27D7BF130, &qword_22768BAD8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BE7B8, MEMORY[0x277D4FEC8], &unk_22768CD10);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753E578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF110, &qword_22768BAC8);
    v13 = sub_226E9CFD0(&qword_27D7BF118, &qword_27D7BF110, &qword_22768BAC8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139BD30, MEMORY[0x277D4FE80], &unk_22768A808);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753E6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF0F0, &qword_22768BAB8);
    v13 = sub_226E9CFD0(&qword_27D7BF0F8, &qword_27D7BF0F0, &qword_22768BAB8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5630, MEMORY[0x277D52C10], &unk_22768D708);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753E7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF0D0, &qword_22768BAA8);
    v13 = sub_226E9CFD0(&qword_27D7BF0D8, &qword_27D7BF0D0, &qword_22768BAA8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&unk_27D7BE7C0, MEMORY[0x277D50018], &unk_2276878C8);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753E938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF0B8, &qword_22768BAA0);
    v13 = sub_226E9CFD0(&unk_27D7BF0C0, &qword_27D7BF0B8, &qword_22768BAA0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&unk_27D7BE790, MEMORY[0x277D51730], &unk_22767CB08);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF0A8, &qword_22768BA98);
    v13 = sub_226E9CFD0(&qword_27D7BF0B0, &qword_27D7BF0A8, &qword_22768BA98, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139AE98, type metadata accessor for KeyCertificate, &unk_227681638);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753EBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF098, &qword_22768BA90);
    v13 = sub_226E9CFD0(&qword_27D7BF0A0, &qword_27D7BF098, &qword_22768BA90, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5778, MEMORY[0x277D50E98], &unk_227672878);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753ECF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF088, &qword_22768BA88);
    v13 = sub_226E9CFD0(&qword_27D7BF090, &qword_27D7BF088, &qword_22768BA88, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5580, MEMORY[0x277D53480], &unk_227671E60);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753EE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF070, &qword_22768BA80);
    v13 = sub_226E9CFD0(&qword_27D7BF078, &qword_27D7BF070, &qword_22768BA80, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BF080, MEMORY[0x277D52DB0], &unk_227685780);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF060, &qword_22768BA78);
    v13 = sub_226E9CFD0(&qword_27D7BF068, &qword_27D7BF060, &qword_22768BA78, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5540, MEMORY[0x277D538B8], &unk_22768E2C8);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753F0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF050, &qword_22768BA70);
    v13 = sub_226E9CFD0(&qword_27D7BF058, &qword_27D7BF050, &qword_22768BA70, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5668, MEMORY[0x277D528B8], &unk_22768CE88);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753F1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF030, &qword_22768BA60);
    v13 = sub_226E9CFD0(&qword_27D7BF038, &qword_27D7BF030, &qword_22768BA60, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5728, MEMORY[0x277D51360], &unk_227687910);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753F338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF010, &qword_22768BA50);
    v13 = sub_226E9CFD0(&qword_27D7BF018, &qword_27D7BF010, &qword_22768BA50, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B218, MEMORY[0x277D53E88], &unk_227689B78);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753F478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF000, &qword_22768BA48);
    v13 = sub_226E9CFD0(&qword_27D7BF008, &qword_27D7BF000, &qword_22768BA48, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B978, MEMORY[0x277D50B18], &unk_227682058);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753F5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEFF0, &qword_22768BA40);
    v13 = sub_226E9CFD0(&qword_27D7BEFF8, &qword_27D7BEFF0, &qword_22768BA40, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B070, type metadata accessor for DirtySyncZone, &unk_227682CC0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753F6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEFD0, &qword_22768BA30);
    v13 = sub_226E9CFD0(&qword_27D7BEFD8, &qword_27D7BEFD0, &qword_22768BA30, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BE770, MEMORY[0x277D4FFF0], &unk_227678C10);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEFC0, &qword_22768BA28);
    v13 = sub_226E9CFD0(&qword_27D7BEFC8, &qword_27D7BEFC0, &qword_22768BA28, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&unk_28139BA38, MEMORY[0x277D50560], &unk_22767AD88);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753F978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEFB0, &qword_22768BA20);
    v13 = sub_226E9CFD0(&qword_27D7BEFB8, &qword_27D7BEFB0, &qword_22768BA20, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A56C8, MEMORY[0x277D520D0], &unk_227681848);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753FAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEFA0, &qword_22768BA18);
    v13 = sub_226E9CFD0(&qword_27D7BEFA8, &qword_27D7BEFA0, &qword_22768BA18, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BE780, MEMORY[0x277D50A68], &unk_227676E20);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753FBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF80, &qword_22768BA08);
    v13 = sub_226E9CFD0(&qword_27D7BEF88, &qword_27D7BEF80, &qword_22768BA08, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&unk_27D7BEF90, MEMORY[0x277D50520], &unk_227671F10);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753FD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF40, &unk_22768B9F0);
    v13 = sub_226E9CFD0(&qword_27D7BEF48, &qword_27D7BEF40, &unk_22768B9F0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B5E0, MEMORY[0x277D52828], &unk_227685010);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753FE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF30, &qword_22768B9E8);
    v13 = sub_226E9CFD0(&qword_27D7BEF38, &qword_27D7BEF30, &qword_22768B9E8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BEA88, MEMORY[0x277D52300], &unk_22767B050);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_22753FFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF20, &qword_22768B9E0);
    v13 = sub_226E9CFD0(&qword_27D7BEF28, &qword_27D7BEF20, &qword_22768B9E0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&unk_27D7BEA90, MEMORY[0x277D519E0], &unk_2276772E0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_2275400F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF10, &qword_22768B9D8);
    v13 = sub_226E9CFD0(&qword_27D7BEF18, &qword_27D7BEF10, &qword_22768B9D8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5740, MEMORY[0x277D51330], &unk_22767A040);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227540238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF00, &qword_22768B9D0);
    v13 = sub_226E9CFD0(&qword_27D7BEF08, &qword_27D7BEF00, &qword_22768B9D0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B508, MEMORY[0x277D53128], &unk_22768C480);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227540378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEEE0, &qword_22768B9C0);
    v13 = sub_226E9CFD0(&qword_27D7BEEE8, &qword_27D7BEEE0, &qword_22768B9C0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B710, MEMORY[0x277D51E30], &unk_227680D68);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_2275404B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEED0, &qword_22768B9B8);
    v13 = sub_226E9CFD0(&qword_27D7BEED8, &qword_27D7BEED0, &qword_22768B9B8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BE830, MEMORY[0x277D50278], &unk_22767D810);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_2275405F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEEC0, &qword_22768B9B0);
    v13 = sub_226E9CFD0(&qword_27D7BEEC8, &qword_27D7BEEC0, &qword_22768B9B0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B888, MEMORY[0x277D512F0], &unk_22768D2E0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227540738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEEB0, &qword_22768B9A8);
    v13 = sub_226E9CFD0(&qword_27D7BEEB8, &qword_27D7BEEB0, &qword_22768B9A8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B610, MEMORY[0x277D52790], &unk_22768B360);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227540878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEEA0, &qword_22768B9A0);
    v13 = sub_226E9CFD0(&qword_27D7BEEA8, &qword_27D7BEEA0, &qword_22768B9A0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BE788, MEMORY[0x277D50760], &unk_227672F90);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_2275409B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEE90, &qword_22768B998);
    v13 = sub_226E9CFD0(&qword_27D7BEE98, &qword_27D7BEE90, &qword_22768B998, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B588, MEMORY[0x277D52AF8], &unk_227680A50);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227540AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEE80, &qword_22768B990);
    v13 = sub_226E9CFD0(&qword_27D7BEE88, &qword_27D7BEE80, &qword_22768B990, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BEAA0, MEMORY[0x277D52758], &unk_22767EE70);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227540C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEE70, &qword_22768B988);
    v13 = sub_226E9CFD0(&qword_27D7BEE78, &qword_27D7BEE70, &qword_22768B988, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&unk_27D7BE758, MEMORY[0x277D522A0], &unk_22768BF18);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227540D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEE30, &qword_22768B968);
    v13 = sub_226E9CFD0(&qword_27D7BEE38, &qword_27D7BEE30, &qword_22768B968, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5650, MEMORY[0x277D52A80], &unk_227685958);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227540EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEE20, &qword_22768B960);
    v13 = sub_226E9CFD0(&qword_27D7BEE28, &qword_27D7BEE20, &qword_22768B960, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5508, MEMORY[0x277D53BA0], &unk_227680918);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227540FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEE00, &qword_22768B950);
    v13 = sub_226E9CFD0(&qword_27D7BEE08, &qword_27D7BEE00, &qword_22768B950, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B248, MEMORY[0x277D53E10], &unk_227684278);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227541138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEDD8, &qword_22768B940);
    v13 = sub_226E9CFD0(&qword_27D7BEDE0, &qword_27D7BEDD8, &qword_22768B940, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5680, MEMORY[0x277D52700], &unk_227673850);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227541278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEDC8, &qword_22768B938);
    v13 = sub_226E9CFD0(&qword_27D7BEDD0, &qword_27D7BEDC8, &qword_22768B938, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5520, MEMORY[0x277D539C0], &unk_2276788A0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_2275413B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEDB8, &qword_22768B930);
    v13 = sub_226E9CFD0(&qword_27D7BEDC0, &qword_27D7BEDB8, &qword_22768B930, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B848, MEMORY[0x277D51680], &unk_22767CA48);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_2275414F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEDA8, &qword_22768B928);
    v13 = sub_226E9CFD0(&qword_27D7BEDB0, &qword_27D7BEDA8, &qword_22768B928, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B6D8, MEMORY[0x277D52038], &unk_227684FA0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227541638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BED98, &qword_22768B920);
    v13 = sub_226E9CFD0(&qword_27D7BEDA0, &qword_27D7BED98, &qword_22768B920, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B4A8, MEMORY[0x277D535A0], &unk_2276827F0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227541778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BED88, &qword_22768B918);
    v13 = sub_226E9CFD0(&qword_27D7BED90, &qword_27D7BED88, &qword_22768B918, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139B630, MEMORY[0x277D526D0], &unk_227682DD0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_2275418B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BED78, &qword_22768B910);
    v13 = sub_226E9CFD0(&qword_27D7BED80, &qword_27D7BED78, &qword_22768B910, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BEC88, MEMORY[0x277D50D88], &unk_22767F350);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_2275419F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BED68, &qword_22768B908);
    v13 = sub_226E9CFD0(&qword_27D7BED70, &qword_27D7BED68, &qword_22768B908, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_28139BD60, MEMORY[0x277D4FCA8], &unk_227680DC8);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227541B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BED58, &qword_22768B900);
    v13 = sub_226E9CFD0(&qword_27D7BED60, &qword_27D7BED58, &qword_22768B900, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5810, MEMORY[0x277D4FF88], &unk_227673E30);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227541C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BED48, &qword_22768B8F8);
    v13 = sub_226E9CFD0(&qword_27D7BED50, &qword_27D7BED48, &qword_22768B8F8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A55E0, MEMORY[0x277D52F78], &unk_22768BFE8);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227541DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BED38, &qword_22768B8F0);
    v13 = sub_226E9CFD0(&qword_27D7BED40, &qword_27D7BED38, &qword_22768B8F0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A57C8, MEMORY[0x277D50978], &unk_22767D4A0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227541EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BED20, &qword_22768B8E8);
    v13 = sub_226E9CFD0(&qword_27D7BED28, &qword_27D7BED20, &qword_22768B8E8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_27D7BED30, MEMORY[0x277D526A8], &unk_22768D418);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227542038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BED10, &qword_22768B8E0);
    v13 = sub_226E9CFD0(&qword_27D7BED18, &qword_27D7BED10, &qword_22768B8E0, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A5598, MEMORY[0x277D53450], &unk_227673D00);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227542178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = (a6 + 32);
  v7 = *(a6 + 16) + 1;
  v18[2] = a3;
  v18[3] = a4;
  while (--v7)
  {
    v8 = v6 + 5;
    v10 = v6[3];
    v9 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v10);
    v11 = *(v9 + 16);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BED00, &qword_22768B8D8);
    v13 = sub_226E9CFD0(&qword_27D7BED08, &qword_27D7BED00, &qword_22768B8D8, MEMORY[0x277D83FB0]);
    v14 = sub_226EB1040(&qword_2813A55C0, MEMORY[0x277D530A8], &unk_227672EB0);
    v15 = v11(v18, a5, v12, v13, v14, v10, v9);
    v6 = v8;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_227542A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = (a3 + 32);
  v9 = *(a3 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 5;
    v11 = v8[3];
    v12 = v8[4];
    __swift_project_boxed_opaque_existential_0(v8, v11);
    v13 = *(v12 + 24);
    v14 = a4();
    v15 = v13(a1, a5, a2, a5, v14, v11, v12);
    v8 = v10;
    if (v15)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_2275437B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = (a3 + 32);
  v11 = *(a3 + 16) + 1;
  while (--v11)
  {
    v12 = v10 + 5;
    v13 = v10[3];
    v14 = v10[4];
    __swift_project_boxed_opaque_existential_0(v10, v13);
    v15 = *(v14 + 24);
    v16 = a6();
    v17 = v15(a1, v9, a2, v9, v16, v13, v14);
    v10 = v12;
    if (v17)
    {
      return v17;
    }
  }

  return 0;
}

uint64_t sub_227543A38@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7, v9);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

void sub_227543C90(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v32 = a1;
  v28 = a4;
  v38 = a3(0);
  MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v31 = &v28 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v33 = v9 + 32;
  v34 = v9;
  v29 = (v9 + 8);
  v30 = v9 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v14)
  {
    while (1)
    {
      v36 = v5;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v5 = v23;
      if (v23)
      {
        (*v29)(v37, v38);

        return;
      }

      if (v24)
      {
        break;
      }

      v14 &= v14 - 1;
      (*v29)(v37, v38);
      v16 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
LABEL_14:
    (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        v25 = 1;
        v26 = v28;
        goto LABEL_14;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        v36 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}