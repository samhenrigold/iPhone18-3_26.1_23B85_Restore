uint64_t sub_26573ABC8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26573AC4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26574FED8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_265750098();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_26574FEA8();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_26573ADC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26574FED8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_265750098();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_26574FEA8();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_26573AF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26574FED8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26573AFFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26574FED8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

id sub_26573B100@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

id sub_26573B134@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

id sub_26573B180@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCancelled];
  *a2 = result;
  return result;
}

uint64_t sub_26573B200()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26573B23C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26573B294()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26573B3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_265750048();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26573B428(uint64_t a1, uint64_t a2)
{
  v4 = sub_265750048();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26573B54C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26573B598()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_26573B618@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____SEHostable__context) layer];
  *a2 = result;
  return result;
}

id sub_26573B684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t GPUServiceExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26574FEE8();
}

uint64_t sub_26573B8DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26573B8FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

BOOL sub_26573B954(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void sub_26573B9CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t NetworkingServiceExtension._backgroundTransferManager.getter()
{
  if (qword_28001C0A0 != -1)
  {
    swift_once();
  }
}

uint64_t BackgroundTransferManager.Download.init(sourceURL:destinationURL:title:type:description:sourceDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v58 = a8;
  v59 = a5;
  v55 = a6;
  v56 = a7;
  v52 = a3;
  v60 = a2;
  v57 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C1A0, &unk_265751360);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v53 = sub_265750098();
  v17 = *(v53 - 8);
  v18 = MEMORY[0x28223BE20](v53);
  v49 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v50 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - v22;
  v24 = sub_26574FEA8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26574FEC8();
  v28 = type metadata accessor for BackgroundTransferManager.Download(0);
  v29 = v28[11];
  *(a9 + v29) = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
  v54 = v24;
  if (a4)
  {
    v30 = v52;
  }

  else
  {
    sub_26574FE98();
    v30 = sub_26574FE88();
    a4 = v31;
    (*(v25 + 8))(v27, v24);
  }

  v52 = a10;
  v32 = (a9 + v28[5]);
  *v32 = v30;
  v32[1] = a4;
  v33 = v59;
  sub_26573C4D8(v59, v16);
  v34 = *(v17 + 48);
  v35 = v53;
  if (v34(v16, 1, v53) == 1)
  {
    sub_26573FADC(v16, &qword_28001C1A0, &unk_265751360);
    sub_26574FE78();
    sub_265750088();
    v36 = v51;
    sub_265750078();
    if (v34(v36, 1, v35) == 1)
    {
      v37 = v50;
      sub_265750088();
      sub_26573FADC(v59, &qword_28001C1A0, &unk_265751360);
      v38 = v34(v36, 1, v35);
      v39 = v37;
      v40 = v54;
      if (v38 != 1)
      {
        sub_26573FADC(v36, &qword_28001C1A0, &unk_265751360);
      }
    }

    else
    {
      sub_26573FADC(v59, &qword_28001C1A0, &unk_265751360);
      v39 = v50;
      (*(v17 + 32))(v50, v36, v35);
      v40 = v54;
    }

    (*(v17 + 32))(a9 + v28[6], v39, v35);
    v42 = v60;
  }

  else
  {
    sub_26573FADC(v33, &qword_28001C1A0, &unk_265751360);
    v41 = *(v17 + 32);
    v41(v23, v16, v35);
    v41((a9 + v28[6]), v23, v35);
    v42 = v60;
    v40 = v54;
  }

  v43 = (a9 + v28[7]);
  v44 = v56;
  *v43 = v55;
  v43[1] = v44;
  v45 = *(v25 + 32);
  v45(a9 + v28[8], v57, v40);
  v46 = (a9 + v28[9]);
  v47 = v52;
  *v46 = v58;
  v46[1] = v47;
  return (v45)(a9 + v28[10], v42, v40);
}

uint64_t BackgroundTransferManager.Download.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26574FED8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BackgroundTransferManager.Download.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for BackgroundTransferManager.Download(0) + 20));

  return v1;
}

uint64_t BackgroundTransferManager.Download.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BackgroundTransferManager.Download(0) + 24);
  v4 = sub_265750098();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BackgroundTransferManager.Download.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for BackgroundTransferManager.Download(0) + 28));

  return v1;
}

uint64_t BackgroundTransferManager.Download.sourceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BackgroundTransferManager.Download(0) + 32);
  v4 = sub_26574FEA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BackgroundTransferManager.Download.sourceDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for BackgroundTransferManager.Download(0) + 36));

  return v1;
}

uint64_t BackgroundTransferManager.Download.destinationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BackgroundTransferManager.Download(0) + 40);
  v4 = sub_26574FEA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BackgroundTransferManager.Download.destinationURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BackgroundTransferManager.Download(0) + 40);
  v4 = sub_26574FEA8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

id BackgroundTransferManager.Download.progress.getter()
{
  v1 = *(v0 + *(type metadata accessor for BackgroundTransferManager.Download(0) + 44));

  return v1;
}

uint64_t sub_26573C2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_26574FEA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26573C33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_26574FEA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26573C3BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26574FED8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26573C428()
{
  type metadata accessor for BackgroundTransferManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  qword_28001C5A8 = v0;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26573C4D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C1A0, &unk_265751360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26573C548(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26573C568, v1, 0);
}

uint64_t sub_26573C568()
{
  sub_26573CB70(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26573C5C8()
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C1A8, &qword_265751370);
  v1 = MEMORY[0x28223BE20](v55);
  v54 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v53 = &v47 - v4;
  MEMORY[0x28223BE20](v3);
  v52 = &v47 - v5;
  result = swift_beginAccess();
  v7 = *(v0 + 112);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    *&v60[0] = MEMORY[0x277D84F90];

    sub_26573D98C(0, v8, 0);
    v9 = *&v60[0];
    v10 = v7 + 64;
    result = sub_265750308();
    v11 = result;
    v12 = 0;
    v48 = v7 + 72;
    v49 = v8;
    v50 = v7 + 64;
    v51 = v7;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v7 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_35;
      }

      v56 = v12;
      v57 = *(v7 + 36);
      v58 = 1 << v11;
      v15 = v55;
      v16 = *(v55 + 48);
      v17 = *(v7 + 48);
      v18 = sub_26574FED8();
      v19 = *(v18 - 8);
      v59 = v9;
      v20 = v19;
      v21 = v52;
      (*(v19 + 16))(v52, v17 + *(v19 + 72) * v11, v18);
      v22 = *(v7 + 56);
      v23 = (type metadata accessor for BackgroundTransferManager._Transfer(0) - 8);
      sub_26573F708(v22 + *(*v23 + 72) * v11, &v21[v16], type metadata accessor for BackgroundTransferManager._Transfer);
      v24 = v53;
      (*(v20 + 32))(v53, v21, v18);
      sub_26573F770(&v21[v16], v24 + *(v15 + 48), type metadata accessor for BackgroundTransferManager._Transfer);
      v25 = v54;
      sub_26573EE80(v24, v54);
      v26 = v25 + *(v15 + 48);
      sub_26573EEF0(v26 + v23[7], &v62);
      sub_26573EF54(v26);
      (*(v20 + 8))(v25, v18);
      v9 = v59;
      *&v60[0] = v59;
      v28 = *(v59 + 16);
      v27 = *(v59 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_26573D98C((v27 > 1), v28 + 1, 1);
        v9 = *&v60[0];
      }

      *(v9 + 16) = v28 + 1;
      result = sub_26573EFB0(&v62, v9 + 40 * v28 + 32);
      v7 = v51;
      v13 = 1 << *(v51 + 32);
      if (v11 >= v13)
      {
        goto LABEL_36;
      }

      v10 = v50;
      v29 = *(v50 + 8 * v14);
      if ((v29 & v58) == 0)
      {
        goto LABEL_37;
      }

      if (v57 != *(v51 + 36))
      {
        goto LABEL_38;
      }

      v30 = v29 & (-2 << (v11 & 0x3F));
      if (v30)
      {
        v13 = __clz(__rbit64(v30)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v14 << 6;
        v32 = v14 + 1;
        v33 = (v48 + 8 * v14);
        while (v32 < (v13 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_26573F058(v11, v57, 0);
            v13 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_26573F058(v11, v57, 0);
      }

LABEL_4:
      v12 = v56 + 1;
      v11 = v13;
      if (v56 + 1 == v49)
      {

        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v36 = *(v9 + 16);
    if (!v36)
    {
      v39 = MEMORY[0x277D84F90];
LABEL_32:

      return v39;
    }

    v37 = 0;
    v38 = v9 + 32;
    v39 = MEMORY[0x277D84F90];
    while (v37 < *(v9 + 16))
    {
      v40 = v9;
      sub_26573EEF0(v38, &v62);
      v41 = v63;
      v42 = v64;
      __swift_project_boxed_opaque_existential_1(&v62, v63);
      v43 = (*(v42 + 40))(v41, v42);
      LOBYTE(v41) = [v43 isFinished];

      if (v41)
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v62);
        v9 = v40;
      }

      else
      {
        sub_26573EFB0(&v62, v60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26573D98C(0, *(v39 + 16) + 1, 1);
          v39 = v61;
        }

        v9 = v40;
        v46 = *(v39 + 16);
        v45 = *(v39 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_26573D98C((v45 > 1), v46 + 1, 1);
          v39 = v61;
        }

        *(v39 + 16) = v46 + 1;
        result = sub_26573EFB0(v60, v39 + 40 * v46 + 32);
      }

      ++v37;
      v38 += 40;
      if (v36 == v37)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26573CB70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C210, qword_265751540);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v33 - v4;
  v44 = sub_26574FED8();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for BackgroundTransferManager.Download(0);
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  v9 = *(MEMORY[0x28223BE20](v37) + 44);
  v34 = a1;
  v46 = *(a1 + v9);
  v10 = v46;
  swift_getKeyPath();
  v38 = sub_26574FE68();

  v46 = v10;
  swift_getKeyPath();
  sub_26573F708(a1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BackgroundTransferManager.Download);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  sub_26573F770(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for BackgroundTransferManager.Download);

  v36 = sub_26574FE68();

  v46 = v10;
  swift_getKeyPath();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  v35 = v1;

  v13 = v34;
  sub_26573F708(v34, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BackgroundTransferManager.Download);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_26573F770(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v11, type metadata accessor for BackgroundTransferManager.Download);
  v15 = sub_26574FE68();

  v16 = v39;
  v17 = v40;
  v18 = &v39[*(v40 + 20)];
  v18[3] = v37;
  v18[4] = sub_26573F0BC(&qword_28001C218, type metadata accessor for BackgroundTransferManager.Download, &protocol conformance descriptor for BackgroundTransferManager.Download);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_26573F708(v13, boxed_opaque_existential_1, type metadata accessor for BackgroundTransferManager.Download);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C220, &qword_2657515F0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_265751340;
  v21 = v38;
  v22 = v36;
  *(v20 + 32) = v38;
  *(v20 + 40) = v22;
  *(v20 + 48) = v15;
  v23 = *(v42 + 16);
  v24 = boxed_opaque_existential_1;
  v25 = v44;
  v23(v16, v24, v44);
  v26 = v17;
  *(v16 + *(v17 + 24)) = v20;
  v27 = v41;
  v23(v41, v16, v25);
  v28 = v45;
  sub_26573F708(v16, v45, type metadata accessor for BackgroundTransferManager._Transfer);
  (*(v43 + 56))(v28, 0, 1, v26);
  swift_beginAccess();
  v29 = v21;
  v30 = v22;
  v31 = v15;
  sub_26573D6F4(v28, v27);
  swift_endAccess();

  return sub_26573EF54(v16);
}

uint64_t sub_26573D0CC(void **a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C238, &qword_265751618);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_265751350;
  MEMORY[0x26675C8B0](0x73736572676F7250, 0xEB0000000020203ALL);
  [v1 fractionCompleted];
  sub_265750268();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_2657504F8();
}

uint64_t sub_26573D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C210, qword_265751540);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26573D254, 0, 0);
}

uint64_t sub_26573D254()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C238, &qword_265751618);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_265751350;
  v4 = [v2 isFinished];
  v5 = v4 == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x26675C8B0](v6, v7);

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0x64656873696E6946;
  *(v3 + 40) = 0xEB0000000020203ALL;
  sub_2657504F8();

  return MEMORY[0x2822009F8](sub_26573D398, v1, 0);
}

uint64_t sub_26573D398()
{
  v2 = v0[7];
  v1 = v0[8];
  swift_beginAccess();
  sub_26573DAF4(v1, v2);
  sub_26573FADC(v1, &qword_28001C210, qword_265751540);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26573D44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C210, qword_265751540);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26573D4EC, 0, 0);
}

uint64_t sub_26573D4EC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C238, &qword_265751618);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_265751350;
  v4 = [v2 isCancelled];
  v5 = v4 == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x26675C8B0](v6, v7);

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0x64656C65636E6143;
  *(v3 + 40) = 0xEB0000000020203ALL;
  sub_2657504F8();

  swift_unownedRetainStrong();

  return MEMORY[0x2822009F8](sub_26573D638, v1, 0);
}

uint64_t sub_26573D638()
{
  v2 = v0[7];
  v1 = v0[8];
  swift_beginAccess();
  sub_26573DAF4(v1, v2);
  sub_26573FADC(v1, &qword_28001C210, qword_265751540);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26573D6F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C210, qword_265751540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_26573FADC(a1, &qword_28001C210, qword_265751540);
    sub_26573DAF4(v7, a2);
    v12 = sub_26574FED8();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_26573FADC(v7, &qword_28001C210, qword_265751540);
  }

  else
  {
    sub_26573F770(a1, v10, type metadata accessor for BackgroundTransferManager._Transfer);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_26573E474(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_26574FED8();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t BackgroundTransferManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BackgroundTransferManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_26573D98C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26573D9AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26573D9AC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C200, &qword_265751530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C208, &qword_265751538);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26573DAF4@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_26574E080(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26573E74C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_26574FED8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for BackgroundTransferManager._Transfer(0);
    v20 = *(v13 - 8);
    sub_26573F770(v12 + *(v20 + 72) * v7, a1, type metadata accessor for BackgroundTransferManager._Transfer);
    sub_26573E130(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for BackgroundTransferManager._Transfer(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_26573DC90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26574FED8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C228, &qword_2657515F8);
  v43 = v4;
  result = sub_265750428();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26573F770(v27 + v28 * v24, v47, type metadata accessor for BackgroundTransferManager._Transfer);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26573F708(v29 + v28 * v24, v47, type metadata accessor for BackgroundTransferManager._Transfer);
      }

      sub_26573F0BC(&qword_28001C1B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_265750198();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_26573F770(v47, *(v12 + 56) + v28 * v20, type metadata accessor for BackgroundTransferManager._Transfer);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

unint64_t sub_26573E130(int64_t a1, uint64_t a2)
{
  v4 = sub_26574FED8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_265750318();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_26573F0BC(&qword_28001C1B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_265750198();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for BackgroundTransferManager._Transfer(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26573E474(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26574FED8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26574E080(a2);
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
      sub_26573E74C();
      goto LABEL_7;
    }

    sub_26573DC90(v17, a3 & 1);
    v24 = sub_26574E080(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_26573E65C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2657504A8();
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
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for BackgroundTransferManager._Transfer(0) - 8) + 72) * v14;

  return sub_26573FB3C(a1, v22);
}

uint64_t sub_26573E65C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26574FED8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  result = sub_26573F770(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for BackgroundTransferManager._Transfer);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_26573E74C()
{
  v1 = v0;
  v2 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26574FED8();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C228, &qword_2657515F8);
  v5 = *v0;
  v6 = sub_265750418();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_26573F708(v26 + v28, v37, type metadata accessor for BackgroundTransferManager._Transfer);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_26573F770(v29, *(v18 + 56) + v28, type metadata accessor for BackgroundTransferManager._Transfer);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_26573EA70(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for BackgroundTransferManager.Download(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *a1;
  v14 = sub_265750258();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_26573F708(a4, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BackgroundTransferManager.Download);
  v15 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v13;
  v16[5] = a3;
  sub_26573F770(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for BackgroundTransferManager.Download);
  v17 = v13;

  sub_26573FF90(0, 0, v12, &unk_265751628, v16);
}

uint64_t sub_26573EC4C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for BackgroundTransferManager.Download(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *a1;
  v14 = sub_265750258();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_26573F708(a4, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BackgroundTransferManager.Download);
  v15 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v13;
  v16[5] = a3;
  sub_26573F770(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for BackgroundTransferManager.Download);
  v17 = v13;
  swift_unownedRetain();
  sub_26573FF90(0, 0, v12, &unk_265751610, v16);
}

uint64_t sub_26573EE48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26573EE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C1A8, &qword_265751370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26573EEF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26573EF54(uint64_t a1)
{
  v2 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26573EFB0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26573F058(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_26573F064(uint64_t a1)
{
  result = sub_26573F0BC(&qword_28001C1B0, type metadata accessor for BackgroundTransferManager.Download, &protocol conformance descriptor for BackgroundTransferManager.Download);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26573F0BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of BackgroundTransferManager.register(download:)(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26573F2B0;

  return v6(a1);
}

uint64_t sub_26573F2B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_26573F3F0(uint64_t a1)
{
  sub_26574FED8();
  if (v1 <= 0x3F)
  {
    sub_265750098();
    if (v2 <= 0x3F)
    {
      sub_26573F4D0();
      if (v3 <= 0x3F)
      {
        sub_26574FEA8();
        if (v4 <= 0x3F)
        {
          sub_26573F520();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26573F4D0()
{
  if (!qword_28001C1D0)
  {
    v0 = sub_2657502E8();
    if (!v1)
    {
      atomic_store(v0, &qword_28001C1D0);
    }
  }
}

unint64_t sub_26573F520()
{
  result = qword_28001C1D8;
  if (!qword_28001C1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28001C1D8);
  }

  return result;
}

void sub_26573F594(uint64_t a1)
{
  sub_26574FED8();
  if (v1 <= 0x3F)
  {
    sub_26573F630();
    if (v2 <= 0x3F)
    {
      sub_26573F694(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26573F630()
{
  result = qword_28001C1F0;
  if (!qword_28001C1F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28001C1F0);
  }

  return result;
}

void sub_26573F694(uint64_t a1)
{
  if (!qword_28001C1F8)
  {
    sub_26574FE28();
    v1 = sub_265750228();
    if (!v2)
    {
      atomic_store(v1, &qword_28001C1F8);
    }
  }
}

uint64_t sub_26573F708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26573F770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  v3 = (type metadata accessor for BackgroundTransferManager.Download(0) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(*v3 + 64);
  a1(*(v1 + 16));
  v7 = sub_26574FED8();
  (*(*(v7 - 8) + 8))(v1 + v5, v7);

  v8 = v3[8];
  v9 = sub_265750098();
  (*(*(v9 - 8) + 8))(v1 + v5 + v8, v9);

  v10 = v3[10];
  v11 = sub_26574FEA8();
  v12 = *(*(v11 - 8) + 8);
  v12(v1 + v5 + v10, v11);

  v12(v1 + v5 + v3[12], v11);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_26573F9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for BackgroundTransferManager.Download(0) - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26573FADC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26573FB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundTransferManager._Transfer(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26573FBA0(uint64_t a1)
{
  v4 = *(type metadata accessor for BackgroundTransferManager.Download(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26573FF88;

  return sub_26573D44C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_29Tm(void (*a1)(void))
{
  v3 = (type metadata accessor for BackgroundTransferManager.Download(0) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*v3 + 64);
  swift_unknownObjectRelease();

  a1(*(v1 + 40));
  v7 = sub_26574FED8();
  (*(*(v7 - 8) + 8))(v1 + v5, v7);

  v8 = v3[8];
  v9 = sub_265750098();
  (*(*(v9 - 8) + 8))(v1 + v5 + v8, v9);

  v10 = v3[10];
  v11 = sub_26574FEA8();
  v12 = *(*(v11 - 8) + 8);
  v12(v1 + v5 + v10, v11);

  v12(v1 + v5 + v3[12], v11);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_26573FE80(uint64_t a1)
{
  v4 = *(type metadata accessor for BackgroundTransferManager.Download(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26573FF88;

  return sub_26573D1B4(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_26573FF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_265743ED8(a3, v25 - v10);
  v12 = sub_265750258();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_265743F48(v11);
  }

  else
  {
    sub_265750248();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_265750238();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2657501D8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_265743F48(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_265743F48(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26574026C()
{
  type metadata accessor for _ServiceManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_28001C240 = v0;
  return result;
}

uint64_t static _ServiceManager.shared.getter()
{
  if (qword_28001C0A8 != -1)
  {
    swift_once();
  }
}

uint64_t _ServiceManager.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_265740380()
{
  sub_265750508();
  MEMORY[0x26675CBD0](1);
  return sub_265750528();
}

uint64_t sub_2657403EC(uint64_t a1)
{
  sub_265750508();
  MEMORY[0x26675CBD0](1);
  return sub_265750528();
}

ServiceExtensions::_ServiceManager::ServiceExtensionPointIdentifier_optional __swiftcall _ServiceManager.ServiceExtensionPointIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_265750448();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t _ServiceManager.ServiceExtensionPointIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t sub_265740500(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000020;
  v3 = *a1;
  v4 = "owser-engine.networking";
  if (v3 == 1)
  {
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (v3 == 1)
  {
    v6 = "owser-engine.networking";
  }

  else
  {
    v6 = "owser-engine.gpu";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000027;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "_LockdownVersion";
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000024;
    v4 = "owser-engine.gpu";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000027;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "_LockdownVersion";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_265750488();
  }

  return v11 & 1;
}

uint64_t sub_2657405DC()
{
  sub_265750508();
  sub_2657501E8();

  return sub_265750528();
}

uint64_t sub_265740678(uint64_t a1)
{
  sub_2657501E8();
}

uint64_t sub_265740700(uint64_t a1)
{
  sub_265750508();
  sub_2657501E8();

  return sub_265750528();
}

void sub_2657407A4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000020;
  v3 = "owser-engine.networking";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000024;
    v3 = "owser-engine.gpu";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000027;
    v4 = "_LockdownVersion";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t _ServiceManager.networkProcess(serviceIdentifier:onInteruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_265750108();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_26574FFC8();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v6[13] = *(v9 + 64);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  sub_26574FF88();
  v6[17] = swift_task_alloc();
  v10 = sub_26574FF58();
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v11 = sub_26574FFF8();
  v6[22] = v11;
  v6[23] = *(v11 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265740A40, v5, 0);
}

uint64_t sub_265740A40()
{

  sub_26574FFD8();
  v3 = sub_26574FFE8();
  if (v3 == 0xD000000000000027 && 0x8000000265752300 == v4)
  {
  }

  else
  {
    v6 = sub_265750488();

    if ((v6 & 1) == 0)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v8 = sub_2657501B8();
      [v7 initWithDomain:v8 code:1 userInfo:0];

      swift_willThrow();
      (*(v0[23] + 8))(v0[25], v0[22]);

      v1 = v0[1];

      return v1();
    }
  }

  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[18];
  v12 = v0[19];
  (*(v0[23] + 16))(v0[24], v0[25], v0[22]);

  sub_26574FF28();
  sub_26574FF48();
  sub_26574FF78();
  sub_26574FF38();
  (*(v12 + 16))(v10, v9, v11);
  v13 = swift_task_alloc();
  v0[26] = v13;
  *v13 = v0;
  v13[1] = sub_265740D08;
  v14 = v0[20];
  v15 = v0[16];

  return MEMORY[0x282116828](v15, v14);
}

uint64_t sub_265740D08()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_2657443C8;
  }

  else
  {
    v4 = sub_265740E34;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265740E34()
{
  v22 = v0[25];
  v20 = v0[23];
  v21 = v0[22];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[21];
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[11];
  v14 = v0[10];
  v5 = v0[9];
  v15 = v0[8];
  v16 = v0[16];
  v6 = v0[2];
  v7 = *(v3 + 16);
  v7(v2);
  (v7)(v6, v2, v4);
  (v7)(v1, v2, v4);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v1, v4);
  *v14 = 1;
  (*(v5 + 104))(v14, *MEMORY[0x277D85188], v15);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v10 = sub_2657479DC(sub_26574370C, v9, v14);

  v11 = *(v3 + 8);
  v11(v2, v4);
  v11(v16, v4);
  (*(v17 + 8))(v19, v18);
  (*(v20 + 8))(v22, v21);
  *(v6 + *(type metadata accessor for _NetworkProcess(0) + 20)) = v10;

  v12 = v0[1];

  return v12();
}

uint64_t _ServiceManager.gpuProcess(serviceIdentifier:onInteruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_265750108();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_26574FFC8();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v6[13] = *(v9 + 64);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  sub_26574FF88();
  v6[17] = swift_task_alloc();
  v10 = sub_26574FF58();
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v11 = sub_26574FFF8();
  v6[22] = v11;
  v6[23] = *(v11 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2657412FC, v5, 0);
}

uint64_t sub_2657412FC()
{

  sub_26574FFD8();
  v3 = sub_26574FFE8();
  if (v3 == 0xD000000000000020 && 0x8000000265752330 == v4)
  {
  }

  else
  {
    v6 = sub_265750488();

    if ((v6 & 1) == 0)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v8 = sub_2657501B8();
      [v7 initWithDomain:v8 code:1 userInfo:0];

      swift_willThrow();
      (*(v0[23] + 8))(v0[25], v0[22]);

      v1 = v0[1];

      return v1();
    }
  }

  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[18];
  v12 = v0[19];
  (*(v0[23] + 16))(v0[24], v0[25], v0[22]);

  sub_26574FF28();
  sub_26574FF48();
  sub_26574FF78();
  sub_26574FF38();
  (*(v12 + 16))(v10, v9, v11);
  v13 = swift_task_alloc();
  v0[26] = v13;
  *v13 = v0;
  v13[1] = sub_2657415C4;
  v14 = v0[20];
  v15 = v0[16];

  return MEMORY[0x282116828](v15, v14);
}

uint64_t sub_2657415C4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_265741978;
  }

  else
  {
    v4 = sub_2657416F0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2657416F0()
{
  v22 = v0[25];
  v20 = v0[23];
  v21 = v0[22];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[21];
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[11];
  v14 = v0[10];
  v5 = v0[9];
  v15 = v0[8];
  v16 = v0[16];
  v6 = v0[2];
  v7 = *(v3 + 16);
  v7(v2);
  (v7)(v6, v2, v4);
  (v7)(v1, v2, v4);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v1, v4);
  *v14 = 1;
  (*(v5 + 104))(v14, *MEMORY[0x277D85188], v15);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v10 = sub_2657479DC(sub_26574370C, v9, v14);

  v11 = *(v3 + 8);
  v11(v2, v4);
  v11(v16, v4);
  (*(v17 + 8))(v19, v18);
  (*(v20 + 8))(v22, v21);
  *(v6 + *(type metadata accessor for _GPUProcess(0) + 20)) = v10;

  v12 = v0[1];

  return v12();
}

uint64_t sub_265741978()
{
  (*(v0[19] + 8))(v0[21], v0[18]);
  (*(v0[23] + 8))(v0[25], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t _ServiceManager.contentProcess(serviceIdentifier:onInteruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_265750108();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_26574FFC8();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v6[13] = *(v9 + 64);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  sub_26574FF88();
  v6[17] = swift_task_alloc();
  v10 = sub_26574FF58();
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v11 = sub_26574FFF8();
  v6[22] = v11;
  v6[23] = *(v11 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265741CBC, v5, 0);
}

uint64_t sub_265741CBC()
{

  sub_26574FFD8();
  v3 = sub_26574FFE8();
  if (v3 == 0xD000000000000024 && 0x8000000265752360 == v4)
  {
  }

  else
  {
    v6 = sub_265750488();

    if ((v6 & 1) == 0)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v8 = sub_2657501B8();
      [v7 initWithDomain:v8 code:1 userInfo:0];

      swift_willThrow();
      (*(v0[23] + 8))(v0[25], v0[22]);

      v1 = v0[1];

      return v1();
    }
  }

  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[18];
  v12 = v0[19];
  (*(v0[23] + 16))(v0[24], v0[25], v0[22]);

  sub_26574FF18();
  sub_26574FF48();
  sub_26574FF78();
  sub_26574FF38();
  (*(v12 + 16))(v10, v9, v11);
  v13 = swift_task_alloc();
  v0[26] = v13;
  *v13 = v0;
  v13[1] = sub_265741F84;
  v14 = v0[20];
  v15 = v0[16];

  return MEMORY[0x282116828](v15, v14);
}

uint64_t sub_265741F84()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_2657443C8;
  }

  else
  {
    v4 = sub_2657420B0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2657420B0()
{
  v22 = v0[25];
  v20 = v0[23];
  v21 = v0[22];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[21];
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[11];
  v14 = v0[10];
  v5 = v0[9];
  v15 = v0[8];
  v16 = v0[16];
  v6 = v0[2];
  v7 = *(v3 + 16);
  v7(v2);
  (v7)(v6, v2, v4);
  (v7)(v1, v2, v4);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v1, v4);
  *v14 = 1;
  (*(v5 + 104))(v14, *MEMORY[0x277D85188], v15);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v10 = sub_2657479DC(sub_26574370C, v9, v14);

  v11 = *(v3 + 8);
  v11(v2, v4);
  v11(v16, v4);
  (*(v17 + 8))(v19, v18);
  (*(v20 + 8))(v22, v21);
  *(v6 + *(type metadata accessor for _ContentProcess(0) + 20)) = v10;

  v12 = v0[1];

  return v12();
}

id sub_265742394()
{
  result = [objc_allocWithZone(type metadata accessor for _SEServiceManager()) init];
  qword_28001C5B0 = result;
  return result;
}

id _SEServiceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2657423F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for _ContentProcess(0);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265742498, 0, 0);
}

uint64_t sub_265742498()
{
  if (qword_28001C0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier);
  v3 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier + 8);
  v0[9] = v3;
  v4 = (v1 + OBJC_IVAR____SEServiceConfiguration_interruptionHandler);
  v5 = *v4;
  v6 = v4[1];
  v0[10] = v6;

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_2657425C4;
  v8 = v0[8];

  return _ServiceManager.contentProcess(serviceIdentifier:onInteruption:)(v8, v2, v3, v5, v6);
}

uint64_t sub_2657425C4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2657443C0;
  }

  else
  {

    v2 = sub_2657426E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2657426E8()
{
  super_class = v0[3].super_class;
  receiver = v0[4].receiver;
  v3 = v0[2].super_class;
  sub_2657442F8(receiver, super_class, type metadata accessor for _ContentProcess);
  v4 = type metadata accessor for _SEContentProcess(0);
  v5 = objc_allocWithZone(v4);
  sub_2657442F8(super_class, v5 + OBJC_IVAR____SEContentProcess_inner, type metadata accessor for _ContentProcess);
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_265744360(super_class, type metadata accessor for _ContentProcess);
  v3(v6, 0);

  sub_265744360(receiver, type metadata accessor for _ContentProcess);

  v7 = v0->super_class;

  return v7();
}

uint64_t sub_265742848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for _NetworkProcess(0);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2657428E8, 0, 0);
}

uint64_t sub_2657428E8()
{
  if (qword_28001C0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier);
  v3 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier + 8);
  v0[9] = v3;
  v4 = (v1 + OBJC_IVAR____SEServiceConfiguration_interruptionHandler);
  v5 = *v4;
  v6 = v4[1];
  v0[10] = v6;

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_265742A14;
  v8 = v0[8];

  return _ServiceManager.networkProcess(serviceIdentifier:onInteruption:)(v8, v2, v3, v5, v6);
}

uint64_t sub_265742A14()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2657443C0;
  }

  else
  {

    v2 = sub_265742B38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265742B38()
{
  super_class = v0[3].super_class;
  receiver = v0[4].receiver;
  v3 = v0[2].super_class;
  sub_2657442F8(receiver, super_class, type metadata accessor for _NetworkProcess);
  v4 = type metadata accessor for _SENetworkProcess(0);
  v5 = objc_allocWithZone(v4);
  sub_2657442F8(super_class, v5 + OBJC_IVAR____SENetworkProcess_inner, type metadata accessor for _NetworkProcess);
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_265744360(super_class, type metadata accessor for _NetworkProcess);
  v3(v6, 0);

  sub_265744360(receiver, type metadata accessor for _NetworkProcess);

  v7 = v0->super_class;

  return v7();
}

uint64_t sub_265742C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for _GPUProcess(0);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265742D38, 0, 0);
}

uint64_t sub_265742D38()
{
  if (qword_28001C0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier);
  v3 = *(v1 + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier + 8);
  v0[9] = v3;
  v4 = (v1 + OBJC_IVAR____SEServiceConfiguration_interruptionHandler);
  v5 = *v4;
  v6 = v4[1];
  v0[10] = v6;

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_265742E64;
  v8 = v0[8];

  return _ServiceManager.gpuProcess(serviceIdentifier:onInteruption:)(v8, v2, v3, v5, v6);
}

uint64_t sub_265742E64()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2657430AC;
  }

  else
  {

    v2 = sub_265742F88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265742F88()
{
  super_class = v0[3].super_class;
  receiver = v0[4].receiver;
  v3 = v0[2].super_class;
  sub_2657442F8(receiver, super_class, type metadata accessor for _GPUProcess);
  v4 = type metadata accessor for _SEGPUProcess(0);
  v5 = objc_allocWithZone(v4);
  sub_2657442F8(super_class, v5 + OBJC_IVAR____SEGPUProcess_inner, type metadata accessor for _GPUProcess);
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_265744360(super_class, type metadata accessor for _GPUProcess);
  v3(v6, 0);

  sub_265744360(receiver, type metadata accessor for _GPUProcess);

  v7 = v0->super_class;

  return v7();
}

uint64_t sub_2657430AC()
{
  v1 = v0[12];
  v2 = v0[5];

  v3 = sub_26574FE48();
  v2(0, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_265743198(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a4);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_265750258();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a3;
  v18[5] = a7;
  v18[6] = v16;
  v19 = a3;
  sub_26573FF90(0, 0, v14, a8, v18);
}

id _SEServiceManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _SEServiceManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2657434D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_265743680(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_265743724(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26574381C;

  return v6(a1);
}

uint64_t sub_26574381C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_26574FFC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26574399C(uint64_t (*a1)(uint64_t))
{
  v2 = *(sub_26574FFC8() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_265743A6C()
{
  result = qword_28001C248;
  if (!qword_28001C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C248);
  }

  return result;
}

unint64_t sub_265743AC4()
{
  result = qword_28001C250;
  if (!qword_28001C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C250);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ServiceManager.ServiceExtensionsErrorCodes(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for _ServiceManager.ServiceExtensionsErrorCodes(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ServiceManager.ServiceExtensionPointIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _ServiceManager.ServiceExtensionPointIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265743E10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26573F2B0;

  return sub_265742C98(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_265743ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265743F48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C230, &qword_265751600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265743FB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26573FF88;

  return sub_265743724(a1, v4);
}

uint64_t sub_265744068(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26573F2B0;

  return sub_265743724(a1, v4);
}

uint64_t sub_265744120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26573FF88;

  return sub_265742848(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_49Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265744230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26573FF88;

  return sub_2657423F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2657442F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265744360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2657443D0()
{
  sandbox_enable_local_state_flag();

  return sandbox_enable_local_state_flag();
}

uint64_t ContentServiceExtension._lockdown(version:)()
{
  sandbox_enable_local_state_flag();

  return sandbox_enable_local_state_flag();
}

uint64_t ContentServiceExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26574FEE8();
}

uint64_t sub_265744634()
{
  v0 = sub_265750048();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747F2C(0, &qword_28001C268, 0x277CC1E90);
  _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  sub_265750058();
  v4 = sub_265750028();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  v12 = sub_265744950(v4, v6, v8, v10);
  v13 = [v12 bundleIdentifier];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_2657501C8();

  return v14;
}

uint64_t _Process.bundleIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_265750048();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747F2C(0, &qword_28001C268, 0x277CC1E90);
  (*(a2 + 16))(a1, a2);
  v8 = sub_265750028();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  v16 = sub_265744950(v8, v10, v12, v14);
  v17 = [v16 bundleIdentifier];

  if (!v17)
  {
    return 0;
  }

  v18 = sub_2657501C8();

  return v18;
}

id sub_265744950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_26574FE58();

    swift_willThrow();
  }

  return v4;
}

id _GPUProcess.createVisibilityPropagationInteraction()()
{
  *v10.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  v10.val[2] = v0;
  v10.val[3] = v1;
  v10.val[4] = v2;
  v10.val[5] = v3;
  v10.val[6] = v4;
  v10.val[7] = v5;
  v6 = audit_token_to_pid(&v10);
  v7 = sub_2657501B8();
  v8 = [objc_opt_self() interactionWithPID:v6 environmentIdentifier:v7];

  return v8;
}

uint64_t sub_265744BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26574FFC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

Swift::Void __swiftcall _ContentProcess.invalidate()()
{
  v1 = *(v0 + *(type metadata accessor for _ContentProcess(0) + 20));
  os_unfair_lock_lock((v1[4] + 16));
  v2 = v1[2];
  if (v2)
  {
    v3 = v1[3];
    v1[2] = 0;
    v1[3] = 0;
    sub_265746FD4(v2, v3);
  }

  os_unfair_lock_unlock((v1[4] + 16));

  _s17ServiceExtensions11_GPUProcessV10invalidateyyF_0();
}

uint64_t _s17ServiceExtensions11_GPUProcessV17processIdentifiers5Int32Vvg_0()
{
  *v7.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  v7.val[2] = v0;
  v7.val[3] = v1;
  v7.val[4] = v2;
  v7.val[5] = v3;
  v7.val[6] = v4;
  v7.val[7] = v5;
  return audit_token_to_pid(&v7);
}

uint64_t _s17ServiceExtensions11_GPUProcessV11_auditToken0aB4Core05AuditE0Vvg_0()
{
  _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();

  return sub_265750058();
}

id _ContentProcess.createVisibilityPropagationInteraction()()
{
  *v10.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  v10.val[2] = v0;
  v10.val[3] = v1;
  v10.val[4] = v2;
  v10.val[5] = v3;
  v10.val[6] = v4;
  v10.val[7] = v5;
  v6 = audit_token_to_pid(&v10);
  v7 = sub_2657501B8();
  v8 = [objc_opt_self() interactionWithPID:v6 environmentIdentifier:v7];

  return v8;
}

uint64_t sub_265744DE8()
{
  sub_265750508();
  MEMORY[0x26675CBD0](0);
  return sub_265750528();
}

uint64_t sub_265744E2C(uint64_t a1)
{
  sub_265750508();
  MEMORY[0x26675CBD0](0);
  return sub_265750528();
}

uint64_t _BrowserProcess._auditToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265750048();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _BrowserProcess.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265750068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265750048();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265750038();
  (*(v3 + 104))(v5, *MEMORY[0x277D4D3A8], v2);
  v10 = sub_265750008();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    return (*(v7 + 32))(a1, v9, v6);
  }

  sub_265746FE4();
  swift_allocError();
  swift_willThrow();
  return (*(v7 + 8))(v9, v6);
}

uint64_t _BrowserProcess.init(auditToken:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v19 = a4;
  v4 = sub_265750068();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265750048();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  sub_265750058();
  (*(v9 + 16))(v12, v14, v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D4D3A8], v4);
  v15 = sub_265750008();
  (*(v5 + 8))(v7, v4);
  if (v15)
  {
    (*(v9 + 8))(v14, v8);
    return (*(v9 + 32))(v19, v12, v8);
  }

  else
  {
    sub_265746FE4();
    swift_allocError();
    swift_willThrow();
    v17 = *(v9 + 8);
    v17(v12, v8);
    return (v17)(v14, v8);
  }
}

uint64_t sub_265745368@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265750048();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2657453D0()
{
  sub_265747F2C(0, &qword_28001C268, 0x277CC1E90);
  v0 = sub_265750028();
  v5 = sub_265744950(v0, v1, v2, v3);
  v6 = [v5 bundleIdentifier];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_2657501C8();

  return v7;
}

uint64_t static _BrowserProcess.checkBrowserEngineEntitlement(forAuditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C270, &qword_265751960);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11[-v7];
  _BrowserProcess.init(auditToken:)(a3, a4, &v11[-v7]);
  v9 = type metadata accessor for _BrowserProcess(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_265747058(v8);
  return 1;
}

uint64_t _s17ServiceExtensions15_BrowserProcessV05checkc27EngineEntitlementForCurrentD0SbyFZ_0()
{
  v0 = sub_265750068();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265750048();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C270, &qword_265751960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_265750038();
  (*(v1 + 104))(v3, *MEMORY[0x277D4D3A8], v0);
  v11 = sub_265750008();
  (*(v1 + 8))(v3, v0);
  if (v11)
  {
    (*(v5 + 32))(v10, v7, v4);
    v12 = 0;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v12 = 1;
  }

  v13 = type metadata accessor for _BrowserProcess(0);
  (*(*(v13 - 8) + 56))(v10, v12, 1, v13);
  sub_265747058(v10);
  return v11 & 1;
}

void sub_265745A18(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*((*MEMORY[0x277D85000] & *v2) + 0x50))(v31);
  v6 = v32;
  v7 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v8 = *(a1 + OBJC_IVAR____SECapability_inner + 48);
  v9 = *(a1 + OBJC_IVAR____SECapability_inner + 16);
  v35 = *(a1 + OBJC_IVAR____SECapability_inner + 32);
  v36 = v8;
  v10 = *(a1 + OBJC_IVAR____SECapability_inner + 48);
  v37 = *(a1 + OBJC_IVAR____SECapability_inner + 64);
  v11 = *(a1 + OBJC_IVAR____SECapability_inner + 16);
  v34[0] = *(a1 + OBJC_IVAR____SECapability_inner);
  v34[1] = v11;
  v26 = v35;
  v27 = v10;
  v28 = *(a1 + OBJC_IVAR____SECapability_inner + 64);
  v38 = *(a1 + OBJC_IVAR____SECapability_inner + 80);
  v29 = *(a1 + OBJC_IVAR____SECapability_inner + 80);
  v24 = v34[0];
  v25 = v9;
  v12 = *(v7 + 32);
  sub_265747E7C(v34, v22);
  v12(v30, &v24, v6, v7);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  sub_265747ED8(v22);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v13 = v30[0];
    v14 = v30[1];
    __swift_destroy_boxed_opaque_existential_1(v31);
    v15 = type metadata accessor for _SEInternalGrant();
    v16 = objc_allocWithZone(v15);
    v17 = &v16[OBJC_IVAR____TtC17ServiceExtensionsP33_620D12DBAD85E5FA4594BA268933638A16_SEInternalGrant_inner];
    *v17 = v13;
    *(v17 + 1) = v14;
    v21.receiver = v16;
    v21.super_class = v15;
    v18 = v13;
    v19 = v14;
    v20 = objc_msgSendSuper2(&v21, sel_init);
    a2[3] = v15;

    *a2 = v20;
  }
}

id sub_265745C18(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void *__return_ptr, id))
{
  v7 = a3;
  v8 = a1;
  a5(v11, v7);

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v9 = sub_265750468();
  __swift_destroy_boxed_opaque_existential_1(v11);

  return v9;
}

id _SEExtensionProcess.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _SEExtensionProcess();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_265745F74(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_265746030()
{
  v1 = type metadata accessor for _ContentProcess(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &atoken - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747104(v0 + OBJC_IVAR____SEContentProcess_inner, v3, type metadata accessor for _ContentProcess);
  *atoken.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  atoken.val[2] = v4;
  atoken.val[3] = v5;
  atoken.val[4] = v6;
  atoken.val[5] = v7;
  atoken.val[6] = v8;
  atoken.val[7] = v9;
  v10 = audit_token_to_pid(&atoken);
  v11 = sub_2657501B8();
  v12 = [objc_opt_self() interactionWithPID:v10 environmentIdentifier:v11];

  sub_26574716C(v3, type metadata accessor for _ContentProcess);
  return v12;
}

id sub_2657463EC()
{
  v1 = type metadata accessor for _GPUProcess(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &atoken - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747104(v0 + OBJC_IVAR____SEGPUProcess_inner, v3, type metadata accessor for _GPUProcess);
  *atoken.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  atoken.val[2] = v4;
  atoken.val[3] = v5;
  atoken.val[4] = v6;
  atoken.val[5] = v7;
  atoken.val[6] = v8;
  atoken.val[7] = v9;
  v10 = audit_token_to_pid(&atoken);
  v11 = sub_2657501B8();
  v12 = [objc_opt_self() interactionWithPID:v10 environmentIdentifier:v11];

  sub_26574716C(v3, type metadata accessor for _GPUProcess);
  return v12;
}

id _SEGPUProcess.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2657467DC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  a5[3] = a2(0);
  a5[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return sub_265747104(v5 + v9, boxed_opaque_existential_1, a4);
}

void sub_265746E64()
{
  v1 = sub_26574FFC8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[4];
  os_unfair_lock_lock(v5 + 4);
  v6 = v0[2];
  if (v6)
  {
    v7 = v0[3];

    v6(v8);
    sub_26574FFA8();
    sub_265746FD4(v6, v7);
    (*(v2 + 8))(v4, v1);
    v9 = v0[2];
    v10 = v0[3];
    v0[2] = 0;
    v0[3] = 0;
    sub_265746FD4(v9, v10);
  }

  os_unfair_lock_unlock(v5 + 4);
}

uint64_t sub_265746FD4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_265746FE4()
{
  result = qword_281565E18;
  if (!qword_281565E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281565E18);
  }

  return result;
}

uint64_t sub_265747058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C270, &qword_265751960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265747104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26574716C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_265747230()
{
  result = qword_28001C278;
  if (!qword_28001C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C278);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26574FFC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26574FFC8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_265747594(uint64_t a1)
{
  result = sub_26574FFC8();
  if (v2 <= 0x3F)
  {
    type metadata accessor for LaunchAssertionInvalidator();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265747634(uint64_t a1)
{
  result = sub_265750048();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265747768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_265747888(uint64_t a1)
{
  result = sub_265750048();
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

uint64_t sub_265747930()
{
  sub_265746FD4(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_265747984()
{
  result = qword_28001C2E8;
  if (!qword_28001C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C2E8);
  }

  return result;
}

void *sub_2657479DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a3;
  v8 = sub_265750118();
  MEMORY[0x28223BE20](v8);
  v9 = sub_265750138();
  v22 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v4[2] = 0;
  v4[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v4[3] = a2;
  v4[4] = v16;
  v4[2] = a1;
  sub_265747F2C(0, &qword_28001C2F0, 0x277D85C78);

  v17 = sub_2657502A8();
  sub_265750128();
  MEMORY[0x26675C820](v13, a3);
  v18 = *(v10 + 8);
  v18(v13, v9);
  aBlock[4] = sub_265747F74;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2657434D0;
  aBlock[3] = &block_descriptor_0;
  _Block_copy(aBlock);
  v24 = MEMORY[0x277D84F90];
  sub_265747F90();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C300, &qword_265751D08);
  sub_265747FE8();
  sub_2657502F8();
  sub_265750158();
  swift_allocObject();
  sub_265750148();

  sub_265750298();

  v19 = sub_265750108();
  (*(*(v19 - 8) + 8))(v23, v19);
  v18(v15, v22);
  return v4;
}

uint64_t sub_265747D04()
{
  v0 = sub_265750048();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747F2C(0, &qword_28001C268, 0x277CC1E90);
  sub_265750038();
  v4 = sub_265750028();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  v12 = sub_265744950(v4, v6, v8, v10);
  v13 = [v12 bundleIdentifier];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_2657501C8();

  return v14;
}

uint64_t sub_265747F2C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_265747F90()
{
  result = qword_28001C2F8;
  if (!qword_28001C2F8)
  {
    sub_265750118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C2F8);
  }

  return result;
}

unint64_t sub_265747FE8()
{
  result = qword_28001C308;
  if (!qword_28001C308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28001C300, &qword_265751D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C308);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Bool __swiftcall _BrowserEngineEntitlement.check(auditToken:)(audit_token_t_optional *auditToken)
{
  v2 = sub_265750048();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (auditToken->is_nil)
  {
    sub_265750038();
    sub_265750028();
    (*(v3 + 8))(v5, v2);
  }

  sub_265750058();
  v6 = sub_265750008();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_2657482D4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *x8_0@<X8>)
{
  (*(a3 + 56))(a2, a3);
  v8 = *(a3 + 8);
  v11[3] = a2;
  v11[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v4, a2);
  sub_265748960(v11, x8_0);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_26574839C@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *x8_0@<X8>)
{
  sub_265746E64();
  v13[3] = a2;
  v13[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_26574B8D4(v6, boxed_opaque_existential_1, a5);
  sub_265748960(v13, x8_0);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _Capability.Grant.invalidate()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v1 = *(v0 + 8);
  if (v1)
  {
    [v2 removeObserver_];
  }

  v6[0] = 0;
  if ([v2 invalidateSyncWithError_])
  {
    v3 = v6[0];
    if (v1)
    {
      v4 = v1;
      sub_26574AD38(&OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver__didInvalidate);
    }
  }

  else
  {
    v5 = v6[0];
    sub_26574FE58();

    swift_willThrow();
  }
}

uint64_t sub_26574854C()
{
  v0 = sub_2657500C8();
  __swift_allocate_value_buffer(v0, qword_28001C5D0);
  __swift_project_value_buffer(v0, qword_28001C5D0);
  return sub_2657500B8();
}

uint64_t ServiceExtensionError.hashValue.getter()
{
  v1 = *v0;
  sub_265750508();
  MEMORY[0x26675CBD0](v1);
  return sub_265750528();
}

uint64_t sub_265748660()
{
  v1 = *v0;
  sub_265750508();
  MEMORY[0x26675CBD0](v1);
  return sub_265750528();
}

uint64_t sub_2657486D4(uint64_t a1)
{
  v2 = *v1;
  sub_265750508();
  MEMORY[0x26675CBD0](v2);
  return sub_265750528();
}

id sub_265748718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver__willInvalidate];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver__didInvalidate];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver_invalidationLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v4[v11] = v12;
  *v9 = a1;
  *(v9 + 1) = a2;
  *v10 = a3;
  *(v10 + 1) = a4;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for _Capability.AssertionObserver();
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_265748960(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  if (v4 == 3)
  {
    sub_265748C88(a1, *v2, *(v2 + 8), a2);
  }

  else if (v4 == 2)
  {
    v13 = *(v2 + 64);
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);
    v7 = *(v2 + 32);
    v8 = *(v2 + 16);
    v9 = *(v2 + 24);
    v14[0] = *v2;
    v14[1] = v3;
    v14[2] = v8;
    v14[3] = v9;
    v15 = v7;
    v16 = v13;
    v17 = v6;
    v18 = v5;

    sub_26574B9FC(v6, v5);
    sub_26574B9FC(v13, *(&v13 + 1));
    sub_265748A80(a1, a2);
    sub_26574BA0C(v14);
  }

  else
  {
    sub_26574B93C();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }
}

void sub_265748A80(void *a1@<X0>, void *a2@<X8>)
{
  v4 = v2[4];
  v5 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C220, &qword_2657515F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_265751D10;
  v7 = sub_2657501B8();
  v8 = sub_2657501B8();
  v9 = [objc_opt_self() attributeWithDomain:v7 name:v8];

  *(v6 + 32) = v9;
  v10 = sub_26574AA34(a1, v4, v5, v6);

  if (!v21)
  {
    v11 = v2[8];
    v12 = v2[6];
    if (v11 | v12)
    {
      v14 = v2[7];
      v15 = v2[9];
      v16 = swift_allocObject();
      *(v16 + 16) = v11;
      *(v16 + 24) = v15;
      v17 = swift_allocObject();
      *(v17 + 16) = v12;
      *(v17 + 24) = v14;
      objc_allocWithZone(type metadata accessor for _Capability.AssertionObserver());
      v18 = v10;
      sub_26574B9FC(v11, v15);
      sub_26574B9FC(v12, v14);
      v13 = sub_265748718(sub_26574BBF0, v16, sub_26574BA3C, v17);
      v19 = v13;
      [v18 addObserver_];
    }

    else
    {
      v13 = 0;
    }

    *a2 = v10;
    a2[1] = v13;
  }
}

void sub_265748C88(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C220, &qword_2657515F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_265751D10;
  *(v8 + 32) = [objc_opt_self() attributeWithCompletionPolicy_];
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_265751D10;
  v10 = sub_2657501B8();
  v11 = sub_2657501B8();
  sub_265747F2C(0, &qword_28001C3F0, 0x277D46DD8);
  v12 = sub_265750218();

  v13 = [objc_opt_self() grantWithNamespace:v10 sourceEnvironment:v11 attributes:v12];

  *(v9 + 32) = v13;
  v14 = sub_26574AA34(a1, a2, a3, v9);

  if (!v4)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = nullsub_1;
    *(v15 + 24) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = nullsub_1;
    *(v16 + 24) = 0;
    objc_allocWithZone(type metadata accessor for _Capability.AssertionObserver());
    v17 = v14;
    v18 = sub_265748718(sub_26574BBF0, v15, sub_26574BBF0, v16);
    v19 = v18;
    [v17 addObserver_];

    *a4 = v17;
    a4[1] = v18;
  }
}

uint64_t sub_265748F00(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v22[2] = *(v2 + 32);
  v22[3] = v3;
  v22[4] = *(v2 + 64);
  v23 = *(v2 + 80);
  v4 = *(v2 + 16);
  v22[0] = *v2;
  v22[1] = v4;
  if (a1)
  {
    sub_2657493CC(a1, a2);
    return 1;
  }

  if (v23 == 3)
  {
    sub_26574B040(*&v22[0], *(&v22[0] + 1));
    return 1;
  }

  if (v23 == 2)
  {
    sub_26574B93C();
    v6 = swift_allocError();
    *v7 = 2;
    swift_willThrow();
    if (qword_28001C0B8 != -1)
    {
      swift_once();
    }

    v8 = sub_2657500C8();
    __swift_project_value_buffer(v8, qword_28001C5D0);
    sub_265747E7C(v22, v21);
    v9 = v6;
    v10 = sub_2657500A8();
    v11 = sub_265750288();
    sub_265747ED8(v22);
    if (!os_log_type_enabled(v10, v11))
    {

      return 0;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v12 = 136315394;
    if (v23 == 3)
    {
      v15 = v14;
      v16 = v22[0];

      v17 = sub_26574A2E8(v16, *(&v16 + 1), v21);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2114;
      v18 = v6;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&dword_265739000, v10, v11, "Error invalidating root endowment for:%s  %{public}@", v12, 0x16u);
      sub_26573FADC(v13, &qword_28001C3B0, &qword_265752018);
      MEMORY[0x26675D1B0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x26675D1B0](v15, -1, -1);
      MEMORY[0x26675D1B0](v12, -1, -1);

      return 0;
    }

    v20 = v6;
    if (v23 == 2)
    {

      v20 = sub_265750408();
      __break(1u);
    }
  }

  result = sub_265750478();
  __break(1u);
  return result;
}

uint64_t sub_2657493CC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 80);
  if (v3 == 2)
  {
LABEL_6:
    sub_26574B93C();
    swift_allocError();
    *v16 = v3;
    return swift_willThrow();
  }

  if (v3 == 3)
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = objc_opt_self();

    v9 = [v8 mainBundle];
    v10 = [v9 bundleIdentifier];

    if (v10)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3C0, &qword_265752020);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265751350;
      *(inited + 32) = 0xD000000000000010;
      v12 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0x8000000265752A30;
      *(inited + 48) = v7;
      *(inited + 56) = v6;
      v13 = sub_26574F030(inited);
      swift_setDeallocating();
      sub_26573FADC(v12, &qword_28001C3C8, &qword_265752028);
      v14 = sub_265749590(v13);

      sub_26574AF28(v5, v4, v14);
    }

    LOBYTE(v3) = 1;
    goto LABEL_6;
  }

  result = sub_265750478();
  __break(1u);
  return result;
}

uint64_t sub_265749590(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3D0, &qword_265752030);
    v2 = sub_265750438();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26574B990(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_26574B9EC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_26574B9EC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_26574B9EC(v31, v32);
    result = sub_265750378();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_26574B9EC(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id static _SECapability.assertion(domain:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _SECapability();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____SECapability_inner];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  *(v10 + 6) = nullsub_1;
  *(v10 + 7) = 0;
  *(v10 + 8) = nullsub_1;
  *(v10 + 9) = 0;
  v10[80] = 2;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id static _SECapability.assertion(domain:name:environmentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for _SECapability();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____SECapability_inner];
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  *(v14 + 5) = a6;
  *(v14 + 6) = nullsub_1;
  *(v14 + 7) = 0;
  *(v14 + 8) = nullsub_1;
  *(v14 + 9) = 0;
  v14[80] = 2;
  v16.receiver = v13;
  v16.super_class = v12;

  return objc_msgSendSuper2(&v16, sel_init);
}

id static _SECapability.assertion(domain:name:environmentIdentifier:willInvalidate:didInvalidate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = type metadata accessor for _SECapability();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____SECapability_inner];
  *v19 = a1;
  *(v19 + 1) = a2;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *(v19 + 4) = a5;
  *(v19 + 5) = a6;
  *(v19 + 6) = a7;
  *(v19 + 7) = a8;
  *(v19 + 8) = a9;
  *(v19 + 9) = a10;
  v19[80] = 2;
  v22.receiver = v18;
  v22.super_class = v17;

  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_265749E28(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____SECapability_inner + 48);
  v4 = *(v1 + OBJC_IVAR____SECapability_inner + 16);
  v16 = *(v1 + OBJC_IVAR____SECapability_inner + 32);
  v17 = v3;
  v5 = *(v1 + OBJC_IVAR____SECapability_inner + 48);
  v18 = *(v1 + OBJC_IVAR____SECapability_inner + 64);
  v6 = *(v1 + OBJC_IVAR____SECapability_inner + 16);
  v15[0] = *(v1 + OBJC_IVAR____SECapability_inner);
  v15[1] = v6;
  v11 = v16;
  v12 = v5;
  v13 = *(v1 + OBJC_IVAR____SECapability_inner + 64);
  v19 = *(v1 + OBJC_IVAR____SECapability_inner + 80);
  v14 = *(v1 + OBJC_IVAR____SECapability_inner + 80);
  v9 = v15[0];
  v10 = v4;
  sub_265747E7C(v15, v20);
  LOBYTE(a1) = sub_265748F00(a1, v7);
  v20[2] = v11;
  v20[3] = v12;
  v20[4] = v13;
  v21 = v14;
  v20[0] = v9;
  v20[1] = v10;
  sub_265747ED8(v20);
  return a1 & 1;
}

id _SECapability.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_26574A1A0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_26574A1D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_28001C310 = result;
  return result;
}

uint64_t sub_26574A218()
{
  v0 = sub_265750048();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265750038();
  v4 = _s17ServiceExtensions15_BrowserProcessV17processIdentifiers5Int32Vvg_0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_26574A2E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26574A3B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26574B990(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26574A3B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26574A4C0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2657503F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26574A4C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_26574A50C(a1, a2);
  sub_26574A63C(&unk_287710B80);
  return v3;
}

void *sub_26574A50C(uint64_t a1, unint64_t a2)
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

  v6 = sub_26574A728(v5, 0);
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

  result = sub_2657503F8();
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
        v10 = sub_265750208();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26574A728(v10, 0);
        result = sub_2657503D8();
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

uint64_t sub_26574A63C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26574A79C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26574A728(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3D8, &qword_265752038);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26574A79C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3D8, &qword_265752038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

id sub_26574A890(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3C0, &qword_265752020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265751D20;
  *(inited + 32) = sub_2657501C8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x8000000265752AB0;
  *(inited + 80) = sub_2657501C8();
  *(inited + 88) = v4;
  *(inited + 120) = sub_265747F2C(0, &qword_28001C3F8, 0x277CCA9B8);
  *(inited + 96) = a1;
  v5 = a1;
  sub_26574F030(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3C8, &qword_265752028);
  swift_arrayDestroy();
  v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v7 = sub_2657501B8();
  v8 = sub_265750178();

  v9 = [v6 initWithDomain:v7 code:0 userInfo:v8];

  return v9;
}

id sub_26574AA34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[2] = *MEMORY[0x277D85DE8];
  sub_2657503E8();

  v24[0] = 0xD00000000000002ELL;
  v24[1] = 0x8000000265752A50;
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v8 = *(v6 + 8);
  v8(v7, v6);
  v9 = sub_265750458();
  MEMORY[0x26675C8B0](v9);

  if (a3)
  {
    v10 = (v8)(v7, v6);
    v11 = sub_2657501B8();
    v12 = [objc_opt_self() targetWithPid:v10 environmentIdentifier:v11];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
  }

  v23 = (v8)(v7, v6);
  v12 = [objc_opt_self() targetWithPid_];
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  v13 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v14 = v12;
  v15 = sub_2657501B8();

  sub_265747F2C(0, &qword_28001C3F0, 0x277D46DD8);
  v16 = sub_265750218();
  v17 = [v13 initWithExplanation:v15 target:v14 attributes:v16];

  v24[0] = 0;
  if ([v17 acquireWithError_])
  {
    v18 = v24[0];
  }

  else
  {
    v19 = v24[0];
    v20 = sub_26574FE58();

    swift_willThrow();
    [v17 invalidate];
    v21 = sub_26574FE48();
    sub_26574A890(v21);

    swift_willThrow();
  }

  return v17;
}

void sub_26574AD38(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCO17ServiceExtensions11_CapabilityP33_3A110C98667FE5E79B17C7ACF7B087C017AssertionObserver_invalidationLock);
  os_unfair_lock_lock(v3 + 4);
  v4 = v1 + *a1;
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
    v5();
    sub_265746FD4(v5, v6);
  }

  os_unfair_lock_unlock(v3 + 4);
}

id sub_26574AF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() sharedAVSystemController];
  if (result)
  {
    v4 = result;
    v5 = sub_2657501B8();
    v6 = sub_265750178();
    v7 = [v4 grantMediaEndowmentWithEnvironmentID:v5 endowmentPayload:v6];

    result = sub_2657500F8();
    if (v7 != result)
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_26574B040(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedAVSystemController];
  if (result)
  {
    v3 = result;
    v4 = sub_2657501B8();
    v5 = [v3 revokeMediaEndowmentWithEnvironmentID_];

    result = sub_2657500F8();
    if (v5 != result)
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s17ServiceExtensions13_SECapabilityC9assertion7websiteACSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_2657501C8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  getpid();
  if (qword_28001C0C0 != -1)
  {
    swift_once();
  }

  v9 = qword_28001C310;

  os_unfair_lock_lock(v9 + 4);

  if (__OFADD__(qword_28001C318, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_28001C318;
    *&v20 = sub_265750458();
    *(&v20 + 1) = v11;
    MEMORY[0x26675C8B0](45, 0xE100000000000000);
    v19 = qword_28001C318;
    v12 = sub_265750458();
    MEMORY[0x26675C8B0](v12);

    MEMORY[0x26675C8B0](45, 0xE100000000000000);
    MEMORY[0x26675C8B0](v6, v8);

    v13 = qword_28001C310;

    os_unfair_lock_unlock(v13 + 4);

    v14 = type metadata accessor for _SECapability();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR____SECapability_inner];
    *v16 = v20;
    *(v16 + 2) = a1;
    *(v16 + 3) = a2;
    v17 = v21;
    *(v16 + 2) = v20;
    *(v16 + 3) = v17;
    *(v16 + 4) = v22;
    v16[80] = 3;
    v18.receiver = v15;
    v18.super_class = v14;

    return objc_msgSendSuper2(&v18, sel_init);
  }

  return result;
}

unint64_t sub_26574B360()
{
  result = qword_28001C328;
  if (!qword_28001C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s5Error_pIegzo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26574B54C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26574B594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26574B614(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26574B65C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_26574B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 <= 1u)
  {
    if (a11 && a11 != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (a11 != 2)
  {
    if (a11 != 3)
    {
      return;
    }

LABEL_8:

    return;
  }

  sub_265746FD4(a7, a8);

  sub_265746FD4(a9, a10);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_26574B8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26574B93C()
{
  result = qword_28001C3B8;
  if (!qword_28001C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C3B8);
  }

  return result;
}

uint64_t sub_26574B990(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_26574B9EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26574B9FC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26574BA94()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
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

uint64_t sub_26574BAE0(uint64_t a1, int a2)
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

uint64_t sub_26574BB28(uint64_t result, int a2, int a3)
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

uint64_t NetworkingServiceExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26574FEE8();
}

uint64_t sub_26574BDE0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[3];
  v8 = a1[2];
  v9 = v2;
  v10 = a1[4];
  v11 = *(a1 + 80);
  v3 = a1[1];
  v6 = *a1;
  v7 = v3;
  v5[3] = &type metadata for Process;
  v5[4] = &off_287711558;
  sub_265748960(v5, a2);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

id _SEHostingHandle.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  if (!a1)
  {
    goto LABEL_14;
  }

  v4 = MEMORY[0x26675D2B0](a1);
  if (v4 != sub_2657500E8() || xpc_dictionary_get_count(a1) != 2 || (v5 = xpc_dictionary_get_value(a1, "pid")) == 0)
  {
LABEL_13:
    swift_unknownObjectRelease();
LABEL_14:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  v7 = swift_unknownObjectRetain();
  v8 = MEMORY[0x26675D2B0](v7);
  if (v8 != sub_2657500D8())
  {
    goto LABEL_6;
  }

  value = xpc_uint64_get_value(v6);
  swift_unknownObjectRelease();
  if (value - 0x80000000 < 0xFFFFFFFF80000001)
  {
    goto LABEL_11;
  }

  v10 = xpc_dictionary_get_value(a1, "cid");
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = MEMORY[0x26675D2B0]();
  if (v12 != sub_2657500D8())
  {
LABEL_6:
    swift_unknownObjectRelease();
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v13 = xpc_uint64_get_value(v11);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v13 - 0x100000000 < 0xFFFFFFFF00000001)
  {
    goto LABEL_13;
  }

  *&v1[OBJC_IVAR____SEHostingHandle_pid] = value;
  *&v1[OBJC_IVAR____SEHostingHandle_contextID] = v13;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v16, sel_init);
  swift_unknownObjectRelease();
  return v15;
}

xpc_object_t _SEHostingHandle.xpcRepresentation()()
{
  result = xpc_dictionary_create_empty();
  v2 = *(v0 + OBJC_IVAR____SEHostingHandle_pid);
  if ((v2 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    xpc_dictionary_set_uint64(result, "pid", v2);
    xpc_dictionary_set_uint64(v3, "cid", *(v0 + OBJC_IVAR____SEHostingHandle_contextID));
    return v3;
  }

  return result;
}

id _SEHostingHandle.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2657501B8();
  v5 = [a1 decodeInt32ForKey_];

  if (v5 >= 1 && (v6 = sub_2657501B8(), v7 = [a1 decodeInt32ForKey_], v6, v7))
  {
    *&v1[OBJC_IVAR____SEHostingHandle_pid] = v5;
    *&v1[OBJC_IVAR____SEHostingHandle_contextID] = v7;
    v10.receiver = v1;
    v10.super_class = ObjectType;
    v8 = objc_msgSendSuper2(&v10, sel_init);

    return v8;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

Swift::Void __swiftcall _SEHostingHandle.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____SEHostingHandle_pid);
  v4 = sub_2657501B8();
  [(objc_class *)with.super.isa encodeInt32:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____SEHostingHandle_contextID);
  v6 = sub_2657501B8();
  [(objc_class *)with.super.isa encodeInt32:v5 forKey:v6];
}

id _SEHostable.layer.getter()
{
  v1 = [*(v0 + OBJC_IVAR____SEHostable__context) layer];

  return v1;
}

void _SEHostable.layer.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____SEHostable__context) setLayer_];
}

void (*_SEHostable.layer.modify(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____SEHostable__context);
  a1[1] = v3;
  *a1 = [v3 layer];
  return sub_26574C6BC;
}

void sub_26574C6BC(id *a1)
{
  v1 = *a1;
  [a1[1] setLayer_];
}

id sub_26574C8D8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall _SEHostable.invalidate()()
{
  if ([*(v0 + OBJC_IVAR____SEHostable__invalidationSignal) signal])
  {
    v1 = *(v0 + OBJC_IVAR____SEHostable__context);

    [v1 invalidate];
  }
}

void *sub_26574CAD8()
{
  v1 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26574CBA0(void *a1)
{
  v3 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_26574CC6C();
}

uint64_t sub_26574CC08(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return sub_26574CC6C();
}

uint64_t sub_26574CC6C()
{
  v1 = OBJC_IVAR____SEHostingView__visibility;
  v2 = *&v0[OBJC_IVAR____SEHostingView__visibility];
  v3 = OBJC_IVAR____SEHostingView_handle;
  swift_beginAccess();
  v4 = *&v0[v3];
  swift_unknownObjectRetain();
  if (v4)
  {
    v5 = v4;
    v6 = [v0 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setContextId_];
    v7 = *&v5[OBJC_IVAR____SEHostingHandle_pid];
    v8 = sub_2657501B8();
    v9 = [objc_opt_self() interactionWithPID:v7 environmentIdentifier:v8];

    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  *&v0[v1] = v9;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v9)
  {
    [v0 addInteraction_];
    swift_unknownObjectRelease();
  }

  if (v2)
  {
    [v0 removeInteraction_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t (*sub_26574CE18(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26574CE7C;
}

uint64_t sub_26574CE7C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_26574CC6C();
  }

  return result;
}

id _SEHostingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id _SEHostingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____SEHostingView__visibility] = 0;
  *&v4[OBJC_IVAR____SEHostingView_handle] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for _SEHostingView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id _SEHostingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id _SEHostingView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____SEHostingView__visibility] = 0;
  *&v1[OBJC_IVAR____SEHostingView_handle] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _SEHostingView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id _SEHostingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _SEHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _SEHostingUpdateCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _SEHostingUpdateCoordinator.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v4 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostables] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostingViews] = v4;
  v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_committed] = 0;
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__fence] = [objc_opt_self() newFenceFromDefaultServer];
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id _SEHostingUpdateCoordinator.__allocating_init(from:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26574F6A4(a1);
  swift_unknownObjectRelease();
  return v4;
}

id _SEHostingUpdateCoordinator.init(from:)(uint64_t a1)
{
  v1 = sub_26574F6A4(a1);
  swift_unknownObjectRelease();
  return v1;
}

id _SEHostingUpdateCoordinator.xpcRepresentation()()
{
  result = *(v0 + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  if (result)
  {
    return [result createXPCRepresentation];
  }

  return result;
}

id _SEHostingUpdateCoordinator.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26574F78C();

  return v4;
}

id _SEHostingUpdateCoordinator.init(coder:)(void *a1)
{
  v2 = sub_26574F78C();

  return v2;
}

Swift::Void __swiftcall _SEHostingUpdateCoordinator.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  v4 = sub_2657501B8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id _SEHostingUpdateCoordinator.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock];

  os_unfair_lock_lock(v2 + 4);
  sub_26574F878();
  os_unfair_lock_unlock(v2 + 4);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void _SEHostingUpdateCoordinator.add(_:)(char *a1)
{
  v3 = *(v1 + OBJC_IVAR____SEHostingUpdateCoordinator__commitLock);
  os_unfair_lock_lock(v3 + 4);
  if (*(v1 + OBJC_IVAR____SEHostingUpdateCoordinator__fence))
  {
    [*&a1[OBJC_IVAR____SEHostable__context] addFence_];
  }

  swift_beginAccess();
  sub_26574E470(&v4, a1, type metadata accessor for _SEHostable, &qword_28001C4F8, &qword_265752208, type metadata accessor for _SEHostable);
  swift_endAccess();

  os_unfair_lock_unlock(v3 + 4);
}

void _SEHostingUpdateCoordinator.add(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____SEHostingUpdateCoordinator__commitLock);
  os_unfair_lock_lock(v3 + 4);
  v4 = *(v1 + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  if (v4)
  {
    v5 = v4;
    v6 = [a1 window];
    v7 = [v6 _boundContext];

    [v7 addFence_];
  }

  swift_beginAccess();
  sub_26574E470(&v8, a1, type metadata accessor for _SEHostingView, &qword_28001C4F0, &qword_265752200, type metadata accessor for _SEHostingView);
  swift_endAccess();

  os_unfair_lock_unlock(v3 + 4);
}

Swift::Void __swiftcall _SEHostingUpdateCoordinator.commit()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____SEHostingUpdateCoordinator__commitLock);
  os_unfair_lock_lock(v2 + 4);
  *(v0 + OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_committed) = 1;
  v3 = *(v0 + OBJC_IVAR____SEHostingUpdateCoordinator__fence);
  v4 = 0x28001C000;
  if (!v3)
  {
LABEL_40:
    v43 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostables;
    swift_beginAccess();
    v44 = MEMORY[0x277D84FA0];
    *(v1 + v43) = MEMORY[0x277D84FA0];

    v45 = *(v4 + 1112);
    swift_beginAccess();
    *(v1 + v45) = v44;

    [v3 invalidate];
    os_unfair_lock_unlock(v2 + 4);
    return;
  }

  v46 = v2;
  v5 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostables;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = v3;

    sub_265750338();
    type metadata accessor for _SEHostable();
    sub_26574FBE0(&qword_28001C470, v8, type metadata accessor for _SEHostable, MEMORY[0x277D85378]);
    sub_265750278();
    v6 = v48;
    v9 = v49;
    v10 = v50;
    v11 = v51;
    v12 = v52;
  }

  else
  {
    v13 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v6 + 56);
    v16 = v3;

    v11 = 0;
  }

  v17 = (v10 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v18 = v11;
    v19 = v12;
    v20 = v11;
    if (!v12)
    {
      break;
    }

LABEL_13:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_19;
    }

    while (1)
    {
      [*&v22[OBJC_IVAR____SEHostable__context] addFence_];

      v11 = v20;
      v12 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      v23 = sub_265750368();
      if (v23)
      {
        v47 = v23;
        type metadata accessor for _SEHostable();
        swift_dynamicCast();
        v22 = v53;
        v20 = v11;
        v21 = v12;
        if (v53)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v20 >= v17)
    {
      break;
    }

    v19 = *(v9 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  sub_26574F8C4(v6);
  v24 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostingViews;
  swift_beginAccess();
  v25 = *(v1 + v24);
  if ((v25 & 0xC000000000000001) != 0)
  {

    sub_265750338();
    type metadata accessor for _SEHostingView();
    sub_26574FBE0(&unk_28001C478, v26, type metadata accessor for _SEHostingView, MEMORY[0x277D85378]);
    sub_265750278();
    v25 = v53;
    v27 = v54;
    v28 = v55;
    v29 = v56;
    v30 = v57;
  }

  else
  {
    v31 = -1 << *(v25 + 32);
    v27 = v25 + 56;
    v28 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = v33 & *(v25 + 56);

    v29 = 0;
  }

  v34 = (v28 + 64) >> 6;
  while (v25 < 0)
  {
    if (!sub_265750368() || (type metadata accessor for _SEHostingView(), swift_dynamicCast(), v39 = v47, v37 = v29, v38 = v30, !v47))
    {
LABEL_39:
      sub_26574F8C4(v25);

      v2 = v46;
      v4 = 0x28001C000uLL;
      goto LABEL_40;
    }

LABEL_36:
    v40 = [v39 window];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 _boundContext];

      if (v42)
      {
        [v42 addFence_];
      }
    }

    v29 = v37;
    v30 = v38;
  }

  v35 = v29;
  v36 = v30;
  v37 = v29;
  if (v30)
  {
LABEL_32:
    v38 = (v36 - 1) & v36;
    v39 = *(*(v25 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
    if (!v39)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      goto LABEL_39;
    }

    v36 = *(v27 + 8 * v37);
    ++v35;
    if (v36)
    {
      goto LABEL_32;
    }
  }

LABEL_42:
  __break(1u);
}

unint64_t sub_26574DFC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_265750488())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26574E080(uint64_t a1)
{
  sub_26574FED8();
  sub_26574FBE0(&qword_28001C1B8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_265750198();

  return sub_26574E1E4(a1, v2);
}

uint64_t sub_26574E11C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_265750508();
  sub_2657501E8();
  v5 = sub_265750528();

  return a3(a1, a2, v5);
}

unint64_t sub_26574E1A0(uint64_t a1)
{
  v2 = sub_265750378();

  return sub_26574E3A8(a1, v2);
}

unint64_t sub_26574E1E4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26574FED8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26574FBE0(&unk_28001C530, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_2657501A8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_26574E3A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26574FB30(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26675CA40](v9, a1);
      sub_26574FB8C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_26574E470(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_265750358();

    if (v17)
    {

      a3();
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_265750348();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_26574E6CC(v15, result + 1, a4, a5, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_26574E8C0(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_26574EAE0(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3();
    v19 = sub_2657502C8();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_2657502D8();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_26574EB64(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_26574E6CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_2657503C8();
    v21 = v8;
    sub_265750338();
    if (sub_265750368())
    {
      a5();
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_26574E8C0(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_2657502C8();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_265750368());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_26574E8C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2657503B8();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_2657502C8();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_26574EAE0(uint64_t a1, uint64_t a2)
{
  sub_2657502C8();
  result = sub_265750328();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_26574EB64(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_26574E8C0(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_26574ECE4(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_26574EE24(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_2657502C8();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11();
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_2657502D8();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_265750498();
  __break(1u);
}

id sub_26574ECE4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2657503A8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

uint64_t sub_26574EE24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2657503B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_2657502C8();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

unint64_t sub_26574F030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C510, &unk_265752210);
    v3 = sub_265750438();
    v4 = a1 + 32;

    while (1)
    {
      sub_26574FAC8(v4, &v13, &qword_28001C3C8, &qword_265752028);
      v5 = v13;
      v6 = v14;
      result = sub_26574E11C(v13, v14, sub_26574DFC8);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26574B9EC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26574F174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C3D0, &qword_265752030);
    v3 = sub_265750438();
    v4 = a1 + 32;

    while (1)
    {
      sub_26574FAC8(v4, v13, &qword_28001C528, &qword_265752228);
      result = sub_26574E1A0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_26574B9EC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_26574F2B0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____SEHostable__context;
  *&v1[OBJC_IVAR____SEHostable__context] = a1;
  v5 = objc_allocWithZone(MEMORY[0x277CF0B80]);
  v6 = a1;
  v7 = [v5 init];
  *&v1[OBJC_IVAR____SEHostable__invalidationSignal] = v7;
  LODWORD(a1) = getpid();
  LODWORD(v5) = [*&v1[v4] contextId];
  v8 = type metadata accessor for _SEHostingHandle();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____SEHostingHandle_pid] = a1;
  *&v9[OBJC_IVAR____SEHostingHandle_contextID] = v5;
  v12.receiver = v9;
  v12.super_class = v8;
  *&v1[OBJC_IVAR____SEHostable_handle] = objc_msgSendSuper2(&v12, sel_init);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_26574F39C(uint64_t a1)
{
  v1 = sub_26574FE18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = sub_265750178();
  v7 = [v5 remoteContextWithOptions_];

  if (v7)
  {
    v8 = objc_allocWithZone(type metadata accessor for _SEHostable());
    v9 = sub_26574F2B0(v7);

    return v9;
  }

  else
  {
    v11[3] = 1;
    sub_26574F030(MEMORY[0x277D84F90]);
    sub_26574FBE0(&qword_28001C508, 255, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
    sub_26574FE38();
    sub_26574FE08();
    (*(v2 + 8))(v4, v1);
    return swift_willThrow();
  }
}

id sub_26574F574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C520, &qword_265752220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265751350;
  sub_2657501C8();

  result = sub_265750398();
  if (*MEMORY[0x277CBED28])
  {
    v2 = *MEMORY[0x277CBED28];

    type metadata accessor for CFBoolean(0);
    *(inited + 96) = v3;
    *(inited + 72) = v2;
    v4 = sub_26574F174(inited);
    swift_setDeallocating();
    sub_26574FA60(inited + 32);
    v5 = sub_26574F39C(v4);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_26574F6A4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  v6 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostables] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostingViews] = v6;
  v1[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_committed] = 0;
  if (a1)
  {
    v7 = [objc_opt_self() handleFromXPCRepresentation_];
  }

  else
  {
    v7 = 0;
  }

  *&v1[OBJC_IVAR____SEHostingUpdateCoordinator__fence] = v7;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_26574F78C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____SEHostingUpdateCoordinator__commitLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28001C3E0, &qword_265751D00);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v4 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostables] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_hostingViews] = v4;
  v0[OBJC_IVAR____SEHostingUpdateCoordinator__commitLock_committed] = 0;
  sub_265747F2C(0, &qword_28001C500, 0x277CD9E90);
  *&v0[OBJC_IVAR____SEHostingUpdateCoordinator__fence] = sub_2657502B8();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_26574FA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C528, &qword_265752228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26574FAC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26574FBE0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t _LockdownVersion.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_265750448();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_26574FC98()
{
  result = qword_28001C5A0;
  if (!qword_28001C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001C5A0);
  }

  return result;
}

uint64_t sub_26574FCEC()
{
  sub_265750508();
  sub_2657501E8();
  return sub_265750528();
}

uint64_t sub_26574FD48(uint64_t a1)
{
  sub_265750508();
  sub_2657501E8();
  return sub_265750528();
}

uint64_t sub_26574FD90@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_265750448();

  *a2 = v3 != 0;
  return result;
}