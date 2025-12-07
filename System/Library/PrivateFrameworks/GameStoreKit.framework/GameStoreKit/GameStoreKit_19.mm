unint64_t sub_24E7F1CE4()
{
  result = qword_27F21E330;
  if (!qword_27F21E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E330);
  }

  return result;
}

unint64_t sub_24E7F1D38()
{
  result = qword_27F21E340;
  if (!qword_27F21E340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213FB0, &qword_24F93E6B0);
    sub_24E7F4B74(&qword_27F21E338, MEMORY[0x277D21C48], &protocol conformance descriptor for MediaArtwork);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E340);
  }

  return result;
}

unint64_t sub_24E7F1DF0(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x44496D616461;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x79616C507473616CLL;
      break;
    case 5:
      result = 0x6564644165746164;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6C6174736E497369;
      break;
    case 8:
      result = 0x6564616372417369;
      break;
    case 9:
    case 13:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 11:
      result = 0xD000000000000026;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x6E6F6349656D6167;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x53657361656C6572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E7F2058@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7F4594(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7F208C(uint64_t a1)
{
  v2 = sub_24E7F3D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7F20C8(uint64_t a1)
{
  v2 = sub_24E7F3D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Game.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E348, &qword_24F95BE78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7F3D20();
  sub_24F92D128();
  LOBYTE(v11) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_24F92CCA8();
    LOBYTE(v11) = 2;
    sub_24F92CD08();
    LOBYTE(v11) = 3;
    sub_24F92CCA8();
    LOBYTE(v11) = 4;
    sub_24F92CCC8();
    LOBYTE(v11) = 5;
    sub_24F92CCC8();
    v11 = *(v3 + 96);
    v10[15] = 6;
    sub_24E7F3D74();
    sub_24F92CD48();
    LOBYTE(v11) = 7;
    sub_24F92CD18();
    LOBYTE(v11) = 8;
    sub_24F92CD18();
    LOBYTE(v11) = 9;
    sub_24F92CD18();
    LOBYTE(v11) = 10;
    sub_24F92CD18();
    LOBYTE(v11) = 11;
    sub_24F92CD18();
    LOBYTE(v11) = 12;
    sub_24F92CD18();
    LOBYTE(v11) = 13;
    sub_24F92CD18();
    type metadata accessor for Game(0);
    LOBYTE(v11) = 14;
    sub_24F9289E8();
    sub_24E7F4B74(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CD48();
    LOBYTE(v11) = 15;
    sub_24F92CCF8();
    LOBYTE(v11) = 16;
    sub_24F92CCA8();
    LOBYTE(v11) = 17;
    sub_24F920818();
    sub_24E7F4B74(&qword_27F21E360, MEMORY[0x277D0CF00], MEMORY[0x277D0CF08]);
    sub_24F92CCF8();
    LOBYTE(v11) = 18;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Game.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = sub_24F9289E8();
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E368, &qword_24F95BE80);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v12 = &v51 - v11;
  v13 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24E7F3D20();
  v60 = v12;
  v17 = v62;
  sub_24F92D108();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v54 = v7;
  v55 = v13;
  v62 = v8;
  v19 = v59;
  v18 = v60;
  LOBYTE(v65) = 0;
  v20 = v61;
  *v15 = sub_24F92CC28();
  *(v15 + 1) = v22;
  LOBYTE(v65) = 1;
  *(v15 + 2) = sub_24F92CBC8();
  *(v15 + 3) = v23;
  LOBYTE(v65) = 2;
  v52 = 0;
  *(v15 + 4) = sub_24F92CC28();
  *(v15 + 5) = v24;
  LOBYTE(v65) = 3;
  *(v15 + 6) = sub_24F92CBC8();
  *(v15 + 7) = v25;
  LOBYTE(v65) = 4;
  *(v15 + 8) = sub_24F92CBE8();
  v15[72] = v26 & 1;
  LOBYTE(v65) = 5;
  v27 = sub_24F92CBE8();
  v53 = 0;
  *(v15 + 10) = v27;
  v15[88] = v29 & 1;
  v64 = 6;
  sub_24E7F3DC8();
  v30 = v53;
  sub_24F92CC68();
  if (v30)
  {
    v53 = v30;
    (*(v19 + 8))(v18, v20);
  }

  else
  {
    *(v15 + 12) = v65;
    LOBYTE(v65) = 7;
    v15[104] = sub_24F92CC38() & 1;
    LOBYTE(v65) = 8;
    v31 = sub_24F92CC38();
    v53 = 0;
    v15[105] = v31 & 1;
    LOBYTE(v65) = 9;
    v32 = v53;
    v33 = sub_24F92CC38();
    v53 = v32;
    if (!v32)
    {
      v15[106] = v33 & 1;
      LOBYTE(v65) = 10;
      v34 = v53;
      v35 = sub_24F92CC38();
      v53 = v34;
      if (!v34)
      {
        v15[107] = v35 & 1;
        LOBYTE(v65) = 11;
        v36 = v53;
        v37 = sub_24F92CC38();
        v53 = v36;
        if (!v36)
        {
          v15[108] = v37 & 1;
          LOBYTE(v65) = 12;
          v38 = v53;
          v39 = sub_24F92CC38();
          v53 = v38;
          if (!v38)
          {
            v15[109] = v39 & 1;
            LOBYTE(v65) = 13;
            v40 = v53;
            v41 = sub_24F92CC38();
            v53 = v40;
            if (!v40)
            {
              v15[110] = v41 & 1;
              LOBYTE(v65) = 14;
              sub_24E7F4B74(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
              v42 = v53;
              sub_24F92CC68();
              v53 = v42;
              if (!v42)
              {
                (*(v58 + 32))(&v15[v55[18]], v10, v62);
                LOBYTE(v65) = 15;
                v43 = v53;
                sub_24F92CC18();
                if (v43)
                {
                  (*(v19 + 8))(v60, v61);
                  __swift_destroy_boxed_opaque_existential_1(v63);

                  return (*(v58 + 8))(&v15[v55[18]], v62);
                }

                else
                {
                  sub_24E6009C8(v54, &v15[v55[19]], &qword_27F213FB0, &qword_24F93E6B0);
                  LOBYTE(v65) = 16;
                  v44 = sub_24F92CBC8();
                  v45 = &v15[v55[20]];
                  *v45 = v44;
                  v45[1] = v46;
                  sub_24F920818();
                  LOBYTE(v65) = 17;
                  sub_24E7F4B74(&qword_27F21E378, MEMORY[0x277D0CF00], MEMORY[0x277D0CF28]);
                  sub_24F92CC18();
                  sub_24E6009C8(v56, &v15[v55[21]], &qword_27F219030, &qword_24F94BAE8);
                  LOBYTE(v65) = 18;
                  v47 = sub_24F92CBC8();
                  v49 = v48;
                  (*(v19 + 8))(v60, v61);
                  v50 = &v15[v55[22]];
                  *v50 = v47;
                  v50[1] = v49;
                  sub_24E69BF7C(v15, v57);
                  __swift_destroy_boxed_opaque_existential_1(v63);
                  return sub_24E69BFE0(v15);
                }
              }
            }
          }
        }
      }
    }

    (*(v19 + 8))(v60, v61);
  }

  v28 = v52;
  __swift_destroy_boxed_opaque_existential_1(v63);

  if (!v28)
  {
  }
}

uint64_t sub_24E7F2FA0()
{
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[18] = __swift_project_value_buffer(v1, qword_27F39E850);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Notifying gamed Game Center UI is about to be presented.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = [objc_opt_self() proxyForLocalPlayer];
  v6 = [v5 profileServicePrivate];
  v0[19] = v6;

  v0[2] = v0;
  v0[3] = sub_24E7F31AC;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B618, &unk_24FA08730);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E760660;
  v0[13] = &block_descriptor_18;
  v0[14] = v7;
  [v6 startContactsIntegrationSyncWithOptions:3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E7F31AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_24E7F331C;
  }

  else
  {
    v2 = sub_24E7F32BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7F32BC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7F331C(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v2;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 160);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error notifying gamed: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v1 + 8);

  return v12();
}

BOOL _s12GameStoreKit0A0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F920818();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v58 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3E0, &unk_24F95C0D0);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = sub_24F9289E8();
  v61 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3E8, &qword_24F975890);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  if (*a1 != *a2 && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v21 = *(a1 + 24);
  v22 = *(a2 + 24);
  if (v21)
  {
    if (!v22 || (*(a1 + 16) != *(a2 + 16) || v21 != v22) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v23 = *(a1 + 56);
  v24 = *(a2 + 56);
  if (v23)
  {
    if (!v24 || (*(a1 + 48) != *(a2 + 48) || v23 != v24) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  if (*(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  if (*(a1 + 105) != *(a2 + 105))
  {
    return 0;
  }

  if (*(a1 + 106) != *(a2 + 106))
  {
    return 0;
  }

  if (*(a1 + 107) != *(a2 + 107))
  {
    return 0;
  }

  if (*(a1 + 108) != *(a2 + 108))
  {
    return 0;
  }

  if (*(a1 + 109) != *(a2 + 109))
  {
    return 0;
  }

  if (*(a1 + 110) != *(a2 + 110))
  {
    return 0;
  }

  v57 = type metadata accessor for Game(0);
  if ((MEMORY[0x25304E2E0](a1 + v57[18], a2 + v57[18]) & 1) == 0)
  {
    return 0;
  }

  v56 = v57[19];
  v27 = *(v18 + 48);
  sub_24E60169C(a1 + v56, v20, &qword_27F213FB0, &qword_24F93E6B0);
  v28 = a2 + v56;
  v56 = v27;
  sub_24E60169C(v28, &v20[v27], &qword_27F213FB0, &qword_24F93E6B0);
  v55 = *(v61 + 48);
  if (v55(v20, 1, v12) == 1)
  {
    if (v55(&v20[v56], 1, v12) == 1)
    {
      sub_24E601704(v20, &qword_27F213FB0, &qword_24F93E6B0);
      goto LABEL_50;
    }

LABEL_46:
    v29 = &qword_27F21E3E8;
    v30 = &qword_24F975890;
    v31 = v20;
LABEL_47:
    sub_24E601704(v31, v29, v30);
    return 0;
  }

  sub_24E60169C(v20, v17, &qword_27F213FB0, &qword_24F93E6B0);
  if (v55(&v20[v56], 1, v12) == 1)
  {
    (*(v61 + 8))(v17, v12);
    goto LABEL_46;
  }

  v33 = v61;
  (*(v61 + 32))(v14, &v20[v56], v12);
  sub_24E7F4B74(&qword_27F21E3F8, MEMORY[0x277D21C48], MEMORY[0x277D21C58]);
  LODWORD(v56) = sub_24F92AFF8();
  v34 = *(v33 + 8);
  v34(v14, v12);
  v34(v17, v12);
  sub_24E601704(v20, &qword_27F213FB0, &qword_24F93E6B0);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v35 = v57[20];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = v57[21];
  v41 = *(v9 + 48);
  sub_24E60169C(a1 + v40, v11, &qword_27F219030, &qword_24F94BAE8);
  sub_24E60169C(a2 + v40, &v11[v41], &qword_27F219030, &qword_24F94BAE8);
  v42 = *(v59 + 48);
  if (v42(v11, 1, v60) == 1)
  {
    if (v42(&v11[v41], 1, v60) == 1)
    {
      sub_24E601704(v11, &qword_27F219030, &qword_24F94BAE8);
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  sub_24E60169C(v11, v8, &qword_27F219030, &qword_24F94BAE8);
  if (v42(&v11[v41], 1, v60) == 1)
  {
    (*(v59 + 8))(v8, v60);
LABEL_62:
    v29 = &qword_27F21E3E0;
    v30 = &unk_24F95C0D0;
    v31 = v11;
    goto LABEL_47;
  }

  v44 = v58;
  v43 = v59;
  v45 = &v11[v41];
  v46 = v60;
  (*(v59 + 32))(v58, v45, v60);
  sub_24E7F4B74(&qword_27F21E3F0, MEMORY[0x277D0CF00], MEMORY[0x277D0CF18]);
  v47 = sub_24F92AFF8();
  v48 = *(v43 + 8);
  v48(v44, v46);
  v48(v8, v46);
  sub_24E601704(v11, &qword_27F219030, &qword_24F94BAE8);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_64:
  v49 = v57[22];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (!v51)
  {
    return !v53;
  }

  return v53 && (*v50 == *v52 && v51 == v53 || (sub_24F92CE08() & 1) != 0);
}

unint64_t sub_24E7F3D20()
{
  result = qword_27F21E350;
  if (!qword_27F21E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E350);
  }

  return result;
}

unint64_t sub_24E7F3D74()
{
  result = qword_27F21E358;
  if (!qword_27F21E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E358);
  }

  return result;
}

unint64_t sub_24E7F3DC8()
{
  result = qword_27F21E370;
  if (!qword_27F21E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E370);
  }

  return result;
}

uint64_t sub_24E7F3E5C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[18];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[19];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[21];

  return v15(v16, a2, v14);
}

uint64_t sub_24E7F3FF4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[18];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[19];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[21];

  return v15(v16, a2, a2, v14);
}

void sub_24E7F4178(uint64_t a1)
{
  sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F2191B8, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_24F9289E8();
      if (v3 <= 0x3F)
      {
        sub_24E7F42E8(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
        if (v4 <= 0x3F)
        {
          sub_24E7F42E8(319, &qword_27F21E390, MEMORY[0x277D0CF00]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E7F42E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Game.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Game.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24E7F4490()
{
  result = qword_27F21E398;
  if (!qword_27F21E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E398);
  }

  return result;
}

unint64_t sub_24E7F44E8()
{
  result = qword_27F21E3A0;
  if (!qword_27F21E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E3A0);
  }

  return result;
}

unint64_t sub_24E7F4540()
{
  result = qword_27F21E3A8;
  if (!qword_27F21E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E3A8);
  }

  return result;
}

uint64_t sub_24E7F4594(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA47820 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEC00000074416465 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA47840 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6174736E497369 && a2 == 0xEB0000000064656CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6564616372417369 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA47860 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA47880 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000026 && 0x800000024FA478A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA478D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA478F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA47910 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA47930 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x53657361656C6572 && a2 == 0xEC00000065746174 || (sub_24F92CE08() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA47950 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_24E7F4B74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t InviteFriendsSearchDataIntent.searchTerm.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24E7F4C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E7F4CB4(uint64_t a1)
{
  v2 = sub_24E7F4E68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7F4CF0(uint64_t a1)
{
  v2 = sub_24E7F4E68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InviteFriendsSearchDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E400, &qword_24F95C100);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7F4E68();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E7F4E68()
{
  result = qword_27F21E408;
  if (!qword_27F21E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E408);
  }

  return result;
}

uint64_t InviteFriendsSearchDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E410, &qword_24F95C108);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7F4E68();
  sub_24F92D108();
  if (!v2)
  {
    v9 = sub_24F92CC28();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E7F5068(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E400, &qword_24F95C100);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7F4E68();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E7F51C8()
{
  result = qword_27F21E418;
  if (!qword_27F21E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E418);
  }

  return result;
}

unint64_t sub_24E7F5220()
{
  result = qword_27F21E420;
  if (!qword_27F21E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E420);
  }

  return result;
}

unint64_t sub_24E7F5278()
{
  result = qword_27F21E428;
  if (!qword_27F21E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E428);
  }

  return result;
}

void sub_24E7F52CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_24F92C6B8();
    v5 = 0;
    v22 = *(a1 + 36);
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v21 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_24F4578E0((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v21;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_24E6586A8(v4, v22, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_24E6586A8(v4, v22, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_24E7F5510(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8617B4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24E7F8E64(v5);
  *a1 = v2;
  return result;
}

void sub_24E7F5598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F95C300;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v1 = *MEMORY[0x277CBD028];
  v2 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v3 = v1;
  v4 = [v2 initWithString_];

  *(v0 + 40) = v4;
  v5 = *MEMORY[0x277CBD098];
  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = v5;
  v8 = [v6 initWithString_];

  *(v0 + 48) = v8;
  v9 = *MEMORY[0x277CBCFC0];
  v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v11 = v9;
  v12 = [v10 initWithString_];

  *(v0 + 56) = v12;
  v13 = *MEMORY[0x277CBD158];
  v14 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v15 = v13;
  v16 = [v14 initWithString_];

  *(v0 + 64) = v16;
  v17 = *MEMORY[0x277CBD020];
  v18 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v19 = v17;
  v20 = [v18 initWithString_];

  *(v0 + 72) = v20;
  qword_27F21E438 = v0;
}

uint64_t InviteFriendsSearchDataIntentImplementation.perform(_:objectGraph:)(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E67D094;

  return sub_24E7FA0CC(a1);
}

uint64_t sub_24E7F5804(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v3 = objc_opt_self();
  v4 = sub_24F92B098();
  v5 = [v3 predicateForContactsMatchingName_];

  if (qword_27F20FF18 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
    v6 = sub_24F92B588();
    v37[0] = 0;
    v7 = [v2 unifiedContactsMatchingPredicate:v5 keysToFetch:v6 error:v37];

    v8 = v37[0];
    if (!v7)
    {
      v15 = v37[0];
      v16 = sub_24F91F278();

      swift_willThrow();
      return MEMORY[0x277D84F90];
    }

    sub_24E7FA974();
    v9 = sub_24F92B5A8();
    v10 = v8;

    v37[0] = 0;
    v11 = [v2 meContactIdentifiers_];
    v12 = v37[0];
    if (v11)
    {
      v13 = v11;
      v36 = sub_24F92B5A8();
      v14 = v12;
    }

    else
    {
      v18 = v37[0];
      v19 = sub_24F91F278();

      swift_willThrow();
      v36 = MEMORY[0x277D84F90];
    }

    v38 = MEMORY[0x277D84F90];
    if (v9 >> 62)
    {
      break;
    }

    v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_24;
    }

LABEL_9:
    v32 = v5;
    v33 = v2;
    v21 = 0;
    v34 = v9 & 0xFFFFFFFFFFFFFF8;
    v35 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v35)
      {
        v22 = MEMORY[0x253052270](v21, v9);
      }

      else
      {
        if (v21 >= *(v34 + 16))
        {
          goto LABEL_21;
        }

        v22 = *(v9 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v5 = v20;
      v25 = [v22 identifier];
      v26 = sub_24F92B0D8();
      v28 = v27;

      v2 = &v32;
      v37[0] = v26;
      v37[1] = v28;
      MEMORY[0x28223BE20](v29);
      v31[2] = v37;
      LOBYTE(v25) = sub_24E6159B8(sub_24E7FAFB0, v31, v36);

      if (v25)
      {
      }

      else
      {
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      v20 = v5;
      ++v21;
      if (v24 == v5)
      {
        v17 = v38;
        v5 = v32;
        v2 = v33;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v20 = sub_24F92C738();
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_24:
  v17 = MEMORY[0x277D84F90];
LABEL_25:

  return v17;
}

uint64_t sub_24E7F5BE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 368) = a1;
  *(v2 + 376) = a2;
  return MEMORY[0x2822009F8](sub_24E7F5C08, 0, 0);
}

uint64_t sub_24E7F5C08()
{
  v45 = v0;
  v1 = v0[46];
  v44 = MEMORY[0x277D84F90];
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_51;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = v1;
LABEL_3:
  v42 = v0[47];

  v5 = MEMORY[0x277D84F90];
  v43 = v0;
  if (v3)
  {
    v39 = v2;
    v40 = v1;
    v6 = 0;
    v41 = v1 & 0xC000000000000001;
    v7 = v1 & 0xFFFFFFFFFFFFFF8;
    v8 = v4 + 32;
    while (1)
    {
      if (v41)
      {
        v9 = MEMORY[0x253052270](v6, v43[46]);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_50;
        }

        v9 = *(v8 + 8 * v6);
      }

      v1 = v9;
      v0 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v3 = sub_24F92C738();
        v4 = v0[46];
        goto LABEL_3;
      }

      v10 = [v1 identifier];
      v2 = sub_24F92B0D8();
      v12 = v11;

      if (*(v42 + 16))
      {
        sub_24E76D644(v2, v12);
        v2 = v13;

        if (v2)
        {

          goto LABEL_7;
        }
      }

      else
      {
      }

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
LABEL_7:
      ++v6;
      if (v0 == v3)
      {
        v0 = v43;
        v14 = v44;
        v5 = MEMORY[0x277D84F90];
        v2 = v39;
        v1 = v40;
        goto LABEL_18;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:
  v0[48] = v14;

  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v15 = sub_24F9220D8();
  __swift_project_value_buffer(v15, qword_27F39E808);

  v16 = sub_24F9220B8();
  LOBYTE(v17) = sub_24F92BD98();
  if (!os_log_type_enabled(v16, v17))
  {

    v1 = v14 & 0x4000000000000000;
    goto LABEL_34;
  }

  v18 = swift_slowAlloc();
  *v18 = 134218240;
  LODWORD(v0) = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (v0 == 1)
  {
    goto LABEL_59;
  }

  for (i = *(v14 + 16); ; i = sub_24F92C738())
  {
    *(v18 + 4) = i;
    *(v18 + 12) = 2048;
    if (v2)
    {
      v20 = sub_24F92C738();
      if (!v0)
      {
LABEL_28:
        result = *(v14 + 16);
        goto LABEL_32;
      }
    }

    else
    {
      v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v0)
      {
        goto LABEL_28;
      }
    }

    result = sub_24F92C738();
LABEL_32:
    v22 = v20 - result;
    if (__OFSUB__(v20, result))
    {
      __break(1u);
      return result;
    }

    v1 = v14 & 0x4000000000000000;
    v0 = v43;
    *(v18 + 14) = v22;

    _os_log_impl(&dword_24E5DD000, v16, v17, "Invite Friends Search: Attempting to hydrate %ld contacts (%ld already hydrated)", v18, 0x16u);
    MEMORY[0x2530542D0](v18, -1, -1);

LABEL_34:
    v0[49] = v14;
    if ((v14 & 0x8000000000000000) == 0 && !v1)
    {
      v18 = *(v14 + 16);
      v17 = v18;
      if (!v18)
      {
        break;
      }

      goto LABEL_37;
    }

    v36 = sub_24F92C738();
    if (!v36)
    {
      break;
    }

    v17 = v36;
    v18 = sub_24F92C738();
    if (!v18)
    {
      v24 = MEMORY[0x277D84F90];
      v34 = 1;
LABEL_46:
      v43[51] = v17;
      v43[52] = v24;
      v43[50] = v18;
      *(v43 + 98) = v34;
      v35 = swift_task_alloc();
      v43[53] = v35;
      *v35 = v43;
      v35[1] = sub_24E7F6170;

      return sub_24E7F6B44(v24);
    }

LABEL_37:
    v44 = v5;
    v16 = &v44;
    sub_24F4578E0(0, v18 & ~(v18 >> 63), 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v23 = 0;
      v24 = v44;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x253052270](v23, v14);
        }

        else
        {
          v25 = *(v14 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = [v26 identifier];
        v28 = sub_24F92B0D8();
        v30 = v29;

        v44 = v24;
        v32 = *(v24 + 16);
        v31 = *(v24 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_24F4578E0((v31 > 1), v32 + 1, 1);
          v24 = v44;
        }

        ++v23;
        *(v24 + 16) = v32 + 1;
        v33 = v24 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
      }

      while (v18 != v23);
      v34 = 0;
      goto LABEL_46;
    }

    __break(1u);
LABEL_59:
    ;
  }

  v37 = v43[47];
  v38 = v43[1];

  return v38(v37);
}

uint64_t sub_24E7F6170(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {

    v4 = sub_24E7F6A7C;
  }

  else
  {
    v4 = sub_24E7F62B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24E7F62B4()
{
  v1 = 0;
  v19 = v0[49] & 0xC000000000000001;
  v20 = MEMORY[0x277D84F90];
  v2 = v0[54];
  v3 = v0[48];
  v4 = v2 + 56;
  do
  {
    if (v19)
    {
      v5 = MEMORY[0x253052270](v1, v0[48]);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_24;
      }

      v5 = *(v3 + 32 + 8 * v1);
    }

    v6 = v5;
    if (__OFADD__(v1++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v8 = [v5 identifier];
    v9 = sub_24F92B0D8();
    v11 = v10;

    if (*(v2 + 16) && (sub_24F92D068(), sub_24F92B218(), v12 = sub_24F92D0B8(), v13 = -1 << *(v2 + 32), v14 = v12 & ~v13, ((*(v4 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
    {
      v15 = ~v13;
      while (1)
      {
        v16 = (*(v2 + 48) + 16 * v14);
        v17 = *v16 == v9 && v16[1] == v11;
        if (v17 || (sub_24F92CE08() & 1) != 0)
        {
          break;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v4 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    else
    {
LABEL_2:
    }
  }

  while (v1 != v0[51]);
  v0[56] = v20;
  v18 = swift_task_alloc();
  v0[57] = v18;
  *v18 = v0;
  v18[1] = sub_24E7F6504;

  sub_24E7F6FAC(v20);
}

uint64_t sub_24E7F6504(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {

    v4 = sub_24E7F6AE0;
  }

  else
  {
    v4 = sub_24E7F6654;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24E7F6654()
{
  v60 = v0;
  if (*(v0 + 98) != 1)
  {
LABEL_17:
    v56 = MEMORY[0x277D84F90];
    sub_24F457F38(0, *(v0 + 400), 0);
    v39 = 0;
    v1 = v56;
    while (1)
    {
      v40 = *(v0 + 384);
      if ((*(v0 + 392) & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x253052270](v39, v40);
      }

      else
      {
        if (v39 >= *(v40 + 16))
        {
          goto LABEL_39;
        }

        v41 = *(v40 + 8 * v39 + 32);
      }

      v42 = v41;
      v43 = *(v0 + 464);
      v44 = *(v0 + 432);
      v59[0] = v41;
      sub_24E7F7834(v59, v43, v44, v57);

      v46 = *(v56 + 16);
      v45 = *(v56 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_24F457F38((v45 > 1), v46 + 1, 1);
      }

      v47 = v39 + 1;
      v48 = *(v0 + 400);
      *(v56 + 16) = v46 + 1;
      v49 = v56 + 88 * v46;
      v50 = v57[1];
      *(v49 + 32) = v57[0];
      *(v49 + 48) = v50;
      v51 = v57[2];
      v52 = v57[3];
      v53 = v57[4];
      *(v49 + 112) = v58;
      *(v49 + 80) = v52;
      *(v49 + 96) = v53;
      *(v49 + 64) = v51;
      if (v39 + 1 == v48)
      {
        break;
      }

      ++v39;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_37;
      }
    }

    v2 = *(v56 + 16);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_29:

    v4 = *(v0 + 376);
LABEL_31:
    v54 = *(v0 + 8);

    v54(v4);
    return;
  }

  v1 = MEMORY[0x277D84F90];
  v2 = *(MEMORY[0x277D84F90] + 16);
  if (!v2)
  {
    goto LABEL_29;
  }

LABEL_3:
  v3 = 0;
  v4 = *(v0 + 376);
  v55 = v2 - 1;
  v5 = 32;
  while (1)
  {
    v6 = *(v1 + v5 + 16);
    *(v0 + 16) = *(v1 + v5);
    *(v0 + 32) = v6;
    v7 = *(v1 + v5 + 32);
    v8 = *(v1 + v5 + 48);
    v9 = *(v1 + v5 + 64);
    *(v0 + 96) = *(v1 + v5 + 80);
    *(v0 + 64) = v8;
    *(v0 + 80) = v9;
    *(v0 + 48) = v7;
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    sub_24E7FA89C(v0 + 16, v0 + 104);
    sub_24E7FA89C(v0 + 16, v0 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v57[0] = v4;
    v13 = sub_24E76D644(v11, v10);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_24E89B128(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_24E76D644(v11, v10);
      if ((v19 & 1) != (v20 & 1))
      {

        sub_24F92CF88();
        return;
      }

LABEL_9:
      if (v19)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v30 = v13;
    sub_24E8AEDEC();
    v13 = v30;
    if (v19)
    {
LABEL_10:
      v4 = *&v57[0];
      v21 = *(*&v57[0] + 56) + 88 * v13;
      v22 = *(v21 + 16);
      *(v0 + 280) = *v21;
      *(v0 + 296) = v22;
      v23 = *(v21 + 32);
      v24 = *(v21 + 48);
      v25 = *(v21 + 64);
      *(v0 + 360) = *(v21 + 80);
      *(v0 + 328) = v24;
      *(v0 + 344) = v25;
      *(v0 + 312) = v23;
      v27 = *(v0 + 64);
      v26 = *(v0 + 80);
      v28 = *(v0 + 48);
      *(v21 + 80) = *(v0 + 96);
      *(v21 + 48) = v27;
      *(v21 + 64) = v26;
      *(v21 + 32) = v28;
      v29 = *(v0 + 32);
      *v21 = *(v0 + 16);
      *(v21 + 16) = v29;
      sub_24E7FA8F8(v0 + 280);
      sub_24E7FA8F8(v0 + 16);
      goto LABEL_14;
    }

LABEL_12:
    v4 = *&v57[0];
    *(*&v57[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v31 = (v4[6] + 16 * v13);
    *v31 = v11;
    v31[1] = v10;
    v32 = v4[7] + 88 * v13;
    v33 = *(v0 + 96);
    v35 = *(v0 + 64);
    v34 = *(v0 + 80);
    *(v32 + 32) = *(v0 + 48);
    *(v32 + 48) = v35;
    *(v32 + 64) = v34;
    *(v32 + 80) = v33;
    v36 = *(v0 + 32);
    *v32 = *(v0 + 16);
    *(v32 + 16) = v36;

    sub_24E7FA8F8(v0 + 16);
    v37 = v4[2];
    v17 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v17)
    {
      goto LABEL_38;
    }

    v4[2] = v38;
LABEL_14:
    if (v55 == v3)
    {

      goto LABEL_31;
    }

    ++v3;
    v5 += 88;
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_24E7F6A7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7F6AE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7F6B64()
{
  if (qword_27F20FF20 != -1)
  {
    swift_once();
  }

  v1 = off_27F21E440;
  os_unfair_lock_lock(off_27F21E440 + 6);
  v2 = *(v1 + 2);
  v0[4] = v2;

  os_unfair_lock_unlock(v1 + 6);

  v4 = sub_24F45D828(v3);

  v6 = sub_24F461F6C(v5);
  if (*(v6 + 16) <= *(v4 + 16) >> 3)
  {
    sub_24F7A6A50(v6);
  }

  else
  {
    v4 = sub_24F7A6EE0(v6, v4);
  }

  v0[5] = v4;
  if (*(v4 + 16))
  {
    v7 = swift_task_alloc();
    v0[6] = v7;
    *(v7 + 16) = v4;
    *(v7 + 24) = v2;
    v8 = swift_task_alloc();
    v0[7] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480, &unk_24F944D20);
    *v8 = v0;
    v8[1] = sub_24E7F6DE8;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000031, 0x800000024FA47990, sub_24E7FAE0C, v7, v9);
  }

  else
  {

    sub_24E7F99E8(v2);

    v11 = sub_24F461F6C(v10);

    v13 = sub_24F45D828(v12);

    v15 = sub_24EBE04BC(v13, v11, v14);

    v16 = v0[1];

    return v16(v15);
  }
}

uint64_t sub_24E7F6DE8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24E7F6F34;
  }

  else
  {

    v2 = sub_24E7F6F18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7F6F34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7F6FCC()
{
  v1 = *(v0 + 56);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v4 = MEMORY[0x277D84F90];
    v63 = v1;
    if (i)
    {
      v69 = MEMORY[0x277D84F90];
      v5 = sub_24F4578E0(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return MEMORY[0x2822008A0](v5, v6, v7, v8, v9, v10, v11, v12);
      }

      v4 = v69;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v13 = 0;
        do
        {
          MEMORY[0x253052270](v13, v68[7]);
          v14 = [swift_unknownObjectRetain() identifier];
          v15 = sub_24F92B0D8();
          v17 = v16;

          swift_unknownObjectRelease_n();
          v19 = *(v69 + 16);
          v18 = *(v69 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_24F4578E0((v18 > 1), v19 + 1, 1);
          }

          ++v13;
          *(v69 + 16) = v19 + 1;
          v20 = v69 + 16 * v19;
          *(v20 + 32) = v15;
          *(v20 + 40) = v17;
        }

        while (i != v13);
      }

      else
      {
        v21 = (v68[7] + 32);
        do
        {
          v22 = *v21;
          v23 = [v22 identifier];
          v24 = sub_24F92B0D8();
          v26 = v25;

          v28 = *(v69 + 16);
          v27 = *(v69 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_24F4578E0((v27 > 1), v28 + 1, 1);
          }

          *(v69 + 16) = v28 + 1;
          v29 = v69 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
          ++v21;
          --i;
        }

        while (i);
      }
    }

    v62 = v2;
    if (qword_27F20FF28 != -1)
    {
      swift_once();
    }

    v30 = off_27F21E448;
    os_unfair_lock_lock(off_27F21E448 + 6);
    v31 = *(v30 + 2);

    os_unfair_lock_unlock(v30 + 6);
    v64 = v31;
    sub_24E7F52CC(v31);
    v66 = v32;
    v33 = *(v4 + 16);
    if (v33)
    {
      v34 = 0;
      v1 = (v68 + 2);
      v35 = -v33;
      v36 = v4 + 40;
      v65 = MEMORY[0x277D84F90];
      do
      {
        v2 = v36 + 16 * v34++;
        while (1)
        {
          if ((v34 - 1) >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_54;
          }

          v37 = *(v2 - 8);
          v38 = *v2;
          v68[2] = v37;
          v68[3] = v38;
          v39 = swift_task_alloc();
          *(v39 + 16) = v1;

          v40 = sub_24E6159B8(sub_24E7FA94C, v39, v66);

          if ((v40 & 1) == 0)
          {
            break;
          }

          ++v34;
          v2 += 16;
          if (v35 + v34 == 1)
          {
            goto LABEL_31;
          }
        }

        v41 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F4578E0(0, *(v65 + 16) + 1, 1);
          v41 = v65;
        }

        v2 = *(v41 + 16);
        v42 = *(v41 + 24);
        if (v2 >= v42 >> 1)
        {
          sub_24F4578E0((v42 > 1), v2 + 1, 1);
          v41 = v65;
        }

        *(v41 + 16) = v2 + 1;
        v65 = v41;
        v43 = v41 + 16 * v2;
        *(v43 + 32) = v37;
        *(v43 + 40) = v38;
        v36 = v4 + 40;
      }

      while (v35 + v34);
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
    }

LABEL_31:

    v1 = v65;
    if (!*(v65 + 16))
    {
      break;
    }

    v70 = MEMORY[0x277D84F90];
    if (v62)
    {
      v44 = v63;
      v45 = sub_24F92C738();
      if (v45)
      {
        goto LABEL_34;
      }

LABEL_49:
      v56 = MEMORY[0x277D84F90];
LABEL_50:

      v68[8] = v56;
      v60 = swift_task_alloc();
      v68[9] = v60;
      *(v60 + 16) = v56;
      v61 = swift_task_alloc();
      v68[10] = v61;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
      *v61 = v68;
      v61[1] = sub_24E7F7688;
      v10 = sub_24E7FA96C;
      v5 = (v68 + 6);
      v9 = 0x800000024FA47970;
      v6 = 0;
      v7 = 0;
      v8 = 0xD00000000000001ELL;
      v11 = v60;

      return MEMORY[0x2822008A0](v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v44 = v63;
    v45 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v45)
    {
      goto LABEL_49;
    }

LABEL_34:
    v46 = 0;
    v67 = v44 & 0xC000000000000001;
    v47 = v44 & 0xFFFFFFFFFFFFFF8;
    v48 = v68[7] + 32;
    while (1)
    {
      if (v67)
      {
        v49 = MEMORY[0x253052270](v46, v68[7]);
      }

      else
      {
        if (v46 >= *(v47 + 16))
        {
          goto LABEL_55;
        }

        v49 = *(v48 + 8 * v46);
      }

      v50 = v49;
      v2 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      v1 = v45;
      v51 = [v49 identifier];
      v52 = sub_24F92B0D8();
      v54 = v53;

      v68[4] = v52;
      v68[5] = v54;
      v55 = swift_task_alloc();
      *(v55 + 16) = v68 + 4;
      LOBYTE(v52) = sub_24E6159B8(sub_24E7FAFB0, v55, v65);

      if (v52)
      {
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      else
      {
      }

      v45 = v1;
      ++v46;
      if (v2 == v1)
      {
        v56 = v70;
        goto LABEL_50;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

  v57 = sub_24E7F9F0C(v64, v4);
  swift_bridgeObjectRelease_n();

  v58 = v68[1];

  return v58(v57);
}

uint64_t sub_24E7F7688()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24E7F77C8;
  }

  else
  {

    v2 = sub_24E7F77AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7F77C8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24E7F7834(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24F91EAA8();
  v63 = *(v8 - 8);
  v64 = v8;
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = [*a1 identifier];
  v14 = sub_24F92B0D8();
  v16 = v15;

  if (!*(a2 + 16))
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    goto LABEL_5;
  }

  v17 = sub_24E76D644(v14, v16);
  v19 = v18;

  if (v19)
  {
    v20 = (*(a2 + 56) + 16 * v17);
    v21 = *v20;
    v66 = v20[1];
    v67 = v21;

    v22 = [v12 identifier];
    v23 = sub_24F92B0D8();
    v25 = v24;

    v65 = sub_24F4D36F8(v23, v25, a3);
LABEL_5:

    goto LABEL_7;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
LABEL_7:
  v26 = [v12 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E458, &unk_24F95C3C8);
  v27 = sub_24F92B5A8();

  if (v27 >> 62)
  {
    v28 = sub_24F92C738();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v30 = [v12 emailAddresses];
    v31 = sub_24F92B5A8();

    if (v31 >> 62)
    {
      v32 = sub_24F92C738();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v32 != 0;
  }

  v62 = v29;
  v33 = [v12 identifier];
  v34 = sub_24F92B0D8();
  v60 = v35;
  v61 = v34;

  v36 = [v12 _gkCompositeName];
  v37 = sub_24F92B0D8();
  v59 = v38;

  v39 = [v12 identifier];
  v40 = sub_24F92B0D8();
  v42 = v41;

  v68 = v40;
  v69 = v42;
  sub_24F91EA28();
  sub_24E600AEC();
  v43 = sub_24F92C578();
  v45 = v44;
  (*(v63 + 8))(v11, v64);
  if (!v45)
  {

    v43 = v40;
    v45 = v42;
  }

  v68 = 0x3A746361746E6F63;
  v69 = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v43, v45);

  v46 = v68;
  v47 = v69;
  v48 = [v12 suggestedHandle];
  if (v48)
  {
    v49 = v48;
    v50 = sub_24F92B0D8();
    v52 = v51;
  }

  else
  {
    v53 = [v12 handles];
    v54 = sub_24F92B5A8();

    if (v54[2])
    {
      v50 = v54[4];
      v52 = v54[5];
    }

    else
    {

      v50 = 0;
      v52 = 0xE000000000000000;
    }
  }

  v55 = v60;
  *a4 = v61;
  *(a4 + 8) = v55;
  v56 = v66;
  *(a4 + 16) = v67;
  *(a4 + 24) = v56;
  v57 = v59;
  *(a4 + 32) = v37;
  *(a4 + 40) = v57;
  *(a4 + 48) = v46;
  *(a4 + 56) = v47;
  *(a4 + 64) = v50;
  *(a4 + 72) = v52;
  *(a4 + 80) = v65 & 1;
  *(a4 + 81) = v62;
}

void sub_24E7F7CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v25);
  v24 = &v21 - v7;
  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 profileServicePrivate];

  v10 = *(a2 + 16);
  if (!v10)
  {
    goto LABEL_4;
  }

  v21 = v6;
  v22 = a1;
  v23 = v9;
  v11 = sub_24EAE678C(v10, 0);
  v12 = sub_24EAE7C84(aBlock, v11 + 4, v10, a2);
  v13 = aBlock[0];

  sub_24E6586B4(v13);
  if (v12 == v10)
  {
    a1 = v22;
    v9 = v23;
    v6 = v21;
LABEL_4:
    v14 = sub_24F92B588();

    v15 = v24;
    v16 = v25;
    (*(v5 + 16))(v24, a1, v25);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    (*(v5 + 32))(v19 + v17, v15, v16);
    *(v19 + v18) = a2;
    *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
    aBlock[4] = sub_24E7FAECC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24F7F8178;
    aBlock[3] = &block_descriptor_27;
    v20 = _Block_copy(aBlock);

    [v9 filterForContactIDsSupportingFriendingViaPushFromContactIDs:v14 withCompletion:v20];
    _Block_release(v20);
    swift_unknownObjectRelease();

    return;
  }

  __break(1u);
}

uint64_t sub_24E7F7FA0(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a2;
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E808);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24E5DD000, v7, v8, "Invite Friends Search: Unable to filter contact ids to those supporting Friending 2.0", v9, 2u);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
    return sub_24F92B788();
  }

  else
  {
    if (qword_27F20FF20 != -1)
    {
      v18 = a1;
      swift_once();
      a1 = v18;
    }

    v12 = off_27F21E440;
    MEMORY[0x28223BE20](a1);
    v14 = v13;
    os_unfair_lock_lock(v12 + 6);
    sub_24E7FAF90(&v12[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v12 + 6);
    sub_24E7F99E8(a5);
    v16 = sub_24F461F6C(v15);
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = MEMORY[0x277D84FA0];
    }

    sub_24F146B88(v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
    return sub_24F92B798();
  }
}

void sub_24E7F81C8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v41 = a3 + 56;

  v9 = 0;
  v36 = v3;
  while (v7)
  {
LABEL_12:
    v13 = (*(a2 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v15 = *v13;
    v14 = v13[1];
    if (!v3 || !*(v3 + 16))
    {

LABEL_24:
      v38 = 0;
      goto LABEL_25;
    }

    sub_24F92D068();

    sub_24F92B218();
    v16 = sub_24F92D0B8();
    v17 = -1 << *(v3 + 32);
    v18 = v16 & ~v17;
    if (((*(v41 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_24;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(v3 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v41 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v38 = 1;
LABEL_25:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *a1;
    v40 = v23;
    v24 = sub_24E76D644(v15, v14);
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_38;
    }

    v30 = v25;
    if (v23[3] < v29)
    {
      sub_24E89B4DC(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_24E76D644(v15, v14);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_40;
      }

LABEL_30:
      v3 = v36;
      if (v30)
      {
        goto LABEL_5;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v35 = v24;
    sub_24E8AEFBC();
    v24 = v35;
    v3 = v36;
    if (v30)
    {
LABEL_5:
      v10 = v24;

      v11 = v40;
      *(v40[7] + v10) = v38;
      goto LABEL_6;
    }

LABEL_31:
    v11 = v23;
    v23[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v23[6] + 16 * v24);
    *v32 = v15;
    v32[1] = v14;
    *(v23[7] + v24) = v38;
    v33 = v23[2];
    v28 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v28)
    {
      goto LABEL_39;
    }

    v23[2] = v34;
LABEL_6:
    v7 &= v7 - 1;
    *a1 = v11;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_24F92CF88();
  __break(1u);
}

uint64_t sub_24E7F84D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *a4 = result;
  return result;
}

void sub_24E7F8524(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E460, &qword_24F95C3D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() proxyForLocalPlayer];
  v8 = [v7 profileServicePrivate];

  sub_24E7FA974();
  v9 = sub_24F92B588();
  (*(v4 + 16))(v6, a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v10, v6, v3);
  aBlock[4] = sub_24E7FAA54;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E7F8D0C;
  aBlock[3] = &block_descriptor_19;
  v12 = _Block_copy(aBlock);

  [v8 getContactAssociationIDsForContacts:v9 shouldRefresh:1 completionHandler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

uint64_t sub_24E7F8740(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    if (qword_27F2113E8 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_3;
  }

  if (!a1)
  {
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v45 = sub_24F9220D8();
    __swift_project_value_buffer(v45, qword_27F39E808);
    v46 = sub_24F9220B8();
    v47 = sub_24F92BDB8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_24E5DD000, v46, v47, "Invite Friends Search: Map from contacts to CAIDs unexpectedly nil", v48, 2u);
      MEMORY[0x2530542D0](v48, -1, -1);
    }

    sub_24E6086DC(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E460, &qword_24F95C3D8);
    return sub_24F92B798();
  }

  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v15 = MEMORY[0x277D84F98];
  v49 = v12;
  v50 = v8;
  v51 = v13;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_35;
        }

        if (v18 >= v12)
        {
          break;
        }

        v11 = *(v8 + 8 * v18);
        ++v14;
        if (v11)
        {
          goto LABEL_17;
        }
      }

      if (qword_27F20FF28 != -1)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    v18 = v14;
LABEL_17:
    v19 = __clz(__rbit64(v11)) | (v18 << 6);
    v20 = *(*(v13 + 48) + 8 * v19);
    v21 = (*(v13 + 56) + 16 * v19);
    v22 = v21[1];
    v52 = *v21;
    v23 = v20;
    swift_bridgeObjectRetain_n();
    v24 = v23;
    v25 = [v24 identifier];
    v26 = sub_24F92B0D8();
    v28 = v27;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v15;
    v30 = sub_24E76D644(v26, v28);
    v32 = v15[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      break;
    }

    v36 = v31;
    if (v15[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = v30;
        sub_24E8AF124();
        v30 = v42;
      }
    }

    else
    {
      sub_24E89B77C(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_24E76D644(v26, v28);
      if ((v36 & 1) != (v37 & 1))
      {
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }
    }

    v11 &= v11 - 1;
    if (v36)
    {
      v16 = v30;

      v15 = v53;
      v17 = (v53[7] + 16 * v16);
      *v17 = v52;
      v17[1] = v22;

      goto LABEL_11;
    }

    v15 = v53;
    v53[(v30 >> 6) + 8] |= 1 << v30;
    v38 = (v53[6] + 16 * v30);
    *v38 = v26;
    v38[1] = v28;
    v39 = (v53[7] + 16 * v30);
    *v39 = v52;
    v39[1] = v22;

    v40 = v53[2];
    v34 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v34)
    {
      __break(1u);
LABEL_38:
      v43 = swift_once();
LABEL_27:
      v44 = off_27F21E448;
      MEMORY[0x28223BE20](v43);
      os_unfair_lock_lock(v44 + 6);
      sub_24E7FAB50(v44 + 2);
      os_unfair_lock_unlock(v44 + 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E460, &qword_24F95C3D8);
      return sub_24F92B798();
    }

    v53[2] = v41;
LABEL_11:
    v14 = v18;
    v8 = v50;
    v13 = v51;
    v12 = v49;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_3:
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E808);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Invite Friends Search: Unable to fetch CAIDs for Invite Friends Search", v6, 2u);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E460, &qword_24F95C3D8);
  return sub_24F92B788();
}

void sub_24E7F8C50(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v5;
  sub_24E7FAB6C(a2, sub_24F2E5B20, 0, isUniquelyReferenced_nonNull_native, &v7);

  if (v2)
  {

    __break(1u);
  }

  else
  {

    *a1 = v7;
  }
}

uint64_t sub_24E7F8D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24E7FA974();
    sub_24E7FAAF8();
    v4 = sub_24F92AE38();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_24E7F8DB4(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E67D244;

  return sub_24E7FA0CC(a2);
}

uint64_t sub_24E7F8E64(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24E7F90A4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_24E7F8F5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24E7F8F5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3 - 88;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 168);
      if (v11 == *(v10 + 80))
      {
        result = *(v10 + 32);
        v12 = result == *(v10 + 120) && *(v10 + 40) == *(v10 + 128);
        if (v12 || (result = sub_24F92CE08(), (result & 1) == 0))
        {
LABEL_4:
          ++v4;
          v7 += 88;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if ((v11 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v6)
      {
        break;
      }

      v18 = *(v10 + 120);
      v19 = *(v10 + 136);
      v20 = *(v10 + 152);
      v21 = *(v10 + 168);
      v16 = *(v10 + 88);
      v17 = *(v10 + 104);
      v13 = *(v10 + 48);
      *(v10 + 120) = *(v10 + 32);
      *(v10 + 136) = v13;
      *(v10 + 152) = *(v10 + 64);
      *(v10 + 168) = *(v10 + 80);
      v14 = *(v10 + 16);
      *(v10 + 88) = *v10;
      *(v10 + 104) = v14;
      *(v10 + 32) = v18;
      *(v10 + 48) = v19;
      *(v10 + 64) = v20;
      *(v10 + 80) = v21;
      *v10 = v16;
      *(v10 + 16) = v17;
      v10 -= 88;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24E7F90A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_111:
    v92 = *v92;
    if (!v92)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_113:
      v82 = v8 + 16;
      v83 = *(v8 + 2);
      if (v83 >= 2)
      {
        while (1)
        {
          v84 = *v5;
          if (!*v5)
          {
            goto LABEL_147;
          }

          v85 = &v8[16 * v83];
          v5 = *v85;
          v86 = &v82[2 * v83];
          v87 = v86[1];
          sub_24E7F9750((v84 + 88 * *v85), (v84 + 88 * *v86), (v84 + 88 * v87), v92);
          if (v4)
          {
          }

          if (v87 < v5)
          {
            goto LABEL_135;
          }

          if (v83 - 2 >= *v82)
          {
            goto LABEL_136;
          }

          *v85 = v5;
          *(v85 + 1) = v87;
          v88 = *v82 - v83;
          if (*v82 < v83)
          {
            goto LABEL_137;
          }

          v83 = *v82 - 1;
          result = memmove(v86, v86 + 2, 16 * v88);
          *v82 = v83;
          v5 = a3;
          if (v83 <= 1)
          {
          }
        }
      }
    }

LABEL_143:
    result = sub_24E86164C(v8);
    v8 = result;
    goto LABEL_113;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (2)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_35;
    }

    v10 = *v5;
    v11 = *v5 + 88 * v7;
    v12 = *(v11 + 80);
    v13 = *v5 + 88 * v9;
    if (v12 == *(v13 + 80))
    {
      result = *(v13 + 32);
      if (result == *(v11 + 32) && *(v13 + 40) == *(v11 + 40))
      {
        v12 = 0;
      }

      else
      {
        result = sub_24F92CE08();
        v12 = result;
      }
    }

    v7 = v9 + 2;
    if (v9 + 2 >= v6)
    {
      goto LABEL_25;
    }

    v15 = v10 + 88 * v9 + 128;
    do
    {
      result = *(v15 + 128);
      if (result != *(v15 + 40))
      {
        goto LABEL_14;
      }

      result = *(v15 - 8);
      if (result != *(v15 + 80) || *v15 != *(v15 + 88))
      {
        result = sub_24F92CE08();
LABEL_14:
        if ((v12 ^ result))
        {
          goto LABEL_25;
        }

        goto LABEL_15;
      }

      if (v12)
      {
        goto LABEL_26;
      }

LABEL_15:
      ++v7;
      v15 += 88;
    }

    while (v6 != v7);
    v7 = v6;
LABEL_25:
    if (v12)
    {
LABEL_26:
      if (v7 < v9)
      {
        goto LABEL_140;
      }

      if (v9 < v7)
      {
        v17 = 88 * v7 - 88;
        v18 = v9;
        v19 = 88 * v9;
        v20 = v7;
        v89 = v18;
        do
        {
          if (v18 != --v20)
          {
            v22 = *v5;
            if (!*v5)
            {
              goto LABEL_146;
            }

            v21 = v22 + v17;
            v98 = *(v22 + v19 + 32);
            v100 = *(v22 + v19 + 48);
            v102 = *(v22 + v19 + 64);
            v104 = *(v22 + v19 + 80);
            v94 = *(v22 + v19);
            v96 = *(v22 + v19 + 16);
            result = memmove((v22 + v19), (v22 + v17), 0x58uLL);
            *(v21 + 32) = v98;
            *(v21 + 48) = v100;
            *(v21 + 64) = v102;
            *(v21 + 80) = v104;
            *v21 = v94;
            *(v21 + 16) = v96;
          }

          ++v18;
          v17 -= 88;
          v19 += 88;
        }

        while (v18 < v20);
        v9 = v89;
      }
    }

LABEL_35:
    v23 = v5[1];
    if (v7 >= v23)
    {
      goto LABEL_60;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_139;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_60;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_141;
    }

    if (v9 + a4 >= v23)
    {
      v24 = v5[1];
    }

    else
    {
      v24 = v9 + a4;
    }

    if (v24 < v9)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v7 == v24)
    {
LABEL_60:
      if (v7 < v9)
      {
        goto LABEL_138;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E615ED8(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v36 = *(v8 + 2);
      v35 = *(v8 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_24E615ED8((v35 > 1), v36 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v37;
      v38 = &v8[16 * v36];
      *(v38 + 4) = v9;
      *(v38 + 5) = v7;
      v39 = *v92;
      if (!*v92)
      {
        goto LABEL_148;
      }

      if (!v36)
      {
LABEL_3:
        v6 = v5[1];
        if (v7 >= v6)
        {
          goto LABEL_111;
        }

        continue;
      }

      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v8 + 4);
          v42 = *(v8 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_80:
          if (v44)
          {
            goto LABEL_126;
          }

          v57 = &v8[16 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_129;
          }

          v63 = &v8[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_133;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v67 = &v8[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_94:
        if (v62)
        {
          goto LABEL_128;
        }

        v70 = &v8[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_131;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_101:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*v5)
        {
          goto LABEL_145;
        }

        v79 = *&v8[16 * v78 + 32];
        v80 = *&v8[16 * v40 + 40];
        sub_24E7F9750((*v5 + 88 * v79), (*v5 + 88 * *&v8[16 * v40 + 32]), (*v5 + 88 * v80), v39);
        if (v4)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24E86164C(v8);
        }

        if (v78 >= *(v8 + 2))
        {
          goto LABEL_123;
        }

        v81 = &v8[16 * v78];
        *(v81 + 4) = v79;
        *(v81 + 5) = v80;
        result = sub_24E8615C0(v40);
        v37 = *(v8 + 2);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v8[16 * v37 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_124;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_125;
      }

      v52 = &v8[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_127;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_130;
      }

      if (v56 >= v48)
      {
        v74 = &v8[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_134;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

    break;
  }

  v25 = *v5;
  v26 = *v5 + 88 * v7 - 88;
  v90 = v9;
  v27 = v9 - v7;
LABEL_46:
  v28 = v27;
  v29 = v26;
  while (1)
  {
    v30 = *(v29 + 168);
    if (v30 == *(v29 + 80))
    {
      result = *(v29 + 32);
      if (result != *(v29 + 120) || *(v29 + 40) != *(v29 + 128))
      {
        result = sub_24F92CE08();
        if (result)
        {
          goto LABEL_55;
        }
      }

LABEL_45:
      ++v7;
      v26 += 88;
      --v27;
      if (v7 == v24)
      {
        v7 = v24;
        v5 = a3;
        v9 = v90;
        goto LABEL_60;
      }

      goto LABEL_46;
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_55:
    if (!v25)
    {
      break;
    }

    v99 = *(v29 + 120);
    v101 = *(v29 + 136);
    v103 = *(v29 + 152);
    v105 = *(v29 + 168);
    v95 = *(v29 + 88);
    v97 = *(v29 + 104);
    v32 = *(v29 + 48);
    *(v29 + 120) = *(v29 + 32);
    *(v29 + 136) = v32;
    *(v29 + 152) = *(v29 + 64);
    *(v29 + 168) = *(v29 + 80);
    v33 = *(v29 + 16);
    *(v29 + 88) = *v29;
    *(v29 + 104) = v33;
    *(v29 + 32) = v99;
    *(v29 + 48) = v101;
    *(v29 + 64) = v103;
    *(v29 + 80) = v105;
    *v29 = v95;
    *(v29 + 16) = v97;
    v29 -= 88;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_24E7F9750(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 88;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 88;
  if (v9 >= v11)
  {
    v18 = 88 * v11;
    if (a4 != __src || &__src[v18] <= a4)
    {
      memmove(a4, __src, 88 * v11);
    }

    v13 = &v4[v18];
    if (v10 < 88 || v6 <= v7)
    {
LABEL_45:
      v17 = v6;
      goto LABEL_46;
    }

    while (1)
    {
      v19 = 0;
      v20 = v13;
      while (1)
      {
        v21 = &v20[v19];
        v22 = v20[v19 - 8];
        if (v22 == *(v6 - 8))
        {
          break;
        }

        if (v22)
        {
          goto LABEL_40;
        }

LABEL_38:
        if (&v5[v19] != v21)
        {
          memmove(&v5[v19 - 88], v21 - 88, 0x58uLL);
        }

        v19 -= 88;
        v13 = &v20[v19];
        if (&v20[v19] <= v4)
        {
          goto LABEL_45;
        }
      }

      v23 = *(v6 - 7) == *(v21 - 7) && *(v6 - 6) == *(v21 - 6);
      if (v23 || (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_40:
      v17 = v6 - 88;
      v24 = &v5[v19];
      v5 = &v5[v19 - 88];
      if (v24 != v6)
      {
        memmove(v5, v6 - 88, 0x58uLL);
      }

      v13 = &v20[v19];
      if (&v20[v19] > v4)
      {
        v6 -= 88;
        if (v17 > v7)
        {
          continue;
        }
      }

      v13 = &v20[v19];
      goto LABEL_46;
    }
  }

  v12 = 88 * v9;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 88 && v6 < v5)
  {
    do
    {
      v14 = v6[80];
      if (v14 == v4[80])
      {
        v15 = *(v4 + 4) == *(v6 + 4) && *(v4 + 5) == *(v6 + 5);
        if (v15 || (sub_24F92CE08() & 1) == 0)
        {
LABEL_18:
          v16 = v4;
          v15 = v7 == v4;
          v4 += 88;
          if (v15)
          {
            goto LABEL_20;
          }

LABEL_19:
          memmove(v7, v16, 0x58uLL);
          goto LABEL_20;
        }
      }

      else if ((v14 & 1) == 0)
      {
        goto LABEL_18;
      }

      v16 = v6;
      v15 = v7 == v6;
      v6 += 88;
      if (!v15)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 += 88;
    }

    while (v4 < v13 && v6 < v5);
  }

  v17 = v7;
LABEL_46:
  v25 = 88 * ((v13 - v4) / 88);
  if (v17 != v4 || v17 >= &v4[v25])
  {
    memmove(v17, v4, v25);
  }

  return 1;
}

unint64_t *sub_24E7F99E8(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_24E7F9C5C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_24E7F9B48(v8, v4, v2);
  result = MEMORY[0x2530542D0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_24E7F9B48(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_24E7F9C5C(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_24E7F9BC0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_24E7F9D48(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_24E7F9C5C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_24ECB52D0(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_24ECB52D0(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_24E7F9D48(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v25[0] = *v14;
    v25[1] = v15;
    MEMORY[0x28223BE20](result);
    v19[2] = v25;

    v16 = v26;
    v17 = sub_24E6159B8(sub_24E7FAFB0, v19, v23);
    v26 = v16;

    if (v17)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_24ECB550C(v21, v20, v22, v24);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_24ECB550C(v21, v20, v22, v24);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_24E7F9F0C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_24E7F9BC0(v12, v7, a1, a2);
      MEMORY[0x2530542D0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_24E7F9D48((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_24E7FA0CC(void *a1)
{
  v2 = a1[1];
  *(v1 + 192) = *a1;
  *(v1 + 200) = v2;
  return MEMORY[0x2822009F8](sub_24E7FA0F0, 0, 0);
}

uint64_t sub_24E7FA0F0()
{
  v14 = v0;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E808);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24E7620D4(v5, v4, &v13);
    _os_log_impl(&dword_24E5DD000, v2, v3, "Invite Friends Search: Performing search intent for query '%s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v8 = sub_24E7F5804(v0[24], v0[25]);
  v0[26] = v8;
  if (qword_27F20FF10 != -1)
  {
    swift_once();
  }

  v9 = off_27F21E430;
  v0[27] = off_27F21E430;
  os_unfair_lock_lock(v9 + 6);
  v10 = *(v9 + 2);
  v0[28] = v10;

  os_unfair_lock_unlock(v9 + 6);
  v11 = swift_task_alloc();
  v0[29] = v11;
  *v11 = v0;
  v11[1] = sub_24E7FA31C;

  return sub_24E7F5BE8(v8, v10);
}

uint64_t sub_24E7FA31C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {

    v4 = sub_24E7FA828;
  }

  else
  {
    v4 = sub_24E7FA460;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24E7FA460()
{
  v43 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 216);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v3 + 24));
  sub_24E7FA854((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  if (!v2)
  {
    v4 = *(v0 + 208);

    if (v4 >> 62)
    {
LABEL_27:
      v5 = sub_24F92C738();
      if (v5)
      {
LABEL_4:
        v42 = MEMORY[0x277D84F90];
        sub_24F4578E0(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
          __break(1u);
          return;
        }

        v6 = 0;
        v7 = v42;
        v8 = v4 & 0xC000000000000001;
        v41 = *(v0 + 208) + 32;
        do
        {
          if (v8)
          {
            v9 = MEMORY[0x253052270](v6, *(v0 + 208));
          }

          else
          {
            v9 = *(v41 + 8 * v6);
          }

          v10 = v9;
          v11 = [v10 identifier];
          v4 = sub_24F92B0D8();
          v13 = v12;

          v42 = v7;
          v15 = *(v7 + 2);
          v14 = *(v7 + 3);
          if (v15 >= v14 >> 1)
          {
            sub_24F4578E0((v14 > 1), v15 + 1, 1);
            v7 = v42;
          }

          ++v6;
          *(v7 + 2) = v15 + 1;
          v16 = &v7[16 * v15];
          *(v16 + 4) = v4;
          *(v16 + 5) = v13;
        }

        while (v5 != v6);

        v17 = *(v7 + 2);
        if (v17)
        {
          goto LABEL_13;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v7 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (v17)
    {
LABEL_13:
      v18 = 0;
      v19 = *(v0 + 240);
      v20 = -v17;
      v21 = v7 + 40;
      v22 = MEMORY[0x277D84F90];
      while (1)
      {
        v23 = &v21[16 * v18++];
        while (1)
        {
          if ((v18 - 1) >= *(v7 + 2))
          {
            __break(1u);
            goto LABEL_27;
          }

          if (*(v19 + 16))
          {
            break;
          }

LABEL_15:
          ++v18;
          v23 += 2;
          if (v20 + v18 == 1)
          {
            goto LABEL_30;
          }
        }

        v4 = *(v23 - 1);
        v24 = *v23;

        v25 = sub_24E76D644(v4, v24);
        if ((v26 & 1) == 0)
        {
          break;
        }

        v4 = 88;
        v27 = *(v19 + 56) + 88 * v25;
        v28 = *(v27 + 16);
        *(v0 + 16) = *v27;
        *(v0 + 32) = v28;
        v29 = *(v27 + 32);
        v30 = *(v27 + 48);
        v31 = *(v27 + 64);
        *(v0 + 96) = *(v27 + 80);
        *(v0 + 64) = v30;
        *(v0 + 80) = v31;
        *(v0 + 48) = v29;
        sub_24E7FA89C(v0 + 16, v0 + 104);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_24E617854(0, *(v22 + 2) + 1, 1, v22);
        }

        v33 = *(v22 + 2);
        v32 = *(v22 + 3);
        if (v33 >= v32 >> 1)
        {
          v22 = sub_24E617854((v32 > 1), v33 + 1, 1, v22);
        }

        *(v22 + 2) = v33 + 1;
        v34 = &v22[88 * v33];
        v35 = *(v0 + 32);
        *(v34 + 2) = *(v0 + 16);
        *(v34 + 3) = v35;
        v36 = *(v0 + 48);
        v37 = *(v0 + 64);
        v38 = *(v0 + 80);
        *(v34 + 56) = *(v0 + 96);
        *(v34 + 5) = v37;
        *(v34 + 6) = v38;
        *(v34 + 4) = v36;
        v21 = v7 + 40;
        if (!(v20 + v18))
        {
LABEL_30:

          v42 = v22;

          sub_24E7F5510(&v42);

          v39 = v42;
          v40 = *(v0 + 8);

          v40(v39);
          return;
        }
      }

      goto LABEL_15;
    }

LABEL_29:
    v22 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }
}

double sub_24E7FA854(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;

  return result;
}

unint64_t sub_24E7FA974()
{
  result = qword_27F223450;
  if (!qword_27F223450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F223450);
  }

  return result;
}

uint64_t sub_24E7FA9C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E460, &qword_24F95C3D8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E7FAA54(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E460, &qword_24F95C3D8);

  return sub_24E7F8740(a1, a2);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E7FAAF8()
{
  result = qword_27F21E470;
  if (!qword_27F21E470)
  {
    sub_24E7FA974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E470);
  }

  return result;
}

void sub_24E7FAB6C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v10;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v50[0] = v17;
    v50[1] = v18;
    v50[2] = v20;
    v50[3] = v21;

    (a2)(&v46, v50);

    v22 = v46;
    v23 = v47;
    v24 = v48;
    v25 = v49;
    v26 = *v51;
    v28 = sub_24E76D644(v46, v47);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v45 & 1) == 0)
      {
        sub_24E8AF124();
      }
    }

    else
    {
      sub_24E89B77C(v31, v45 & 1);
      v33 = sub_24E76D644(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v51;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v41;
    v6 = v42;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_24E6586B4(a1);

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_24F92CF88();
  __break(1u);
}

uint64_t sub_24E7FAE14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E7FAECC(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E7F7FA0(a1, a2, v2 + v6, v8, v9);
}

uint64_t PageMenuToolbarItem.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageMenuToolbarItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageMenuToolbarItem.symbolName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24E7FB060()
{
  v1 = 25705;
  v2 = 0x614E6C6F626D7973;
  if (*v0 != 2)
  {
    v2 = 0x6575676573;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24E7FB0C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E7FB9E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7FB0F0(uint64_t a1)
{
  v2 = sub_24E7FB3AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E7FB12C(uint64_t a1)
{
  v2 = sub_24E7FB3AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PageMenuToolbarItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A8, &qword_24F95C420);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7FB3AC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E6419D0(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E7FB3AC()
{
  result = qword_27F21E4B0;
  if (!qword_27F21E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E4B0);
  }

  return result;
}

uint64_t PageMenuToolbarItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4B8, &unk_24F95C428);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  sub_24E61DA68(v14, v17, qword_27F21B590, &unk_24F93BE30);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E7FB3AC();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E641EA0(v17);
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    v16[0] = sub_24F92CC28();
    v16[1] = v9;
    v13[1] = v9;
    LOBYTE(v14[0]) = 1;
    v16[2] = sub_24F92CC28();
    v16[3] = v10;
    LOBYTE(v14[0]) = 2;
    v16[4] = sub_24F92CC28();
    v16[5] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v19 = 3;
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    sub_24E61DA68(v14, v17, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E7FB760(v16, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E7FB798(v16);
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24E7FB81C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_24E7FB864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E7FB8DC()
{
  result = qword_27F21E4C0;
  if (!qword_27F21E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E4C0);
  }

  return result;
}

unint64_t sub_24E7FB934()
{
  result = qword_27F21E4C8;
  if (!qword_27F21E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E4C8);
  }

  return result;
}

unint64_t sub_24E7FB98C()
{
  result = qword_27F21E4D0;
  if (!qword_27F21E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E4D0);
  }

  return result;
}

uint64_t sub_24E7FB9E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24E7FBB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_24F4578E0(0, v1, 0);
  v2 = v29;
  v3 = a1 + 56;
  result = sub_24F92C6B8();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v27 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v28 = *(v6 + 36);
    v11 = v6;
    result = UpdateListener.RefreshDataType.rawValue.getter();
    v13 = v2;
    v30 = v2;
    v14 = *(v2 + 16);
    v15 = *(v13 + 24);
    if (v14 >= v15 >> 1)
    {
      v24 = v12;
      v25 = result;
      sub_24F4578E0((v15 > 1), v14 + 1, 1);
      v12 = v24;
      result = v25;
      v13 = v30;
    }

    *(v13 + 16) = v14 + 1;
    v16 = v13 + 16 * v14;
    *(v16 + 32) = result;
    *(v16 + 40) = v12;
    v8 = 1 << *(v11 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v11;
    v2 = v13;
    if (v28 != *(v11 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v27;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      v9 = v27;
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_24E6586A8(v5, v28, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_24E6586A8(v5, v28, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t FriendSuggestionSwooshShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = a2;
  *(v3 + 144) = a3;
  *(v3 + 128) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  *(v3 + 152) = v5;
  *(v3 + 160) = *(v5 - 8);
  *(v3 + 168) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  *(v3 + 176) = v6;
  *(v3 + 184) = *(v6 - 8);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);

  return MEMORY[0x2822009F8](sub_24E7FBEF0, 0, 0);
}

uint64_t sub_24E7FBEF0()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v17 = v0[19];
  v18 = v0[24];
  v7 = v0[17];
  v19 = v0[16];
  v8 = swift_allocObject();
  v10 = v7[1];
  v9 = v7[2];
  v11 = *v7;
  *(v8 + 64) = *(v7 + 48);
  *(v8 + 32) = v10;
  *(v8 + 48) = v9;
  *(v8 + 16) = v11;
  *(v8 + 72) = v6;
  sub_24E803650((v0 + 2), (v0 + 9));

  v12 = sub_24E802CE0(&unk_2861BF720);
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = &unk_24F95C670;
  *(v13 + 32) = v8;
  *(v13 + 40) = 257;
  type metadata accessor for GSKShelf(0);
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v17);
  sub_24F92B928();

  (*(v2 + 16))(v18, v1, v3);
  sub_24E602068(&qword_27F22D120, &qword_27F213760, qword_24F93AF80, MEMORY[0x277D857C0]);
  sub_24F9280F8();
  (*(v2 + 8))(v1, v3);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v14 - 8) + 56))(v19, 0, 1, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24E7FC16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[17] = a1;
  v7 = *(a4 + 32);
  v8 = swift_task_alloc();
  v5[20] = v8;
  *v8 = v5;
  v8[1] = sub_24E7FC228;

  return sub_24E64793C(v7, a5);
}

uint64_t sub_24E7FC228(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 168) = a1;

    return MEMORY[0x2822009F8](sub_24E7FC374, 0, 0);
  }
}

uint64_t sub_24E7FC374()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  *(v0 + 72) = *v2;
  *(v0 + 88) = *(v2 + 16);
  v3 = *(v2 + 40);
  *(v0 + 64) = *(v2 + 48);
  *(v0 + 56) = v3;
  v4 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v1;
  sub_24E614DB0(v0 + 72, v0 + 104);
  sub_24E614DB0(v0 + 88, v0 + 120);
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_24E7FC470;
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);

  return sub_24E647CF8(v7, v0 + 16, v6);
}

uint64_t sub_24E7FC470()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24E7FC5AC, 0, 0);
  }

  else
  {
    sub_24E805D8C(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24E7FC5AC()
{
  sub_24E805D8C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7FC610()
{

  return swift_deallocObject();
}

uint64_t sub_24E7FC660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 72);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E6541E4;

  return sub_24E7FC16C(a1, a2, a3, v3 + 16, v8);
}

uint64_t sub_24E7FC724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return FriendSuggestionSwooshShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24E7FC7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v72 = a6;
  v70 = a5;
  v73 = a4;
  v71 = a3;
  v67 = a1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v69 = *(v77 - 8);
  v66 = *(v69 + 64);
  MEMORY[0x28223BE20](v77);
  v68 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v59 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v75 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  sub_24F91F6A8();
  v74 = a2;
  v20 = sub_24E7FBB3C(a2);
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v21 = sub_24F9220D8();
  __swift_project_value_buffer(v21, qword_27F39E7F0);
  v64 = *(v11 + 16);
  v64(v15, v19, v10);

  v22 = sub_24F9220B8();
  v23 = sub_24F92BD98();

  v24 = os_log_type_enabled(v22, v23);
  v61 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v59 = v11;
    v26 = v25;
    v27 = swift_slowAlloc();
    v78[0] = v27;
    *v26 = 136315394;
    v28 = MEMORY[0x253050F40](v20, MEMORY[0x277D837D0]);
    v30 = v10;
    v31 = sub_24E7620D4(v28, v29, v78);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    sub_24E805788(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v32 = sub_24F92CD88();
    v34 = v33;
    v35 = *(v59 + 8);
    v62 = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = v35;
    v35(v15, v30);
    v36 = sub_24E7620D4(v32, v34, v78);
    v10 = v30;

    *(v26 + 14) = v36;
    _os_log_impl(&dword_24E5DD000, v22, v23, "[UpdateListener] Initiating stream for %s on %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v27, -1, -1);
    v37 = v26;
    v11 = v59;
    MEMORY[0x2530542D0](v37, -1, -1);
  }

  else
  {

    v38 = *(v11 + 8);
    v62 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = v38;
    v38(v15, v10);
  }

  v39 = v64;
  v40 = v65;
  v64(v65, v19, v10);
  v41 = v10;
  v42 = *(v11 + 80);
  v59 = v42 | 7;
  v60 = v19;
  v43 = swift_allocObject();
  *(v43 + 16) = v61;
  v61 = *(v11 + 32);
  v61(v43 + ((v42 + 24) & ~v42), v40, v41);
  v44 = v77;
  v45 = v67;
  sub_24F92B898();
  v46 = sub_24F92B858();
  (*(*(v46 - 8) + 56))(v76, 1, 1, v46);
  v39(v40, v19, v41);
  v47 = v68;
  v48 = v69;
  (*(v69 + 16))(v68, v45, v44);
  v49 = (v42 + 33) & ~v42;
  v50 = (v75 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + *(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v66 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v70 & 1;
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = v54;
  v61(v53 + v49, v40, v41);
  v55 = (v53 + v50);
  v56 = v73;
  *v55 = v71;
  v55[1] = v56;
  (*(v48 + 32))(v53 + v51, v47, v77);
  v57 = v53 + v52;
  *v57 = v74;
  *(v57 + 8) = v72 & 1;

  sub_24F1D3DA4(0, 0, v76, &unk_24F95C810, v53);

  return v63(v60, v41);
}

uint64_t sub_24E7FCE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v72 = a6;
  v70 = a5;
  v73 = a4;
  v71 = a3;
  v67 = a1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0, &unk_24F9C03A0);
  v69 = *(v77 - 8);
  v66 = *(v69 + 64);
  MEMORY[0x28223BE20](v77);
  v68 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v59 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v75 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  sub_24F91F6A8();
  v74 = a2;
  v20 = sub_24E7FBB3C(a2);
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v21 = sub_24F9220D8();
  __swift_project_value_buffer(v21, qword_27F39E7F0);
  v64 = *(v11 + 16);
  v64(v15, v19, v10);

  v22 = sub_24F9220B8();
  v23 = sub_24F92BD98();

  v24 = os_log_type_enabled(v22, v23);
  v61 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v59 = v11;
    v26 = v25;
    v27 = swift_slowAlloc();
    v78[0] = v27;
    *v26 = 136315394;
    v28 = MEMORY[0x253050F40](v20, MEMORY[0x277D837D0]);
    v30 = v10;
    v31 = sub_24E7620D4(v28, v29, v78);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    sub_24E805788(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v32 = sub_24F92CD88();
    v34 = v33;
    v35 = *(v59 + 8);
    v62 = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = v35;
    v35(v15, v30);
    v36 = sub_24E7620D4(v32, v34, v78);
    v10 = v30;

    *(v26 + 14) = v36;
    _os_log_impl(&dword_24E5DD000, v22, v23, "[UpdateListener] Initiating stream for %s on %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v27, -1, -1);
    v37 = v26;
    v11 = v59;
    MEMORY[0x2530542D0](v37, -1, -1);
  }

  else
  {

    v38 = *(v11 + 8);
    v62 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = v38;
    v38(v15, v10);
  }

  v39 = v64;
  v40 = v65;
  v64(v65, v19, v10);
  v41 = v10;
  v42 = *(v11 + 80);
  v59 = v42 | 7;
  v60 = v19;
  v43 = swift_allocObject();
  *(v43 + 16) = v61;
  v61 = *(v11 + 32);
  v61(v43 + ((v42 + 24) & ~v42), v40, v41);
  v44 = v77;
  v45 = v67;
  sub_24F92B898();
  v46 = sub_24F92B858();
  (*(*(v46 - 8) + 56))(v76, 1, 1, v46);
  v39(v40, v19, v41);
  v47 = v68;
  v48 = v69;
  (*(v69 + 16))(v68, v45, v44);
  v49 = (v42 + 33) & ~v42;
  v50 = (v75 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + *(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v66 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v70 & 1;
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = v54;
  v61(v53 + v49, v40, v41);
  v55 = (v53 + v50);
  v56 = v73;
  *v55 = v71;
  v55[1] = v56;
  (*(v48 + 32))(v53 + v51, v47, v77);
  v57 = v53 + v52;
  *v57 = v74;
  *(v57 + 8) = v72 & 1;

  sub_24F1D3DA4(0, 0, v76, &unk_24F95C710, v53);

  return v63(v60, v41);
}

uint64_t sub_24E7FD4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v72 = a6;
  v70 = a5;
  v73 = a4;
  v71 = a3;
  v67 = a1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5D8, &qword_24F95C7B0);
  v69 = *(v77 - 8);
  v66 = *(v69 + 64);
  MEMORY[0x28223BE20](v77);
  v68 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v59 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v75 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  sub_24F91F6A8();
  v74 = a2;
  v20 = sub_24E7FBB3C(a2);
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v21 = sub_24F9220D8();
  __swift_project_value_buffer(v21, qword_27F39E7F0);
  v64 = *(v11 + 16);
  v64(v15, v19, v10);

  v22 = sub_24F9220B8();
  v23 = sub_24F92BD98();

  v24 = os_log_type_enabled(v22, v23);
  v61 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v59 = v11;
    v26 = v25;
    v27 = swift_slowAlloc();
    v78[0] = v27;
    *v26 = 136315394;
    v28 = MEMORY[0x253050F40](v20, MEMORY[0x277D837D0]);
    v30 = v10;
    v31 = sub_24E7620D4(v28, v29, v78);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    sub_24E805788(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v32 = sub_24F92CD88();
    v34 = v33;
    v35 = *(v59 + 8);
    v62 = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = v35;
    v35(v15, v30);
    v36 = sub_24E7620D4(v32, v34, v78);
    v10 = v30;

    *(v26 + 14) = v36;
    _os_log_impl(&dword_24E5DD000, v22, v23, "[UpdateListener] Initiating stream for %s on %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v27, -1, -1);
    v37 = v26;
    v11 = v59;
    MEMORY[0x2530542D0](v37, -1, -1);
  }

  else
  {

    v38 = *(v11 + 8);
    v62 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = v38;
    v38(v15, v10);
  }

  v39 = v64;
  v40 = v65;
  v64(v65, v19, v10);
  v41 = v10;
  v42 = *(v11 + 80);
  v59 = v42 | 7;
  v60 = v19;
  v43 = swift_allocObject();
  *(v43 + 16) = v61;
  v61 = *(v11 + 32);
  v61(v43 + ((v42 + 24) & ~v42), v40, v41);
  v44 = v77;
  v45 = v67;
  sub_24F92B898();
  v46 = sub_24F92B858();
  (*(*(v46 - 8) + 56))(v76, 1, 1, v46);
  v39(v40, v19, v41);
  v47 = v68;
  v48 = v69;
  (*(v69 + 16))(v68, v45, v44);
  v49 = (v42 + 33) & ~v42;
  v50 = (v75 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + *(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v66 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v70 & 1;
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = v54;
  v61(v53 + v49, v40, v41);
  v55 = (v53 + v50);
  v56 = v73;
  *v55 = v71;
  v55[1] = v56;
  (*(v48 + 32))(v53 + v51, v47, v77);
  v57 = v53 + v52;
  *v57 = v74;
  *(v57 + 8) = v72 & 1;

  sub_24F1D3DA4(0, 0, v76, &unk_24F95C7C0, v53);

  return v63(v60, v41);
}

uint64_t sub_24E7FDB30(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 137) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_24F91F6B8();
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7FDC9C, 0, 0);
}

uint64_t sub_24E7FDC9C()
{
  v30 = v0;
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 24);
  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E7F0);
  (*(v2 + 16))(v1, v4, v3);

  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 96);
  if (v8)
  {
    v12 = *(v0 + 137);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    v29 = v12;
    updated = UpdateListener.RefreshDataType.rawValue.getter();
    v17 = sub_24E7620D4(updated, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_24E805788(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_24F92CD88();
    v20 = v19;
    (*(v10 + 8))(v9, v11);
    v21 = sub_24E7620D4(v18, v20, &v28);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_24E5DD000, v6, v7, "[UpdateListener] Firing update for %s on %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 137);
  v27 = (v22 + *v22);
  v23 = swift_task_alloc();
  *(v0 + 120) = v23;
  *v23 = v0;
  v23[1] = sub_24E7FDFD8;
  v24 = *(v0 + 88);
  v25 = *(v0 + 16);

  return v27(v24, v0 + 136, v25);
}

uint64_t sub_24E7FDFD8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E805DF4;
  }

  else
  {
    v2 = sub_24E7FE0EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7FE0EC()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_24E614E60(v1, v0[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  (*(v3 + 8))(v2, v4);
  sub_24E614EC4(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24E7FE1E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 121) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E500, qword_24F9C03B0);
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  v8 = sub_24F91F6B8();
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 - 8);
  *(v6 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7FE314, 0, 0);
}

uint64_t sub_24E7FE314()
{
  v28 = v0;
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 24);
  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E7F0);
  (*(v2 + 16))(v1, v4, v3);

  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);
  if (v8)
  {
    v12 = *(v0 + 121);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315394;
    v27 = v12;
    updated = UpdateListener.RefreshDataType.rawValue.getter();
    v17 = sub_24E7620D4(updated, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_24E805788(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_24F92CD88();
    v20 = v19;
    (*(v10 + 8))(v9, v11);
    v21 = sub_24E7620D4(v18, v20, &v26);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_24E5DD000, v6, v7, "[UpdateListener] Firing update for %s on %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 121);
  v25 = (v22 + *v22);
  v23 = swift_task_alloc();
  *(v0 + 104) = v23;
  *v23 = v0;
  v23[1] = sub_24E7FE648;

  return v25();
}

uint64_t sub_24E7FE648()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E7FE81C;
  }

  else
  {
    v2 = sub_24E7FE75C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7FE75C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0, &unk_24F9C03A0);
  sub_24F92B8C8();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E7FE81C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E7FE88C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 137) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E0, &qword_24F95C7C8);
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8, &qword_24F95C7D0);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_24F91F6B8();
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7FEA04, 0, 0);
}

uint64_t sub_24E7FEA04()
{
  v30 = v0;
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 24);
  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E7F0);
  (*(v2 + 16))(v1, v4, v3);

  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 96);
  if (v8)
  {
    v12 = *(v0 + 137);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    v29 = v12;
    updated = UpdateListener.RefreshDataType.rawValue.getter();
    v17 = sub_24E7620D4(updated, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_24E805788(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_24F92CD88();
    v20 = v19;
    (*(v10 + 8))(v9, v11);
    v21 = sub_24E7620D4(v18, v20, &v28);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_24E5DD000, v6, v7, "[UpdateListener] Firing update for %s on %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 137);
  v27 = (v22 + *v22);
  v23 = swift_task_alloc();
  *(v0 + 120) = v23;
  *v23 = v0;
  v23[1] = sub_24E7FED40;
  v24 = *(v0 + 88);
  v25 = *(v0 + 16);

  return v27(v24, v0 + 136, v25);
}

uint64_t sub_24E7FED40()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E7FEF48;
  }

  else
  {
    v2 = sub_24E7FEE54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7FEE54()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_24E805510(v1, v0[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5D8, &qword_24F95C7B0);
  sub_24F92B8C8();
  (*(v3 + 8))(v2, v4);
  sub_24E805580(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24E7FEF48()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_24E7FEFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v59 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v58 = &v51 - v14;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v55 = v17;
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v51 - v24;
  (*(v22 + 16))(&v51 - v24, a1, v21, v23);
  v26 = (*(v22 + 88))(v25, v21);
  if (v26 == *MEMORY[0x277D85738])
  {
    v27 = 0xE800000000000000;
    v28 = 0x64656873696E6966;
  }

  else if (v26 == *MEMORY[0x277D85740])
  {
    v27 = 0xE900000000000064;
    v28 = 0x656C6C65636E6163;
  }

  else
  {
    (*(v22 + 8))(v25, v21);
    v27 = 0xE700000000000000;
    v28 = 0x6E776F6E6B6E75;
  }

  v53 = v28;
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v29 = sub_24F9220D8();
  __swift_project_value_buffer(v29, qword_27F39E7F0);
  v30 = *(v16 + 16);
  v57 = a3;
  v54 = v30;
  v30(v20, a3, v15);

  v31 = sub_24F9220B8();
  v32 = sub_24F92BD98();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v51 = v20;
    v34 = v33;
    v52 = swift_slowAlloc();
    v60 = v52;
    *v34 = 136315650;
    v35 = sub_24E7620D4(v53, v27, &v60);

    *(v34 + 4) = v35;
    *(v34 + 12) = 2080;
    v36 = MEMORY[0x253050F40](a2, MEMORY[0x277D837D0]);
    v38 = sub_24E7620D4(v36, v37, &v60);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2080;
    sub_24E805788(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v39 = v51;
    v40 = sub_24F92CD88();
    v42 = v41;
    (*(v16 + 8))(v39, v15);
    v43 = sub_24E7620D4(v40, v42, &v60);

    *(v34 + 24) = v43;
    _os_log_impl(&dword_24E5DD000, v31, v32, "[UpdateListener] Terminating stream with reason '%s' for %s on %s", v34, 0x20u);
    v44 = v52;
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v44, -1, -1);
    MEMORY[0x2530542D0](v34, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v20, v15);
  }

  v45 = sub_24F92B858();
  v46 = v58;
  (*(*(v45 - 8) + 56))(v58, 1, 1, v45);
  v47 = v56;
  v54(v56, v57, v15);
  v48 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  (*(v16 + 32))(v49 + v48, v47, v15);
  sub_24EA998B8(0, 0, v46, a7, v49);

  return result;
}

uint64_t sub_24E7FF58C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 251) = v16;
  *(v8 + 56) = a8;
  *(v8 + 64) = v15;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 32) = a5;
  *(v8 + 250) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v10 = sub_24F91F6B8();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40, &unk_24F95C720);
  *(v8 + 136) = v11;
  *(v8 + 144) = *(v11 - 8);
  *(v8 + 152) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508, &unk_24F9C0390);
  *(v8 + 160) = v12;
  *(v8 + 168) = *(v12 - 8);
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E7FF7D8, 0, 0);
}

uint64_t sub_24E7FF7D8()
{
  if (*(v0 + 250) == 1)
  {
    v1 = sub_24E608210(MEMORY[0x277D84F90]);
    *(v0 + 184) = v1;
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_24E7FF8CC;
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);

    return sub_24E7FDB30(28, v1, v5, v6, v3, v4);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E7FF9E8, 0, 0);
  }
}

uint64_t sub_24E7FF8CC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_24E805DE0;
  }

  else
  {

    v2 = sub_24E7FF9E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E7FF9E8()
{
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 251);
  v2 = qword_27F252DD0;
  *(v0 + 208) = qword_27F252DD0;
  *(v0 + 248) = v1 & 1;

  return MEMORY[0x2822009F8](sub_24E7FFA8C, v2, 0);
}

uint64_t sub_24E7FFA8C()
{
  sub_24F83EC44(*(v0 + 64), *(v0 + 32), (v0 + 248));

  return MEMORY[0x2822009F8](sub_24E7FFB04, 0, 0);
}

uint64_t sub_24E7FFB04()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_24E7FFBE0;
  v5 = v0[20];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_24E7FFBE0()
{

  return MEMORY[0x2822009F8](sub_24E7FFCDC, 0, 0);
}

uint64_t sub_24E7FFCDC()
{
  v31 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 224) = v1;
  if (v1)
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    v6 = *(v0 + 32);
    v7 = sub_24F9220D8();
    __swift_project_value_buffer(v7, qword_27F39E7F0);
    (*(v4 + 16))(v3, v6, v5);

    v8 = sub_24F9220B8();
    v9 = sub_24F92BD98();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    v13 = *(v0 + 112);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v14 = 136315394;
      v30 = v2;
      updated = UpdateListener.RefreshDataType.rawValue.getter();
      v27 = v2;
      v17 = sub_24E7620D4(updated, v16, &v29);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      sub_24E805788(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_24F92CD88();
      v2 = v19;
      (*(v11 + 8))(v12, v13);
      v20 = sub_24E7620D4(v18, v2, &v29);
      LOBYTE(v2) = v27;

      *(v14 + 14) = v20;
      _os_log_impl(&dword_24E5DD000, v8, v9, "[UpdateListener] Firing update for %s on %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v26, -1, -1);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
    }

    v23 = *(v0 + 40);
    *(v0 + 249) = v2;
    v28 = (v23 + *v23);
    v24 = swift_task_alloc();
    *(v0 + 232) = v24;
    *v24 = v0;
    v24[1] = sub_24E8000C4;
    v25 = *(v0 + 104);

    return v28(v25, v0 + 249, v1);
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_24E8000C4()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_24E805DF8;
  }

  else
  {
    v2 = sub_24E8001D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8001D8()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  sub_24E614E60(v1, v0[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  (*(v3 + 8))(v2, v4);
  sub_24E614EC4(v1);

  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_24E7FFBE0;
  v6 = v0[20];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v6);
}

uint64_t sub_24E800304(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 235) = v16;
  *(v8 + 56) = a8;
  *(v8 + 64) = v15;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 32) = a5;
  *(v8 + 234) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E500, qword_24F9C03B0);
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  v10 = sub_24F91F6B8();
  *(v8 + 96) = v10;
  *(v8 + 104) = *(v10 - 8);
  *(v8 + 112) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40, &unk_24F95C720);
  *(v8 + 120) = v11;
  *(v8 + 128) = *(v11 - 8);
  *(v8 + 136) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508, &unk_24F9C0390);
  *(v8 + 144) = v12;
  *(v8 + 152) = *(v12 - 8);
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E800518, 0, 0);
}

uint64_t sub_24E800518()
{
  if (*(v0 + 234) == 1)
  {
    v1 = sub_24E608210(MEMORY[0x277D84F90]);
    *(v0 + 168) = v1;
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_24E80060C;
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);

    return sub_24E7FE1E0(28, v1, v5, v6, v3, v4);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E8007C0, 0, 0);
  }
}

uint64_t sub_24E80060C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24E800728;
  }

  else
  {

    v2 = sub_24E8007C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E800728()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E8007C0()
{
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 235);
  v2 = qword_27F252DD0;
  *(v0 + 192) = qword_27F252DD0;
  *(v0 + 232) = v1 & 1;

  return MEMORY[0x2822009F8](sub_24E800864, v2, 0);
}

uint64_t sub_24E800864()
{
  sub_24F83EC44(*(v0 + 64), *(v0 + 32), (v0 + 232));

  return MEMORY[0x2822009F8](sub_24E8008DC, 0, 0);
}

uint64_t sub_24E8008DC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_24E8009B8;
  v5 = v0[18];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_24E8009B8()
{

  return MEMORY[0x2822009F8](sub_24E800AB4, 0, 0);
}

uint64_t sub_24E800AB4()
{
  v30 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 208) = v1;
  if (v1)
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    v6 = *(v0 + 32);
    v7 = sub_24F9220D8();
    __swift_project_value_buffer(v7, qword_27F39E7F0);
    (*(v4 + 16))(v3, v6, v5);

    v8 = sub_24F9220B8();
    v9 = sub_24F92BD98();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v14 = 136315394;
      v29 = v2;
      updated = UpdateListener.RefreshDataType.rawValue.getter();
      v26 = v2;
      v17 = sub_24E7620D4(updated, v16, &v28);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      sub_24E805788(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_24F92CD88();
      v2 = v19;
      (*(v11 + 8))(v12, v13);
      v20 = sub_24E7620D4(v18, v2, &v28);
      LOBYTE(v2) = v26;

      *(v14 + 14) = v20;
      _os_log_impl(&dword_24E5DD000, v8, v9, "[UpdateListener] Firing update for %s on %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v25, -1, -1);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
    }

    v23 = *(v0 + 40);
    *(v0 + 233) = v2;
    v27 = (v23 + *v23);
    v24 = swift_task_alloc();
    *(v0 + 216) = v24;
    *v24 = v0;
    v24[1] = sub_24E800E80;

    return v27();
  }

  else
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_24E800E80()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_24E80109C;
  }

  else
  {
    v2 = sub_24E800F94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E800F94()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0, &unk_24F9C03A0);
  sub_24F92B8C8();
  (*(v2 + 8))(v1, v3);

  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_24E8009B8;
  v5 = v0[18];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_24E80109C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E801154(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 251) = v16;
  *(v8 + 56) = a8;
  *(v8 + 64) = v15;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 32) = a5;
  *(v8 + 250) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E0, &qword_24F95C7C8);
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8, &qword_24F95C7D0);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v10 = sub_24F91F6B8();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40, &unk_24F95C720);
  *(v8 + 136) = v11;
  *(v8 + 144) = *(v11 - 8);
  *(v8 + 152) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508, &unk_24F9C0390);
  *(v8 + 160) = v12;
  *(v8 + 168) = *(v12 - 8);
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E8013AC, 0, 0);
}

uint64_t sub_24E8013AC()
{
  if (*(v0 + 250) == 1)
  {
    v1 = sub_24E608210(MEMORY[0x277D84F90]);
    *(v0 + 184) = v1;
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_24E8014A0;
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);

    return sub_24E7FE88C(28, v1, v5, v6, v3, v4);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E801670, 0, 0);
  }
}

uint64_t sub_24E8014A0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_24E8015BC;
  }

  else
  {

    v2 = sub_24E801670;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8015BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E801670()
{
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 251);
  v2 = qword_27F252DD0;
  *(v0 + 208) = qword_27F252DD0;
  *(v0 + 248) = v1 & 1;

  return MEMORY[0x2822009F8](sub_24E801714, v2, 0);
}

uint64_t sub_24E801714()
{
  sub_24F83EC44(*(v0 + 64), *(v0 + 32), (v0 + 248));

  return MEMORY[0x2822009F8](sub_24E80178C, 0, 0);
}

uint64_t sub_24E80178C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_24E801868;
  v5 = v0[20];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_24E801868()
{

  return MEMORY[0x2822009F8](sub_24E801964, 0, 0);
}

uint64_t sub_24E801964()
{
  v31 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 224) = v1;
  if (v1)
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    v6 = *(v0 + 32);
    v7 = sub_24F9220D8();
    __swift_project_value_buffer(v7, qword_27F39E7F0);
    (*(v4 + 16))(v3, v6, v5);

    v8 = sub_24F9220B8();
    v9 = sub_24F92BD98();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    v13 = *(v0 + 112);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v14 = 136315394;
      v30 = v2;
      updated = UpdateListener.RefreshDataType.rawValue.getter();
      v27 = v2;
      v17 = sub_24E7620D4(updated, v16, &v29);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      sub_24E805788(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_24F92CD88();
      v2 = v19;
      (*(v11 + 8))(v12, v13);
      v20 = sub_24E7620D4(v18, v2, &v29);
      LOBYTE(v2) = v27;

      *(v14 + 14) = v20;
      _os_log_impl(&dword_24E5DD000, v8, v9, "[UpdateListener] Firing update for %s on %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v26, -1, -1);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
    }

    v23 = *(v0 + 40);
    *(v0 + 249) = v2;
    v28 = (v23 + *v23);
    v24 = swift_task_alloc();
    *(v0 + 232) = v24;
    *v24 = v0;
    v24[1] = sub_24E801D4C;
    v25 = *(v0 + 104);

    return v28(v25, v0 + 249, v1);
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_24E801D4C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_24E801F8C;
  }

  else
  {
    v2 = sub_24E801E60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E801E60()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  sub_24E805510(v1, v0[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5D8, &qword_24F95C7B0);
  sub_24F92B8C8();
  (*(v3 + 8))(v2, v4);
  sub_24E805580(v1);

  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_24E801868;
  v6 = v0[20];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v6);
}

uint64_t sub_24E801F8C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E802060(uint64_t a1)
{
  v2 = sub_24F92A2C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5C0, &qword_24F95C7A8);
    v9 = sub_24F92C838();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_24E805788(&qword_27F21E5C8, MEMORY[0x277D22320], MEMORY[0x277D22328]);
      v16 = sub_24F92AEE8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_24E805788(&qword_27F21E5D0, MEMORY[0x277D22320], MEMORY[0x277D22330]);
          v23 = sub_24F92AFF8();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24E802380(uint64_t a1)
{
  v2 = sub_24F9287F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E600, &unk_24F95C7F8);
    v9 = sub_24F92C838();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_24E805788(&qword_27F21E608, MEMORY[0x277D21BE0], MEMORY[0x277D21BE8]);
      v16 = sub_24F92AEE8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_24E805788(&qword_27F21E610, MEMORY[0x277D21BE0], MEMORY[0x277D21BF0]);
          v23 = sub_24F92AFF8();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24E8026A0(uint64_t a1)
{
  v2 = sub_24F91F898();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5A0, &qword_24F95C798);
    v9 = sub_24F92C838();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_24E805788(&qword_27F21E5A8, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_24F92AEE8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_24E805788(&qword_27F21E5B0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_24F92AFF8();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24E8029C0(uint64_t a1)
{
  v2 = sub_24F924AD8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4D8, &qword_24F95C700);
    v9 = sub_24F92C838();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_24E805788(&qword_27F21E4E0, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
      v16 = sub_24F92AEE8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_24E805788(&qword_27F21E4E8, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
          v23 = sub_24F92AFF8();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24E802CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E620, &qword_24F95C838);
  v3 = sub_24F92C838();
  v4 = 0;
  v5 = v3 + 56;
  v31 = a1 + 32;
  do
  {
    v6 = *(v31 + v4);
    sub_24F92D068();
    UpdateListener.RefreshDataType.rawValue.getter();
    sub_24F92B218();

    v7 = sub_24F92D0B8();
    v8 = ~(-1 << *(v3 + 32));
    v9 = v7 & v8;
    v10 = (v7 & v8) >> 6;
    v11 = *(v5 + 8 * v10);
    v12 = 1 << (v7 & v8);
    if ((v12 & v11) != 0)
    {
      while (1)
      {
        v13 = 0xE300000000000000;
        v14 = 7105633;
        switch(*(*(v3 + 48) + v9))
        {
          case 1:
            v14 = 0x676E656C6C616863;
            v13 = 0xEA00000000007365;
            break;
          case 2:
            v13 = 0xE700000000000000;
            v14 = 0x73646E65697266;
            break;
          case 3:
            v14 = 0x6552646E65697266;
            v13 = 0xEE00737473657571;
            break;
          case 4:
            v14 = 0xD000000000000015;
            v13 = 0x800000024FA41B30;
            break;
          case 5:
            v13 = 0xE500000000000000;
            v14 = 0x73656D6167;
            break;
          case 6:
            v13 = 0xE800000000000000;
            v14 = 0x73656C69666F7270;
            break;
          case 7:
            v13 = 0xE700000000000000;
            v14 = 0x73726579616C70;
            break;
          case 8:
            v14 = 0x6D65766569686361;
            v15 = 1937010277;
            goto LABEL_36;
          case 9:
            v14 = 0x6F6272656461656CLL;
            v15 = 1935962721;
            goto LABEL_36;
          case 0xA:
            v13 = 0xE500000000000000;
            v14 = 0x6F746F6870;
            break;
          case 0xB:
            v14 = 0x6F6272656461656CLL;
            v13 = 0xEF73746553647261;
            break;
          case 0xC:
            v14 = 0x6E65726566657270;
            v13 = 0xEB00000000736563;
            break;
          case 0xD:
            v13 = 0xE600000000000000;
            v14 = 0x7365726F6373;
            break;
          case 0xE:
            v13 = 0xE500000000000000;
            v14 = 0x736E727574;
            break;
          case 0xF:
            v14 = 0x73736553656D6167;
            goto LABEL_35;
          case 0x10:
            v13 = 0xE700000000000000;
            v14 = 0x73726174617661;
            break;
          case 0x11:
            v14 = 0x50656C69666F7270;
            v13 = 0xEE00796361766972;
            break;
          case 0x12:
            v14 = 0xD00000000000001ALL;
            v13 = 0x800000024FA41BD0;
            break;
          case 0x13:
            v14 = 0xD000000000000014;
            v13 = 0x800000024FA41BF0;
            break;
          case 0x14:
            v14 = 0x796C746E65636572;
            v13 = 0xEE00646579616C50;
            break;
          case 0x15:
            v14 = 0xD00000000000001DLL;
            v13 = 0x800000024FA41C10;
            break;
          case 0x16:
            v14 = 0x4D707041656D6167;
            v13 = 0xEF61746164617465;
            break;
          case 0x17:
            v14 = 0x7262694C656D6167;
            v13 = 0xEB00000000797261;
            break;
          case 0x18:
            v14 = 0xD000000000000014;
            v13 = 0x800000024FA41C50;
            break;
          case 0x19:
            v14 = 0xD000000000000012;
            v13 = 0x800000024FA41C70;
            break;
          case 0x1A:
            v14 = 0x7463697274736572;
LABEL_35:
            v15 = 1936617321;
LABEL_36:
            v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x1B:
            v14 = 0xD000000000000010;
            v13 = 0x800000024FA41C90;
            break;
          case 0x1C:
            v13 = 0xE700000000000000;
            v14 = 0x6C616974696E69;
            break;
          default:
            break;
        }

        v16 = 0xE300000000000000;
        v17 = 7105633;
        switch(v6)
        {
          case 1:
            v16 = 0xEA00000000007365;
            if (v14 == 0x676E656C6C616863)
            {
              goto LABEL_87;
            }

            goto LABEL_88;
          case 2:
            v16 = 0xE700000000000000;
            v18 = 0x646E65697266;
            goto LABEL_58;
          case 3:
            v24 = 0x6552646E65697266;
            v25 = 0x737473657571;
            goto LABEL_62;
          case 4:
            v16 = 0x800000024FA41B30;
            if (v14 != 0xD000000000000015)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 5:
            v16 = 0xE500000000000000;
            v19 = 1701667175;
            goto LABEL_65;
          case 6:
            v16 = 0xE800000000000000;
            if (v14 != 0x73656C69666F7270)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 7:
            v16 = 0xE700000000000000;
            v18 = 0x726579616C70;
            goto LABEL_58;
          case 8:
            v22 = 0x6D65766569686361;
            v23 = 1937010277;
            goto LABEL_93;
          case 9:
            v22 = 0x6F6272656461656CLL;
            v23 = 1935962721;
            goto LABEL_93;
          case 10:
            v16 = 0xE500000000000000;
            if (v14 != 0x6F746F6870)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 11:
            v16 = 0xEF73746553647261;
            if (v14 != 0x6F6272656461656CLL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 12:
            v20 = 0x6E65726566657270;
            v21 = 7562595;
            goto LABEL_83;
          case 13:
            v16 = 0xE600000000000000;
            if (v14 != 0x7365726F6373)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 14:
            v16 = 0xE500000000000000;
            v19 = 1852994932;
LABEL_65:
            if (v14 != (v19 & 0xFFFF0000FFFFFFFFLL | 0x7300000000))
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 15:
            v22 = 0x73736553656D6167;
            goto LABEL_92;
          case 16:
            v16 = 0xE700000000000000;
            v18 = 0x726174617661;
LABEL_58:
            if (v14 != (v18 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 17:
            v24 = 0x50656C69666F7270;
            v25 = 0x796361766972;
            goto LABEL_62;
          case 18:
            v16 = 0x800000024FA41BD0;
            if (v14 != 0xD00000000000001ALL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 19:
            v16 = 0x800000024FA41BF0;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 20:
            v24 = 0x796C746E65636572;
            v25 = 0x646579616C50;
LABEL_62:
            v16 = v25 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v14 != v24)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 21:
            v16 = 0x800000024FA41C10;
            if (v14 != 0xD00000000000001DLL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 22:
            v16 = 0xEF61746164617465;
            if (v14 != 0x4D707041656D6167)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 23:
            v20 = 0x7262694C656D6167;
            v21 = 7959137;
LABEL_83:
            v16 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v14 != v20)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 24:
            v16 = 0x800000024FA41C50;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 25:
            v16 = 0x800000024FA41C70;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 26:
            v22 = 0x7463697274736572;
LABEL_92:
            v23 = 1936617321;
LABEL_93:
            v16 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v14 != v22)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 27:
            v16 = 0x800000024FA41C90;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 28:
            v16 = 0xE700000000000000;
            v17 = 0x6C616974696E69;
            goto LABEL_86;
          default:
LABEL_86:
            if (v14 != v17)
            {
              goto LABEL_88;
            }

LABEL_87:
            if (v13 == v16)
            {

              goto LABEL_4;
            }

LABEL_88:
            v26 = sub_24F92CE08();

            if (v26)
            {
              goto LABEL_4;
            }

            v9 = (v9 + 1) & v8;
            v10 = v9 >> 6;
            v11 = *(v5 + 8 * (v9 >> 6));
            v12 = 1 << v9;
            if ((v11 & (1 << v9)) == 0)
            {
              goto LABEL_95;
            }

            break;
        }
      }
    }

LABEL_95:
    *(v5 + 8 * v10) = v11 | v12;
    *(*(v3 + 48) + v9) = v6;
    v27 = *(v3 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      __break(1u);
      JUMPOUT(0x24E803568);
    }

    *(v3 + 16) = v29;
LABEL_4:
    ++v4;
  }

  while (v4 != v1);
  return v3;
}

uint64_t sub_24E803718(uint64_t a1)
{
  v3 = *(sub_24F91F6B8() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0, &unk_24F9C03A0) - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v1 + 24);
  v15 = *(v1 + 16);
  v9 = *(v1 + 32);
  v10 = v1 + v5;
  v11 = *(v1 + v5);
  v12 = *(v10 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24E6541E4;

  return sub_24E800304(a1, v15, v8, v9, v1 + v4, v11, v12, v1 + v7);
}

uint64_t sub_24E8038EC(uint64_t a1)
{
  v4 = *(sub_24F91F6B8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F5E6178(a1, v6, v7, v1 + v5);
}

uint64_t sub_24E8039DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E558, &qword_24F95C760);
    v3 = sub_24F92C838();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_24F92D068();

      sub_24F92B218();
      result = sub_24F92D0B8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_24F92CE08();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24E803B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E598, &qword_24F95C790);
    v3 = sub_24F92C838();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_24F92B0D8();
      sub_24F92D068();
      v27 = v7;
      sub_24F92B218();
      v8 = sub_24F92D0B8();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_24F92B0D8();
        v18 = v17;
        if (v16 == sub_24F92B0D8() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_24F92CE08();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24E803D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8, &qword_24F95C7A0);
    v3 = sub_24F92C838();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_24E65864C(v6 + 40 * v4, v19);
      result = sub_24F92C7B8();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_24E65864C(*(v3 + 48) + 40 * i, v18);
        v11 = MEMORY[0x253052150](v18, v19);
        result = sub_24E6585F8(v18);
        if (v11)
        {
          sub_24E6585F8(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24E803E98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5F8, &qword_24F95C7F0);
    v3 = sub_24F92C838();
    v4 = 0;
    v43 = v3 + 56;
    v38 = v1;
    v39 = a1 + 32;
    v37 = v3;
    while (1)
    {
      v5 = (v39 + (v4 << 6));
      v6 = v5[3];
      v47 = v5[2];
      v48 = v6;
      v7 = v5[1];
      v45 = *v5;
      v46 = v7;
      v8 = v45;
      sub_24F92D068();
      sub_24F92D088();
      sub_24E8056D8(&v45, v44);
      if (*(&v8 + 1))
      {
        sub_24F92B218();
      }

      v9 = v47;
      v41 = *(&v46 + 1);
      v42 = v46;
      sub_24F92B218();
      sub_24F92D088();
      if (*(&v9 + 1))
      {
        sub_24F92B218();
      }

      v10 = v48;
      if (*(&v48 + 1))
      {
        sub_24F92D088();
        sub_24F92B218();
      }

      else
      {
        sub_24F92D088();
      }

      result = sub_24F92D0B8();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v43 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      v17 = *(v3 + 48);
      if (((1 << v13) & v15) != 0)
      {
        break;
      }

LABEL_43:
      *(v43 + 8 * v14) = v15 | v16;
      v30 = (v17 + (v13 << 6));
      v31 = v45;
      v32 = v46;
      v33 = v48;
      v30[2] = v47;
      v30[3] = v33;
      *v30 = v31;
      v30[1] = v32;
      v34 = *(v3 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v36;
LABEL_45:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v40 = v4;
    v18 = ~v12;
    while (1)
    {
      v19 = (v17 + (v13 << 6));
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v23 = v19[4];
      v25 = v19[5];
      v24 = v19[6];
      v26 = v19[7];
      if (v20)
      {
        if (!*(&v8 + 1))
        {
          goto LABEL_13;
        }

        result = *v19;
        if (*v19 != v8 || v20 != *(&v8 + 1))
        {
          result = sub_24F92CE08();
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (*(&v8 + 1))
      {
        goto LABEL_13;
      }

      v28 = v21 == v42 && v22 == v41;
      if (v28 || (result = sub_24F92CE08(), (result & 1) != 0))
      {
        if (v25)
        {
          if (*(&v9 + 1))
          {
            v29 = v23 == v9 && v25 == *(&v9 + 1);
            if (v29 || (result = sub_24F92CE08(), (result & 1) != 0))
            {
LABEL_35:
              if (v26)
              {
                if (*(&v10 + 1))
                {
                  if (__PAIR128__(v26, v24) == v10 || (result = sub_24F92CE08(), (result & 1) != 0))
                  {
LABEL_41:
                    sub_24E805734(&v45);
                    v3 = v37;
                    v1 = v38;
                    v4 = v40;
                    goto LABEL_45;
                  }
                }
              }

              else if (!*(&v10 + 1))
              {
                goto LABEL_41;
              }
            }
          }
        }

        else if (!*(&v9 + 1))
        {
          goto LABEL_35;
        }
      }

LABEL_13:
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = *(v43 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if ((v15 & (1 << v13)) == 0)
      {
        v3 = v37;
        v1 = v38;
        v17 = *(v37 + 48);
        v4 = v40;
        goto LABEL_43;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24E8041F8(uint64_t a1)
{
  v2 = sub_24F927D58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E528, &qword_24F95C750);
    v9 = sub_24F92C838();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_24E805788(&qword_27F21E530, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
      v16 = sub_24F92AEE8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_24E805788(&qword_27F21E538, MEMORY[0x277CEC160], MEMORY[0x277CEC170]);
          v23 = sub_24F92AFF8();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24E804518(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E560, &qword_24F95C768);
    v3 = sub_24F92C838();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_24F92D068();

      sub_24F92B218();
      result = sub_24F92D0B8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_24F92CE08();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24E804680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E588, &qword_24F95C780);
    v3 = sub_24F92C838();
    v4 = 0;
    v5 = v3 + 56;
    v6 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = *(a1 + 32 + 8 * v4);
      result = sub_24F92D058();
      v12 = result & v6;
      v13 = (result & v6) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v6);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (*(v16 + 8 * v12) != v10)
        {
          v12 = (v12 + 1) & v6;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24E8047A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E568, &qword_24F95C770);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v29 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E570, &qword_24F95C778);
    v9 = sub_24F92C838();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v34 = v12;
    v35 = v9 + 56;
    v32 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v30 = v8;
    v31 = (v11 + 16);
    while (1)
    {
      v33 = v10;
      v34(v36, v32 + v13 * v10, v2);
      sub_24E602068(&qword_27F21E578, &qword_27F21E568, &qword_24F95C770, MEMORY[0x277CEE0F0]);
      v15 = sub_24F92AEE8();
      v16 = ~(-1 << *(v9 + 32));
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = *(v35 + 8 * v18);
      v20 = 1 << (v15 & v16);
      if ((v20 & v19) != 0)
      {
        do
        {
          v21 = v11;
          v34(v5, *(v9 + 48) + v17 * v13, v2);
          sub_24E602068(&qword_27F21E580, &qword_27F21E568, &qword_24F95C770, MEMORY[0x277CEE0F8]);
          v22 = sub_24F92AFF8();
          v23 = *v14;
          (*v14)(v5, v2);
          if (v22)
          {
            v23(v36, v2);
            v11 = v21;
            v8 = v30;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v16;
          v18 = v17 >> 6;
          v19 = *(v35 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v21;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v30;
      }

      v24 = v36;
      *(v35 + 8 * v18) = v20 | v19;
      result = (*v31)(*(v9 + 48) + v17 * v13, v24, v2);
      v26 = *(v9 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v9 + 16) = v28;
LABEL_4:
      v10 = v33 + 1;
      if (v33 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_24E804ACC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_24F92C738())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E518, &qword_24F95C748);
      v3 = sub_24F92C838();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_24F92C738();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    v8 = MEMORY[0x253052270](v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_24F922F88();
    sub_24E805788(&unk_27F23B790, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    v10 = sub_24F92AEE8();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_24E805788(&qword_27F21E520, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        if (sub_24F92AFF8())
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_24E804D60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E590, &qword_24F95C788);
    v3 = sub_24F92C838();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_24F92D068();
      MEMORY[0x253052A00](v10);
      result = sub_24F92D0B8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24E804E9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E628, &unk_24F95C840);
    v3 = sub_24F92C838();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_24F92D068();
      MEMORY[0x253052A00](v10);
      result = sub_24F92D0B8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24E804FD8(uint64_t a1)
{
  v2 = sub_24F927B58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E540, &qword_24F95C758);
    v9 = sub_24F92C838();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_24E805788(&qword_27F21E548, MEMORY[0x277CEC000], MEMORY[0x277CEC008]);
      v16 = sub_24F92AEE8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_24E805788(&qword_27F21E550, MEMORY[0x277CEC000], MEMORY[0x277CEC010]);
          v23 = sub_24F92AFF8();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24E805340(uint64_t a1)
{
  v3 = *(sub_24F91F6B8() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5D8, &qword_24F95C7B0) - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v1 + 24);
  v15 = *(v1 + 16);
  v9 = *(v1 + 32);
  v10 = v1 + v5;
  v11 = *(v1 + v5);
  v12 = *(v10 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24E614970;

  return sub_24E801154(a1, v15, v8, v9, v1 + v4, v11, v12, v1 + v7);
}

uint64_t sub_24E805510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8, &qword_24F95C7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E805580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8, &qword_24F95C7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E8055E8(uint64_t a1)
{
  v4 = *(sub_24F91F6B8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F5E6178(a1, v6, v7, v1 + v5);
}

uint64_t sub_24E805788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_7Tm()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(v9 - 8);
  v11 = (v8 + *(v10 + 80) + 16) & ~*(v10 + 80);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v2 + v7, v5);

  (*(v10 + 8))(v2 + v11, v9);

  return swift_deallocObject();
}

uint64_t sub_24E805AF8(uint64_t a1)
{
  v3 = *(sub_24F91F6B8() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v1 + 24);
  v15 = *(v1 + 16);
  v9 = *(v1 + 32);
  v10 = v1 + v5;
  v11 = *(v1 + v5);
  v12 = *(v10 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24E6541E4;

  return sub_24E7FF58C(a1, v15, v8, v9, v1 + v4, v11, v12, v1 + v7);
}

uint64_t objectdestroy_20Tm()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t DashboardHeroShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for DashboardHeroShelfIntent(uint64_t a1)
{
  result = qword_27F21E648;
  if (!qword_27F21E648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t DashboardHeroShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v7 = *(type metadata accessor for DashboardHeroShelfIntent(0) + 20);
  *(inited + 128) = type metadata accessor for Game(0);
  *(inited + 136) = sub_24E70EA88(&qword_27F217960, &protocol conformance descriptor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E806898(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Game);

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_24E806068()
{
  if (*v0)
  {
    return 1701667175;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E806098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24E806170(uint64_t a1)
{
  v2 = sub_24E806844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E8061AC(uint64_t a1)
{
  v2 = sub_24E806844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DashboardHeroShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E630, &qword_24F95C878);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E806844();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for DashboardHeroShelfIntent(0);
    v8[14] = 1;
    type metadata accessor for Game(0);
    sub_24E70EA88(&qword_27F214950, &protocol conformance descriptor for Game);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DashboardHeroShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E640, &qword_24F95C880);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DashboardHeroShelfIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E806844();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v20 = 1;
  sub_24E70EA88(&qword_27F214968, &protocol conformance descriptor for Game);
  sub_24F92CC68();
  (*(v11 + 8))(v7, v19);
  sub_24E636644(v5, v10 + *(v15 + 20));
  sub_24E806898(v10, v16, type metadata accessor for DashboardHeroShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E806900(v10);
}

unint64_t sub_24E8066C4@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 32) = 0x444965676170;
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 40) = 0xE600000000000000;
  v6 = *v2;
  v7 = v2[1];
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v9 = *(a1 + 20);
  *(inited + 128) = type metadata accessor for Game(0);
  *(inited + 136) = sub_24E70EA88(&qword_27F217960, &protocol conformance descriptor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E806898(v2 + v9, boxed_opaque_existential_1, type metadata accessor for Game);

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

unint64_t sub_24E806844()
{
  result = qword_27F21E638;
  if (!qword_27F21E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E638);
  }

  return result;
}

uint64_t sub_24E806898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E806900(uint64_t a1)
{
  v2 = type metadata accessor for DashboardHeroShelfIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E806970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Game(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E806A30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Game(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E806AD4(uint64_t a1)
{
  result = type metadata accessor for Game(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E806B64()
{
  result = qword_27F21E658;
  if (!qword_27F21E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E658);
  }

  return result;
}

unint64_t sub_24E806BBC()
{
  result = qword_27F21E660;
  if (!qword_27F21E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E660);
  }

  return result;
}

unint64_t sub_24E806C14()
{
  result = qword_27F21E668;
  if (!qword_27F21E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E668);
  }

  return result;
}

id sub_24E806C68(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ChallengesInviteComposeViewController();
  v3 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  v4 = v3;
  if (a1)
  {
    v5 = sub_24F92B588();
  }

  else
  {
    v5 = 0;
  }

  [v3 setRecipients_];

  v6 = sub_24E806ED0();
  v7 = sub_24F92B098();
  [v3 setMessage:v6 withExtensionBundleIdentifier:v7];

  [v3 setMessageComposeDelegate_];
  return v3;
}

id sub_24E806E78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChallengesInviteComposeViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24E806ED0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD6910]) init];
  v1 = sub_24F92B098();
  [v0 setCaption_];

  v2 = sub_24F92B098();
  [v0 setSubcaption_];

  v3 = [objc_allocWithZone(MEMORY[0x277CD6900]) initWithAlternateLayout_];
  v4 = [objc_allocWithZone(MEMORY[0x277CD6920]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277CD68F8]) initWithSession_];

  v6 = sub_24F92B098();
  [v5 setSummaryText_];

  [v5 setLayout_];
  [v5 setRequiresValidation_];

  return v5;
}

uint64_t AddFriendButtonShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for AddFriendButtonShelfIntent(uint64_t a1)
{
  result = qword_27F21E688;
  if (!qword_27F21E688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E8070FC(uint64_t a1)
{
  v2 = sub_24E807318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E807138(uint64_t a1)
{
  v2 = sub_24E807318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddFriendButtonShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E670, &qword_24F95CAE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E807318();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for AddFriendButtonShelfIntent(0);
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E807318()
{
  result = qword_27F21E678;
  if (!qword_27F21E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21E678);
  }

  return result;
}

uint64_t AddFriendButtonShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E680, &qword_24F95CAE8);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AddFriendButtonShelfIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E807318();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v20 = 1;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  (*(v11 + 8))(v7, v19);
  sub_24E61C0A8(v5, v10 + *(v15 + 20));
  sub_24E807654(v10, v16, type metadata accessor for AddFriendButtonShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E8076BC(v10);
}