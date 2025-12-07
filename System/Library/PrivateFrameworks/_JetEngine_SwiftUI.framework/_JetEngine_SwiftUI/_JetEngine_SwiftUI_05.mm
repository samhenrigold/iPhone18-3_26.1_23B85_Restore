uint64_t sub_1B79E24C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v8 = sub_1B7A99CC0();
  v5[5] = v8;
  v5[6] = *(v8 - 8);
  v5[7] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v10 = sub_1B7A99CD0();
  v5[11] = v10;
  v5[12] = *(v10 - 8);
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for _IntentProgress(0, a3, a4, v11);
  v5[14] = v12;
  v5[15] = *(v12 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B79E26C0, 0, 0);
}

uint64_t sub_1B79E26C0()
{
  (*(v0[15] + 16))(v0[16], v0[2], v0[14]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = v0[6];
      v2 = v0[7];
      v4 = v0[5];
      v5 = *v0[16];
      *v2 = v5;
      (*(v3 + 104))(v2, *MEMORY[0x1E69AB430], v4);
      v6 = v5;
      sub_1B7A99D10();

      (*(v3 + 8))(v2, v4);
    }

    else
    {
      v14 = v0[12];
      v13 = v0[13];
      v15 = v0[11];
      *v13 = 1;
      (*(v14 + 104))(v13, *MEMORY[0x1E69AB450], v15);
      sub_1B7A99D30();
      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v8 = v0[9];
    v7 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[5];
    v12 = v0[6];
    (*(v8 + 32))(v7, v0[16], v9);
    sub_1B7A9A330();
    (*(v12 + 104))(v10, *MEMORY[0x1E69AB440], v11);
    sub_1B7A99D10();
    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B79E291C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648, &qword_1B7A9D600);
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v62 - v11;
  v12 = sub_1B7A97880();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B7A99BB0();
  v74 = *(v15 - 8);
  v75 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v62 - v18;
  v19 = sub_1B7A99900();
  v76 = *(v19 - 8);
  v77 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_1B7A97480();
  v66 = *(v22 - 8);
  v67 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08, &qword_1B7A9C680);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v64 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v62 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v62 - v30);
  v32 = type metadata accessor for PageRenderMetricsViewModifier(0, a3, a4, a5);
  v33 = a2 + *(v32 + 60);
  v34 = *v33;
  v35 = *(v33 + 8);
  v36 = *(v33 + 16);
  if ((a1 & 1) == 0)
  {
    v80 = *v33;
    LOBYTE(v81) = v35;
    v82 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E8, &qword_1B7A9D548);
    sub_1B7A986D0();
    v76 = v78;
    LODWORD(v77) = v79;
    v40 = v28;
    sub_1B797BECC(v28);
    v41 = a2 + *(v32 + 52);
    v43 = *v41;
    v42 = *(v41 + 8);
    v44 = *(v41 + 16);
    if (*(v41 + 17) == 1)
    {
      sub_1B797DEF0(*v41, v42);
      if (!v42)
      {
        goto LABEL_10;
      }
    }

    else
    {

      sub_1B7A9AA10();
      v45 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B797D5A0(v43, v42, v44, 0);
      (*(v68 + 8))(v14, v69);
      v43 = v80;
      v42 = v81;
      LOBYTE(v44) = v82;
      if (!v81)
      {
        goto LABEL_10;
      }
    }

    v80 = v43;
    v81 = v42;
    LOBYTE(v82) = v44 & 1;

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8, &qword_1B7AA0470);
    MEMORY[0x1B8CA9A40](&v78, v46);
    v47 = v78;

    if ((v47 & 1) == 0)
    {
      v53 = v72;
      sub_1B7A99B90();
      goto LABEL_23;
    }

LABEL_10:
    if ((v77 & 1) == 0)
    {
      v48 = v64;
      sub_1B79E3368(v28, v64);
      v49 = v71;
      if ((*(v70 + 48))(v48, 1, v71) == 1)
      {
        v50 = &qword_1EBA45F08;
        v51 = &qword_1B7A9C680;
        v52 = v48;
      }

      else
      {
        v56 = v63;
        sub_1B7995CD4(v48, v63);
        v57 = v65;
        MEMORY[0x1B8CA9A40](v49);
        v58 = sub_1B7A97440();
        result = (*(v66 + 8))(v57, v67);
        if (__OFSUB__(v76, 1))
        {
          __break(1u);
          return result;
        }

        if (v58 == v76 - 1)
        {
          v53 = v72;
          sub_1B7A99BA0();
          sub_1B797D5AC(v43, v42);
          sub_1B7957888(v56, &qword_1EBA46648, &qword_1B7A9D600);
LABEL_24:
          sub_1B7957888(v40, &qword_1EBA45F08, &qword_1B7A9C680);
          v60 = v73;
          v59 = v74;
          v61 = v75;
          (*(v74 + 32))(v73, v53, v75);
          sub_1B7A99D50();
          sub_1B79E16A8();
          sub_1B7A97120();
          sub_1B7A99D00();

          return (*(v59 + 8))(v60, v61);
        }

        v50 = &qword_1EBA46648;
        v51 = &qword_1B7A9D600;
        v52 = v56;
      }

      sub_1B7957888(v52, v50, v51);
    }

    v53 = v72;
    sub_1B7A99B80();
LABEL_23:
    sub_1B797D5AC(v43, v42);
    goto LABEL_24;
  }

  v75 = a2;
  v80 = v34;
  LOBYTE(v81) = v35;
  v82 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E8, &qword_1B7A9D548);
  sub_1B7A986D0();
  if (v79)
  {
    sub_1B797BECC(v31);
    v37 = v71;
    v38 = (*(v70 + 48))(v31, 1, v71);
    if (v38 == 1)
    {
      sub_1B7957888(v31, &qword_1EBA45F08, &qword_1B7A9C680);
      v39 = 0;
    }

    else
    {
      v54 = v65;
      MEMORY[0x1B8CA9A40](v37);
      sub_1B7957888(v31, &qword_1EBA46648, &qword_1B7A9D600);
      v39 = sub_1B7A97440();
      (*(v66 + 8))(v54, v67);
    }

    v80 = v34;
    LOBYTE(v81) = v35;
    v82 = v36;
    v78 = v39;
    v79 = v38 == 1;
    sub_1B7A986E0();
  }

  sub_1B7A99D50();
  sub_1B79E16A8();
  sub_1B7A97120();
  sub_1B797BE80(v21);
  sub_1B7A99CE0();

  (*(v76 + 8))(v21, v77);
  sub_1B7A97120();
  sub_1B7A99CF0();
}

uint64_t sub_1B79E31B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B79E24C0(a1, v6, v4, v5, v7);
}

uint64_t sub_1B79E3274(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B79E32C8(char a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for PageRenderMetricsViewModifier(0, v3, v4, v5) - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_1B79E291C(a1, v7, v3, v4, v5);
}

uint64_t sub_1B79E3368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08, &qword_1B7A9C680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79E33D8()
{
  v1 = *(sub_1B7A99360() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_1B79E1860(v2, v3, v4, v5, v6);
}

unint64_t sub_1B79E3450(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1B799830C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B79E34D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 < 2)
    {
LABEL_25:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_25;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 254;
}

void sub_1B79E3628(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v7] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1B79E3830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v13 = swift_allocObject();
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = a6;
    v13[5] = a7;
    v13[6] = a2;
    v13[7] = a3;
    v14 = &unk_1B7AA0670;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = type metadata accessor for _IntentObserverKey(0, a5, a7, a4);
  v18[0] = v14;
  v18[1] = v13;
  sub_1B7974B84(a2, a3);
  WitnessTable = swift_getWitnessTable();
  sub_1B7A50734(v15, v18, a4, v15, a6, WitnessTable);
  return sub_1B7974C44(v14, v13);
}

uint64_t sub_1B79E3944(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B798D338;

  return v7(a2);
}

uint64_t sub_1B79E3A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1B7A508A8(a1, a2);
}

uint64_t sub_1B79E3AA4(uint64_t a1, uint64_t a2)
{
  sub_1B7A9AF80();
  swift_getWitnessTable();
  sub_1B7A508A8(v4, a2);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B79E3B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B79E3B8C(uint64_t a1, uint64_t a2)
{
  sub_1B7A9AF80();
  v5 = type metadata accessor for _IntentObserverKey(0, a1, a2, v4);
  swift_getWitnessTable();
  sub_1B7A508A8(v7, v5);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B79E3C0C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B798D338;

  return sub_1B79E3944(a1, a2, v6);
}

uint64_t MediaArtwork.URLImageProtocol.Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultSessionConfiguration];
  if (qword_1EBA45B50 != -1)
  {
    swift_once();
  }

  [v2 setURLCache_];
  [v2 setNetworkServiceType_];
  [v2 setHTTPShouldUsePipelining_];
  v3 = [objc_opt_self() sessionWithConfiguration_];

  *a1 = v3;
  *(a1 + 8) = 1;
  if (qword_1EBA45B48 != -1)
  {
    swift_once();
  }

  v4 = sub_1B7A99080();
  v5 = __swift_project_value_buffer(v4, qword_1EBA47A30);
  v6 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0);
  v7 = *(*(v4 - 8) + 16);
  v8 = a1 + *(v6 + 24);

  return v7(v8, v5, v4);
}

void MediaArtwork.URLImageProtocol.Configuration.withURLSession(_:takeOwnership:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1B79E67A8(v3, a3);
  objc_storeStrong(a3, a1);
  *(a3 + 8) = a2;
}

uint64_t MediaArtwork.URLImageProtocol.Configuration.withAllowedURLs(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B79E67A8(v2, a2);
  v5 = *(type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0) + 24);
  v6 = sub_1B7A99080();
  v7 = *(*(v6 - 8) + 24);

  return v7(a2 + v5, a1, v6);
}

uint64_t sub_1B79E3F60()
{
  v0 = sub_1B7A99080();
  __swift_allocate_value_buffer(v0, qword_1EBA47A30);
  __swift_project_value_buffer(v0, qword_1EBA47A30);
  return sub_1B7A99060();
}

uint64_t MediaArtwork.URLImageProtocol.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  *(v2 + 16) = *a1;
  *(v2 + 24) = *(a1 + 8);
  v4 = *(type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0) + 24);
  v5 = OBJC_IVAR____TtCE18_JetEngine_SwiftUIV9JetEngine12MediaArtwork16URLImageProtocol_allowedURLs;
  v6 = sub_1B7A99080();
  (*(*(v6 - 8) + 16))(v2 + v5, a1 + v4, v6);
  v7 = v3;
  sub_1B79E680C(a1);
  return v2;
}

uint64_t MediaArtwork.URLImageProtocol.init(_:)(uint64_t a1)
{
  v3 = sub_1B7A99080();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  *(v1 + 16) = *a1;
  *(v1 + 24) = *(a1 + 8);
  v8 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0);
  (*(v4 + 16))(v6, a1 + *(v8 + 24), v3);
  v9 = v7;
  sub_1B79E680C(a1);
  (*(v4 + 32))(v1 + OBJC_IVAR____TtCE18_JetEngine_SwiftUIV9JetEngine12MediaArtwork16URLImageProtocol_allowedURLs, v6, v3);
  return v1;
}

uint64_t MediaArtwork.URLImageProtocol.__allocating_init()()
{
  v0 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() defaultSessionConfiguration];
  if (qword_1EBA45B50 != -1)
  {
    swift_once();
  }

  [v3 setURLCache_];
  [v3 setNetworkServiceType_];
  [v3 setHTTPShouldUsePipelining_];
  v4 = [objc_opt_self() sessionWithConfiguration_];

  *v2 = v4;
  v2[8] = 1;
  v5 = qword_1EBA45B48;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_1B7A99080();
  v8 = __swift_project_value_buffer(v7, qword_1EBA47A30);
  v9 = *(v0 + 24);
  v10 = *(*(v7 - 8) + 16);
  v10(&v2[v9], v8, v7);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = 1;
  v10((v11 + OBJC_IVAR____TtCE18_JetEngine_SwiftUIV9JetEngine12MediaArtwork16URLImageProtocol_allowedURLs), &v2[v9], v7);
  sub_1B79E680C(v2);
  return v11;
}

uint64_t MediaArtwork.URLImageProtocol.deinit()
{
  if (*(v0 + 24) == 1)
  {
    [*(v0 + 16) invalidateAndCancel];
  }

  v1 = OBJC_IVAR____TtCE18_JetEngine_SwiftUIV9JetEngine12MediaArtwork16URLImageProtocol_allowedURLs;
  v2 = sub_1B7A99080();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MediaArtwork.URLImageProtocol.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    [*(v0 + 16) invalidateAndCancel];
  }

  v1 = OBJC_IVAR____TtCE18_JetEngine_SwiftUIV9JetEngine12MediaArtwork16URLImageProtocol_allowedURLs;
  v2 = sub_1B7A99080();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void static MediaArtwork.URLImageProtocol._clearCache()()
{
  if (qword_1EBA45B50 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBA47A48;
  v1 = [objc_opt_self() sharedURLCache];
  sub_1B79596F8(0, &qword_1EBA47A58, 0x1E696AF18);
  v2 = sub_1B7A9AB20();

  if ((v2 & 1) == 0)
  {

    [v0 removeAllCachedResponses];
  }
}

uint64_t MediaArtwork.URLImageProtocol.fetch(contentsOf:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47A60, &qword_1B7AA0680);
  v4 = MEMORY[0x1EEE9AC00](v3);
  *&v8[-v5] = 1;
  (*(v6 + 104))(&v8[-v5], *MEMORY[0x1E69E8788], v4);
  v9 = v1;
  v10 = a1;
  return sub_1B7A9A870();
}

uint64_t sub_1B79E4770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v71 = a2;
  v85 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA0, &qword_1B7AA0790);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = v4;
  v77 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v64 - v6;
  v7 = sub_1B7A9A7E0();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA8, &qword_1B7AA0798);
  v69 = *(v82 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v66 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0, &unk_1B7AA07A0);
  v67 = *(v10 - 8);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v13 = sub_1B7A96B90();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B7A96D70();
  v83 = *(v17 - 8);
  v84 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  if (qword_1EBA45B80 != -1)
  {
    swift_once();
  }

  v23 = sub_1B7A96DA0();
  __swift_project_value_buffer(v23, qword_1EBA507B8);
  sub_1B7A96D90();
  sub_1B7A96D40();
  v24 = sub_1B7A96D90();
  v25 = sub_1B7A9AA90();
  v26 = sub_1B7A9AB50();
  v81 = v22;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_1B7A96D50();
    _os_signpost_emit_with_name_impl(&dword_1B7954000, v24, v25, v28, "Image.Download", "", v27, 2u);
    v29 = v27;
    v22 = v81;
    MEMORY[0x1B8CACB70](v29, -1, -1);
  }

  (*(v83 + 16))(v19, v22, v84);
  sub_1B7A96DE0();
  swift_allocObject();
  v30 = sub_1B7A96DD0();
  v65 = *(v71 + 16);
  v71 = v10;
  v31 = v73;
  sub_1B7A99020();
  v64 = sub_1B7A96B50();
  (*(v14 + 8))(v16, v13);
  sub_1B79E75F4(v31, v12);
  v32 = v69;
  v33 = v66;
  v34 = v82;
  (*(v69 + 16))(v66, v85, v82);
  v35 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v36 = (v68 + *(v32 + 80) + v35) & ~*(v32 + 80);
  v37 = (v70 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_1B79E7664(v12, v38 + v35);
  (*(v32 + 32))(v38 + v36, v33, v34);
  *(v38 + v37) = v30;
  aBlock[4] = sub_1B79E76D4;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B79E5EF8;
  aBlock[3] = &block_descriptor;
  v39 = _Block_copy(aBlock);

  v40 = v64;
  v41 = [v65 dataTaskWithURL:v64 completionHandler:v39];
  _Block_release(v39);

  v42 = *(v31 + *(v71 + 44));
  v43 = *(v42 + 16);
  v44 = *(*v43 + *MEMORY[0x1E69E6B68] + 16);
  v45 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;
  v46 = v41;

  os_unfair_lock_lock((v43 + v45));
  v48 = v74;
  v47 = v75;
  v49 = v43 + v44;
  v50 = v72;
  (*(v74 + 16))(v72, v49, v75);
  os_unfair_lock_unlock((v43 + v45));

  v51 = sub_1B79E5FC0();
  (*(v48 + 8))(v50, v47);
  *&v52 = v51;
  [v46 setPriority_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB8, &unk_1B7AA28E0);
  sub_1B797EC34(&qword_1EBA47AC0, &qword_1EBA47AB8, &unk_1B7AA28E0, MEMORY[0x1E69AB6E8]);
  sub_1B7A98E80();
  v53 = v78;
  sub_1B7A98EA0();

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  type metadata accessor for _URLSessionTaskCancelCoordinator();
  v54 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AC8, &qword_1B7AA07B0);
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  *(v55 + 16) = 0;
  *(v54 + 16) = v55;
  v57 = v79;
  v56 = v80;
  v58 = v77;
  (*(v79 + 16))(v77, v53, v80);
  v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = v54;
  *(v60 + 24) = v42;
  (*(v57 + 32))(v60 + v59, v58, v56);

  sub_1B7A9A840();
  v61 = [v46 resume];
  v62 = *(v54 + 16);
  MEMORY[0x1EEE9AC00](v61);
  *(&v64 - 2) = v46;
  *(&v64 - 1) = v54;

  os_unfair_lock_lock((v62 + 24));
  sub_1B79E78A4((v62 + 16), aBlock);
  os_unfair_lock_unlock((v62 + 24));
  LODWORD(v43) = LOBYTE(aBlock[0]);

  if (v43 == 1)
  {
    [v46 cancel];
  }

  (*(v57 + 8))(v53, v56);
  return (*(v83 + 8))(v81, v84);
}

uint64_t sub_1B79E518C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v90 = a6;
  v91 = a7;
  v11 = sub_1B7A96C60();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1B7A96DB0();
  v92 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v84 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v83 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v83 - v19;
  v20 = sub_1B7A96D70();
  v93 = *(v20 - 8);
  v94 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v83 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v83 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AE0, &qword_1B7AA07C0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v83 - v28;
  *&v96 = a1;
  *(&v96 + 1) = a2;
  sub_1B79E7938(a1, a2);
  v30 = a4;
  sub_1B7A9A0F0();
  v96 = v98;
  v97 = v99;
  v95 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AE8, &qword_1B7AA07C8);
  sub_1B7A9A0E0();
  sub_1B79E79BC(v96, *(&v96 + 1), v97);
  v31 = v100;
  if ((v101 & 1) == 0)
  {
    *&v98 = v100;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA8, &qword_1B7AA0798);
    sub_1B7A9A850();
    (*(v27 + 8))(v29, v26);
    *&v98 = 0;
    sub_1B7A9A860();
    if (qword_1EBA45B80 != -1)
    {
      swift_once();
    }

    v43 = sub_1B7A96DA0();
    __swift_project_value_buffer(v43, qword_1EBA507B8);
    v44 = sub_1B7A96D90();
    v36 = v88;
    sub_1B7A96DC0();
    v45 = sub_1B7A9AA80();
    v46 = sub_1B7A9AB50();
    v47 = v92;
    if (v46)
    {

      v48 = v85;
      sub_1B7A96DF0();
      v49 = v48;

      v50 = v48;
      v51 = v89;
      if ((*(v47 + 88))(v50, v89) == *MEMORY[0x1E69E93E8])
      {
        v52 = "[Error] Interval already ended";
      }

      else
      {
        (*(v47 + 8))(v49, v51);
        v52 = "finished";
      }

      v67 = swift_slowAlloc();
      *v67 = 0;
      v68 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v44, v45, v68, "Image.Download", v52, v67, 2u);
      MEMORY[0x1B8CACB70](v67, -1, -1);
    }

    v69 = v31;
    v70 = 0;
    goto LABEL_24;
  }

  sub_1B7A96C80();
  sub_1B79E79C8(&qword_1EBA47AF0, MEMORY[0x1E6969BF8], MEMORY[0x1E6969BF0]);
  v32 = sub_1B7A96AD0();
  (*(v12 + 8))(v14, v11);
  if (v32)
  {
    *&v98 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA8, &qword_1B7AA0798);
    sub_1B7A9A860();
    v33 = v92;
    if (qword_1EBA45B80 != -1)
    {
      swift_once();
    }

    v34 = sub_1B7A96DA0();
    __swift_project_value_buffer(v34, qword_1EBA507B8);
    v35 = sub_1B7A96D90();
    v36 = v86;
    sub_1B7A96DC0();
    v37 = sub_1B7A9AA80();
    if (sub_1B7A9AB50())
    {

      v38 = v83;
      sub_1B7A96DF0();
      v39 = v38;

      v40 = v38;
      v41 = v89;
      if ((*(v33 + 88))(v40, v89) == *MEMORY[0x1E69E93E8])
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v33 + 8))(v39, v41);
        v42 = "cancelled";
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v35, v37, v72, "Image.Download", v42, v71, 2u);
      MEMORY[0x1B8CACB70](v71, -1, -1);
    }

    v69 = v31;
    v70 = 1;
LABEL_24:
    sub_1B79AAC6C(v69, v70);
    return (*(v93 + 8))(v36, v94);
  }

  *&v98 = v31;
  v53 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA8, &qword_1B7AA0798);
  sub_1B7A9A860();
  v54 = v92;
  if (qword_1EBA45B80 != -1)
  {
    swift_once();
  }

  v55 = sub_1B7A96DA0();
  __swift_project_value_buffer(v55, qword_1EBA507B8);
  v56 = v31;
  v57 = sub_1B7A96D90();
  v58 = v87;
  sub_1B7A96DC0();
  v59 = sub_1B7A9AA80();
  sub_1B79AAC6C(v31, 1);
  if (sub_1B7A9AB50())
  {

    v60 = v84;
    sub_1B7A96DF0();
    v61 = v60;

    v62 = v60;
    v63 = v89;
    if ((*(v54 + 88))(v62, v89) == *MEMORY[0x1E69E93E8])
    {
      v64 = 0;
      v65 = 0;
      v66 = "[Error] Interval already ended";
    }

    else
    {
      (*(v54 + 8))(v61, v63);
      v66 = "error=%{public}s";
      v65 = 2;
      v64 = 1;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v98 = v75;
    *v74 = v65;
    *(v74 + 1) = v64;
    *(v74 + 2) = 2082;
    v76 = sub_1B7A96B00();
    v77 = AMSLogableError();

    v78 = sub_1B7A9A4B0();
    v80 = v79;

    v81 = sub_1B79A6340(v78, v80, &v98);

    *(v74 + 4) = v81;
    v82 = sub_1B7A96D50();
    _os_signpost_emit_with_name_impl(&dword_1B7954000, v57, v59, v82, "Image.Download", v66, v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1B8CACB70](v75, -1, -1);
    MEMORY[0x1B8CACB70](v74, -1, -1);
  }

  sub_1B79AAC6C(v31, 1);
  return (*(v93 + 8))(v58, v94);
}

uint64_t sub_1B79E5B50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B7A96C60();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1B7A96C90();
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0, &unk_1B7AA07A0) + 32));
  sub_1B79E794C(v10, v11);
  result = sub_1B79E5E20(v10, v11, v12);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    sub_1B7A96C40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464E0, &unk_1B7AA07D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7A9D270;
    *(inited + 32) = sub_1B7A9A4B0();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v15;
    *(inited + 48) = 0xD000000000000021;
    *(inited + 56) = 0x80000001B7AC5E30;
    *(inited + 80) = sub_1B7A9A4B0();
    *(inited + 88) = v16;
    *(inited + 120) = sub_1B7A96B90();
    __swift_allocate_boxed_opaque_existential_1Tm((inited + 96));
    sub_1B7A99020();
    sub_1B798FF28(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464E8, &unk_1B7A9D260);
    swift_arrayDestroy();
    sub_1B79E79C8(&qword_1EBA464F0, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1B7A96AF0();
    sub_1B7A96C70();
    (*(v18 + 8))(v9, v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B79E5E20(uint64_t a1, unint64_t a2, double a3)
{
  v5 = sub_1B7A96BA0();
  v6 = CGImageSourceCreateWithData(v5, 0);

  if (v6)
  {
    if (CGImageSourceGetCount(v6) > 0 && CGImageSourceCreateImageAtIndex(v6, 0, 0))
    {
      v7 = v6;
      sub_1B79E65BC(v7);
      v8 = sub_1B7A985C0();

      sub_1B79E78E4(a1, a2);
      return v8;
    }

    sub_1B79E78E4(a1, a2);
  }

  else
  {
    sub_1B79E78E4(a1, a2);
  }

  return 0;
}

uint64_t sub_1B79E5EF8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1B7A96BB0();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1B79E78D0(v6, v10);
}

float sub_1B79E5FC0()
{
  v1 = v0;
  v2 = sub_1B7A9A7E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  (*(v3 + 16))(&v16 - v8, v1, v2, v7);
  sub_1B7A9A780();
  sub_1B79E79C8(&qword_1EBA47AD8, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8600]);
  v10 = sub_1B7A9A470();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v11(v9, v2);
    return 1.0;
  }

  else
  {
    sub_1B7A9A7C0();
    v13 = sub_1B7A9A470();
    v11(v5, v2);
    if (v13)
    {
      v11(v9, v2);
      return 0.6;
    }

    else
    {
      sub_1B7A9A7A0();
      v14 = sub_1B7A9A470();
      v11(v5, v2);
      if (v14)
      {
        v11(v9, v2);
        return 0.4;
      }

      else
      {
        sub_1B7A9A770();
        v15 = sub_1B7A9A470();
        v11(v5, v2);
        v11(v9, v2);
        result = 0.2;
        if ((v15 & 1) == 0)
        {
          return 0.5;
        }
      }
    }
  }

  return result;
}

void sub_1B79E6260(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *&v4 = sub_1B79E5FC0();
    [v3 setPriority_];
  }
}

uint64_t sub_1B79E62C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AD0, &qword_1B7AA07B8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  (*(v7 + 16))(&v16 - v9, a1, v6, v8);
  LODWORD(a1) = (*(v7 + 88))(v10, v6);
  v11 = *MEMORY[0x1E69E8760];
  (*(v7 + 8))(v10, v6);
  if (a1 == v11)
  {
    v12 = *(a2 + 16);

    os_unfair_lock_lock((v12 + 24));
    v13 = *(v12 + 16);
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = 0;
      }

      else
      {
        *(v12 + 16) = 1;
        v14 = v13;
      }
    }

    else
    {
      v14 = 0;
      *(v12 + 16) = 1;
    }

    os_unfair_lock_unlock((v12 + 24));

    [v14 cancel];
    sub_1B79E78C0(v13);
  }

  return sub_1B7A9A340();
}

uint64_t sub_1B79E64A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47A60, &qword_1B7AA0680);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = *v1;
  *&v9[-v5] = 1;
  (*(v7 + 104))(&v9[-v5], *MEMORY[0x1E69E8788], v4);
  v10 = v6;
  v11 = a1;
  return sub_1B7A9A870();
}

uint64_t sub_1B79E65BC(CGImageSource *a1)
{
  v2 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return 0;
    }

    v5 = 0;
    sub_1B7A9A390();
  }

  return 0;
}

uint64_t sub_1B79E6768(double a1)
{
  result = sub_1B79E6A74(a1);
  qword_1EBA47A48 = result;
  return result;
}

uint64_t sub_1B79E67A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79E680C(uint64_t a1)
{
  v2 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79E68DC(uint64_t a1)
{
  result = sub_1B7A99080();
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

uint64_t sub_1B79E69D8(uint64_t a1)
{
  result = sub_1B79596F8(319, &qword_1EBA47A98, 0x1E696AF78);
  if (v2 <= 0x3F)
  {
    result = sub_1B7A99080();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B79E6A74(double a1)
{
  v1 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_1B79596F8(0, &qword_1EBA47A58, 0x1E696AF18);
  sub_1B79E6DA4(v4);
  v5 = sub_1B7A96B90();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  return sub_1B7A9AA00();
}

void sub_1B79E6DA4(char *a1@<X8>)
{
  v50 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v1 = sub_1B7A969F0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1B7A96A00();
  v46 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B7A96B30();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7A96B90();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = v43 - v13;
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    v16 = sub_1B7A9A4B0();
    v18 = v17;

    v19 = [objc_opt_self() defaultManager];
    v51 = 0;
    v46 = v19;
    v20 = [v19 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v51];
    v21 = v51;
    if (v20)
    {
      v22 = v20;
      sub_1B7A96B60();
      v23 = v21;

      v51 = v16;
      v52 = v18;
      v45 = *MEMORY[0x1E6968F58];
      v44 = *(v6 + 104);
      v24 = v44(v8);
      v43[1] = sub_1B7999DD8(v24, v25, v26);
      v27 = v47;
      sub_1B7A96B80();
      v28 = *(v6 + 8);
      v43[0] = v6 + 8;
      v28(v8, v5);
      v29 = *(v48 + 8);
      v30 = v11;
      v31 = v49;
      v29(v30, v49);

      v51 = 0xD000000000000010;
      v52 = 0x80000001B7AC5EE0;
      (v44)(v8, v45, v5);
      v32 = v50;
      sub_1B7A96B80();
      v28(v8, v5);
      v33 = v27;
      v34 = v29;
      v35 = v31;
      v34(v33, v31);
      v36 = sub_1B7A96B50();
      v51 = 0;
      v37 = v46;
      LOBYTE(v31) = [v46 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v51];

      if (v31)
      {
        v38 = v51;
      }

      else
      {
        v42 = v51;
        sub_1B7A96B10();

        swift_willThrow();
        v34(v32, v35);
      }
    }

    else
    {
      v41 = v51;

      sub_1B7A96B10();

      swift_willThrow();
    }
  }

  else
  {
    sub_1B7A969E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464E0, &unk_1B7AA07D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7A9C180;
    *(inited + 32) = sub_1B7A9A4B0();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v40;
    *(inited + 48) = 0xD00000000000002ALL;
    *(inited + 56) = 0x80000001B7AC5EB0;
    sub_1B798FF28(inited);
    swift_setDeallocating();
    sub_1B7957888(inited + 32, &qword_1EBA464E8, &unk_1B7A9D260);
    sub_1B79E79C8(&qword_1EBA47B00, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1B7A96AF0();
    sub_1B7A969D0();
    (*(v46 + 1))(v4, v2);
    swift_willThrow();
  }
}

void **sub_1B79E73E8@<X0>(void **result@<X0>, void *a2@<X1>, _BYTE *a4@<X8>)
{
  v4 = *result;
  if (*result)
  {
    if (v4 == 1)
    {
      *a4 = 1;
    }

    else
    {
      v5 = v4;
      sub_1B7A9AC50();
      MEMORY[0x1B8CAB750](96, 0xE100000000000000);
      sub_1B7A9AD50();
      MEMORY[0x1B8CAB750](0xD00000000000001ALL, 0x80000001B7AC5E10);
      v6 = [v5 description];
      v7 = sub_1B7A9A4B0();
      v9 = v8;

      MEMORY[0x1B8CAB750](v7, v9);

      MEMORY[0x1B8CAB750](96, 0xE100000000000000);
      result = sub_1B7A9AD70();
      __break(1u);
    }
  }

  else
  {
    *result = a2;
    *a4 = 0;
    return a2;
  }

  return result;
}

uint64_t sub_1B79E7570()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_18_JetEngine_SwiftUI32_URLSessionTaskCancelCoordinatorC5State33_29D65C2360DF48F66DCF65776E26F16DLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B79E75F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0, &unk_1B7AA07A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79E7664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0, &unk_1B7AA07A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79E76D4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0, &unk_1B7AA07A0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA8, &qword_1B7AA0798) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B79E518C(a1, a2, a3, a4, v4 + v10, v4 + v13, v14);
}

uint64_t sub_1B79E7824(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA0, &qword_1B7AA0790) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1B79E62C8(a1, v4, v5, v6);
}

void sub_1B79E78C0(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1B79E78D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B79E78E4(result, a2);
  }

  return result;
}

uint64_t sub_1B79E78E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double sub_1B79E7938(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B79E794C(result, a2);
  }

  return v2;
}

double sub_1B79E794C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

void sub_1B79E79BC(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1B79E78E4(a1, a2);
  }
}

uint64_t sub_1B79E79C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B79E7A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B795A1B4(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

uint64_t sub_1B79E7A50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a5;
  v61 = a3;
  v60 = a2;
  v65 = a6;
  v8 = type metadata accessor for _OnScenePhaseChange(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1B7A97590();
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v58 - v15;
  v16 = sub_1B7A97590();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v63 = sub_1B7A97B40();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v58 - v23;
  if (a1)
  {
    v71[0] = v60;
    v71[1] = v61;
    v71[2] = a1;
    v24 = a1;
    v25 = a4;
    v26 = v64;
    v27 = MEMORY[0x1B8CA96D0](v71, v25, &type metadata for _OnUIScenePhaseChange, v64);
    v30 = sub_1B797D440(v27, v28, v29);
    v69 = v26;
    v70 = v30;
    WitnessTable = swift_getWitnessTable();
    sub_1B7957EE0(v19, v16, WitnessTable);
    v32 = *(v17 + 8);
    v32(v19, v16);
    sub_1B7957EE0(v22, v16, WitnessTable);
    v33 = sub_1B79E92F0(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange, &unk_1B7AA0978);
    v67 = v26;
    v68 = v33;
    v34 = swift_getWitnessTable();
    sub_1B79B5878(v19, v16, v11, WitnessTable, v34);

    v32(v19, v16);
    v35 = (v32)(v22, v16);
  }

  else
  {
    v38 = *(v8 + 20);
    *(v10 + v38) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
    swift_storeEnumTagMultiPayload();
    v39 = v61;
    *v10 = v60;
    v10[1] = v39;

    v40 = a4;
    v26 = v64;
    MEMORY[0x1B8CA96D0](v10, v40, v8, v64);
    sub_1B79E9294(v10);
    v41 = sub_1B79E92F0(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange, &unk_1B7AA0978);
    v71[11] = v26;
    v71[12] = v41;
    v42 = swift_getWitnessTable();
    v43 = v58;
    sub_1B7957EE0(v13, v11, v42);
    v44 = *(v59 + 8);
    v44(v13, v11);
    v45 = sub_1B7957EE0(v43, v11, v42);
    v48 = sub_1B797D440(v45, v46, v47);
    v71[9] = v26;
    v71[10] = v48;
    v49 = swift_getWitnessTable();
    sub_1B7959A28(v13, v16, v11, v49, v42);
    v44(v13, v11);
    v35 = (v44)(v43, v11);
  }

  v50 = sub_1B797D440(v35, v36, v37);
  v71[7] = v26;
  v71[8] = v50;
  v51 = swift_getWitnessTable();
  v52 = sub_1B79E92F0(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange, &unk_1B7AA0978);
  v71[5] = v26;
  v71[6] = v52;
  v53 = swift_getWitnessTable();
  v71[3] = v51;
  v71[4] = v53;
  v54 = v63;
  v55 = swift_getWitnessTable();
  v56 = v66;
  sub_1B7957EE0(v66, v54, v55);
  return (*(v62 + 8))(v56, v54);
}

uint64_t sub_1B79E8088(uint64_t a1, uint64_t a2, void (**a3)(uint64_t))
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*a3)(a2);
}

uint64_t sub_1B79E813C(uint64_t a1, uint64_t a2)
{
  v12[1] = a1;
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = sub_1B7A97040();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B797C2F4(v8);
  sub_1B79E8EC0(v2, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1B79E8F24(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B38, &qword_1B7AA0A40);
  sub_1B797EC34(&qword_1EDC0FCF0, &qword_1EBA47B38, &qword_1B7AA0A40, MEMORY[0x1E697FDF8]);
  sub_1B79E92F0(&qword_1EDC108C0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  sub_1B7A984B0();

  return (*(v6 + 8))(v8, v5);
}

id sub_1B79E8398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B18, &qword_1B7AA0A18);
  sub_1B7A9AAB0();

  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B20, &qword_1B7AA0A20);
  (*(*(v14 - 8) + 16))(a5, a1, v14);
  v15 = (a5 + *(v12 + 56));
  *v15 = sub_1B79E8E1C;
  v15[1] = v13;

  v16 = a4;
  v17 = [v10 defaultCenter];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B28, &qword_1B7AA0A28);
  sub_1B7A9AAB0();

  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = v16;
  v20 = (a5 + *(v18 + 56));
  *v20 = sub_1B79E8E48;
  v20[1] = v19;

  v26 = v16;
  v21 = [v10 defaultCenter];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B30, &unk_1B7AA0A30);
  sub_1B7A9AAB0();

  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  *(v23 + 4) = v26;
  v24 = (a5 + *(v22 + 56));
  *v24 = sub_1B79E8E94;
  v24[1] = v23;

  return v26;
}

uint64_t sub_1B79E8630(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_1B7A97040();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79596F8(0, &qword_1EDC108A0, 0x1E696AAE8);
  if (sub_1B7A9AB10())
  {
    (*(v4 + 104))(v6, *MEMORY[0x1E697BE40], v3);
    a2(v6);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
  }
}

uint64_t sub_1B79E87F0(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v8 = sub_1B7A97040();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 104))(v11, *a6, v8);
  a2(v11);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B79E8A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B79E9350();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1B79E8AA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B79E8B1C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_1B79948D0(v4, v10);
      v5 = [v3 defaultCenter];
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      v6 = sub_1B7A9AE70();
      __swift_destroy_boxed_opaque_existential_1(v10);
      [v5 removeObserver_];

      swift_unknownObjectRelease();
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  MEMORY[0x1B8CACC70](v0 + 16);

  v7 = OBJC_IVAR____TtC18_JetEngine_SwiftUI15JetSceneSession__scenePhase;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B40, &qword_1B7AA0A48);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return swift_deallocClassInstance();
}

uint64_t sub_1B79E8CAC()
{
  MEMORY[0x1B8CACC70](v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1B79E8D34(uint64_t a1)
{
  sub_1B7958DD8();
  if (v1 <= 0x3F)
  {
    sub_1B7955DD8(319, &qword_1EDC108B8, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1B79E8EC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _OnScenePhaseChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79E8F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _OnScenePhaseChange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79E8F88(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for _OnScenePhaseChange(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1B79E8088(a1, a2, v6);
}

uint64_t sub_1B79E9008(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B79E9084(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B7A97040();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);

  sub_1B7A96F30();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1B79E91F4(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  v4 = v3;
  if (Strong)
  {
    if (v3)
    {
      sub_1B79596F8(0, &qword_1EDC0FC58, 0x1E69DCE70);
      v5 = sub_1B7A9AB20();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
    Strong = v3;
  }

  return v5 & 1;
}

uint64_t sub_1B79E9294(uint64_t a1)
{
  v2 = type metadata accessor for _OnScenePhaseChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79E92F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B79E9350()
{
  result = qword_1EDC100B8;
  if (!qword_1EDC100B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D10, &unk_1B7AA0B40);
    sub_1B79E92F0(&qword_1EDC100C0, type metadata accessor for JetSceneSession, &unk_1B7AA0918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC100B8);
  }

  return result;
}

uint64_t sub_1B79E9404()
{
  v0 = sub_1B7A97C90();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45FC8, &unk_1B7AA0BE0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45FD0, &unk_1B7A9C8B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1B7A977F0();
  (*(v1 + 104))(v12, *MEMORY[0x1E697FF40], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1B7988950(v15, v6);
  sub_1B7988950(v12, &v6[v16]);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_1B7988950(v6, v9);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = v23;
      (*(v1 + 32))(v23, &v6[v16], v0);
      sub_1B79EA298();
      v18 = sub_1B7A9A470();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_1B7957888(v12, &qword_1EBA45FD0, &unk_1B7A9C8B0);
      sub_1B7957888(v15, &qword_1EBA45FD0, &unk_1B7A9C8B0);
      v20(v9, v0);
      sub_1B7957888(v6, &qword_1EBA45FD0, &unk_1B7A9C8B0);
      return v18 & 1;
    }

    sub_1B7957888(v12, &qword_1EBA45FD0, &unk_1B7A9C8B0);
    sub_1B7957888(v15, &qword_1EBA45FD0, &unk_1B7A9C8B0);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_1B7957888(v12, &qword_1EBA45FD0, &unk_1B7A9C8B0);
  sub_1B7957888(v15, &qword_1EBA45FD0, &unk_1B7A9C8B0);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_1B7957888(v6, &qword_1EBA45FC8, &unk_1B7AA0BE0);
    v18 = 0;
    return v18 & 1;
  }

  sub_1B7957888(v6, &qword_1EBA45FD0, &unk_1B7A9C8B0);
  v18 = 1;
  return v18 & 1;
}

uint64_t View.flowSideBar<A, B>(title:header:footer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a9;
  v16[4] = a11;
  v16[5] = a12;
  v16[6] = a3;
  v16[7] = a4;
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a5;
  v17[7] = a6;

  sub_1B7A98150();
}

double sub_1B79E9940@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79EA244(a2, a3, a4);
  sub_1B7A97890();
  result = *&v6;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  return result;
}

double sub_1B79E9994@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79EA244(a2, a3, a4);
  sub_1B7A97890();
  result = *&v6;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  return result;
}

uint64_t sub_1B79E99EC(uint64_t *a1)
{
  sub_1B79EA1F4(*a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  sub_1B79EA244(v1, v2, v3);
  return sub_1B7A978A0();
}

uint64_t View.flowSideBar<A, B, C>(title:header:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v34 = a5;
  v32 = a3;
  v33 = a4;
  v30 = a9;
  v31 = a2;
  v28 = a12;
  v29 = a14;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  v27 = a10;
  v19 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v19);
  v21 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a6;
  *(v22 + 3) = a7;
  *(v22 + 4) = a8;
  *(v22 + 5) = a10;
  v23 = v28;
  *(v22 + 6) = a11;
  *(v22 + 7) = v23;
  v24 = v29;
  *(v22 + 8) = a13;
  *(v22 + 9) = v24;
  (*(v17 + 32))(&v22[v21], v20, a7);
  View.flowSideBar<A, B>(title:header:footer:)(sub_1B79E9CC4, v22, v31, v32, v33, v34, a6, a8, v27, a11, a13, v24);
}

uint64_t sub_1B79E9BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  return sub_1B7A98080();
}

uint64_t View.flowSideBar<A, B>(title:header:footer:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;

  View.flowSideBar<A, B>(title:header:footer:)(sub_1B79E9EA8, v18, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1B79E9E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B7A98070();
}

unint64_t sub_1B79E9EB8()
{
  result = qword_1EBA47B68;
  if (!qword_1EBA47B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47B60, &qword_1B7AA0B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47B68);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B79E9F30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B79E9F78(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B79E9FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  v12 = sub_1B7999EF4(v10, a3, a5);
  (*(v7 + 8))(v10, a3);
  return v12;
}

uint64_t sub_1B79EA0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  v13 = sub_1B7999EF4(v11, a4, a6);
  (*(v8 + 8))(v11, a4);
  return v13;
}

double sub_1B79EA1E4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1B79EA1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1B79EA244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47B70;
  if (!qword_1EBA47B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47B70);
  }

  return result;
}

unint64_t sub_1B79EA298()
{
  result = qword_1EBA45FE0;
  if (!qword_1EBA45FE0)
  {
    sub_1B7A97C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FE0);
  }

  return result;
}

uint64_t sub_1B79EA300()
{
  v0 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  if (!swift_getEnumCaseMultiPayload())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820, &qword_1B7AA0238);
    sub_1B7957888(&v8[*(v9 + 48)], &qword_1EBA47828, &qword_1B7AA0240);
    v10 = sub_1B7A99F50();
    (*(*(v10 - 8) + 8))(v8, v10);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1B79EB840(v5, v2);

    sub_1B7A96F30();
    v8 = v5;
  }

  return sub_1B79DE150(v8);
}

BOOL sub_1B79EA4E4(uint64_t a1)
{
  v2 = sub_1B7A96C20();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v6);
  v20 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v1;
  sub_1B7A96F20();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = EnumCaseMultiPayload == 1;
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47818, &unk_1B7AA0D00) + 48);
    (*(v3 + 32))(v5, v13, v2);
    sub_1B79EB7E8();
    v17 = sub_1B7A9A470();
    (*(v3 + 8))(v5, v2);
    v18 = sub_1B7A99F80();
    (*(*(v18 - 8) + 8))(&v13[v16], v18);
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1B79EB840(v10, v20);

    sub_1B7A96F30();
    v13 = v10;
  }

  sub_1B79DE150(v13);
  return v15;
}

BOOL sub_1B79EA7B8()
{
  v1 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B79EB840(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_1B79DE150(v3);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820, &qword_1B7AA0238);
    sub_1B7957888(&v3[*(v5 + 48)], &qword_1EBA47828, &qword_1B7AA0240);
    v6 = sub_1B7A99F50();
    (*(*(v6 - 8) + 8))(v3, v6);
  }

  return EnumCaseMultiPayload == 0;
}

uint64_t sub_1B79EA8C8(char a1, double a2)
{
  v4 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B7A9A280();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1B7A9A1D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    v10[3] = MEMORY[0x1E69E6158];
    v10[0] = 0x7472656C417369;
    v10[1] = 0xE700000000000000;
    sub_1B7A98C70();
    sub_1B7957888(v10, &qword_1EBA46B50, &qword_1B7A9DD90);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A99E60();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_1B79DE150(v2);
    type metadata accessor for FlowAlertAuthority.Presented(0);

    return swift_storeEnumTagMultiPayload();
  }
}

BOOL sub_1B79EAB6C()
{
  v1 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B79EB840(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47818, &unk_1B7AA0D00) + 48);
    v6 = sub_1B7A99F80();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
    v7 = sub_1B7A96C20();
    (*(*(v7 - 8) + 8))(v3, v7);
  }

  else
  {
    sub_1B79DE150(v3);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t sub_1B79EACA0(char a1, double a2)
{
  v4 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B7A9A280();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1B7A9A1D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    v10[3] = MEMORY[0x1E69E6158];
    v10[0] = 0x7473616F547369;
    v10[1] = 0xE700000000000000;
    sub_1B7A98C70();
    sub_1B7957888(v10, &qword_1EBA46B50, &qword_1B7A9DD90);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A99E60();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_1B79DE150(v2);
    type metadata accessor for FlowAlertAuthority.Presented(0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B79EAF44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B79EAFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = sub_1B7A9A280();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  sub_1B79DE0EC(v16, v13);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B79DE150(v13);
    v17 = v29;
    sub_1B7A96C10();
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47818, &unk_1B7AA0D00) + 48);
    v19 = sub_1B7A96C20();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v10, v17, v19);
    v21 = sub_1B7A99F80();
    (*(*(v21 - 8) + 16))(&v10[v18], v28, v21);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1B79EB840(v10, v7);

    sub_1B7A96F30();
    sub_1B79DE150(v10);
    return (*(v20 + 56))(v17, 0, 1, v19);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820, &qword_1B7AA0238);
    sub_1B7957888(&v13[*(v23 + 48)], &qword_1EBA47828, &qword_1B7AA0240);
    v24 = sub_1B7A99F50();
    (*(*(v24 - 8) + 8))(v13, v24);
    sub_1B7A9A1D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98C40();
    sub_1B7A99E60();

    (*(v27 + 8))(v4, v2);
    v25 = sub_1B7A96C20();
    return (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
  }
}

uint64_t sub_1B79EB460()
{
  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUI18FlowAlertAuthority__presented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BB8, &qword_1B7AA0CB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1B79EB530(uint64_t a1)
{
  sub_1B79EB5C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B79EB5C0(uint64_t a1)
{
  if (!qword_1EBA47B90)
  {
    type metadata accessor for FlowAlertAuthority.Presented(255);
    v1 = sub_1B7A96F50();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA47B90);
    }
  }
}

void sub_1B79EB688(uint64_t a1)
{
  sub_1B79EB6FC(319);
  if (v1 <= 0x3F)
  {
    sub_1B79EB778(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B79EB6FC(uint64_t a1)
{
  if (!qword_1EBA47BA8)
  {
    sub_1B7A99F50();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47828, &qword_1B7AA0240);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBA47BA8);
    }
  }
}

void sub_1B79EB778(uint64_t a1)
{
  if (!qword_1EBA47BB0)
  {
    sub_1B7A96C20();
    sub_1B7A99F80();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBA47BB0);
    }
  }
}

unint64_t sub_1B79EB7E8()
{
  result = qword_1EDC100D8;
  if (!qword_1EDC100D8)
  {
    sub_1B7A96C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC100D8);
  }

  return result;
}

uint64_t sub_1B79EB840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAlertAuthority.Presented(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *EnvironmentValues.openDeepLink.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B79AF264(a1, a2, a3);

  return sub_1B7A97890();
}

uint64_t sub_1B79EB8EC(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BC0, &qword_1B7AA0D38);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = a1;
  sub_1B7A9A1C0();
  sub_1B7A990A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BC8, &qword_1B7AA0D40);
  swift_allocObject();
  v8[0] = a1;
  v9 = sub_1B7A990B0();
  v10 = 0;
  MEMORY[0x1B8CA96D0](v8, a2, &type metadata for DeepLinkableViewModifier, a3);
}

uint64_t sub_1B79EBA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BE0, &qword_1B7AA0E80);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BE8, &qword_1B7AA0E88);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  if (*v2 == 1)
  {
    v19[0] = a1;
    v19[1] = a2;
    v12 = *(v2 + 8);
    v11 = *(v2 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = 1;
    *(v13 + 24) = v12;
    *(v13 + 32) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BF0, &qword_1B7AA0E90);
    sub_1B797EC34(&qword_1EBA47C00, &qword_1EBA47BF0, &qword_1B7AA0E90, MEMORY[0x1E697FDF8]);
    sub_1B7A98520();

    KeyPath = swift_getKeyPath();
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    *(v15 + 24) = v12;
    *(v15 + 32) = v11;
    v16 = &v10[*(v8 + 36)];
    *v16 = KeyPath;
    v16[1] = sub_1B79EC508;
    v16[2] = v15;
    sub_1B7965780(v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_1B79EC3D4();

    sub_1B7A97B30();
    return sub_1B79657F0(v10);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BF0, &qword_1B7AA0E90);
    (*(*(v18 - 8) + 16))(v7, a1, v18);
    swift_storeEnumTagMultiPayload();
    sub_1B79EC3D4();
    sub_1B797EC34(&qword_1EBA47C00, &qword_1EBA47BF0, &qword_1B7AA0E90, MEMORY[0x1E697FDF8]);
    return sub_1B7A97B30();
  }
}

uint64_t sub_1B79EBD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a1;
  v23 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47C20, &qword_1B7AA0EA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1B7A96B90();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B7A9A1C0();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = a4;
  v26 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47C18, &qword_1B7AA0EA0);
  sub_1B7A986D0();
  (*(v10 + 16))(v12, v22, v9);
  sub_1B79EC514(v23, v8);
  v16 = sub_1B7A974E0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1B79EC584(v8);
    v18 = 0;
  }

  else
  {
    v18 = sub_1B7A974D0();
    (*(v17 + 8))(v8, v16);
  }

  sub_1B7A2B0A4(v12, v18);
  sub_1B7A990C0();
  (*(v13 + 8))(v15, v24);
}

uint64_t sub_1B79EC058(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  sub_1B7A9A160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47C18, &qword_1B7AA0EA0);
  sub_1B7A986D0();

  *a1 = v7;
  return result;
}

uint64_t View.openDeepLinkAction(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();

  sub_1B7A98150();
}

uint64_t OpenDeepLinkAction.init(forSceneDelegate:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BC0, &qword_1B7AA0D38);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B7A9A1C0();
  sub_1B7A990A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BC8, &qword_1B7AA0D40);
  swift_allocObject();
  result = sub_1B7A990B0();
  *a1 = result;
  return result;
}

uint64_t sub_1B79EC310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B79EC358(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B79EC3D4()
{
  result = qword_1EBA47BF8;
  if (!qword_1EBA47BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47BE8, &qword_1B7AA0E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47BF0, &qword_1B7AA0E90);
    sub_1B797EC34(&qword_1EBA47C00, &qword_1EBA47BF0, &qword_1B7AA0E90, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    sub_1B797EC34(&qword_1EBA47C08, &qword_1EBA47C10, &qword_1B7AA0E98, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47BF8);
  }

  return result;
}

uint64_t sub_1B79EC514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47C20, &qword_1B7AA0EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79EC584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47C20, &qword_1B7AA0EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B79EC5EC()
{
  result = qword_1EBA47C28;
  if (!qword_1EBA47C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA47C30, &unk_1B7AA0EB0);
    sub_1B79EC3D4();
    sub_1B797EC34(&qword_1EBA47C00, &qword_1EBA47BF0, &qword_1B7AA0E90, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47C28);
  }

  return result;
}

uint64_t (*sub_1B79EC6A4(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  return sub_1B79EC8B8;
}

uint64_t sub_1B79EC6F8(uint64_t a1, uint64_t a2)
{
  if (sub_1B7A29318())
  {
    if (sub_1B7A99FB0() == a1 && v4 == a2)
    {

LABEL_6:
      sub_1B7A29044();
      return 1;
    }

    v5 = sub_1B7A9AE80();

    if (v5)
    {
      goto LABEL_6;
    }

    if (sub_1B7A99FE0() == a1 && v7 == a2)
    {

LABEL_11:
      sub_1B7A29804();
      sub_1B7A887C0();
LABEL_12:

      return 1;
    }

    v8 = sub_1B7A9AE80();

    if (v8)
    {
      goto LABEL_11;
    }

    if (sub_1B7A99FC0() == a1 && v9 == a2)
    {

LABEL_17:
      sub_1B7A29804();
      sub_1B7A88ABC();
      goto LABEL_12;
    }

    v10 = sub_1B7A9AE80();

    if (v10)
    {
      goto LABEL_17;
    }

    if (sub_1B7A99FD0() == a1 && v11 == a2)
    {

      goto LABEL_22;
    }

    v12 = sub_1B7A9AE80();

    if (v12)
    {
LABEL_22:
      sub_1B7A29804();
      v13 = sub_1B7A88DD8();

      if (v13)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  return 0;
}

uint64_t sub_1B79EC8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B79EC924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1B7A9A000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v14);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a2;
  *(v16 + 4) = a3;
  (*(v12 + 32))(&v16[v15], &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1B7AA0F70;
  *(v17 + 24) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46FF0, &unk_1B7AA01E0);

  v18 = sub_1B7A9A150();
  v19 = sub_1B7A9A7E0();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1B7A9EDF0;
  v20[5] = v17;
  v20[6] = v18;

  sub_1B7A64074(0, 0, v10, &unk_1B7A9EE00, v20);

  return v18;
}

uint64_t sub_1B79ECBBC(uint64_t a1)
{
  v4 = *(sub_1B7A9A000() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B79B401C(a1, v6, v7, v1 + v5);
}

unint64_t sub_1B79ECCB8()
{
  result = qword_1EBA47CB8;
  if (!qword_1EBA47CB8)
  {
    sub_1B7A98950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47CB8);
  }

  return result;
}

uint64_t ShelfHeader.init(title:subtitle:accessory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_getKeyPath();
  *(a7 + 48) = result;
  *(a7 + 56) = 0;
  *(a7 + 64) = 0;
  *(a7 + 72) = 0;
  *(a7 + 80) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t ShelfHeader.init<>(title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *(a5 + 48) = result;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = nullsub_1;
  *(a5 + 40) = 0;
  return result;
}

uint64_t ShelfHeader.init<>(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_getKeyPath();
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = nullsub_1;
  *(a3 + 24) = 0;
  *(a3 + 32) = nullsub_1;
  *(a3 + 40) = 0;
  return result;
}

double sub_1B79ECE6C()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    return *(v0 + 48);
  }

  sub_1B7A9AA10();
  v10 = sub_1B7A97E70();
  sub_1B7A96D30();

  sub_1B7A97870();
  swift_getAtKeyPath();
  sub_1B79EE82C(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

uint64_t ShelfHeader.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1[2];
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC8, &unk_1B7AA0FE0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  sub_1B7A97590();
  v27 = a1[3];
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  v25 = a1;
  v4 = a1[4];
  v5 = sub_1B7A97BD0();
  v24 = a1[7];
  *&v44 = v4;
  *(&v44 + 1) = v5;
  v6 = v4;
  *&v45 = v24;
  *(&v45 + 1) = sub_1B79ED4A4();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  v23[1] = swift_getWitnessTable();
  v7 = sub_1B7A98790();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = sub_1B7A97590();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v17 = v2[3];
  v46 = v2[2];
  v47 = v17;
  v48 = v2[4];
  v49 = *(v2 + 80);
  v18 = v2[1];
  v44 = *v2;
  v45 = v18;
  v30 = v28;
  v31 = v27;
  v32 = v6;
  v33 = *(v25 + 5);
  v34 = v24;
  v35 = &v44;
  sub_1B7A97910();
  sub_1B7A98780();
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v43 = v49;
  v38 = v44;
  v39 = v45;
  sub_1B79ECE6C();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98440();
  (*(v26 + 8))(v9, v7);
  v36 = WitnessTable;
  v37 = MEMORY[0x1E697E5D8];
  v20 = swift_getWitnessTable();
  sub_1B7957EE0(v13, v10, v20);
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_1B7957EE0(v16, v10, v20);
  return (v21)(v16, v10);
}

unint64_t sub_1B79ED4A4()
{
  result = qword_1EBA47CD0[0];
  if (!qword_1EBA47CD0[0])
  {
    sub_1B7A97BD0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA47CD0);
  }

  return result;
}

uint64_t sub_1B79ED4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v54 = a6;
  v53 = a5;
  v59 = a1;
  v65 = a8;
  v12 = sub_1B7A97BD0();
  v61 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B79ED4A4();
  v51 = a4;
  v73 = a4;
  v74 = v12;
  v63 = v12;
  v75 = a7;
  v76 = v16;
  v52 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v58 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v46 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  WitnessTable = a2;
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC8, &unk_1B7AA0FE0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  v20 = sub_1B7A987E0();
  v48 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v46 - v24;
  sub_1B7A9A760();
  v50 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  *(&v46 - 8) = WitnessTable;
  *(&v46 - 7) = a3;
  v26 = v51;
  v27 = v53;
  *(&v46 - 6) = v51;
  *(&v46 - 5) = v27;
  *(&v46 - 4) = v54;
  *(&v46 - 3) = a7;
  v28 = v59;
  *(&v46 - 2) = v59;
  sub_1B7A97990();
  sub_1B7A987D0();
  v47 = v20;
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v22, v20, WitnessTable);
  v29 = v48;
  v30 = *(v48 + 8);
  v53 = v48 + 8;
  v54 = v30;
  v31 = (v30)(v22, v20);
  v32 = v55;
  (*(v28 + 32))(v31);
  v33 = v57;
  sub_1B7A97BC0();
  v34 = v58;
  v35 = v63;
  v36 = a7;
  v37 = v52;
  sub_1B7A98110();
  (*(v61 + 8))(v33, v35);
  (*(v56 + 8))(v32, v26);
  v73 = v26;
  v74 = v35;
  v75 = v36;
  v76 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v62;
  v40 = OpaqueTypeMetadata2;
  sub_1B7957EE0(v34, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v41 = v60;
  v42 = *(v60 + 8);
  v42(v34, v40);
  v43 = v47;
  (*(v29 + 16))(v22, v66, v47);
  v71 = 0;
  v72 = 1;
  v73 = v22;
  v74 = &v71;
  (*(v41 + 16))(v34, v39, v40);
  v75 = v34;
  v70[0] = v43;
  v70[1] = MEMORY[0x1E6981840];
  v70[2] = v40;
  v67 = WitnessTable;
  v68 = MEMORY[0x1E6981838];
  v69 = OpaqueTypeConformance2;
  sub_1B7959BAC(&v73, 3uLL, v70);
  v42(v39, v40);
  v44 = v54;
  v54(v66, v43);
  v42(v34, v40);
  v44(v22, v43);
}

uint64_t sub_1B79EDC70@<X0>(uint64_t (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v81 = a5;
  v66 = a4;
  v84 = a6;
  v79 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v72 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  v80 = a3;
  v10 = sub_1B7A97590();
  v75 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v62 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC8, &unk_1B7AA0FE0);
  v73 = v10;
  v12 = sub_1B7A97590();
  v74 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v62 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  v76 = v12;
  v83 = sub_1B7A97590();
  v77 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v62 - v16;
  v63 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B7A97590();
  v64 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  v23 = sub_1B7A97590();
  v65 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v69 = sub_1B7A97590();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v85 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v86 = &v62 - v28;
  sub_1B7A9A760();
  v68 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*a1)(isCurrentExecutor);
  sub_1B7A97FA0();
  sub_1B7A97F60();

  v30 = a2;
  v31 = v66;
  sub_1B7A983B0();

  (*(v63 + 8))(v19, v30);
  v32 = MEMORY[0x1E6980A18];
  v63 = sub_1B797EC34(&qword_1EBA47D58, &qword_1EBA47CC0, &unk_1B7AA7590, MEMORY[0x1E6980A18]);
  v90[12] = v31;
  v90[13] = v63;
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98500();
  (*(v64 + 8))(v22, v20);
  LODWORD(v90[0]) = sub_1B7A97C40();
  v62 = sub_1B797EC34(&qword_1EBA47D60, &qword_1EBA47CC8, &unk_1B7AA0FE0, v32);
  v90[10] = WitnessTable;
  v90[11] = v62;
  v34 = swift_getWitnessTable();
  v35 = v85;
  sub_1B7A981D0();
  (*(v65 + 8))(v25, v23);
  v36 = sub_1B797EC34(&qword_1EBA47448, &qword_1EBA47450, &unk_1B7AA52F0, MEMORY[0x1E6980490]);
  v90[8] = v34;
  v90[9] = v36;
  v37 = v69;
  v64 = swift_getWitnessTable();
  sub_1B7957EE0(v35, v37, v64);
  v38 = v67;
  v39 = *(v67 + 8);
  v65 = v67 + 8;
  v66 = v39;
  v40 = (v39)(v35, v37);
  v41 = a1[2];
  v42 = v72;
  v41(v40);
  sub_1B7A97F50();
  v43 = v71;
  v44 = v80;
  v45 = v81;
  sub_1B7A983B0();

  (*(v79 + 8))(v42, v44);
  v90[6] = v45;
  v90[7] = v63;
  v46 = v73;
  v47 = swift_getWitnessTable();
  v48 = v70;
  sub_1B7A98500();
  (*(v75 + 8))(v43, v46);
  LODWORD(v90[0]) = sub_1B7A97C60();
  v90[4] = v47;
  v90[5] = v62;
  v49 = v76;
  v50 = swift_getWitnessTable();
  v51 = v82;
  sub_1B7A981D0();
  (*(v74 + 8))(v48, v49);
  v90[2] = v50;
  v90[3] = v36;
  v52 = v83;
  v53 = swift_getWitnessTable();
  v54 = v78;
  sub_1B7957EE0(v51, v52, v53);
  v55 = v77;
  v56 = *(v77 + 8);
  v56(v51, v52);
  v57 = *(v38 + 16);
  v59 = v85;
  v58 = v86;
  v57(v85, v86, v37);
  v90[0] = v59;
  (*(v55 + 16))(v51, v54, v52);
  v90[1] = v51;
  v89[0] = v37;
  v89[1] = v52;
  v87 = v64;
  v88 = v53;
  sub_1B7959BAC(v90, 2uLL, v89);
  v56(v54, v52);
  v60 = v66;
  v66(v58, v37);
  v56(v51, v52);
  v60(v59, v37);
}

uint64_t sub_1B79EE72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B79EE774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1B79EE7BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B79EE82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B79EE86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B79EF300(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

void *sub_1B79EE8A8@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79EF300(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B79EE8F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B79EF300(a1, a2, a3);

  return sub_1B7A978A0();
}

uint64_t sub_1B79EE958@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1B7A9AB60();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = sub_1B7A991E0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A991F0();
  if (*(a2 + 16) && (v16 = sub_1B7995D44(), (v17 & 1) != 0))
  {
    sub_1B79948D0(*(a2 + 56) + 32 * v16, v25);
    (*(v13 + 8))(v15, v12);
    sub_1B7957D50(v25, v26);
    sub_1B79948D0(v26, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47D80, &qword_1B7AA1208);
    v18 = swift_dynamicCast();
    v19 = *(*(AssociatedTypeWitness - 8) + 56);
    if (v18)
    {
      v20 = *(AssociatedTypeWitness - 8);
      v19(v11, 0, 1, AssociatedTypeWitness);
      (*(v20 + 32))(v24, v11, AssociatedTypeWitness);
    }

    else
    {
      v19(v11, 1, 1, AssociatedTypeWitness);
      v22 = (*(v23 + 8))(v11, v9);
      MEMORY[0x1EEE9AC00](v22);
      *(&v23 - 4) = a3;
      *(&v23 - 3) = a4;
      *(&v23 - 2) = v26;
      sub_1B7A99720();
      (*(a4 + 16))(a3, a4);
    }

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    return (*(a4 + 16))(a3, a4);
  }
}

uint64_t View.mediaArtworkValue<A>(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a7;
  v19 = a1;
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v19 - v13;
  swift_getKeyPath();
  (*(v12 + 16))(v14, a2, AssociatedTypeWitness);
  v15 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  v17 = v19;
  *(v16 + 4) = v20;
  *(v16 + 5) = a6;
  *(v16 + 6) = v17;
  (*(v12 + 32))(&v16[v15], v14, AssociatedTypeWitness);
  sub_1B7A98320();
}

uint64_t sub_1B79EEE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79EF200(a3, a2, a5, a7);
}

uint64_t sub_1B79EEF34(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v1[6];
  v9 = v1 + ((*(v7 + 80) + 56) & ~*(v7 + 80));

  return sub_1B79EEE64(a1, v8, v9, v3, v4, v5, v6);
}

unint64_t sub_1B79EEFF8()
{
  result = qword_1EBA47D70;
  if (!qword_1EBA47D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47D68, &unk_1B7AA1160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47D70);
  }

  return result;
}

unint64_t sub_1B79EF08C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B7990C4C(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1B79EF0BC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A9AC50();
  MEMORY[0x1B8CAB750](0x602065756C6156, 0xE700000000000000);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A9AE60();
  MEMORY[0x1B8CAB750](0x3C20726F662060, 0xE700000000000000);
  v4 = sub_1B7A9AFF0();
  MEMORY[0x1B8CAB750](v4);

  MEMORY[0x1B8CAB750](0x746F6E207369203ELL, 0xEA00000000003C20);
  swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AFF0();
  MEMORY[0x1B8CAB750](v5);

  MEMORY[0x1B8CAB750](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1B79EF200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B7A991E0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A991F0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1Tm, a1, AssociatedTypeWitness);
  return sub_1B7A2D2C4(v11, v7);
}

unint64_t sub_1B79EF300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47D78;
  if (!qword_1EBA47D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47D78);
  }

  return result;
}

uint64_t View.componentMenuTemplate<A>(for:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a1;
  v16[7] = a2;
  v16[8] = a3;
  v16[9] = a4;

  sub_1B7A98320();
}

uint64_t sub_1B79EF468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B79F01AC(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

void *sub_1B79EF4A4@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79F01AC(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B79EF4F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B79F01AC(a1, a2, a3);

  return sub_1B7A978A0();
}

uint64_t sub_1B79EF554(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a8;
  v15[5] = a9;
  v15[6] = a4;
  v15[7] = a5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a1;
  sub_1B79A06EC(sub_1B79F019C, v15, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v20;
  return result;
}

uint64_t sub_1B79EF6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X7>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  v12 = sub_1B7999EF4(v10, a2, a3);
  result = (*(v7 + 8))(v10, a2);
  *a4 = v12;
  return result;
}

uint64_t View.componentMenuTemplate<A, B>(for:on:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a1;
  v16[9] = a2;
  v16[10] = a4;
  v16[11] = a5;

  sub_1B7A98320();
}

uint64_t sub_1B79EF8C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *a1;
  if (*(*a1 + 16) && (v15 = sub_1B79948B8(a2, a3), (v16 & 1) != 0))
  {
    v17 = *(v14 + 56) + 16 * v15;
    v19 = *v17;
    v18 = *(v17 + 8);
  }

  else
  {
    v19 = sub_1B79EFB44;
    v18 = 0;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  v21 = swift_allocObject();
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a9;
  v21[6] = a10;
  v21[7] = a11;
  v21[8] = sub_1B79F0110;
  v21[9] = v20;
  v21[10] = a4;
  v21[11] = a5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *a1;
  sub_1B79A06EC(sub_1B79F0160, v21, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v29;
  return result;
}

unint64_t sub_1B79EFAE0()
{
  result = qword_1EBA47D98;
  if (!qword_1EBA47D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47D90, &qword_1B7AA1298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47D98);
  }

  return result;
}

uint64_t sub_1B79EFB44@<X0>(uint64_t *a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1B7A987F0();

  *a1 = v2;
  return result;
}

uint64_t sub_1B79EFBE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a6;
  v32 = a5;
  v29[1] = a4;
  v30 = a3;
  v34 = a8;
  v33 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B7A9AB60();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v29 - v18;
  v20 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a2;
  sub_1B7999E90(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46798, &unk_1B7AA12A0);
  v25 = swift_dynamicCast();
  v26 = *(v20 + 56);
  if (v25)
  {
    v26(v19, 0, 1, a9);
    (*(v20 + 32))(v23, v19, a9);
    v32(v23, v24);
    v27 = sub_1B7999EF4(v15, a7, a11);
    (*(v33 + 8))(v15, a7);
    result = (*(v20 + 8))(v23, a9);
  }

  else
  {
    v26(v19, 1, 1, a9);
    (*(v17 + 8))(v19, v16);
    result = v30(a1, v24);
    v27 = result;
  }

  *v34 = v27;
  return result;
}

uint64_t sub_1B79EFED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DA8, &qword_1B7AA1308);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9C180;
  *(inited + 32) = sub_1B7A9A040();
  *(inited + 40) = v1;
  *(inited + 48) = sub_1B79EFF78;
  *(inited + 56) = 0;
  v2 = sub_1B7990E38(inited);
  swift_setDeallocating();
  result = sub_1B79F0210(inited + 32);
  qword_1EBA47D88 = v2;
  return result;
}

uint64_t sub_1B79EFF78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B7A988A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1B7A98890();
  (*(v3 + 16))(v5, v8, v2);
  sub_1B79F0278();
  v9 = sub_1B7A987F0();
  result = (*(v3 + 8))(v8, v2);
  *a1 = v9;
  return result;
}

uint64_t sub_1B79F00A0@<X0>(void *a1@<X8>)
{
  if (qword_1EBA45B58 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EBA47D88;
}

uint64_t objectdestroy_2Tm(void (*a1)(void))
{
  a1(*(v1 + 72));

  return swift_deallocObject();
}

unint64_t sub_1B79F01AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47DA0;
  if (!qword_1EBA47DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47DA0);
  }

  return result;
}

uint64_t sub_1B79F0210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DB0, &unk_1B7AA1310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B79F0278()
{
  result = qword_1EBA47DB8;
  if (!qword_1EBA47DB8)
  {
    sub_1B7A988A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47DB8);
  }

  return result;
}

uint64_t sub_1B79F02D0(void (*a1)(void *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1B79D022C(0, v5, 0);
  v6 = v20;
  for (i = (a3 + 48); ; i += 3)
  {
    v9 = *(i - 1);
    v10 = *i;
    v18[0] = *(i - 2);
    v18[1] = v9;
    v18[2] = v10;

    (a1)(v19, v18);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v12 = v19[0];
    v11 = v19[1];
    v20 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1B79D022C((v13 > 1), v14 + 1, 1);
      v6 = v20;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B79F0418@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79F2984(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B79F0468(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B79F2984(a1, a2, a3);

  return sub_1B7A978A0();
}

uint64_t sub_1B79F04C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DD0, &qword_1B7AA14B0);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v36 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DD8, &qword_1B7AA14B8);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0);
  v44 = *(v7 - 8);
  v48 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v36 - v8;
  v9 = sub_1B7A97880();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(v2 + 8);
  v13 = v2;
  v14 = *v2;
  v54 = *v2;
  v15 = v55;

  if ((v15 & 1) == 0)
  {
    sub_1B7A9AA10();
    v16 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v54, &qword_1EBA47DE8, &qword_1B7AA7A30);
    (*(v10 + 8))(v12, v9);
    v14 = v50[0];
  }

  if (v14)
  {
    type metadata accessor for _LocalizerOwner(0);
    sub_1B79F2650(v17);

    sub_1B7A97490();
    v42 = v18;
    sub_1B7A974A0();
    swift_getKeyPath();
    sub_1B7A974B0();

    v53 = v2[2];
    v51 = *(v2 + 3);
    v52 = *(v2 + 40);
    v19 = v44;
    v41 = v14;
    v20 = *(v44 + 16);
    v21 = v43;
    v20(v43, a1, v7);
    v40 = v6;
    v22 = *(v19 + 80);
    v39 = (v22 + 57) & ~v22;
    v23 = swift_allocObject();
    v38 = v23;
    v24 = v13[1];
    v23[1] = *v13;
    v23[2] = v24;
    *(v23 + 41) = *(v13 + 25);
    v37 = a1;
    v36 = *(v19 + 32);
    v36(v23 + ((v22 + 57) & ~v22), v21, v7);
    v20(v21, a1, v7);
    v44 = swift_allocObject();
    v25 = v36;
    v36((v44 + ((v22 + 16) & ~v22)), v21, v7);
    v20(v21, v37, v7);
    v26 = v39;
    v27 = swift_allocObject();
    v28 = v13[1];
    v27[1] = *v13;
    v27[2] = v28;
    *(v27 + 41) = *(v13 + 25);
    v25(v27 + v26, v21, v7);
    v50[8] = sub_1B79F26A8;
    v50[9] = v38;
    v50[10] = sub_1B79F2728;
    v50[11] = v44;
    v50[12] = sub_1B79F2890;
    v50[13] = v27;
    v29 = &qword_1EBA47DF0;
    v30 = &qword_1B7AA14D0;
    sub_1B7957820(v50, v40, &qword_1EBA47DF0, &qword_1B7AA14D0);
    swift_storeEnumTagMultiPayload();
    sub_1B7957820(&v54, v49, &qword_1EBA47DE8, &qword_1B7AA7A30);
    sub_1B7957820(&v53, v49, &qword_1EBA47E10, &qword_1B7AA1500);
    sub_1B79F2920(&v51, v49);
    sub_1B7957820(&v54, v49, &qword_1EBA47DE8, &qword_1B7AA7A30);
    sub_1B7957820(&v53, v49, &qword_1EBA47E10, &qword_1B7AA1500);
    sub_1B79F2920(&v51, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DF0, &qword_1B7AA14D0);
    sub_1B797EC34(&qword_1EBA47DF8, &qword_1EBA47DF0, &qword_1B7AA14D0, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA47E00, &qword_1EBA47DD0, &qword_1B7AA14B0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    sub_1B7A97B30();

    v31 = v50;
  }

  else
  {
    v32 = v42;
    (*(v44 + 16))(v42, a1, v7);
    v33 = swift_allocObject();
    *(v33 + 16) = 0xD000000000000022;
    *(v33 + 24) = 0x80000001B7AC61C0;
    v34 = (v32 + *(v45 + 52));
    *v34 = sub_1B797D598;
    v34[1] = v33;
    v29 = &qword_1EBA47DD0;
    v30 = &qword_1B7AA14B0;
    sub_1B7957820(v32, v6, &qword_1EBA47DD0, &qword_1B7AA14B0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DF0, &qword_1B7AA14D0);
    sub_1B797EC34(&qword_1EBA47DF8, &qword_1EBA47DF0, &qword_1B7AA14D0, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA47E00, &qword_1EBA47DD0, &qword_1B7AA14B0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    sub_1B7A97B30();
    v31 = v32;
  }

  return sub_1B7957888(v31, v29, v30);
}

uint64_t sub_1B79F0CD4(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v4 = sub_1B7A96AC0();
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v8 = sub_1B79D0850(v4, v7, *(*(a1 + 16) + 16));

  if (v6)
  {
    (v5)(a2, v8);
  }

  else
  {
    if (!v8[2])
    {
      __break(1u);
      return result;
    }

    v10 = v8[4];
    v11 = v8[5];

    v5(a2, v10, v11);
  }
}

void *sub_1B79F0E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 16);
  v10[2] = a1;
  result = sub_1B79F02D0(sub_1B79F2958, v10, v6);
  if (v5)
  {
    (v4)(a3, result);
  }

  if (result[2])
  {
    v8 = result[4];
    v9 = result[5];

    v4(a3, v8, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B79F0EFC@<X0>(uint64_t (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = v5(a2);
  v8 = v7;

  *a3 = v6;
  a3[1] = v8;
  return result;
}

void *View.accessibilityInputLabels(_:)(void *result, uint64_t a2, uint64_t a3)
{
  if (result[2])
  {
    v6 = result[4];
    v5 = result[5];
    v7 = result[6];
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DC0, &unk_1B7AA1348);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B7A9C180;
    *(v9 + 32) = v6;
    *(v9 + 40) = v5;
    *(v9 + 48) = v7;
    v10 = KeyPath;
    v11 = 0;
    v12 = v9;
    v13 = sub_1B79F113C;
    v14 = 0;
    v15 = 0;

    MEMORY[0x1B8CA96D0](&v10, a2, &type metadata for LocalizedAccessibilityAttachmentViewModifier, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B79F113C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E18, &qword_1B7AA1508);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E30, &qword_1B7AA1518);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7A9C180;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = 0;
  *(v9 + 56) = MEMORY[0x1E69E7CC0];

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0);
  sub_1B797EC34(&qword_1EBA47E20, &qword_1EBA47DE0, &unk_1B7AA14C0, MEMORY[0x1E697FDF8]);
  sub_1B7A98360();

  (*(*(v10 - 8) + 16))(a3, v8, v10);
  return sub_1B7957888(v8, &qword_1EBA47E18, &qword_1B7AA1508);
}

uint64_t sub_1B79F1304@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(void *, uint64_t, void, uint64_t, unint64_t)@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E18, &qword_1B7AA1508);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  v17[0] = a1;
  v17[1] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0);
  v12 = sub_1B797EC34(&qword_1EBA47E20, &qword_1EBA47DE0, &unk_1B7AA14C0, MEMORY[0x1E697FDF8]);
  v15 = sub_1B7999DD8(v12, v13, v14);
  a3(v17, v11, MEMORY[0x1E69E6158], v12, v15);
  (*(*(v11 - 8) + 16))(a4, v10, v11);
  return sub_1B7957888(v10, &qword_1EBA47E18, &qword_1B7AA1508);
}

uint64_t sub_1B79F1484(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DC0, &unk_1B7AA1348);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7A9C180;
  *(v11 + 32) = v8;
  *(v11 + 40) = v7;
  *(v11 + 48) = v9;
  v13 = KeyPath;
  v14 = 0;
  v15 = v11;
  v16 = a4;
  v17 = 0;
  v18 = 0;

  MEMORY[0x1B8CA96D0](&v13, a2, &type metadata for LocalizedAccessibilityAttachmentViewModifier, a3);
}

uint64_t View.accessibilityAction(named:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DC0, &unk_1B7AA1348);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B7A9C180;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11;
  v16 = KeyPath;
  v17 = 0;
  v18 = v14;
  v19 = sub_1B79F183C;
  v20 = v12;
  v21 = 0;

  MEMORY[0x1B8CA96D0](&v16, a4, &type metadata for LocalizedAccessibilityAttachmentViewModifier, a5);
}

uint64_t sub_1B79F16CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a5@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E18, &qword_1B7AA1508);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v16 - v9;
  v16[0] = a1;
  v16[1] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0);
  v12 = sub_1B797EC34(&qword_1EBA47E20, &qword_1EBA47DE0, &unk_1B7AA14C0, MEMORY[0x1E697FDF8]);
  sub_1B7999DD8(v12, v13, v14);
  sub_1B7A982B0();
  (*(*(v11 - 8) + 16))(a5, v10, v11);
  return sub_1B7957888(v10, &qword_1EBA47E18, &qword_1B7AA1508);
}

uint64_t View.accessibilityCustomContent<A>(_:_:importance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v29 = a7;
  v25 = a6;
  v26 = a2;
  v27 = a3;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14[1];
  v28 = *v14;
  v16 = v14[2];
  (*(v10 + 16))(v13, v12);
  v17 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  v20 = a5;
  v21 = v25;
  *(v19 + 4) = a5;
  *(v19 + 5) = v21;
  (*(v10 + 32))(&v19[v17], v13, a4);
  *&v19[v18] = v26;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DC0, &unk_1B7AA1348);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B7A9C180;
  *(v23 + 32) = v28;
  *(v23 + 40) = v15;
  *(v23 + 48) = v16;
  v30 = KeyPath;
  v31 = 0;
  v32 = v23;
  v33 = sub_1B79F1C98;
  v34 = v19;
  v35 = 0;

  MEMORY[0x1B8CA96D0](&v30, v27, &type metadata for LocalizedAccessibilityAttachmentViewModifier, v20);
}

uint64_t sub_1B79F1A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8)
{
  v23[1] = a2;
  v23[2] = a1;
  v24 = a7;
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E18, &qword_1B7AA1508);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v23 - v15;
  (*(v10 + 16))(v12, a4, a6, v14);

  v17 = sub_1B7A98080();
  v19 = v18;
  LOBYTE(v10) = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0);
  sub_1B797EC34(&qword_1EBA47E20, &qword_1EBA47DE0, &unk_1B7AA14C0, MEMORY[0x1E697FDF8]);
  sub_1B7A98370();
  sub_1B795A450(v17, v19, v10 & 1);

  (*(*(v22 - 8) + 16))(v24, v16, v22);
  return sub_1B7957888(v16, &qword_1EBA47E18, &qword_1B7AA1508);
}

uint64_t View.accessibilityCustomContent(_:_:importance:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v11;
  v13[4] = v12;
  v13[5] = a3;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DC0, &unk_1B7AA1348);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B7A9C180;
  *(v15 + 32) = v7;
  *(v15 + 40) = v8;
  *(v15 + 48) = v9;
  v18 = KeyPath;
  v19 = 0;
  v20 = v15;
  v21 = sub_1B79F2080;
  v22 = v13;
  v23 = 0;

  MEMORY[0x1B8CA96D0](&v18, a4, &type metadata for LocalizedAccessibilityAttachmentViewModifier, a5);
}

uint64_t sub_1B79F1E68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E28, &qword_1B7AA1510);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23 - v15;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a6;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DC0, &unk_1B7AA1348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9C180;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  *(inited + 48) = a5;
  v24 = KeyPath;
  v25 = 0;
  v26 = inited;
  v27 = sub_1B79F2978;
  v28 = v17;
  v29 = 0;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0);
  v21 = sub_1B797EC34(&qword_1EBA47E20, &qword_1EBA47DE0, &unk_1B7AA14C0, MEMORY[0x1E697FDF8]);
  MEMORY[0x1B8CA96D0](&v24, v20, &type metadata for LocalizedAccessibilityAttachmentViewModifier, v21);

  (*(*(v20 - 8) + 16))(a7, v16, v20);
  return sub_1B7957888(v16, &qword_1EBA47E28, &qword_1B7AA1510);
}

uint64_t sub_1B79F208C@<X0>(uint64_t a6@<X8>)
{
  v12 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E18, &qword_1B7AA1508);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0);
  sub_1B797EC34(&qword_1EBA47E20, &qword_1EBA47DE0, &unk_1B7AA14C0, MEMORY[0x1E697FDF8]);
  sub_1B7A98370();

  (*(*(v10 - 8) + 16))(v12, v8, v10);
  return sub_1B7957888(v8, &qword_1EBA47E18, &qword_1B7AA1508);
}

uint64_t View.accessibilityCustomContent(_:_:importance:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  a4 &= 1u;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DC0, &unk_1B7AA1348);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B7A9C180;
  *(v18 + 32) = v14;
  *(v18 + 40) = v13;
  *(v18 + 48) = v15;
  v22 = KeyPath;
  v23 = 0;
  v24 = v18;
  v25 = sub_1B79F250C;
  v26 = v16;
  v27 = 0;

  sub_1B7999FBC(a2, a3, a4);

  MEMORY[0x1B8CA96D0](&v22, a7, &type metadata for LocalizedAccessibilityAttachmentViewModifier, a8);
}

uint64_t sub_1B79F237C@<X0>(uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a8@<X8>)
{
  v13[1] = a4;
  v13[2] = a6;
  v14 = a8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E18, &qword_1B7AA1508);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v13 - v9;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0);
  sub_1B797EC34(&qword_1EBA47E20, &qword_1EBA47DE0, &unk_1B7AA14C0, MEMORY[0x1E697FDF8]);
  sub_1B7A98370();

  (*(*(v12 - 8) + 16))(v14, v10, v12);
  return sub_1B7957888(v10, &qword_1EBA47E18, &qword_1B7AA1508);
}

unint64_t sub_1B79F2524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47DC8;
  if (!qword_1EBA47DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47DC8);
  }

  return result;
}

uint64_t sub_1B79F2590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1B79F25D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B79F2650(__n128 a1)
{
  result = qword_1EBA47E08;
  if (!qword_1EBA47E08)
  {
    type metadata accessor for _LocalizerOwner(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47E08);
  }

  return result;
}

uint64_t sub_1B79F26A8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0) - 8);
  v2 = v0 + ((*(v1 + 80) + 57) & ~*(v1 + 80));

  return sub_1B79F0CD4(v0 + 16, v2);
}

uint64_t sub_1B79F2728@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t objectdestroy_20Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  j__swift_release(v0[2]);

  sub_1B79599CC(v0[5], v0[6]);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void *sub_1B79F2890(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0) - 8);
  v4 = v1 + ((*(v3 + 80) + 57) & ~*(v3 + 80));

  return sub_1B79F0E24(a1, v1 + 16, v4);
}

unint64_t sub_1B79F2984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47E38;
  if (!qword_1EBA47E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47E38);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B79F29EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B79F2A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B79F2A94()
{
  result = qword_1EBA47E40;
  if (!qword_1EBA47E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E48, &unk_1B7AA15A0);
    sub_1B797EC34(&qword_1EBA47DF8, &qword_1EBA47DF0, &qword_1B7AA14D0, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA47E00, &qword_1EBA47DD0, &qword_1B7AA14B0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47E40);
  }

  return result;
}

uint64_t sub_1B79F2B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B79F2984(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

uint64_t sub_1B79F2BD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B79F2C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v5 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B90, &qword_1B7A9DF40);
  v7 = sub_1B7A97590();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  swift_getKeyPath();

  v14[3] = sub_1B79F4D34(v11, v5);
  sub_1B7A98150();

  swift_getKeyPath();
  v12 = sub_1B797EC34(&qword_1EBA46BB8, &qword_1EBA46B90, &qword_1B7A9DF40, MEMORY[0x1E6980A18]);
  v14[1] = a3;
  v14[2] = v12;

  swift_getWitnessTable();
  sub_1B7A98320();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B79F2E78(uint64_t a1)
{
  v2 = sub_1B7A96C30();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1B7A97830();
}

uint64_t sub_1B79F2F40@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47EA0, &qword_1B7AA17A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19[-1] - v3;
  v5 = sub_1B7A98C20();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-1] - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47EA8, &qword_1B7AA17A8);
  sub_1B7A99280();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_1B7957888(v4, &qword_1EBA47EA0, &qword_1B7AA17A0);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v12 = (*(v6 + 104))(v8, *MEMORY[0x1E69AAEE0], v5);
    sub_1B79F554C(v12);
    v13 = sub_1B7A9A470();
    v14 = *(v6 + 8);
    v14(v8, v5);
    if ((v13 & 1) == 0)
    {
      sub_1B7A99230();
      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      sub_1B7A9A2D0();

      v14(v11, v5);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v15 = 0;
      goto LABEL_7;
    }

    v14(v11, v5);
  }

  v15 = 1;
LABEL_7:
  v16 = sub_1B7A96C30();
  return (*(*(v16 - 8) + 56))(a1, v15, 1, v16);
}

uint64_t sub_1B79F322C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E98, &qword_1B7AA1798);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79F2F40(v6);
  v7 = sub_1B7A96C30();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B7957888(v6, &qword_1EBA47E98, &qword_1B7AA1798);
  }

  else
  {
    (*(v8 + 8))(a1, v7);
    (*(v8 + 32))(a1, v6, v7);
  }
}

uint64_t View.localizer(makeLocalizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  type metadata accessor for _LocalizerOwner(0);
  swift_allocObject();

  sub_1B79F4B6C(a1, a2);

  sub_1B7A98150();
}

uint64_t View.localizer(_:)@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v6 = sub_1B7A96C30();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B90, &qword_1B7A9DF40);
  v9 = sub_1B7A97590();
  v16 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  swift_getKeyPath();
  sub_1B7999E90(a1, v22);
  type metadata accessor for _LocalizerOwner(0);
  v12 = swift_allocObject();
  sub_1B79F3ED0(v22);
  v22[0] = v12;
  sub_1B7A98150();

  swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A9A2D0();
  v13 = sub_1B797EC34(&qword_1EBA46BB8, &qword_1EBA46B90, &qword_1B7A9DF40, MEMORY[0x1E6980A18]);
  v20 = a3;
  v21 = v13;
  swift_getWitnessTable();
  sub_1B7A98150();

  (*(v18 + 8))(v8, v19);
  return (*(v16 + 8))(v11, v9);
}

unint64_t sub_1B79F3760()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464E0, &unk_1B7AA07D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9C180;
  *(inited + 32) = sub_1B7A9A4B0();
  *(inited + 40) = v1;
  swift_getErrorValue();
  *(inited + 72) = v5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1Tm);
  v3 = sub_1B798FF28(inited);
  swift_setDeallocating();
  sub_1B7957888(inited + 32, &qword_1EBA464E8, &unk_1B7A9D260);
  return v3;
}

uint64_t sub_1B79F3858()
{
  v0 = sub_1B7A96B00();
  v1 = [v0 domain];

  v2 = sub_1B7A9A4B0();
  MEMORY[0x1B8CAB750](8250, 0xE200000000000000);
  swift_getErrorValue();
  v3 = sub_1B7A9AF20();
  MEMORY[0x1B8CAB750](v3);

  return v2;
}

uint64_t sub_1B79F3918()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA463F8, &qword_1B7A9D0B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7A9C180;
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_1B7A96AC0();
  *(v0 + 40) = v1;
  return v0;
}

BOOL sub_1B79F39EC(uint64_t a1)
{
  if (!a1)
  {
    (*(v1 + 8))();
  }

  return a1 == 0;
}

uint64_t sub_1B79F3A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B79F56E8(a1, a2, a3);

  return MEMORY[0x1EEDC6AD0](a1, v4);
}

uint64_t sub_1B79F3A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B79F56E8(a1, a2, a3);

  return MEMORY[0x1EEDC6AC0](a1, v4);
}

uint64_t sub_1B79F3ACC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47EA8, &qword_1B7AA17A8);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B798D338;

  return MEMORY[0x1EEE166D0](a1, v3, v3);
}

void sub_1B79F3B94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_1B7A9A280();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = *(v1 + 24);

    sub_1B7A9A1F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98C40();
    sub_1B7A99E40();

    (*(v6 + 8))(v8, v5);
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v19 = -1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1B79F53B8(v17, v16);

    sub_1B7A96F30();
    sub_1B7957888(v17, &qword_1EBA47E70, &unk_1B7AA1690);
    v11 = sub_1B7A9A7E0();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v9;
    v13[5] = v10;
    v13[6] = v12;
    sub_1B79A9B34(0, 0, v4, &unk_1B7AA1788, v13);

    v14 = *(v1 + 16);
    v15 = *(v1 + 24);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    sub_1B7974C44(v14, v15);
  }
}

uint64_t sub_1B79F3ED0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E88, &qword_1B7AA1730);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC18_JetEngine_SwiftUI15_LocalizerOwner__result;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v12 = -1;
  sub_1B79F53B8(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E70, &unk_1B7AA1690);
  sub_1B7A96EE0();
  sub_1B7957888(v10, &qword_1EBA47E70, &unk_1B7AA1690);
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_1B7999E90(a1, v10);
  v12 = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B79F53B8(v10, v9);

  sub_1B7A96F30();
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1B7957888(v10, &qword_1EBA47E70, &unk_1B7AA1690);
  return v1;
}

uint64_t sub_1B79F4088(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E88, &qword_1B7AA1730);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC18_JetEngine_SwiftUI15_LocalizerOwner__result;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v12 = -1;
  sub_1B79F53B8(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E70, &unk_1B7AA1690);
  sub_1B7A96EE0();
  sub_1B7957888(v10, &qword_1EBA47E70, &unk_1B7AA1690);
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *&v10[0] = a1;
  v12 = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B79F53B8(v10, v9);

  sub_1B7A96F30();
  sub_1B7957888(v10, &qword_1EBA47E70, &unk_1B7AA1690);
  return v1;
}

uint64_t sub_1B79F4234(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[46] = a6;
  v7[47] = a7;
  v7[45] = a5;
  sub_1B7A98CC0();
  v7[48] = swift_task_alloc();
  v9 = sub_1B7A9A280();
  v7[49] = v9;
  v7[50] = *(v9 - 8);
  v7[51] = swift_task_alloc();
  v12 = (a5 + *a5);
  v10 = swift_task_alloc();
  v7[52] = v10;
  *v10 = v7;
  v10[1] = sub_1B79F43BC;

  return v12(v7 + 26);
}

uint64_t sub_1B79F43BC()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_1B79F4700;
  }

  else
  {
    v2 = sub_1B79F44D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B79F44D0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_1B7A9A810())
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 208));

      goto LABEL_6;
    }

    v2 = *(v0 + 400);
    v1 = *(v0 + 408);
    v3 = *(v0 + 392);
    sub_1B7999E90(v0 + 208, v0 + 112);
    *(v0 + 152) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1B79F53B8(v0 + 112, v0 + 160);

    sub_1B7A96F30();
    sub_1B7957888(v0 + 112, &qword_1EBA47E70, &unk_1B7AA1690);
    sub_1B7A9A1F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98C40();
    sub_1B7A99E40();

    (*(v2 + 8))(v1, v3);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 208));
LABEL_6:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B79F4700()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1B7A9A810();
    v4 = *(v0 + 424);
    if (v3)
    {
    }

    else
    {
      v6 = *(v0 + 400);
      v5 = *(v0 + 408);
      v22 = *(v0 + 392);
      v7 = *(v0 + 368);
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);
      *(v2 + 16) = *(v0 + 360);
      *(v2 + 24) = v7;
      sub_1B7974C44(v8, v9);
      v10 = swift_allocObject();
      v11 = swift_weakInit();
      sub_1B79F54F8(v11, v12, v13);
      v14 = swift_allocError();
      *v15 = v4;
      v15[1] = sub_1B79F54F0;
      v15[2] = v10;
      *(v0 + 16) = v14;
      *(v0 + 56) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1B79F53B8(v0 + 16, v0 + 64);

      v16 = v4;

      sub_1B7A96F30();
      sub_1B7957888(v0 + 16, &qword_1EBA47E70, &unk_1B7AA1690);
      sub_1B7A9A1F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
      sub_1B7A98D10();
      *(swift_allocObject() + 16) = xmmword_1B7A9C180;
      sub_1B7A98CB0();
      sub_1B7A98CA0();
      swift_getErrorValue();
      v17 = *(v0 + 304);
      v18 = *(v0 + 312);
      *(v0 + 272) = v18;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 248));
      (*(*(v18 - 8) + 16))(boxed_opaque_existential_1Tm, v17, v18);
      sub_1B7A98C70();
      sub_1B7957888(v0 + 248, &qword_1EBA46B50, &qword_1B7A9DD90);
      sub_1B7A98CA0();
      sub_1B7A98CD0();
      sub_1B7A99E50();

      (*(v6 + 8))(v5, v22);
    }
  }

  else
  {
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1B79F4A64(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B79F3B94();
  }

  return result;
}

uint64_t sub_1B79F4ABC()
{
  sub_1B7974C44(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUI15_LocalizerOwner__result;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E88, &qword_1B7AA1730);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1B79F4B6C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E88, &qword_1B7AA1730);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC18_JetEngine_SwiftUI15_LocalizerOwner__result;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v15 = -1;
  sub_1B79F53B8(&v12, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E70, &unk_1B7AA1690);
  sub_1B7A96EE0();
  sub_1B7957888(&v12, &qword_1EBA47E70, &unk_1B7AA1690);
  (*(v6 + 32))(v2 + v9, v8, v5);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v15 = -1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B79F53B8(&v12, v11);

  sub_1B7A96F30();
  sub_1B7957888(&v12, &qword_1EBA47E70, &unk_1B7AA1690);
  sub_1B79F3B94();
  return v2;
}

uint64_t sub_1B79F4D34(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47EA0, &qword_1B7AA17A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23[-1] - v5;
  v7 = sub_1B7A98C20();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-1] - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47EA8, &qword_1B7AA17A8);
  sub_1B7A99280();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 104))(v10, *MEMORY[0x1E69AAEE0], v7);
    v19 = sub_1B7A98C10();
    v20 = *(v8 + 8);
    v20(v10, v7);
    if (v19)
    {
      type metadata accessor for _LocalizerOwner(0);
      swift_allocObject();
      v18 = sub_1B79F4B6C(&unk_1B7AA17B8, a1);
    }

    else
    {
      sub_1B7A99230();
      type metadata accessor for _LocalizerOwner(0);
      v18 = swift_allocObject();
      sub_1B79F3ED0(v23);
    }

    v20(v13, v7);
    return v18;
  }

  v14 = sub_1B7957888(v6, &qword_1EBA47EA0, &qword_1B7AA17A0);
  if ((a2 & 1) == 0)
  {
    sub_1B79F55A4(v14, v15, v16);
    v17 = swift_allocError();
    type metadata accessor for _LocalizerOwner(0);
    v18 = swift_allocObject();
    sub_1B79F4088(v17);

    return v18;
  }

  result = sub_1B7A99240();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for _LocalizerOwner(uint64_t a1)
{
  result = qword_1EBA47E58;
  if (!qword_1EBA47E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B79F50A8(uint64_t a1)
{
  sub_1B79F5144(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B79F5144(uint64_t a1)
{
  if (!qword_1EBA47E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E70, &unk_1B7AA1690);
    v1 = sub_1B7A96F50();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA47E68);
    }
  }
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyADyxAA30_EnvironmentKeyWritingModifierVy011_JetEngine_aB015_LocalizerOwnerCSgGGAA01_fg9TransformI0Vy10Foundation6LocaleVGGAaBHPAlaBHPxAaBHD1__AkA0cI0HPyHCHC_AraTHPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B90, &qword_1B7A9DF40);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA46BB8, &qword_1EBA46B90, &qword_1B7A9DF40, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1B797EC34(a4, a2, a3, a5);
  return swift_getWitnessTable();
}

uint64_t get_enum_tag_for_layout_string_18_JetEngine_SwiftUI15_LocalizerOwnerC15ResolutionState33_0EDEF542063847BDB248EA0AB77553C9LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B79F52E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B79F5334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1B79F5388(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1B79F53B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E70, &unk_1B7AA1690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79F5428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B798D338;

  return sub_1B79F4234(v10, a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1B79F54F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47E90;
  if (!qword_1EBA47E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47E90);
  }

  return result;
}

unint64_t sub_1B79F554C(double a1)
{
  result = qword_1EBA47EB0;
  if (!qword_1EBA47EB0)
  {
    sub_1B7A98C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47EB0);
  }

  return result;
}

unint64_t sub_1B79F55A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47EB8;
  if (!qword_1EBA47EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47EB8);
  }

  return result;
}

uint64_t sub_1B79F55F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B798D338;

  return sub_1B79F3ACC(a1);
}

unint64_t sub_1B79F56E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47EC0;
  if (!qword_1EBA47EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47EC0);
  }

  return result;
}

void GeometryProxyInfo.percentVisible(containedIn:)(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    CGRectIntersection(*a1, *(v1 + 16));
  }
}

BOOL _s18_JetEngine_SwiftUI17GeometryProxyInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  result = CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    v12.origin.x = v4;
    v12.origin.y = v5;
    v12.size.width = v6;
    v12.size.height = v7;
    v13.origin.x = v8;
    v13.origin.y = v9;
    v13.size.width = v10;
    v13.size.height = v11;
    return CGRectEqualToRect(v12, v13);
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

uint64_t sub_1B79F5858(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B79F5878(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 80) = v3;
  return result;
}

uint64_t sub_1B79F58C8@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a6;
  v30 = a7;
  v27 = a5;
  v25 = a4;
  v26 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0, &qword_1B7A9D3C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  sub_1B7957820(a1, v11, &qword_1EBA45C90, &qword_1B7A9C190);
  sub_1B7A995C0();
  sub_1B7957820(v17, v14, &qword_1EBA465D0, &qword_1B7A9D3C0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v27);
  v19 = v26;
  v20 = (v26 + *(v18 + 36));
  *v20 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for ClickLocationViewModifier(0);
  v22 = v21[5];
  *(v20 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  swift_storeEnumTagMultiPayload();
  sub_1B7957820(v14, v20 + v21[6], &qword_1EBA465D0, &qword_1B7A9D3C0);
  v23 = v20 + v21[7];
  sub_1B7A96C10();
  sub_1B7957888(v14, &qword_1EBA465D0, &qword_1B7A9D3C0);
  sub_1B7957888(v17, &qword_1EBA465D0, &qword_1B7A9D3C0);
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0) + 28)] = 0;
  return sub_1B7957820(v28, v19, v29, v30);
}

uint64_t sub_1B79F5B30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v57 = a5;
  v55 = a4;
  v58 = a3;
  v47 = a2;
  v48 = sub_1B7A96C20();
  v54 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v44 - v8;
  v9 = sub_1B7A99670();
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImpressionableViewModifier(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47FD8, &qword_1B7AA1CF8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v51;
  sub_1B7A9A370();
  v49 = v20;
  sub_1B7957820(v20, v17, &qword_1EBA45C90, &qword_1B7A9C190);
  if ((*(v21 + 48))(v17, 1, v9) == 1)
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = v45;
    v44 = *(v21 + 32);
    v44(v45, v17, v9);
    sub_1B7A9A760();
    sub_1B7A9A750();
    sub_1B7A9A710();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA8, &unk_1B7AA1E00);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B7A9C180;
    v51 = v24;
    v44((v24 + v23), v22, v9);
  }

  v25 = v11[5];
  v26 = sub_1B7A99A20();
  (*(*(v26 - 8) + 16))(&v13[v25], v47, v26);
  v27 = &v13[v11[8]];
  *v27 = swift_getKeyPath();
  *(v27 + 1) = 0;
  *(v27 + 8) = 0;
  v28 = v11[9];
  *&v13[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v29 = &v13[v11[10]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = &v13[v11[11]];
  v59 = 0;
  sub_1B7A986C0();
  v31 = v61;
  *v30 = v60;
  *(v30 + 1) = v31;
  v32 = v46;
  sub_1B7A96C10();
  v33 = v54;
  v34 = *(v54 + 16);
  v35 = v52;
  v36 = v48;
  v34(v52, v32, v48);
  sub_1B7A986C0();
  v37 = *(v33 + 8);
  v37(v32, v36);
  sub_1B7A96C10();
  v34(v35, v32, v36);
  sub_1B7A986C0();
  v37(v32, v36);
  v38 = v11[14];
  *&v13[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  swift_storeEnumTagMultiPayload();
  *v13 = v51;
  v39 = &v13[v11[6]];
  *v39 = v58;
  v39[8] = v55 & 1;
  v13[v11[7]] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47FE8, &qword_1B7AA1D00);
  v41 = v53;
  (*(*(v40 - 8) + 16))(v53, v56, v40);
  sub_1B79F9B94(v13, v41 + *(v50 + 36), type metadata accessor for ImpressionableViewModifier);
  v42 = v49;
  sub_1B79F58C8(v49, &qword_1EBA47FB8, &qword_1B7AA1CF0, &qword_1EBA47FD8, &qword_1B7AA1CF8, v57);
  sub_1B7957888(v41, &qword_1EBA47FD8, &qword_1B7AA1CF8);
  return sub_1B7957888(v42, &qword_1EBA45C90, &qword_1B7A9C190);
}

uint64_t View.unifiedImpressionableLayoutItem(_:position:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1B7999E90(a1, v10);
  KeyPath = swift_getKeyPath();
  v14 = 0;
  v11 = a2;
  v12 = a3 & 1;
  MEMORY[0x1B8CA96D0](v10, a4, &type metadata for UnifiedImpressionableLayoutItemViewModifier, a5);
  return sub_1B79F65BC(v10);
}

uint64_t View.unifiedImpressionableLayout<A>(_:position:definesParentContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a7;
  v28 = a9;
  v29 = a5;
  v27 = a4;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for UnifiedImpressionableLayoutViewModifier(0, v18, v19, v17);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v26[-v23];
  (*(v14 + 16))(v16, a1, a6, v22);
  sub_1B79F6434(v16, a2, a3 & 1, v27, a6, a8, v24);
  MEMORY[0x1B8CA96D0](v24, v29, v20, v30);
  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_1B79F6434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = a4;
  v13 = type metadata accessor for UnifiedImpressionableLayoutViewModifier(0, a5, a6, a4);
  v14 = a7 + v13[11];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  result = (*(*(a5 - 8) + 32))(a7, a1, a5);
  v16 = a7 + v13[9];
  *v16 = a2;
  *(v16 + 8) = a3 & 1;
  *(a7 + v13[10]) = v8;
  return result;
}

uint64_t View.optInForLayoutBasedImpressions(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7A98150();
}

void *sub_1B79F6574(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1B79F9BFC(x0_0, a2, a3);

  return sub_1B7A97890();
}

uint64_t sub_1B79F6604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v143 = a1;
  v150 = a4;
  swift_getWitnessTable();
  v6 = sub_1B7A97C30();
  type metadata accessor for Impressionable_ViewModifier(255);
  v7 = sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier(255);
  v154 = v7;
  v8 = sub_1B7A97590();
  v129 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v136 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v135 = &v123 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47F70, &qword_1B7AA1CB0);
  v12 = sub_1B7A97590();
  v127 = *(v12 - 8);
  v128 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v126 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v134 = &v123 - v15;
  type metadata accessor for ImpressionableViewModifier(255);
  v155 = v6;
  v151 = sub_1B7A97590();
  v16 = sub_1B7A97590();
  v17 = sub_1B7A97B40();
  v130 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v138 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v123 - v20;
  v148 = v21;
  v22 = sub_1B7A97B40();
  v140 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v123 - v23;
  v24 = sub_1B7A99A20();
  v141 = *(v24 - 8);
  v142 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v124 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v152 = (&v123 - v27);
  v147 = v16;
  v125 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v133 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v132 = &v123 - v31;
  v32 = sub_1B7A97880();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = v8;
  v36 = sub_1B7A97B40();
  v144 = *(v36 - 8);
  v145 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v123 - v37;
  v39 = v4 + *(a2 + 44);
  v40 = *v39;
  LODWORD(v39) = *(v39 + 8);
  v146 = v22;
  v153 = v38;
  if (v39 == 1)
  {
    LOBYTE(v181) = v40;
  }

  else
  {

    sub_1B7A9AA10();
    v41 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE10(v40, 0);
    (*(v33 + 8))(v35, v32);
    LOBYTE(v40) = v181;
  }

  v42 = v4 + *(a2 + 36);
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = *(v4 + *(a2 + 40));
  WitnessTable = swift_getWitnessTable();
  v47 = *(a2 + 24);
  sub_1B7A99A00();
  if (v40)
  {
    if (v40 == 1)
    {
      v48 = v124;
      sub_1B7A999E0();
      v131 = WitnessTable;
      v122 = WitnessTable;
      v49 = v126;
      v50 = v152;
      View.impressionableLayout<A>(_:scrollViewConfiguration:itemConfiguration:position:definesParentContext:)(v152, v48, v43, v44, v45, v155, v126, v122, v47);
      v51 = v142;
      v52 = *(v141 + 8);
      v52(v48, v142);
      v52(v50, v51);
      v53 = sub_1B797EC34(&qword_1EBA47F78, &qword_1EBA47F70, &qword_1B7AA1CB0, &unk_1B7AA8F00);
      v54 = v131;
      v180[1] = v131;
      v180[2] = v53;
      v55 = MEMORY[0x1E697E858];
      v56 = v128;
      v57 = swift_getWitnessTable();
      v58 = v134;
      sub_1B7957EE0(v49, v56, v57);
      v59 = *(v127 + 8);
      v59(v49, v56);
      sub_1B7957EE0(v58, v56, v57);
      v180[0] = sub_1B79F770C(v49, v56, v57);
      v60 = sub_1B79F9B44(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier, &unk_1B7A9C43C);
      v178 = v54;
      v179 = v60;
      v143 = v55;
      v61 = swift_getWitnessTable();
      v152 = sub_1B79F9B44(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
      v176 = v61;
      v177 = v152;
      v62 = v147;
      v63 = swift_getWitnessTable();
      v64 = v137;
      v65 = MEMORY[0x1E6981900];
      sub_1B79B5878(v180, MEMORY[0x1E6981910], v62, MEMORY[0x1E6981900], v63);

      v59(v49, v56);
      v59(v134, v56);
      v174 = v65;
      v175 = v63;
      v66 = v148;
      v67 = swift_getWitnessTable();
      v68 = v138;
      sub_1B7957EE0(v64, v66, v67);
      v69 = v139;
      sub_1B7959A28(v68, v62, v66, v63, v67);
      v172 = v63;
      v173 = v67;
      v70 = v146;
      v71 = swift_getWitnessTable();
      v72 = sub_1B79F9B44(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier, &unk_1B7AA2190);
      v170 = v131;
      v171 = v72;
      v168 = swift_getWitnessTable();
      v169 = v152;
      v73 = v149;
      v74 = swift_getWitnessTable();
      sub_1B79B5878(v69, v70, v73, v71, v74);
      (*(v140 + 8))(v69, v70);
      v75 = *(v130 + 8);
      v75(v138, v66);
      v75(v137, v66);
    }

    else
    {
      v94 = v136;
      v95 = v152;
      View.impressionable_<A>(_:configuration:position:definesParentContext:)(v152, v43, v44, v45, v155, WitnessTable, v136, v47);
      (*(v141 + 8))(v95, v142);
      v96 = sub_1B79F9B44(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier, &unk_1B7AA2190);
      v180[27] = WitnessTable;
      v180[28] = v96;
      v97 = swift_getWitnessTable();
      v98 = sub_1B79F9B44(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
      v180[25] = v97;
      v180[26] = v98;
      v99 = v149;
      v100 = swift_getWitnessTable();
      v101 = v135;
      sub_1B7957EE0(v94, v99, v100);
      v152 = *(v129 + 8);
      (v152)(v94, v99);
      sub_1B7957EE0(v101, v99, v100);
      v102 = sub_1B79F9B44(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier, &unk_1B7A9C43C);
      v180[23] = WitnessTable;
      v180[24] = v102;
      v180[21] = swift_getWitnessTable();
      v180[22] = v98;
      v103 = swift_getWitnessTable();
      v180[19] = MEMORY[0x1E6981900];
      v180[20] = v103;
      v104 = swift_getWitnessTable();
      v180[17] = v103;
      v180[18] = v104;
      v105 = v146;
      v106 = swift_getWitnessTable();
      v107 = v136;
      sub_1B7959A28(v136, v105, v99, v106, v100);
      v108 = v152;
      (v152)(v107, v99);
      v108(v135, v99);
    }
  }

  else
  {
    v76 = v133;
    v77 = v152;
    v131 = WitnessTable;
    v78 = MEMORY[0x1E6981900];
    View.impressionable<A>(_:configuration:position:definesParentContext:)(v152, v43, v44, v45, v155, WitnessTable, v133, v47);
    (*(v141 + 8))(v77, v142);
    v79 = sub_1B79F9B44(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier, &unk_1B7A9C43C);
    v166 = WitnessTable;
    v167 = v79;
    v80 = swift_getWitnessTable();
    v143 = sub_1B79F9B44(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
    v164 = v80;
    v165 = v143;
    v81 = v147;
    v82 = swift_getWitnessTable();
    v83 = v132;
    v84 = v76;
    sub_1B7957EE0(v76, v81, v82);
    v152 = *(v125 + 8);
    (v152)(v76, v81);
    sub_1B7957EE0(v83, v81, v82);
    v162 = v78;
    v163 = v82;
    v85 = v148;
    v86 = swift_getWitnessTable();
    v87 = v139;
    sub_1B79B5878(v84, v81, v85, v82, v86);
    v160 = v82;
    v161 = v86;
    v88 = v146;
    v89 = swift_getWitnessTable();
    v90 = sub_1B79F9B44(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier, &unk_1B7AA2190);
    v158 = v131;
    v159 = v90;
    v156 = swift_getWitnessTable();
    v157 = v143;
    v91 = v149;
    v92 = swift_getWitnessTable();
    sub_1B79B5878(v87, v88, v91, v89, v92);
    (*(v140 + 8))(v87, v88);
    v93 = v152;
    (v152)(v133, v81);
    v93(v132, v81);
  }

  v109 = swift_getWitnessTable();
  v110 = sub_1B79F9B44(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier, &unk_1B7A9C43C);
  v180[15] = v109;
  v180[16] = v110;
  v111 = swift_getWitnessTable();
  v112 = sub_1B79F9B44(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  v180[13] = v111;
  v180[14] = v112;
  v113 = swift_getWitnessTable();
  v180[11] = MEMORY[0x1E6981900];
  v180[12] = v113;
  v114 = swift_getWitnessTable();
  v180[9] = v113;
  v180[10] = v114;
  v115 = swift_getWitnessTable();
  v116 = sub_1B79F9B44(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier, &unk_1B7AA2190);
  v180[7] = v109;
  v180[8] = v116;
  v180[5] = swift_getWitnessTable();
  v180[6] = v112;
  v117 = swift_getWitnessTable();
  v180[3] = v115;
  v180[4] = v117;
  v118 = v145;
  v119 = swift_getWitnessTable();
  v120 = v153;
  sub_1B7957EE0(v153, v118, v119);
  return (*(v144 + 8))(v120, v118);
}

uint64_t sub_1B79F770C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_1B7A987F0();
}

uint64_t sub_1B79F77D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v90 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47F80, &qword_1B7AA1CB8);
  MEMORY[0x1EEE9AC00](v89);
  v73 = &v69 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47F88, &qword_1B7AA1CC0);
  MEMORY[0x1EEE9AC00](v78);
  v81 = (&v69 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0, &qword_1B7A9D3C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v69 - v10;
  v11 = sub_1B7A96C20();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v69 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47F90, &qword_1B7AA1CC8);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v69 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47F98, &qword_1B7AA1CD0);
  MEMORY[0x1EEE9AC00](v87);
  v80 = &v69 - v23;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47FA0, &qword_1B7AA1CD8);
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v69 - v24;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47FA8, &qword_1B7AA1CE0);
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v69 - v25;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47FB0, &qword_1B7AA1CE8);
  MEMORY[0x1EEE9AC00](v94);
  v88 = &v69 - v26;
  v91 = sub_1B7A99A20();
  v27 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47FB8, &qword_1B7AA1CF0);
  MEMORY[0x1EEE9AC00](v84);
  v70 = &v69 - v30;
  v31 = sub_1B7A97880();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v2 + 56);
  if (*(v3 + 64) == 1)
  {
    v97 = v36;
  }

  else
  {
    v69 = v33;

    sub_1B7A9AA10();
    v37 = sub_1B7A97E70();
    v82 = v27;
    v38 = v37;
    sub_1B7A96D30();

    v27 = v82;
    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE10(v36, 0);
    (*(v32 + 8))(v35, v69);
    LOBYTE(v36) = v97;
  }

  v39 = *(v3 + 40);
  v40 = *(v3 + 48);
  sub_1B7A999E0();
  if (v36)
  {
    if (v36 == 1)
    {
      v70 = a1;
      v41 = *(v3 + 24);
      v42 = *(v3 + 32);
      __swift_project_boxed_opaque_existential_1(v3, v41);
      ComponentModel.viewID.getter(v41, v42);
      __swift_project_boxed_opaque_existential_1(v3, *(v3 + 24));
      v82 = v27;
      v73 = v29;
      v43 = v83;
      sub_1B7A9A370();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48010, &qword_1B7AA1D10);
      v45 = v92 + *(v44 + 36);
      sub_1B79F99B0(v96, v45);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48018, &qword_1B7AA1D18);
      sub_1B7957820(v43, v45 + v46[9], &qword_1EBA45C90, &qword_1B7A9C190);
      v47 = v71;
      sub_1B7A96C10();
      (*(v12 + 16))(v72, v47, v11);
      sub_1B7A986C0();
      (*(v12 + 8))(v47, v11);
      v48 = v46[12];
      *(v45 + v48) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
      swift_storeEnumTagMultiPayload();
      v49 = v46[13];
      *(v45 + v49) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
      swift_storeEnumTagMultiPayload();
      v50 = v45 + v46[10];
      *v50 = v39;
      *(v50 + 8) = v40;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47FE8, &qword_1B7AA1D00);
      v52 = v92;
      (*(*(v51 - 8) + 16))(v92, v70, v51);
      sub_1B7957820(v43, v74, &qword_1EBA45C90, &qword_1B7A9C190);
      v53 = v77;
      sub_1B7A995C0();
      v54 = v79;
      sub_1B7957820(v53, v79, &qword_1EBA465D0, &qword_1B7A9D3C0);
      v55 = (v52 + *(v75 + 36));
      *v55 = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v56 = type metadata accessor for ClickLocationViewModifier(0);
      v57 = v56[5];
      *(v55 + v57) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      sub_1B7957820(v54, v55 + v56[6], &qword_1EBA465D0, &qword_1B7A9D3C0);
      v58 = v55 + v56[7];
      sub_1B7A96C10();
      sub_1B7957888(v54, &qword_1EBA465D0, &qword_1B7A9D3C0);
      sub_1B7957888(v53, &qword_1EBA465D0, &qword_1B7A9D3C0);
      sub_1B7957888(v83, &qword_1EBA45C90, &qword_1B7A9C190);
      sub_1B79F9A0C(v96);
      (*(v82 + 8))(v73, v91);
      *&v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0) + 28)] = 0;
      v59 = v92;
      sub_1B7957820(v92, v76, &qword_1EBA47F90, &qword_1B7AA1CC8);
      sub_1B79F97B0(&qword_1EBA48020, &qword_1EBA47F90, &qword_1B7AA1CC8, sub_1B79F9A60);
      *v81 = sub_1B7A987F0();
      swift_storeEnumTagMultiPayload();
      sub_1B79F97B0(&qword_1EBA47FC8, &qword_1EBA47FB8, &qword_1B7AA1CF0, sub_1B79F9610);
      v60 = v80;
      sub_1B7A97B30();
      sub_1B7957888(v59, &qword_1EBA47F90, &qword_1B7AA1CC8);
      v61 = &qword_1EBA47F98;
      v62 = &qword_1B7AA1CD0;
      sub_1B7957820(v60, v86, &qword_1EBA47F98, &qword_1B7AA1CD0);
      swift_storeEnumTagMultiPayload();
      sub_1B79F96F8();
      v63 = v88;
      sub_1B7A97B30();
      sub_1B7957820(v63, v95, &qword_1EBA47FB0, &qword_1B7AA1CE8);
      swift_storeEnumTagMultiPayload();
      sub_1B79F9558();
      sub_1B79F97B0(&qword_1EBA47FF8, &qword_1EBA47F80, &qword_1B7AA1CB8, sub_1B79F9864);
      sub_1B7A97B30();
      sub_1B7957888(v63, &qword_1EBA47FB0, &qword_1B7AA1CE8);
      v64 = v60;
    }

    else
    {
      v67 = v73;
      sub_1B79F8644(v3, v29, v39, v40, v73);
      (*(v27 + 8))(v29, v91);
      v61 = &qword_1EBA47F80;
      v62 = &qword_1B7AA1CB8;
      sub_1B7957820(v67, v95, &qword_1EBA47F80, &qword_1B7AA1CB8);
      swift_storeEnumTagMultiPayload();
      sub_1B79F9558();
      sub_1B79F97B0(&qword_1EBA47FF8, &qword_1EBA47F80, &qword_1B7AA1CB8, sub_1B79F9864);
      sub_1B7A97B30();
      v64 = v67;
    }
  }

  else
  {
    v65 = v70;
    sub_1B79F5B30(v3, v29, v39, v40, v70);
    (*(v27 + 8))(v29, v91);
    v61 = &qword_1EBA47FB8;
    v62 = &qword_1B7AA1CF0;
    sub_1B7957820(v65, v86, &qword_1EBA47FB8, &qword_1B7AA1CF0);
    swift_storeEnumTagMultiPayload();
    sub_1B79F97B0(&qword_1EBA47FC8, &qword_1EBA47FB8, &qword_1B7AA1CF0, sub_1B79F9610);
    sub_1B79F96F8();
    v66 = v88;
    sub_1B7A97B30();
    sub_1B7957820(v66, v95, &qword_1EBA47FB0, &qword_1B7AA1CE8);
    swift_storeEnumTagMultiPayload();
    sub_1B79F9558();
    sub_1B79F97B0(&qword_1EBA47FF8, &qword_1EBA47F80, &qword_1B7AA1CB8, sub_1B79F9864);
    sub_1B7A97B30();
    sub_1B7957888(v66, &qword_1EBA47FB0, &qword_1B7AA1CE8);
    v64 = v65;
  }

  return sub_1B7957888(v64, v61, v62);
}

uint64_t sub_1B79F8644@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v62 = a5;
  v63 = a4;
  v65 = a3;
  v53 = a2;
  v6 = sub_1B7A99A20();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v52 - v9;
  v10 = sub_1B7A99670();
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Impressionable_ViewModifier(0);
  MEMORY[0x1EEE9AC00](v54);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48008, &qword_1B7AA1D08);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v52 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A9A370();
  v56 = v21;
  v22 = v21;
  v23 = v52;
  sub_1B7957820(v22, v18, &qword_1EBA45C90, &qword_1B7A9C190);
  if ((*(v23 + 48))(v18, 1, v10) == 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v25 = *(v23 + 32);
    v25(v12, v18, v10);
    sub_1B7A9A760();
    sub_1B7A9A750();
    sub_1B7A9A710();
    v26 = v12;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA8, &unk_1B7AA1E00);
    v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B7A9C180;
    v25((v24 + v27), v26, v10);
  }

  v28 = v59;
  v29 = v60;
  v30 = *(v59 + 16);
  v31 = v64;
  v30(v64, v53, v60);
  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  *(v14 + 8) = 0;
  *(v14 + 3) = swift_getKeyPath();
  v14[32] = 0;
  v32 = v55;
  v30(v55, v31, v29);
  type metadata accessor for Impressionable_StateObject(0);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 18) = 0;
  v34 = (v33 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_tracker);
  *v34 = 0;
  v34[1] = 0;
  *(v33 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_currentlyVisible) = 2;
  sub_1B7A96C10();
  sub_1B7A96C10();
  v35 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_metricsContextImpressionsParentContextID;
  v36 = sub_1B7A96C20();
  (*(*(v36 - 8) + 56))(v33 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_enableRequirements;
  v38 = sub_1B7A99DB0();
  (*(*(v38 - 8) + 56))(v33 + v37, 1, 1, v38);
  v39 = v33 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_listContainerElementFrame;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 1;
  *(v33 + 24) = v24;
  v30((v33 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_configuration), v32, v29);
  *(v33 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_definesParentContext) = 0;
  sub_1B7A99A10();
  sub_1B7A96C00();
  sub_1B7A996E0();
  v40 = *(v28 + 8);
  v40(v32, v29);
  v41 = &v14[*(v54 + 24)];
  v42 = type metadata accessor for Impressionable_ViewModifier.EnvironmentImpressionState(0);
  v43 = v42[5];
  *&v41[v43] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v44 = v42[6];
  *&v41[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  swift_storeEnumTagMultiPayload();
  v45 = &v41[v42[7]];
  type metadata accessor for ListContainerGeometry(0);
  sub_1B79F9B44(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry, &unk_1B7A9C420);
  v46 = sub_1B7A970F0();
  LOBYTE(v44) = v47;
  v40(v64, v29);
  *v45 = v46;
  v45[8] = v44 & 1;
  *v41 = sub_1B79F9B8C;
  *(v41 + 1) = v33;
  v41[16] = 0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47FE8, &qword_1B7AA1D00);
  v49 = v58;
  (*(*(v48 - 8) + 16))(v58, v61, v48);
  sub_1B79F9B94(v14, v49 + *(v57 + 36), type metadata accessor for Impressionable_ViewModifier);
  v50 = v56;
  sub_1B79F58C8(v56, &qword_1EBA47F80, &qword_1B7AA1CB8, &qword_1EBA48008, &qword_1B7AA1D08, v62);
  sub_1B7957888(v49, &qword_1EBA48008, &qword_1B7AA1D08);
  return sub_1B7957888(v50, &qword_1EBA45C90, &qword_1B7A9C190);
}

uint64_t ImpressionableLayoutStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

unint64_t sub_1B79F8EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47EC8;
  if (!qword_1EBA47EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47EC8);
  }

  return result;
}

unint64_t sub_1B79F8F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA47ED0;
  if (!qword_1EBA47ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47ED0);
  }

  return result;
}

void sub_1B79F8FA0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B79F93CC(319, &qword_1EDC0FC70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B79F93CC(319, &qword_1EBA47F68, &type metadata for ImpressionableLayoutStyle, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B79F9090(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    goto LABEL_27;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void sub_1B79F91F0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 9) = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1B79F93CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B79F944C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B79F9494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B79F9558()
{
  result = qword_1EBA47FC0;
  if (!qword_1EBA47FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47FB0, &qword_1B7AA1CE8);
    sub_1B79F97B0(&qword_1EBA47FC8, &qword_1EBA47FB8, &qword_1B7AA1CF0, sub_1B79F9610);
    sub_1B79F96F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47FC0);
  }

  return result;
}

unint64_t sub_1B79F9610()
{
  result = qword_1EBA47FD0;
  if (!qword_1EBA47FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47FD8, &qword_1B7AA1CF8);
    sub_1B797EC34(&qword_1EBA47FE0, &qword_1EBA47FE8, &qword_1B7AA1D00, MEMORY[0x1E697FDF8]);
    sub_1B79F9B44(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier, &unk_1B7A9C43C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47FD0);
  }

  return result;
}

unint64_t sub_1B79F96F8()
{
  result = qword_1EBA47FF0;
  if (!qword_1EBA47FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47F98, &qword_1B7AA1CD0);
    sub_1B79F97B0(&qword_1EBA47FC8, &qword_1EBA47FB8, &qword_1B7AA1CF0, sub_1B79F9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47FF0);
  }

  return result;
}

uint64_t sub_1B79F97B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1B79F9B44(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B79F9864()
{
  result = qword_1EBA48000;
  if (!qword_1EBA48000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48008, &qword_1B7AA1D08);
    sub_1B797EC34(&qword_1EBA47FE0, &qword_1EBA47FE8, &qword_1B7AA1D00, MEMORY[0x1E697FDF8]);
    sub_1B79F9B44(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier, &unk_1B7AA2190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48000);
  }

  return result;
}

uint64_t sub_1B79F994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B79F8EE8(a1, a2, a3);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1B79F9A60()
{
  result = qword_1EBA48028;
  if (!qword_1EBA48028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48010, &qword_1B7AA1D10);
    sub_1B797EC34(&qword_1EBA47FE0, &qword_1EBA47FE8, &qword_1B7AA1D00, MEMORY[0x1E697FDF8]);
    sub_1B797EC34(&qword_1EBA48030, &qword_1EBA48018, &qword_1B7AA1D18, &unk_1B7AA8F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48028);
  }

  return result;
}

uint64_t sub_1B79F9B44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B79F9B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B79F9BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48038;
  if (!qword_1EBA48038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48038);
  }

  return result;
}

unint64_t sub_1B79F9C60()
{
  result = qword_1EBA48040;
  if (!qword_1EBA48040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA48048, &qword_1B7AA1E30);
    sub_1B79F9558();
    sub_1B79F97B0(&qword_1EBA47FF8, &qword_1EBA47F80, &qword_1B7AA1CB8, sub_1B79F9864);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48040);
  }

  return result;
}

uint64_t sub_1B79F9D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  KeyPath = swift_getKeyPath();
  return sub_1B79F9E08(v9, KeyPath, a1, a2, MEMORY[0x1E69E69C0], a3);
}

uint64_t sub_1B79F9E08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  (*(*(a3 - 8) + 32))(a6, a1);
  v12 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  v14[0] = a3;
  v14[1] = v12;
  v14[2] = a4;
  v14[3] = a5;
  result = type metadata accessor for JoinedID(0, v14);
  *(a6 + *(result + 52)) = a2;
  return result;
}

uint64_t sub_1B79F9EF0(void *a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_1B7A9AFB0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1B79F9FA8(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_DWORD *sub_1B79FA0E4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1B79FA30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[1] = a2;
  v9 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  type metadata accessor for JoinedID(0, v23);
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v19 = sub_1B7A9A470();
  v20 = *(v9 + 8);
  v20(v11, a6);
  v20(v14, a6);
  return v19 & 1;
}

uint64_t sub_1B79FA484(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v36 = *(a2 + 24);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v5;
  v6 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v31 - v8;
  v10 = sub_1B7A9AB60();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_getAssociatedTypeWitness();
  v32 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - v19;
  v21 = *(v13 + 16);
  v38 = v3;
  v21(v16, v3, v6, v18);
  v41 = v20;
  sub_1B7A9A540();
  v42 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = 0;
  v23 = (v33 + 48);
  v24 = (v33 + 32);
  v25 = (v33 + 8);
  v26 = (v34 + 8);
  while (1)
  {
    sub_1B7A9AB70();
    if ((*v23)(v12, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v24)(v9, v12, AssociatedTypeWitness);
    v27 = v35;
    swift_getAtKeyPath();
    (*v25)(v9, AssociatedTypeWitness);
    v28 = v36;
    sub_1B7A9A3F0();
    (*v26)(v27, v28);
    if (__OFADD__(v22++, 1))
    {
      __break(1u);
      break;
    }
  }

  (*(v32 + 8))(v41, v42);
  return MEMORY[0x1B8CAC1D0](v22);
}

uint64_t sub_1B79FA870(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v25 = v5 + 3;
  v26 = v5 + 5;
  v6 = v5[2];
  v7 = v5[4];
  v8 = sub_1B7A9AC70();
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v27 = sub_1B7A9AD40();
  v29 = *(v27 - 8);
  v11 = MEMORY[0x1EEE9AC00](v27);
  v13 = &v24 - v12;
  MEMORY[0x1B8CAB7E0](v6, v7, v11);
  (*(v3 + 16))(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v14 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *&v16 = v6;
  *(&v16 + 1) = *v25;
  *&v17 = v7;
  *(&v17 + 1) = *v26;
  *(v15 + 16) = v16;
  *(v15 + 32) = v17;
  (*(v3 + 32))(v15 + v14, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getWitnessTable();
  sub_1B7A9ADF0();

  (*(v28 + 8))(v10, v8);
  v18 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_1B7999DD8(WitnessTable, v20, v21);
  v22 = sub_1B7A9A610();
  (*(v29 + 8))(v13, v18);
  return v22;
}

uint64_t sub_1B79FABA8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  v15[0] = v9;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  type metadata accessor for JoinedID(0, v15);
  swift_getAtKeyPath();
  sub_1B7A9AE60();
  result = (*(v6 + 8))(v8, a3);
  v14 = v17;
  *a4 = v16;
  a4[1] = v14;
  return result;
}

uint64_t sub_1B79FACB8(uint64_t a1)
{
  sub_1B7A9AF80();
  sub_1B79FA484(v3, a1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B79FAD08(uint64_t a1, uint64_t a2)
{
  sub_1B7A9AF80();
  sub_1B79FA484(v4, a2);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B79FAD7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v9[0] = v2[2];
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  type metadata accessor for JoinedID(0, v9);

  return sub_1B79FABA8(a1, v5, a2);
}

uint64_t View.impressionable_<A>(_:configuration:position:definesParentContext:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9)
{
  v20 = a8;
  v11 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v20 - v17;
  sub_1B7A9A370();
  View.impressionable_(_:configuration:position:definesParentContext:)(v18, a2, a3, a4 & 1, v11, a6, v20, x8_0);
  return sub_1B7957888(v18, &qword_1EBA45C90, &qword_1B7A9C190);
}

uint64_t View.impressionable_(_:configuration:position:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7A9A370();
  View.impressionable_(_:configuration:position:definesParentContext:)(v16, a2, a3, a4 & 1, 0, a5, a6, a7);
  return sub_1B7957888(v16, &qword_1EBA45C90, &qword_1B7A9C190);
}

uint64_t View.impressionable_(_:configuration:position:definesParentContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v67 = a7;
  v59 = a5;
  v71 = a4;
  v72 = a3;
  v58 = a2;
  v68 = a8;
  v10 = sub_1B7A99A20();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v58 - v14;
  v15 = sub_1B7A99670();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v58 - v20;
  v22 = type metadata accessor for Impressionable_ViewModifier(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a6;
  v60 = v25;
  v26 = sub_1B7A97590();
  v62 = *(v26 - 8);
  v63 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v61 = &v58 - v27;
  v69 = a1;
  sub_1B7957820(a1, v21, &qword_1EBA45C90, &qword_1B7A9C190);
  if ((*(v16 + 48))(v21, 1, v15) == 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = *(v16 + 32);
    v29(v18, v21, v15);
    sub_1B7A9A760();
    sub_1B7A9A750();
    sub_1B7A9A710();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA8, &unk_1B7AA1E00);
    v30 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B7A9C180;
    v29((v28 + v30), v18, v15);
  }

  v32 = v64;
  v31 = v65;
  v33 = *(v64 + 16);
  v34 = v70;
  v33(v70, v58, v65);
  *v24 = swift_getKeyPath();
  *(v24 + 1) = 0;
  *(v24 + 8) = 0;
  *(v24 + 3) = swift_getKeyPath();
  v24[32] = 0;
  v33(v12, v34, v31);
  type metadata accessor for Impressionable_StateObject(0);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 18) = 0;
  v36 = (v35 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_tracker);
  *v36 = 0;
  v36[1] = 0;
  *(v35 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_currentlyVisible) = 2;
  sub_1B7A96C10();
  sub_1B7A96C10();
  v37 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_metricsContextImpressionsParentContextID;
  v38 = sub_1B7A96C20();
  (*(*(v38 - 8) + 56))(v35 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_enableRequirements;
  v40 = sub_1B7A99DB0();
  (*(*(v40 - 8) + 56))(v35 + v39, 1, 1, v40);
  v41 = v35 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_listContainerElementFrame;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 1;
  *(v35 + 24) = v28;
  v33((v35 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_configuration), v12, v31);
  *(v35 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_definesParentContext) = v59 & 1;
  sub_1B7A99A10();
  sub_1B7A96C00();
  sub_1B7A996E0();
  v42 = *(v32 + 8);
  v42(v12, v31);
  v43 = v60;
  v44 = &v24[*(v60 + 24)];
  v45 = type metadata accessor for Impressionable_ViewModifier.EnvironmentImpressionState(0);
  v46 = v45[5];
  *&v44[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v47 = v45[6];
  *&v44[v47] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  swift_storeEnumTagMultiPayload();
  v48 = &v44[v45[7]];
  type metadata accessor for ListContainerGeometry(0);
  sub_1B79FC0D0(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry, &unk_1B7A9C420);
  v49 = sub_1B7A970F0();
  v51 = v50;
  v42(v70, v31);
  *v48 = v49;
  v48[8] = v51 & 1;
  *v44 = sub_1B79FC06C;
  *(v44 + 1) = v35;
  v44[16] = 0;
  v52 = v61;
  v53 = v67;
  MEMORY[0x1B8CA96D0](v24, v66, v43, v67);
  sub_1B79FC074(v24);
  v54 = sub_1B79FC0D0(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier, &unk_1B7AA2190);
  v73 = v53;
  v74 = v54;
  v55 = v63;
  WitnessTable = swift_getWitnessTable();
  View.impressionableClickLocation(impressionMetrics:position:)(v69, v72, v71 & 1, v55, WitnessTable);
  return (*(v62 + 8))(v52, v55);
}

void sub_1B79FB890(__int16 a1)
{
  v3 = sub_1B7A996F0();
  v54 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7A96BF0();
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A99670();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  v18 = *(v1 + 16);
  *(v1 + 18) = HIBYTE(v18) & 1;
  if (*(v1 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_tracker))
  {
    v19 = v1 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_tracker;
    if ((a1 & 0x100) != 0)
    {
      if ((v18 & 0x100) == 0)
      {
        v28 = *(v1 + 24);
        v29 = *(v28 + 16);
        if (!v29)
        {
          return;
        }

        v57 = *(v19 + 8);
        v58 = v14;
        v30 = v15;
        ObjectType = swift_getObjectType();
        v53 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_context;
        v31 = v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        swift_unknownObjectRetain();
        swift_beginAccess();
        v32 = *(v9 + 16);
        v55 = v1;
        v56 = v9 + 16;
        v50 = *(v9 + 72);
        v51 = v32;
        v48 = (v9 + 8);
        v49 = (v54 + 16);
        v33 = (v54 + 8);
        v54 = v6;
        v34 = v47;
        v35 = (v46 + 8);
        do
        {
          v36 = v58;
          v51(v30, v31, v58);
          sub_1B7A96BE0();
          (*v49)(v5, v55 + v53, v3);
          sub_1B7A99710();
          (*v48)(v30, v36);
          (*v33)(v5, v3);
          (*v35)(v34, v54);
          v31 += v50;
          --v29;
        }

        while (v29);
        goto LABEL_18;
      }

      if (a1 < 0 && (v18 & 0x80000000) == 0)
      {
        v37 = *(v1 + 24);
        v38 = *(v37 + 16);
        if (v38)
        {
          v57 = *(v19 + 8);
          v58 = v14;
          ObjectType = swift_getObjectType();
          v53 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_context;
          v39 = v9;
          v40 = v37 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          swift_unknownObjectRetain();
          swift_beginAccess();
          v41 = *(v39 + 16);
          v39 += 16;
          v50 = *(v39 + 56);
          v51 = v41;
          v55 = v1;
          v56 = v39;
          v48 = (v39 - 8);
          v49 = (v54 + 16);
          v42 = (v54 + 8);
          v54 = v6;
          v43 = v47;
          v44 = (v46 + 8);
          do
          {
            v45 = v58;
            v51(v11, v40, v58);
            sub_1B7A96BE0();
            (*v49)(v5, v55 + v53, v3);
            sub_1B7A99700();
            (*v48)(v11, v45);
            (*v42)(v5, v3);
            (*v44)(v43, v54);
            v40 += v50;
            --v38;
          }

          while (v38);
          goto LABEL_18;
        }
      }
    }

    else if ((v18 & 0x8100) == 0x100)
    {
      v20 = *(v1 + 24);
      v21 = *(v20 + 16);
      if (v21)
      {
        v57 = *(v19 + 8);
        v58 = v14;
        ObjectType = swift_getObjectType();
        v53 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_context;
        v22 = v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        swift_unknownObjectRetain();
        swift_beginAccess();
        v23 = *(v9 + 16);
        v55 = v1;
        v56 = v9 + 16;
        v50 = *(v9 + 72);
        v51 = v23;
        v48 = (v9 + 8);
        v49 = (v54 + 16);
        v24 = (v54 + 8);
        v54 = v6;
        v25 = v47;
        v26 = (v46 + 8);
        do
        {
          v27 = v58;
          v51(v17, v22, v58);
          sub_1B7A96BE0();
          (*v49)(v5, v55 + v53, v3);
          sub_1B7A99700();
          (*v48)(v17, v27);
          (*v24)(v5, v3);
          (*v26)(v25, v54);
          v22 += v50;
          --v21;
        }

        while (v21);
LABEL_18:
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1B79FBEC8()
{

  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_configuration;
  v2 = sub_1B7A99A20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_context;
  v4 = sub_1B7A996F0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_uniqueID;
  v6 = sub_1B7A96C20();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject__parentContextID, v6);
  sub_1B7957888(v0 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_metricsContextImpressionsParentContextID, &qword_1EBA45D18, &qword_1B7A9C320);
  sub_1B7957888(v0 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_enableRequirements, &qword_1EBA45D38, &unk_1B7AA4740);

  return swift_deallocClassInstance();
}

uint64_t sub_1B79FC074(uint64_t a1)
{
  v2 = type metadata accessor for Impressionable_ViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79FC0D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B79FC120(uint64_t a1)
{
  sub_1B7A99A20();
  if (v1 <= 0x3F)
  {
    sub_1B7A996F0();
    if (v2 <= 0x3F)
    {
      sub_1B7A96C20();
      if (v3 <= 0x3F)
      {
        sub_1B79FC51C(319, &qword_1EDC0FC50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B79FC51C(319, qword_1EDC0E600, MEMORY[0x1E69AB508], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1B79FC374(uint64_t a1)
{
  sub_1B79FC488(319);
  if (v1 <= 0x3F)
  {
    sub_1B79FC51C(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1B797CE50(319, &qword_1EDC10150, &qword_1EBA45D18, &qword_1B7A9C320);
      if (v3 <= 0x3F)
      {
        sub_1B797CE50(319, &qword_1EBA480D0, &qword_1EBA480D8, &qword_1B7AA20F8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B79FC488(uint64_t a1)
{
  if (!qword_1EDC0EC20)
  {
    type metadata accessor for Impressionable_StateObject(255);
    sub_1B79FC0D0(&qword_1EDC0F560, type metadata accessor for Impressionable_StateObject, &unk_1B7AA2158);
    v1 = sub_1B7A97140();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC0EC20);
    }
  }
}

void sub_1B79FC51C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B79FC5A8(uint64_t a1)
{
  sub_1B797CE50(319, &qword_1EDC10140, &qword_1EBA45D08, &unk_1B7A9C310);
  if (v1 <= 0x3F)
  {
    sub_1B797CE50(319, &qword_1EDC10A78, &qword_1EBA45D10, &unk_1B7AA0B40);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Impressionable_ViewModifier.EnvironmentImpressionState(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B79FC674()
{
  v1 = v0;
  v72 = sub_1B7A97880();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38, &unk_1B7AA4740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v86 = &v69 - v4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D40, &qword_1B7A9C4B0);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v69 - v5;
  v91 = sub_1B7A996F0();
  v93 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v69 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18, &qword_1B7A9C320);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v78 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v69 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D70, &unk_1B7A9C4E0);
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = (&v69 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D78, &qword_1B7A9D640);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v69 - v20;
  v88 = sub_1B7A99900();
  v22 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v24 = (&v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v96 = *v0;
  v25 = *(v0 + 8);
  LODWORD(v95) = *(v0 + 16);
  v90 = type metadata accessor for Impressionable_StateObject(0);
  v94 = sub_1B79FC0D0(&qword_1EDC0F560, type metadata accessor for Impressionable_StateObject, &unk_1B7AA2158);
  v92 = v25;
  v26 = sub_1B7A97120();
  v87 = type metadata accessor for Impressionable_ViewModifier.EnvironmentImpressionState(0);
  v27 = *(v87 + 20);
  sub_1B797BE80(v24);
  sub_1B7A99890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D88, &qword_1B7A9C4F8);
  sub_1B7A99910();
  (*(v19 + 8))(v21, v18);
  v28 = *(v22 + 8);
  v29 = v88;
  v28(v24, v88);
  *(v26 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_tracker) = v98;

  swift_unknownObjectRelease();
  v30 = sub_1B7A97120();
  v77 = v27;
  sub_1B797BE80(v24);
  v31 = v79;
  sub_1B7A998B0();
  v32 = sub_1B7A96C20();
  v33 = v74;
  sub_1B7A99920();
  (*(v80 + 8))(v31, v82);
  v79 = v24;
  v80 = v22 + 8;
  v76 = v28;
  v28(v24, v29);
  v34 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_metricsContextImpressionsParentContextID;
  swift_beginAccess();
  sub_1B79FFDF4(v33, v30 + v34, &qword_1EBA45D18, &qword_1B7A9C320);
  swift_endAccess();
  v35 = v73;

  v74 = sub_1B7A97120();
  v36 = v75;
  v37 = sub_1B7A97120();
  v38 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_context;
  swift_beginAccess();
  (*(v93 + 16))(v36, v37 + v38, v91);

  v82 = v1;
  sub_1B797BEA8(v35);
  v39 = *(v32 - 8);
  v40 = *(v39 + 48);
  if (v40(v35, 1, v32) == 1)
  {
    sub_1B7957888(v35, &qword_1EBA45D18, &qword_1B7A9C320);
  }

  else
  {
    sub_1B7A96C00();
    (*(v39 + 8))(v35, v32);
  }

  sub_1B7A996C0();

  v41 = *(v93 + 8);
  v41(v36, v91);
  v42 = sub_1B7A97120();
  v43 = v42;
  v44 = v78;
  if (*(v42 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_definesParentContext) == 1)
  {
    (*(v39 + 16))(v78, v42 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject__parentContextID, v32);

    (*(v39 + 56))(v44, 0, 1, v32);
  }

  else
  {
    v45 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_metricsContextImpressionsParentContextID;
    swift_beginAccess();
    sub_1B7957820(v43 + v45, v44, &qword_1EBA45D18, &qword_1B7A9C320);

    v46 = v40(v44, 1, v32);
    if (v46 == 1)
    {
      sub_1B7957888(v44, &qword_1EBA45D18, &qword_1B7A9C320);
      goto LABEL_10;
    }
  }

  sub_1B7A96C00();
  (*(v39 + 8))(v44, v32);
LABEL_10:
  v47 = v81;
  v48 = v89;
  sub_1B7A996A0();

  v49 = v91;
  v41(v48, v91);
  v50 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_context;
  v51 = v74;
  swift_beginAccess();
  (*(v93 + 40))(&v51[v50], v47, v49);
  swift_endAccess();

  v52 = sub_1B7A97120();
  v53 = v82;
  v54 = v79;
  sub_1B797BE80(v79);
  v55 = v83;
  sub_1B7A99880();
  sub_1B7A99DB0();
  v56 = v86;
  sub_1B7A99920();
  (*(v84 + 8))(v55, v85);
  v76(v54, v88);
  v57 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_enableRequirements;
  swift_beginAccess();
  sub_1B79FFDF4(v56, v52 + v57, &qword_1EBA45D38, &unk_1B7AA4740);
  swift_endAccess();

  v58 = sub_1B7A97120();
  v59 = v53 + *(v87 + 28);
  v60 = *v59;
  LOBYTE(v57) = *(v59 + 8);

  if ((v57 & 1) == 0)
  {
    sub_1B7A9AA10();
    v61 = sub_1B7A97E70();
    sub_1B7A96D30();

    v62 = v70;
    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v60);
    (*(v71 + 8))(v62, v72);
    v60 = v97;
  }

  if (v60)
  {
    swift_getKeyPath();
    v97 = v60;
    sub_1B79FC0D0(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry, &unk_1B7A9C420);
    sub_1B7A96CB0();

    v63 = *(v60 + 16);
    v95 = *(v60 + 32);
    v96 = v63;
    v64 = *(v60 + 48);

    v66 = v95;
    v65 = v96;
  }

  else
  {
    v65 = 0uLL;
    v64 = 1;
    v66 = 0uLL;
  }

  v67 = v58 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_listContainerElementFrame;
  *v67 = v65;
  *(v67 + 16) = v66;
  *(v67 + 32) = v64;
}

uint64_t sub_1B79FD344()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B79FC674();
}

uint64_t sub_1B79FD400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v111 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA480E0, &qword_1B7AA21E0);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v81 - v3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA480E8, &qword_1B7AA21E8);
  MEMORY[0x1EEE9AC00](v101);
  v81 = &v81 - v4;
  v89 = sub_1B7A99DB0();
  v93 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v82 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D30, &unk_1B7A9C4A0);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38, &unk_1B7AA4740);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v11);
  KeyPath = &v81 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA480F0, &qword_1B7AA21F0);
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v81 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA480F8, &qword_1B7AA21F8);
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v81 - v14;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48100, &unk_1B7AA2200);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v81 - v15;
  v86 = sub_1B7A97880();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E88, &unk_1B7A9C5F0);
  MEMORY[0x1EEE9AC00](v95);
  v107 = &v81 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48108, &qword_1B7AA2210);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v81 - v18;
  v19 = type metadata accessor for Impressionable_ViewModifier(0);
  v94 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v106 = v20;
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48110, &qword_1B7AA2218);
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v81 - v23;
  v108 = v2;
  type metadata accessor for Impressionable_StateObject(0);
  sub_1B79FC0D0(&qword_1EDC0F560, type metadata accessor for Impressionable_StateObject, &unk_1B7AA2158);
  v24 = *(sub_1B7A97120() + 24);

  v25 = *(v24 + 16);

  if (!v25)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EA8, &unk_1B7A9C610);
    (*(*(v53 - 8) + 16))(v110, v109, v53);
    swift_storeEnumTagMultiPayload();
    sub_1B79FF880();
    sub_1B797EC34(&qword_1EDC0EB60, &qword_1EBA45EA8, &unk_1B7A9C610, MEMORY[0x1E697FDF8]);
    return sub_1B7A97B30();
  }

  v90 = v22;
  v26 = *(sub_1B7A97120() + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_tracker);
  swift_unknownObjectRetain();

  if (v26)
  {
    swift_unknownObjectRelease();
    sub_1B79FF938(v108, v21);
    v93 = *(v94 + 80);
    v27 = (v93 + 16) & ~v93;
    v94 = swift_allocObject();
    sub_1B79FF99C(v21, v94 + v27);
    KeyPath = swift_getKeyPath();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EA0, &unk_1B7AA2230);
    v29 = v107;
    v30 = &v107[*(v28 + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EB0, &qword_1B7A9EF00) + 28);
    v32 = sub_1B7A97120();
    v33 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_uniqueID;
    v34 = sub_1B7A96C20();
    v35 = *(v34 - 8);
    (*(v35 + 16))(&v30[v31], v32 + v33, v34);

    (*(v35 + 56))(&v30[v31], 0, 1, v34);
    *v30 = KeyPath;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EA8, &unk_1B7A9C610);
    v37 = *(*(v36 - 8) + 16);
    v38 = v109;
    v109 = v36;
    v37(v29, v38);
    v39 = swift_getKeyPath();
    v40 = v108;
    sub_1B79FF938(v108, v21);
    v41 = swift_allocObject();
    sub_1B79FF99C(v21, v41 + v27);
    v42 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E98, &unk_1B7A9C600) + 36)];
    *v42 = v39;
    v42[1] = sub_1B79FFCA4;
    v42[2] = v41;
    sub_1B79FF938(v40, v21);
    v43 = swift_allocObject();
    sub_1B79FF99C(v21, v43 + v27);
    v44 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E90, &unk_1B7AA2220) + 36)];
    *v44 = sub_1B79FED70;
    v44[1] = 0;
    v44[2] = sub_1B79FFD14;
    v44[3] = v43;
    sub_1B79FF938(v40, v21);
    v45 = swift_allocObject();
    sub_1B79FF99C(v21, v45 + v27);
    v46 = swift_getKeyPath();
    v47 = &v29[*(v95 + 36)];
    *v47 = sub_1B79FFD84;
    *(v47 + 1) = v45;
    *(v47 + 2) = v46;
    *(v47 + 3) = 0;
    *(v47 + 16) = 0;
    v48 = *(v40 + 24);
    LOBYTE(v45) = *(v40 + 32);

    if ((v45 & 1) == 0)
    {
      sub_1B7A9AA10();
      v49 = sub_1B7A97E70();
      sub_1B7A96D30();

      v50 = v84;
      sub_1B7A97870();
      swift_getAtKeyPath();
      j__swift_release(v48);
      (*(v85 + 8))(v50, v86);
      v48 = v113;
    }

    v51 = v105;
    if (v48)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
    }

    else
    {
      Strong = 0;
    }

    v67 = v96;
    v68 = v107;
    sub_1B797A588(Strong, sub_1B79FFA00, v94, v96);

    sub_1B7957888(v68, &qword_1EBA45E88, &unk_1B7A9C5F0);
    sub_1B7957820(v67, v99, &qword_1EBA48108, &qword_1B7AA2210);
    swift_storeEnumTagMultiPayload();
    sub_1B79FF738();
    sub_1B797EC34(&qword_1EDC0F638, &qword_1EBA480E8, &qword_1B7AA21E8, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    v69 = v100;
    sub_1B7A97B30();
    sub_1B7957820(v69, v104, &qword_1EBA48100, &unk_1B7AA2200);
    swift_storeEnumTagMultiPayload();
    sub_1B79FF680();
    sub_1B797EC34(&qword_1EDC0EB60, &qword_1EBA45EA8, &unk_1B7A9C610, MEMORY[0x1E697FDF8]);
    sub_1B7A97B30();

    sub_1B7957888(v69, &qword_1EBA48100, &unk_1B7AA2200);
    sub_1B7957888(v67, &qword_1EBA48108, &qword_1B7AA2210);
    v65 = v110;
    goto LABEL_19;
  }

  v55 = sub_1B7A97120();
  v56 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_enableRequirements;
  swift_beginAccess();
  v57 = KeyPath;
  sub_1B7957820(v55 + v56, KeyPath, &qword_1EBA45D38, &unk_1B7AA4740);

  v58 = v93;
  v59 = v91;
  v60 = v89;
  (*(v93 + 104))(v91, *MEMORY[0x1E69AB4F8], v89);
  (*(v58 + 56))(v59, 0, 1, v60);
  v61 = *(v87 + 48);
  v62 = v88;
  sub_1B7957820(v57, v88, &qword_1EBA45D38, &unk_1B7AA4740);
  sub_1B7957820(v59, v62 + v61, &qword_1EBA45D38, &unk_1B7AA4740);
  v63 = *(v58 + 48);
  if (v63(v62, 1, v60) != 1)
  {
    v70 = v83;
    sub_1B7957820(v62, v83, &qword_1EBA45D38, &unk_1B7AA4740);
    v71 = v63(v62 + v61, 1, v60);
    v65 = v110;
    v51 = v105;
    if (v71 != 1)
    {
      v72 = v93;
      v73 = v82;
      (*(v93 + 32))(v82, v62 + v61, v60);
      sub_1B79FC0D0(&qword_1EBA45DD0, MEMORY[0x1E69AB508], MEMORY[0x1E69AB510]);
      LODWORD(v108) = sub_1B7A9A470();
      v74 = *(v72 + 8);
      v74(v73, v60);
      sub_1B7957888(v91, &qword_1EBA45D38, &unk_1B7AA4740);
      sub_1B7957888(KeyPath, &qword_1EBA45D38, &unk_1B7AA4740);
      v74(v70, v60);
      sub_1B7957888(v62, &qword_1EBA45D38, &unk_1B7AA4740);
      v66 = v109;
      if ((v108 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    sub_1B7957888(v91, &qword_1EBA45D38, &unk_1B7AA4740);
    sub_1B7957888(KeyPath, &qword_1EBA45D38, &unk_1B7AA4740);
    (*(v93 + 8))(v70, v60);
LABEL_15:
    sub_1B7957888(v62, &qword_1EBA45D30, &unk_1B7A9C4A0);
    v66 = v109;
    goto LABEL_18;
  }

  sub_1B7957888(v59, &qword_1EBA45D38, &unk_1B7AA4740);
  sub_1B7957888(v57, &qword_1EBA45D38, &unk_1B7AA4740);
  v64 = v63(v62 + v61, 1, v60);
  v65 = v110;
  v51 = v105;
  if (v64 != 1)
  {
    goto LABEL_15;
  }

  sub_1B7957888(v62, &qword_1EBA45D38, &unk_1B7AA4740);
  v66 = v109;
LABEL_17:
  sub_1B797D54C();
  if ((sub_1B7A9AB10() & 1) == 0)
  {
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EA8, &unk_1B7A9C610);
    v77 = v81;
    (*(*(v76 - 8) + 16))(v81, v66, v76);
    v78 = swift_allocObject();
    *(v78 + 16) = 0xD00000000000002CLL;
    *(v78 + 24) = 0x80000001B7AC4DB0;
    v79 = (v77 + *(v101 + 52));
    *v79 = sub_1B797D598;
    v79[1] = v78;
    sub_1B7957820(v77, v99, &qword_1EBA480E8, &qword_1B7AA21E8);
    swift_storeEnumTagMultiPayload();
    sub_1B79FF738();
    sub_1B797EC34(&qword_1EDC0F638, &qword_1EBA480E8, &qword_1B7AA21E8, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    v80 = v100;
    sub_1B7A97B30();
    sub_1B7957820(v80, v104, &qword_1EBA48100, &unk_1B7AA2200);
    swift_storeEnumTagMultiPayload();
    sub_1B79FF680();
    sub_1B797EC34(&qword_1EDC0EB60, &qword_1EBA45EA8, &unk_1B7A9C610, MEMORY[0x1E697FDF8]);
    v51 = v105;
    sub_1B7A97B30();
    sub_1B7957888(v80, &qword_1EBA48100, &unk_1B7AA2200);
    sub_1B7957888(v77, &qword_1EBA480E8, &qword_1B7AA21E8);
    goto LABEL_19;
  }

LABEL_18:
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EA8, &unk_1B7A9C610);
  (*(*(v75 - 8) + 16))(v104, v66, v75);
  swift_storeEnumTagMultiPayload();
  sub_1B79FF680();
  sub_1B797EC34(&qword_1EDC0EB60, &qword_1EBA45EA8, &unk_1B7A9C610, MEMORY[0x1E697FDF8]);
  sub_1B7A97B30();
LABEL_19:
  sub_1B7957820(v51, v65, &qword_1EBA48110, &qword_1B7AA2218);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EA8, &unk_1B7A9C610);
  sub_1B79FF880();
  sub_1B797EC34(&qword_1EDC0EB60, &qword_1EBA45EA8, &unk_1B7A9C610, MEMORY[0x1E697FDF8]);
  sub_1B7A97B30();
  return sub_1B7957888(v51, &qword_1EBA48110, &qword_1B7AA2218);
}

uint64_t sub_1B79FE794(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7A97040();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E697BE30] || v8 == *MEMORY[0x1E697BE40])
  {
    type metadata accessor for Impressionable_ViewModifier(0);
    type metadata accessor for Impressionable_StateObject(0);
    sub_1B79FC0D0(&qword_1EDC0F560, type metadata accessor for Impressionable_StateObject, &unk_1B7AA2158);
    v10 = sub_1B7A97120();
    v11 = *(sub_1B7A97120() + 16);

    v12 = *(sub_1B7A97120() + 16);

    v13 = *(v10 + 16);
    *(v10 + 16) = v12 & 0x100 | v11 & 1 | 0x8000;
    sub_1B79FB890(v13);
  }

  else if (v8 == *MEMORY[0x1E697BE38])
  {
    type metadata accessor for Impressionable_ViewModifier(0);
    type metadata accessor for Impressionable_StateObject(0);
    sub_1B79FC0D0(&qword_1EDC0F560, type metadata accessor for Impressionable_StateObject, &unk_1B7AA2158);
    v15 = *(sub_1B7A97120() + 16);

    if (v15 < 0)
    {
      v16 = sub_1B7A97120();
      v17 = *(v16 + 16);
      *(v16 + 16) = v15 & 0x101;
      sub_1B79FB890(v17);
    }
  }

  else
  {
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_1B79FEA70(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D70, &unk_1B7A9C4E0);
  v13 = *(v2 - 8);
  v14 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  v5 = sub_1B7A96C20();
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for Impressionable_ViewModifier(0);
  type metadata accessor for Impressionable_StateObject(0);
  sub_1B79FC0D0(&qword_1EDC0F560, type metadata accessor for Impressionable_StateObject, &unk_1B7AA2158);
  v8 = *(sub_1B7A97120() + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_definesParentContext);

  if (v8 == 1)
  {
    v9 = sub_1B7A97120();
    v10 = v12;
    (*(v12 + 16))(v7, v9 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject__parentContextID, v5);

    sub_1B7A998B0();
    sub_1B7A998E0();
    (*(v13 + 8))(v4, v14);
    (*(v10 + 8))(v7, v5);
  }

  else
  {
  }
}

double sub_1B79FED70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v31[0] = a1;
  v3 = sub_1B7A97540();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A97BE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7A97310();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, *&v31[0], v11, v13);
  sub_1B7A972E0();
  v17 = v16;
  v19 = v18;
  sub_1B7A97CB0();
  sub_1B7A97300();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, *MEMORY[0x1E697E668], v3);
  sub_1B7A972D0();
  v30 = *(&v31[2] + 8);
  v31[0] = *(&v31[1] + 8);
  (*(v4 + 8))(v6, v3);
  (*(v12 + 8))(v15, v11);
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  v29 = v30;
  result = *v31;
  *(a2 + 48) = v31[0];
  *(a2 + 64) = v29;
  return result;
}

uint64_t sub_1B79FF030(double *a1, uint64_t a2)
{
  v4 = sub_1B7A97880();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7A99A20();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v46 = a1[3];
  v47 = v12;
  v13 = a1[4];
  v44 = a1[5];
  v45 = v13;
  width = a1[8];
  height = a1[9];
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for Impressionable_ViewModifier(0);
  v43 = a2;
  type metadata accessor for Impressionable_StateObject(0);
  sub_1B79FC0D0(&qword_1EDC0F560, type metadata accessor for Impressionable_StateObject, &unk_1B7AA2158);
  v16 = sub_1B7A97120();
  v17 = *(v16 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_listContainerElementFrame);
  v18 = *(v16 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_listContainerElementFrame + 8);
  v19 = *(v16 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_listContainerElementFrame + 16);
  v20 = *(v16 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_listContainerElementFrame + 24);
  v21 = *(v16 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_listContainerElementFrame + 32);

  if ((v21 & 1) == 0)
  {
    v52.origin.x = v17;
    v52.origin.y = v18;
    v52.size.width = v19;
    v52.size.height = v20;
    v54.origin.y = v46;
    v54.origin.x = v47;
    v54.size.height = v44;
    v54.size.width = v45;
    v53 = CGRectIntersection(v52, v54);
    width = v53.size.width;
    height = v53.size.height;
  }

  if (width / v10 >= height / v11)
  {
    v22 = height / v11;
  }

  else
  {
    v22 = width / v10;
  }

  v23 = sub_1B7A97120();
  (*(v7 + 16))(v9, v23 + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_configuration, v6);

  sub_1B7A999C0();
  v25 = v24;
  (*(v7 + 8))(v9, v6);
  v26 = *(sub_1B7A97120() + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_currentlyVisible);

  if (v26 == 2 || (((v25 < v22) ^ v26) & 1) != 0)
  {
    *(sub_1B7A97120() + OBJC_IVAR____TtC18_JetEngine_SwiftUI26Impressionable_StateObject_currentlyVisible) = v25 < v22;

    v27 = *(sub_1B7A97120() + 16);

    if ((v27 & 0x80000000) == 0)
    {
      if (v25 >= v22)
      {
        v31 = 0;
LABEL_20:
        v36 = sub_1B7A97120();
        v37 = *(v36 + 16);
        *(v36 + 16) = v31;
        sub_1B79FB890(v37);
      }

      v28 = *v43;
      v29 = *(v43 + 8);
      v30 = *(v43 + 16);
      if (*(v43 + 17) == 1)
      {
        sub_1B797DEF0(*v43, v29);
        if (!v29)
        {
          goto LABEL_18;
        }
      }

      else
      {

        LODWORD(v47) = sub_1B7A9AA10();
        v32 = sub_1B7A97E70();
        sub_1B7A96D30();

        v33 = v40;
        sub_1B7A97870();
        swift_getAtKeyPath();
        sub_1B797D5A0(v28, v29, v30, 0);
        (*(v41 + 8))(v33, v42);
        v28 = v49;
        v29 = v50;
        LOBYTE(v30) = v51;
        if (!v50)
        {
LABEL_18:
          v31 = 257;
          goto LABEL_20;
        }
      }

      v49 = v28;
      v50 = v29;
      v51 = v30 & 1;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8, &qword_1B7AA0470);
      MEMORY[0x1B8CA9A40](&v48, v34);
      v35 = v48;

      if (v35 != 1)
      {
        v31 = 1;
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }
}

uint64_t sub_1B79FF534(char a1, uint64_t a2)
{
  type metadata accessor for Impressionable_ViewModifier(0);
  type metadata accessor for Impressionable_StateObject(0);
  sub_1B79FC0D0(&qword_1EDC0F560, type metadata accessor for Impressionable_StateObject, &unk_1B7AA2158);
  v3 = sub_1B7A97120();
  if (a1)
  {
    v4 = *(v3 + 16);

    if (v4 < 0 || (v4 & 0x100) != 0 || (v4 & 1) == 0)
    {
      return result;
    }

    v6 = sub_1B7A97120();
    v7 = 257;
  }

  else
  {
    v8 = v3;
    v9 = *(sub_1B7A97120() + 16);

    v6 = v8;
    v7 = v9 & 1;
  }

  v10 = *(v6 + 16);
  *(v6 + 16) = v7;
  sub_1B79FB890(v10);
}

unint64_t sub_1B79FF680()
{
  result = qword_1EDC0EB90;
  if (!qword_1EDC0EB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48100, &unk_1B7AA2200);
    sub_1B79FF738();
    sub_1B797EC34(&qword_1EDC0F638, &qword_1EBA480E8, &qword_1B7AA21E8, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB90);
  }

  return result;
}

unint64_t sub_1B79FF738()
{
  result = qword_1EDC0EBA0;
  if (!qword_1EDC0EBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48108, &qword_1B7AA2210);
    sub_1B797E1E0();
    sub_1B79FF7C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBA0);
  }

  return result;
}

unint64_t sub_1B79FF7C4()
{
  result = qword_1EDC0EBB8;
  if (!qword_1EDC0EBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E70, &unk_1B7AA2240);
    sub_1B797E26C();
    sub_1B79FC0D0(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange, &unk_1B7AA0978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EBB8);
  }

  return result;
}

unint64_t sub_1B79FF880()
{
  result = qword_1EDC0EB80;
  if (!qword_1EDC0EB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48110, &qword_1B7AA2218);
    sub_1B79FF680();
    sub_1B797EC34(&qword_1EDC0EB60, &qword_1EBA45EA8, &unk_1B7A9C610, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB80);
  }

  return result;
}

uint64_t sub_1B79FF938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Impressionable_ViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79FF99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Impressionable_ViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79FFA00(uint64_t a1)
{
  v3 = *(type metadata accessor for Impressionable_ViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B79FE794(a1, v4);
}

uint64_t objectdestroy_33Tm()
{
  v1 = (type metadata accessor for Impressionable_ViewModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1B797D5A0(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 17));
  j__swift_release(*(v2 + 24));
  v3 = (v2 + v1[8]);
  sub_1B79599CC(*v3, v3[1]);
  v4 = type metadata accessor for Impressionable_ViewModifier.EnvironmentImpressionState(0);
  v5 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B7A99900();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1B7A96C20();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v3 + v7, 1, v8))
    {
      (*(v9 + 8))(v3 + v7, v8);
    }
  }

  else
  {
  }

  j__swift_release(*(v3 + v4[7]));

  return swift_deallocObject();
}

uint64_t sub_1B79FFCA4(uint64_t a1)
{
  v3 = *(type metadata accessor for Impressionable_ViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B79FEA70(a1, v4);
}

uint64_t sub_1B79FFD14(double *a1)
{
  v3 = *(type metadata accessor for Impressionable_ViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B79FF030(a1, v4);
}

uint64_t sub_1B79FFD84(char a1)
{
  v3 = *(type metadata accessor for Impressionable_ViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B79FF534(a1, v4);
}

uint64_t sub_1B79FFDF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1B79FFE5C()
{
  result = qword_1EDC0EB70;
  if (!qword_1EDC0EB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA48118, &qword_1B7AA2278);
    sub_1B79FF880();
    sub_1B797EC34(&qword_1EDC0EB60, &qword_1EBA45EA8, &unk_1B7A9C610, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB70);
  }

  return result;
}

id sub_1B79FFF78@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

void sub_1B79FFFC0(double a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  UIAccessibilityPostNotification(0x3EFu, v1);
}

uint64_t View.popoverOrigin<A>(presenting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B7A000F0(a3, a5, a6, v13);
  v11 = type metadata accessor for FlowPopoverOriginViewModifier(0, a3, a5, a6);
  MEMORY[0x1B8CA96D0](v13, a2, v11, a4);
  return (*(*(v11 - 8) + 8))(v13, v11);
}

uint64_t sub_1B7A000F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  *(a4 + 24) = sub_1B7A64A18(FunctionTypeMetadata1, v9, v10, v11);
  *(a4 + 32) = v12;
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 80) = 0;
  *(a4 + 88) = swift_getKeyPath();
  *(a4 + 128) = 0;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  type metadata accessor for FlowStackSheetAuthority(0, a1, a2, a3);
  swift_getWitnessTable();
  result = sub_1B7A97110();
  *a4 = result;
  *(a4 + 8) = v15;
  *(a4 + 16) = v16 & 1;
  return result;
}

uint64_t sub_1B7A0022C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18_JetEngine_SwiftUI13PerformAction_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B7A002C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B7A0031C(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7A003E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a8;
  v17[7] = a9;
  v17[8] = a10;
  v17[9] = a2;
  v17[10] = a3;
  v20[0] = sub_1B7A0279C;
  v20[1] = v17;
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();

  View.dataObject<A>(_:)(v20, a4, FunctionTypeMetadata1, a7);
}

uint64_t sub_1B7A004EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t *a3@<X8>, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  v12 = sub_1B7999EF4(v10, a2, a5);
  result = (*(v7 + 8))(v10, a2);
  *a3 = v12;
  return result;
}

uint64_t sub_1B7A005D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X8>)
{
  v109 = a1;
  v115 = a4;
  swift_getWitnessTable();
  v5 = sub_1B7A97C30();
  v95 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v89 - v6;
  WitnessTable = swift_getWitnessTable();
  *&v126 = v5;
  *(&v126 + 1) = MEMORY[0x1E6981148];
  *&v127 = WitnessTable;
  *(&v127 + 1) = MEMORY[0x1E6981138];
  v120 = type metadata accessor for _RequirementFailureView(0, &v126);
  v99 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v98 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v97 = (&v89 - v10);
  v11 = sub_1B7A97CD0();
  v106 = *(v11 - 8);
  v107 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v105 = (&v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a2[2];
  sub_1B7A9AB60();
  v14 = sub_1B7A98870();
  v103 = *(v14 - 8);
  v104 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v89 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481A0, &qword_1B7AA24E8);
  v17 = a2[3];
  v18 = a2[4];
  v19 = sub_1B7A02270();
  *&v126 = v13;
  *(&v126 + 1) = v16;
  *&v127 = v16;
  *(&v127 + 1) = v17;
  v101 = v17;
  *&v128 = v18;
  *(&v128 + 1) = v19;
  *&v129 = v19;
  type metadata accessor for FlowStack(255, &v126);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  v20 = sub_1B7A97590();
  v21 = swift_getWitnessTable();
  v22 = sub_1B79E3274(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0);
  v144 = v21;
  v145 = v22;
  v23 = swift_getWitnessTable();
  v113 = v5;
  v114 = WitnessTable;
  *&v126 = v5;
  *(&v126 + 1) = v13;
  v121 = v23;
  v122 = v13;
  v24 = v108;
  v119 = v20;
  *&v127 = v20;
  *(&v127 + 1) = WitnessTable;
  v117 = v18;
  *&v128 = v18;
  *(&v128 + 1) = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v116 = &v89 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481C0, &unk_1B7AA24F8);
  v100 = OpaqueTypeMetadata2;
  v28 = sub_1B7A97590();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v89 - v33;
  v110 = v35;
  v36 = sub_1B7A97B40();
  v111 = *(v36 - 8);
  v112 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v118 = &v89 - v37;
  v38 = v24;
  sub_1B797C31C(&v126);
  if (*(&v127 + 1))
  {
    v99 = v29;
    sub_1B795C1E4(&v126, v141);
    v39 = *v24;
    v94 = v24[1];
    v95 = v39;
    v90 = a2;
    v93 = *(v24 + 16);
    v40 = v101;
    v97 = v26;
    v41 = v117;
    v92 = type metadata accessor for FlowStackSheetAuthority(0, v122, v101, v117);
    v42 = swift_getWitnessTable();
    v96 = v31;
    v91 = v42;
    v43 = sub_1B7A97130();
    v98 = v34;
    MEMORY[0x1EEE9AC00](v43);
    v44 = v122;
    swift_getKeyPath();
    v45 = v102;
    sub_1B7A974B0();

    (*(*(v90 - 1) + 16))(&v126, v38);
    v46 = swift_allocObject();
    v47 = v132;
    *(v46 + 120) = v131;
    *(v46 + 136) = v47;
    *(v46 + 152) = v133;
    v48 = v126;
    *(v46 + 56) = v127;
    v49 = v129;
    *(v46 + 72) = v128;
    *(v46 + 88) = v49;
    *(v46 + 104) = v130;
    *(v46 + 16) = v44;
    *(v46 + 24) = v40;
    *(v46 + 32) = v41;
    *(v46 + 168) = v134;
    *(v46 + 40) = v48;
    v50 = swift_checkMetadataState();
    v51 = v105;
    v52 = v41;
    v54 = v113;
    v53 = v114;
    sub_1B7975080(v105);
    sub_1B79750FC(v45, v51, 4);

    (*(v106 + 8))(v51, v107);
    (*(v103 + 8))(v45, v104);
    swift_getKeyPath();
    v55 = v142;
    v56 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    v57 = sub_1B7A97120();
    v58 = v56;
    v59 = v54;
    sub_1B7A01DE0(v57, v55, v58, v125);

    *&v126 = v54;
    *(&v126 + 1) = v122;
    *&v127 = v50;
    *(&v127 + 1) = v53;
    *&v128 = v52;
    *(&v128 + 1) = v121;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v61 = v96;
    v62 = v100;
    v63 = v116;
    sub_1B7A98150();

    sub_1B7A02314(v125);
    v97[1](v63, v62);
    v64 = sub_1B79E3274(qword_1EBA481C8, &qword_1EBA481C0, &unk_1B7AA24F8);
    v123 = OpaqueTypeConformance2;
    v124 = v64;
    v65 = v110;
    v66 = swift_getWitnessTable();
    v67 = v98;
    sub_1B7957EE0(v61, v65, v66);
    v68 = *(v99 + 8);
    v68(v61, v65);
    sub_1B7957EE0(v67, v65, v66);
    v69 = v120;
    v70 = swift_getWitnessTable();
    sub_1B79B5878(v61, v65, v69, v66, v70);
    v68(v61, v65);
    v68(v67, v65);
    __swift_destroy_boxed_opaque_existential_1(v141);
  }

  else
  {
    sub_1B7A02314(&v126);
    v71 = v96;
    v59 = v113;
    (*(v95 + 16))(v96, v109, v113);
    v72 = v98;
    v53 = v114;
    _RequirementFailureView.init<>(_:_:)(v71, 0xD00000000000002ALL, 0x80000001B7AC6510, v59, v114, v98);
    v73 = v120;
    v74 = swift_getWitnessTable();
    v75 = v97;
    sub_1B7957EE0(v72, v73, v74);
    v76 = *(v99 + 8);
    v76(v72, v73);
    sub_1B7957EE0(v75, v73, v74);
    *&v126 = v59;
    *(&v126 + 1) = v122;
    *&v127 = v119;
    *(&v127 + 1) = v53;
    *&v128 = v117;
    *(&v128 + 1) = v121;
    v77 = swift_getOpaqueTypeConformance2();
    v78 = sub_1B79E3274(qword_1EBA481C8, &qword_1EBA481C0, &unk_1B7AA24F8);
    v139 = v77;
    v140 = v78;
    v79 = v110;
    v80 = swift_getWitnessTable();
    sub_1B7959A28(v72, v79, v73, v80, v74);
    v76(v72, v73);
    v76(v75, v73);
  }

  *&v126 = v59;
  *(&v126 + 1) = v122;
  *&v127 = v119;
  *(&v127 + 1) = v53;
  *&v128 = v117;
  *(&v128 + 1) = v121;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = sub_1B79E3274(qword_1EBA481C8, &qword_1EBA481C0, &unk_1B7AA24F8);
  v137 = v81;
  v138 = v82;
  v83 = swift_getWitnessTable();
  v84 = swift_getWitnessTable();
  v135 = v83;
  v136 = v84;
  v85 = v112;
  v86 = swift_getWitnessTable();
  v87 = v118;
  sub_1B7957EE0(v118, v85, v86);
  return (*(v111 + 8))(v87, v85);
}