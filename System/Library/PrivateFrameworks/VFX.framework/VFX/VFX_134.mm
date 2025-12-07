void sub_1AFB56474(_BYTE *a1)
{
  if ((a1[393] & 1) != 0 || (a1[395] & 1) != 0 || a1[396] == 1)
  {
    if (!*(v1 + 1504))
    {
      v3 = *(v1 + 1488);
      v26 = *(v1 + 1472);
      v27 = v3;
      v28 = *(v1 + 1504);
      v29 = *(v1 + 1520);
      v4 = *(v1 + 1456);
      v24 = *(v1 + 1440);
      v25 = v4;
      sub_1AFB5AF24(&v24, &qword_1EB633E78, qword_1EB633E80, type metadata accessor for external_entity_constants, &off_1F255F120);
      *(v1 + 1440) = 0u;
      *(v1 + 1456) = 0u;
      *(v1 + 1472) = 0u;
      *(v1 + 1488) = 0u;
      v5 = MEMORY[0x1E69E7CC0];
      *(v1 + 1504) = MEMORY[0x1E69E7CC0];
      *(v1 + 1512) = 0;
      *(v1 + 1520) = 0;
      *(v1 + 1524) = 550;
      if (qword_1ED72AB78 != -1)
      {
        swift_once();
      }

      if (byte_1ED73B6A0 == 1)
      {
        v6 = v1;
        v64 = 0xD000000000000021;
        v65 = 0x80000001AFF493A0;
        v66 = 0;
        v67 = 0;
        v68 = v5;

        v7 = swift_unknownObjectRetain();
        sub_1AF882DB8(v7, 0, &v30);
        swift_unknownObjectRelease();
        v8 = sub_1AF72A584(&v30, 0, 0);
        v53 = v30;
        v9 = v8;
        sub_1AF585778(&v53);
        v52 = v31;
        sub_1AFB5B028(&v52, &qword_1ED723160, &unk_1ED723170, &protocolRef_MTLFunction, sub_1AF85AE78);
        v51 = v32;
        sub_1AFB5B028(&v51, &qword_1ED723180, &qword_1ED723190, &protocolRef_MTLLibrary, sub_1AF85AE78);
        v50 = v33;
        sub_1AFB5B028(&v50, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8], sub_1AF8932F0);

        v10 = [v9 newArgumentEncoderWithBufferIndex_];
        swift_unknownObjectRelease();
        v1 = v6;
        swift_unknownObjectRelease();
        *(v6 + 1512) = v10;
      }
    }

    if (a1[393] == 1 && !*(v1 + 1376) && !*(v1 + 1416))
    {
      v11 = *(v1 + 1360);
      v26 = *(v1 + 1344);
      v27 = v11;
      v28 = *(v1 + 1376);
      v29 = *(v1 + 1392);
      v12 = *(v1 + 1328);
      v24 = *(v1 + 1312);
      v25 = v12;
      sub_1AFB5AF24(&v24, &qword_1EB642C38, &qword_1EB642C40, type metadata accessor for external_scene_constants, &off_1F255F100);
      *(v1 + 1320) = 0;
      *(v1 + 1328) = 0;
      *(v1 + 1312) = 0;
      *(v1 + 1344) = 0u;
      *(v1 + 1360) = 0u;
      v13 = MEMORY[0x1E69E7CC0];
      *(v1 + 1376) = MEMORY[0x1E69E7CC0];
      *(v1 + 1384) = 0;
      *(v1 + 1392) = 0;
      *(v1 + 1396) = 530;
      if (qword_1ED72AB78 != -1)
      {
        swift_once();
      }

      if (byte_1ED73B6A0 == 1)
      {
        v14 = v1;
        v59 = 0xD000000000000020;
        v60 = 0x80000001AFF49320;
        v61 = 0;
        v62 = 0;
        v63 = v13;

        v15 = swift_unknownObjectRetain();
        sub_1AF882DB8(v15, 0, &v34);
        swift_unknownObjectRelease();
        v16 = sub_1AF72A584(&v34, 0, 0);
        v49 = v34;
        v17 = v16;
        sub_1AF585778(&v49);
        v48 = v35;
        sub_1AFB5B028(&v48, &qword_1ED723160, &unk_1ED723170, &protocolRef_MTLFunction, sub_1AF85AE78);
        v47 = v36;
        sub_1AFB5B028(&v47, &qword_1ED723180, &qword_1ED723190, &protocolRef_MTLLibrary, sub_1AF85AE78);
        v46 = v37;
        sub_1AFB5B028(&v46, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8], sub_1AF8932F0);

        v18 = [v17 newArgumentEncoderWithBufferIndex_];
        swift_unknownObjectRelease();
        v1 = v14;
        swift_unknownObjectRelease();
        *(v14 + 1384) = v18;
      }

      sub_1AFB5AFE4(*(v1 + 1400), *(v1 + 1408), *(v1 + 1416), *(v1 + 1424));
      *(v1 + 1400) = 0u;
      *(v1 + 1416) = v13;
      *(v1 + 1424) = 0u;
      if (byte_1ED73B6A0 == 1)
      {
        v54 = 0xD00000000000001ELL;
        v55 = 0x80000001AFF492B0;
        v56 = 0;
        v57 = 0;
        v58 = v13;

        v19 = swift_unknownObjectRetain();
        sub_1AF882DB8(v19, 0, &v38);
        swift_unknownObjectRelease();
        v20 = sub_1AF72A584(&v38, 0, 0);
        v21 = (v1 + 1424);
        v45 = v38;
        v22 = v20;
        sub_1AF585778(&v45);
        v44 = v39;
        sub_1AFB5B028(&v44, &qword_1ED723160, &unk_1ED723170, &protocolRef_MTLFunction, sub_1AF85AE78);
        v43 = v40;
        sub_1AFB5B028(&v43, &qword_1ED723180, &qword_1ED723190, &protocolRef_MTLLibrary, sub_1AF85AE78);
        v42 = v41;
        sub_1AFB5B028(&v42, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8], sub_1AF8932F0);

        v23 = [v22 newArgumentEncoderWithBufferIndex_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *v21 = v23;
      }
    }
  }
}

void sub_1AFB56FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v7 = (a3 + 1280);
  sub_1AF471BD4(*(a1 + 16), *(a1 + 24), 0, 10, (a3 + 1280));
  sub_1AF471BD4(*a1, *(a1 + 8), 0, 11, (a3 + 1280));
  if (*(a4 + 396))
  {
    return;
  }

  if (*(a1 + 34) != 1)
  {
    goto LABEL_14;
  }

  v8 = *(a4 + 200);
  sub_1AF0D879C(&v34, 3);
  v9 = v34;

  v10 = sub_1AF750DEC(v9, *(&v9 + 1), 0, 0, 0, 1, 1);

  if (!v10)
  {
    v11 = v39;
    v12 = 32;
    if (!v39)
    {
      v12 = 1;
    }

    if (v40)
    {
      v11 = v12;
    }

    v41 = v37;
    v42 = v38;
    v43 = v37;
    v44 = v38;
    v45 = v35;
    v46 = v11;
    v47 = v36;
    v48 = 0u;
    v49 = 0u;
    v50 = v8;
    v13 = *(v8 + 16);
    v14 = v13[39];
    v32[4] = v13[38];
    v32[5] = v14;
    v15 = v13[37];
    v32[2] = v13[36];
    v32[3] = v15;
    v16 = v13[42];
    v32[7] = v13[41];
    v33[0] = v16;
    v32[6] = v13[40];
    v17 = v13[35];
    v32[0] = v13[34];
    v32[1] = v17;
    *(v33 + 9) = *(v13 + 681);

    if (sub_1AF448314(v32) == 1)
    {
      sub_1AFDFE518();
      __break(1u);
      return;
    }

    v18 = *(&v32[0] + 1);
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 80);
    swift_unknownObjectRetain();
    v21 = v20(ObjectType, v18);
    v23 = v22;

    swift_unknownObjectRelease();
    v24 = sub_1AFBE973C(0, 2, v21, v23);
    v26 = v25;
    v28 = v27;

    v29 = sub_1AF750DEC(v9, *(&v9 + 1), v24, v26, v28, 0, 1);
    sub_1AF0D8F38(&v34);

    if (v29)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_1AF471CAC(0, 23);
    return;
  }

  sub_1AF0D8F38(&v34);
LABEL_11:
  v30 = swift_unknownObjectRetain();
  sub_1AF471CAC(v30, 23);
  swift_unknownObjectRelease();
  v31 = swift_unknownObjectRetain();
  MEMORY[0x1B2718E00](v31);
  if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  sub_1AFDFD4B8();
  swift_unknownObjectRelease();
}

uint64_t sub_1AFB57390(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    v3 = *(v2 + 184);

    sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v3, sub_1AFB5AE84);
  }

  return result;
}

unint64_t sub_1AFB57470()
{
  result = qword_1ED723328;
  if (!qword_1ED723328)
  {
    result = swift_getWitnessTable(a9_4, &type metadata for BindError, v0, v1);
    atomic_store(result, &qword_1ED723328);
  }

  return result;
}

__n128 sub_1AFB574C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  if (qword_1ED72AB78 != -1)
  {
    v35 = a1;
    v36 = a2;
    v37 = a4;
    swift_once();
    a2 = v36;
    a1 = v35;
    a4 = v37;
  }

  v5 = (a1 + 1256);
  if (byte_1ED73B6A0 == 1 && (*(a1 + 1296) & 1) == 0)
  {
    v46 = a4;
    v41 = a1;
    sub_1AFB4967C(a2 + 40, &v42);
    if (v43)
    {
      sub_1AF616568(&v42, v44);
      if (*(a3 + 393) == 1)
      {
        v6 = *sub_1AF441150(v44, v45);
        swift_unknownObjectRetain();
        v7 = sub_1AF755E78(7u, 0xD000000000000019, 0x80000001AFF49130, v6);
        if (!v7)
        {
          v8 = sub_1AF441150(v44, v45);
          v7 = sub_1AF755E78(2u, 0x6E61696461727269, 0xEA00000000006563, *v8);
          if (!v7)
          {
            v7 = sub_1AF7054C4();
          }
        }

        v9 = v7;
        v10 = sub_1AF441150(v44, v45);
        v11 = sub_1AF755E78(7u, 0xD00000000000001ALL, 0x80000001AFF49150, *v10);
        if (!v11)
        {
          v12 = sub_1AF441150(v44, v45);
          v11 = sub_1AF755E78(2u, 0x65636E6169646172, 0xE800000000000000, *v12);
          if (!v11)
          {
            v11 = sub_1AF7054C4();
          }
        }

        v13 = v11;
        v14 = sub_1AF441150(v44, v45);
        v15 = sub_1AF755E78(4u, 0x74754C66647262, 0xE700000000000000, *v14);
        if (!v15)
        {
          v15 = sub_1AF7181D8();
        }

        v16 = v15;
        v17 = sub_1AF441150(v44, v45);
        v18 = sub_1AF755FD0(7u, 0x74736E6F436C6269, 0xEC00000073746E61, *v17);
        if (!v18)
        {
          v20 = sub_1AF441150(v44, v45);
          v18 = sub_1AF755FD0(3u, 0x74736E6F436C6269, 0xEC00000073746E61, *v20);
        }

        v21 = v18;
        v40 = v19;
        v22 = sub_1AF441150(v44, v45);
        v23 = sub_1AF755FD0(3u, 0x6E6F43746867696CLL, 0xEE0073746E617473, *v22);
        v38 = v24;
        v39 = v23;
        swift_getObjectType();
        v25 = swift_unknownObjectRetain();
        sub_1AF471CAC(v25, 20);
        swift_unknownObjectRelease();
        v26 = swift_unknownObjectRetain();
        sub_1AF471CAC(v26, 21);
        swift_unknownObjectRelease();
        v27 = swift_unknownObjectRetain();
        sub_1AF471CAC(v27, 22);
        swift_unknownObjectRelease();
        sub_1AF8932F0(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AFE55130;
        *(v28 + 32) = v9;
        *(v28 + 40) = v13;
        *(v28 + 48) = v16;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        *(v41 + 1280) = v28;
        sub_1AF471BD4(v21, v40, 0, 10, (v41 + 1280));
        sub_1AF471BD4(v39, v38, 0, 11, (v41 + 1280));
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v29 = sub_1AF441150(v44, v45);
      v30 = sub_1AF755E78(2u, 0x614D776F64616873, 0xE900000000000070, *v29);
      swift_getObjectType();
      sub_1AF471CAC(v30, 23);
      if (v30)
      {
        v31 = (v41 + 1280);
        v32 = swift_unknownObjectRetain();
        MEMORY[0x1B2718E00](v32);
        if (*((*(v41 + 1280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v41 + 1280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AFDFD458();
        }

        sub_1AFDFD4B8();
        v33 = *v31;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *v31 = v33;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v44);
    }

    else
    {
      sub_1AFB4970C(&v42);
    }

    v5[2].n128_u8[8] = 1;
    a4 = v46;
  }

  result = *v5;
  *a4 = *v5;
  return result;
}

void sub_1AFB579B4(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1ED72AB78 != -1)
  {
    swift_once();
  }

  if (byte_1ED73B6A0 == 1)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      swift_getObjectType();
      v4 = [swift_unknownObjectRetain() encodedLength];
      CFXBufferAllocatorPerFrameAllocateWithLength(*(v1 + 232), v4);
      *a1 = v5;
      *(a1 + 8) = v6;
      sub_1AF471B58(v5, v6, 0);
      if (*(a1 + 84))
      {
        v7 = [v3 constantDataAtIndex_];
        v9 = *(a1 + 32);
        v8 = *(a1 + 48);
        *v7 = *(a1 + 16);
        v7[1] = v9;
        v7[2] = v8;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v10 = *(v1 + 232);
    v11 = *(a1 + 20);
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v15[0] = *(a1 + 16);
    v15[1] = v11;
    v16 = v12;
    v17 = v13;
    *a1 = CFXBufferAllocatorPerFrameAllocateWithBytes(v10, v15, 0x30uLL);
    *(a1 + 8) = v14;
  }
}

void sub_1AFB57B2C(uint64_t a1, const void *a2)
{
  if (qword_1ED72AB78 != -1)
  {
    swift_once();
  }

  if (byte_1ED73B6A0 == 1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      swift_getObjectType();
      v5 = [swift_unknownObjectRetain() encodedLength];
      CFXBufferAllocatorPerFrameAllocateWithLength(*(v2 + 232), v5);
      *a1 = v6;
      *(a1 + 8) = v7;
      sub_1AF471B58(v6, v7, 0);
      if (*(a1 + 36))
      {
        [v4 constantDataAtIndex_];
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    *a1 = CFXBufferAllocatorPerFrameAllocateWithBytes(*(v2 + 232), a2, 0);
    *(a1 + 8) = v8;
  }
}

void sub_1AFB57C78(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED72AB78 != -1)
  {
    swift_once();
  }

  if (byte_1ED73B6A0 == 1)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      swift_getObjectType();
      v4 = [swift_unknownObjectRetain() encodedLength];
      CFXBufferAllocatorPerFrameAllocateWithLength(*(v1 + 232), v4);
      *a1 = v5;
      *(a1 + 8) = v6;
      sub_1AF471B58(v5, v6, 0);
      if (*(a1 + 84))
      {
        v7 = [v3 constantDataAtIndex_];
        v9 = *(a1 + 32);
        v8 = *(a1 + 48);
        *v7 = *(a1 + 16);
        v7[1] = v9;
        v7[2] = v8;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v10 = *(v1 + 232);
    v11 = *(a1 + 32);
    v13[0] = *(a1 + 16);
    v13[1] = v11;
    v13[2] = *(a1 + 48);
    *a1 = CFXBufferAllocatorPerFrameAllocateWithBytes(v10, v13, 0x30uLL);
    *(a1 + 8) = v12;
  }
}

uint64_t sub_1AFB57DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v72 = a6;
  v7 = a5;
  v13 = (a1 + 1400);
  sub_1AFB4967C(a2 + 40, &v68);
  if (v69)
  {
    sub_1AF616568(&v68, v70);
    if (*(a1 + 1416) && *(a1 + 1424) && (*(a3 + 393) & 1) != 0 && (v13[2] & 1) == 0)
    {
      v14 = *sub_1AF441150(v70, v71);
      swift_unknownObjectRetain();
      v15 = sub_1AF755FD0(2u, 0x65626F7250766E65, 0xED0000656C626154, v14);
      v61 = v16;
      v62 = v15;
      v17 = sub_1AF441150(v70, v71);
      v67 = sub_1AF755E78(4u, 0x4578614D63657073, 0xED000070614D7373, *v17);
      v18 = sub_1AF441150(v70, v71);
      v19 = sub_1AF755FD0(4u, 0xD000000000000012, 0x80000001AFF49070, *v18);
      v59 = v20;
      v60 = v19;
      v21 = sub_1AF441150(v70, v71);
      v22 = sub_1AF755FD0(2u, 0xD000000000000011, 0x80000001AFF24F00, *v21);
      v57 = v23;
      v58 = v22;
      v24 = sub_1AF441150(v70, v71);
      v66 = sub_1AF755E78(6u, 0xD000000000000010, 0x80000001AFF24E80, *v24);
      v25 = sub_1AF441150(v70, v71);
      v65 = sub_1AF755E78(2u, 0xD000000000000011, 0x80000001AFF49090, *v25);
      v26 = sub_1AF441150(v70, v71);
      v64 = sub_1AF755E78(2u, 0xD000000000000014, 0x80000001AFF490B0, *v26);
      v27 = sub_1AF441150(v70, v71);
      v63 = sub_1AF755E78(2u, 0xD000000000000014, 0x80000001AFF490D0, *v27);
      v28 = sub_1AF441150(v70, v71);
      v29 = sub_1AF755FD0(3u, 0xD000000000000014, 0x80000001AFF490F0, *v28);
      v55 = v30;
      v56 = v29;
      v31 = sub_1AF441150(v70, v71);
      v32 = sub_1AF755FD0(3u, 0xD000000000000015, 0x80000001AFF49110, *v31);
      v53 = v33;
      v54 = v32;
      v34 = sub_1AF441150(v70, v71);
      v52 = sub_1AF755E78(1u, 0x6D656E6F54707369, 0xED000054554C7061, *v34);
      v35 = sub_1AF441150(v70, v71);
      v51 = sub_1AF755E78(2u, 0x614D7265746C6966, 0xE900000000000070, *v35);
      swift_getObjectType();
      sub_1AF471BD4(v62, v61, 0, 500, (a1 + 1416));
      sub_1AF471CC4(v67, 504, (a1 + 1416));
      sub_1AF471BD4(v60, v59, 0, 505, (a1 + 1416));
      sub_1AF471BD4(v58, v57, 0, 506, (a1 + 1416));
      sub_1AF471CC4(v66, 507, (a1 + 1416));
      sub_1AF471CC4(v65, 501, (a1 + 1416));
      sub_1AF471CC4(v64, 502, (a1 + 1416));
      sub_1AF471CC4(v63, 503, (a1 + 1416));
      sub_1AF471BD4(v56, v55, 0, 526, (a1 + 1416));
      sub_1AF471BD4(v54, v53, 0, 525, (a1 + 1416));
      sub_1AF471CC4(v52, 513, (a1 + 1416));
      sub_1AF471CC4(v51, 514, (a1 + 1416));
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v13 + 32) = 1;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v70);
  }

  else
  {
    sub_1AFB4970C(&v68);
  }

  sub_1AFB4967C(a2 + 40, &v68);
  if (v69)
  {
    sub_1AF616568(&v68, v70);
    sub_1AFB1A300(a4);
    *(a1 + 1456) = sub_1AFBE96E8(v7);
    sub_1AFB57C78(a1 + 1440);
    if (*(a1 + 1512))
    {
      v36 = v13;
      v37 = *sub_1AF441150(v70, v71);
      swift_unknownObjectRetain();
      v38 = sub_1AF755E78(6u, 0xD000000000000013, 0x80000001AFF49030, v37);
      if (!v38)
      {
        v39 = sub_1AF441150(v70, v71);
        v38 = sub_1AF755E78(6u, 0x6B73614D7442, 0xE600000000000000, *v39);
      }

      v40 = sub_1AF441150(v70, v71);
      v41 = sub_1AF755FD0(6u, 0xD000000000000010, 0x80000001AFF49050, *v40);
      if (!v41)
      {
        v43 = sub_1AF441150(v70, v71);
        v41 = sub_1AF755FD0(0, 0x343032736F72657ALL, 0xEE00736574796238, *v43);
      }

      v44 = v41;
      v45 = v42;
      ObjectType = swift_getObjectType();
      sub_1AF471CC4(v38, 570, (a1 + 1504));
      sub_1AF471BD4(v44, v45, 0, 571, (a1 + 1416));
      if ((v72 & 0x100000000) == 0)
      {
        LODWORD(v68) = v72;
        sub_1AF471D6C(&v68, 553, ObjectType, MEMORY[0x1E69E6448]);
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v13 = v36;
    }

    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v70);
  }

  else
  {
    result = sub_1AFB4970C(&v68);
  }

  v48 = 0uLL;
  v49 = 0uLL;
  if (*(a1 + 1376))
  {
    v49 = *(a1 + 1312);
  }

  *a7 = v49;
  if (*(a1 + 1416))
  {
    v48 = *v13;
  }

  *(a7 + 16) = v48;
  if (*(a1 + 1504))
  {
    v50 = *(a1 + 1440);
  }

  else
  {
    v50 = 0uLL;
  }

  *(a7 + 32) = v50;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  return result;
}

__n128 sub_1AFB584CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>, __n128 result@<Q0>)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1504))
  {
    v7 = *&a2;
    if ((a2 & 0x100000000) != 0)
    {
      v7 = 1.0;
    }

    *(a1 + 1460) = v7;
    v8 = *(a3 + 8);
    if (qword_1ED72AB78 != -1)
    {
      swift_once();
    }

    v9 = (a1 + 1456);
    if (byte_1ED73B6A0 == 1)
    {
      v10 = *(a1 + 1512);
      if (v10)
      {
        swift_getObjectType();
        v11 = [swift_unknownObjectRetain() encodedLength];
        CFXBufferAllocatorPerFrameAllocateWithLength(*(v8 + 232), v11);
        *(a1 + 1440) = v12;
        *(a1 + 1448) = v13;
        sub_1AF471B58(v12, v13, 0);
        if (*(a1 + 1524))
        {
          v14 = [v10 constantDataAtIndex_];
          v16 = *(a1 + 1472);
          v15 = *(a1 + 1488);
          *v14 = *v9;
          v14[1] = v16;
          v14[2] = v15;
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v17 = *(v8 + 232);
      v18 = *(a1 + 1472);
      v20[0] = *v9;
      v20[1] = v18;
      v20[2] = *(a1 + 1488);
      *(a1 + 1440) = CFXBufferAllocatorPerFrameAllocateWithBytes(v17, v20, 0x30uLL);
      *(a1 + 1448) = v19;
    }

    result = *(a1 + 1440);
    *a4 = result;
  }

  else
  {
    *a4 = 0uLL;
  }

  return result;
}

void sub_1AFB58670(uint64_t a1, uint64_t a2, id a3, uint64_t a4, id a5)
{
  v8 = [a5 members];
  sub_1AF8AB4DC();
  v9 = sub_1AFDFD418();

  v24 = a4;
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_22:

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF48FE0);
    sub_1AFB57470();
    swift_allocError();
    *v23 = 0x20676E697373694DLL;
    v23[1] = 0xE800000000000000;
    swift_willThrow();
    return;
  }

  v10 = sub_1AFDFE108();
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_3:
  v11 = 0;
  while (1)
  {
    v12 = (v9 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v11, v9) : *(v9 + 8 * v11 + 32);
    v13 = v12;
    v14 = [v12 name];
    v15 = sub_1AFDFCEF8();
    v17 = v16;

    if (v15 == a1 && v17 == a2)
    {
      break;
    }

    v19 = sub_1AFDFEE28();

    if (v19)
    {
      goto LABEL_15;
    }

    if (v10 == ++v11)
    {
      goto LABEL_22;
    }
  }

LABEL_15:

  if ([v13 offset] == a3)
  {
    if (sub_1AF470DA4() == v24)
    {

      return;
    }

    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;
    MEMORY[0x1B2718AE0](0x696D20657A697320, 0xEF20686374616D73);
    sub_1AF470DA4();
  }

  else
  {
    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF48FC0);
    [v13 offset];
  }

  v20 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v20);

  MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  v21 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v21);

  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF48FE0);
  sub_1AFB57470();
  swift_allocError();
  *v22 = v26;
  v22[1] = v27;
  swift_willThrow();
}

void sub_1AFB58A60(uint64_t a1, uint64_t a2, int a3, id a4, id a5, char a6)
{
  v6 = [a5 members];
  sub_1AF8AB4DC();
  v7 = sub_1AFDFD418();

  if (v7 >> 62)
  {
    v8 = sub_1AFDFE108();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_24:

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](544497952, 0xE400000000000000);
    v22 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v22);

    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF48FE0);
    sub_1AFB57470();
    swift_allocError();
    *v23 = 0x20676E697373694DLL;
    v23[1] = 0xE800000000000000;
    swift_willThrow();
    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_3:
  v9 = 0;
  while (1)
  {
    v10 = (v7 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v9, v7) : *(v7 + 8 * v9 + 32);
    v11 = v10;
    v12 = [v10 name];
    v13 = sub_1AFDFCEF8();
    v15 = v14;

    if (v13 == a1 && v15 == a2)
    {
    }

    else
    {
      v17 = sub_1AFDFEE28();

      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if ([v11 argumentIndex] == a3)
    {
      break;
    }

LABEL_6:
    ++v9;

    if (v8 == v9)
    {
      goto LABEL_24;
    }
  }

  v18 = [v11 textureReferenceType];
  if (v18)
  {

    if ((a6 & 1) == 0 || [v11 offset] == a4)
    {

      return;
    }

    sub_1AFDFE218();

    v29 = a1;
    v30 = a2;
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF48FC0);
    [v11 offset];
    v19 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
    v20 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v20);
  }

  else
  {
    sub_1AFDFE218();

    v29 = a1;
    v30 = a2;
    MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF48F90);
  }

  sub_1AFB57470();
  swift_allocError();
  *v21 = v29;
  v21[1] = v30;
  swift_willThrow();
}

void sub_1AFB58E88(uint64_t a1, uint64_t a2, int a3, id a4, id a5, id a6, char a7)
{
  v7 = [a6 members];
  sub_1AF8AB4DC();
  v8 = sub_1AFDFD418();

  if (v8 >> 62)
  {
    v9 = sub_1AFDFE108();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_26:

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](544497952, 0xE400000000000000);
    v25 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v25);

    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF48FE0);
    sub_1AFB57470();
    swift_allocError();
    *v26 = 0x20676E697373694DLL;
    v26[1] = 0xE800000000000000;
    swift_willThrow();
    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_3:
  v10 = 0;
  while (1)
  {
    v11 = (v8 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v10, v8) : *(v8 + 8 * v10 + 32);
    v12 = v11;
    v13 = [v11 name];
    v14 = sub_1AFDFCEF8();
    v16 = v15;

    if (v14 == a1 && v16 == a2)
    {
    }

    else
    {
      v18 = sub_1AFDFEE28();

      if ((v18 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if ([v12 argumentIndex] == a3)
    {
      break;
    }

LABEL_6:
    ++v10;

    if (v9 == v10)
    {
      goto LABEL_26;
    }
  }

  v19 = [v12 pointerType];
  if (v19)
  {
    v20 = v19;
    if ([v19 dataSize] == a4)
    {
      if ((a7 & 1) == 0 || [v12 offset] == a5)
      {

        return;
      }

      sub_1AFDFE218();

      v33 = a1;
      v34 = a2;
      MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF48FC0);
      [v12 offset];
    }

    else
    {
      sub_1AFDFE218();

      v33 = a1;
      v34 = a2;
      MEMORY[0x1B2718AE0](0x696D20657A697320, 0xEF20686374616D73);
      [v20 dataSize];
    }

    v22 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v22);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
    v23 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v23);

    sub_1AFB57470();
    swift_allocError();
    *v24 = v33;
    v24[1] = v34;
    swift_willThrow();
  }

  else
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](0xD00000000000002FLL, 0x80000001AFF49000);
    sub_1AFB57470();
    swift_allocError();
    *v21 = a1;
    v21[1] = a2;
    swift_willThrow();
  }
}

void sub_1AFB5936C(uint64_t a1, uint64_t a2, int a3, id a4)
{
  v5 = [a4 members];
  sub_1AF8AB4DC();
  v6 = sub_1AFDFD418();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x206E69206E6920, 0xE700000000000000);
    type metadata accessor for view_constants(0);
    sub_1AFB5AE3C();
    v23 = sub_1AFDFCF88();
    MEMORY[0x1B2718AE0](v23);

    sub_1AFB57470();
    swift_allocError();
    *v24 = 0x20676E697373694DLL;
    v24[1] = 0xE800000000000000;
    swift_willThrow();
    return;
  }

  v7 = sub_1AFDFE108();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  while (1)
  {
    v9 = (v6 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v8, v6) : *(v6 + 8 * v8 + 32);
    v10 = v9;
    v11 = [v9 name];
    v12 = sub_1AFDFCEF8();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {
      break;
    }

    v16 = sub_1AFDFEE28();

    if (v16)
    {
      goto LABEL_15;
    }

    if (v7 == ++v8)
    {
      goto LABEL_22;
    }
  }

LABEL_15:

  v17 = sub_1AFDFDFE8();
  if ([v10 offset] == v17)
  {
    if (sub_1AF470DA4() == 128)
    {

      return;
    }

    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0x696D20657A697320, 0xEF20686374616D73);
    sub_1AF470DA4();
    v19 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  else
  {
    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF48FC0);
    [v10 offset];
    v18 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  v20 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v20);

  MEMORY[0x1B2718AE0](544106784, 0xE400000000000000);
  type metadata accessor for view_constants(0);
  sub_1AFB5AE3C();
  v21 = sub_1AFDFCF88();
  MEMORY[0x1B2718AE0](v21);

  sub_1AFB57470();
  swift_allocError();
  *v22 = v26;
  v22[1] = v27;
  swift_willThrow();
}

void sub_1AFB597E4(uint64_t a1, uint64_t a2, int a3, id a4)
{
  v5 = [a4 members];
  sub_1AF8AB4DC();
  v6 = sub_1AFDFD418();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x206E69206E6920, 0xE700000000000000);
    type metadata accessor for view_constants(0);
    sub_1AFB5AE3C();
    v23 = sub_1AFDFCF88();
    MEMORY[0x1B2718AE0](v23);

    sub_1AFB57470();
    swift_allocError();
    *v24 = 0x20676E697373694DLL;
    v24[1] = 0xE800000000000000;
    swift_willThrow();
    return;
  }

  v7 = sub_1AFDFE108();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  while (1)
  {
    v9 = (v6 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v8, v6) : *(v6 + 8 * v8 + 32);
    v10 = v9;
    v11 = [v9 name];
    v12 = sub_1AFDFCEF8();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {
      break;
    }

    v16 = sub_1AFDFEE28();

    if (v16)
    {
      goto LABEL_15;
    }

    if (v7 == ++v8)
    {
      goto LABEL_22;
    }
  }

LABEL_15:

  v17 = sub_1AFDFDFE8();
  if ([v10 offset] == v17)
  {
    if (sub_1AF470DA4() == 64)
    {

      return;
    }

    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0x696D20657A697320, 0xEF20686374616D73);
    sub_1AF470DA4();
    v19 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  else
  {
    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF48FC0);
    [v10 offset];
    v18 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  v20 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v20);

  MEMORY[0x1B2718AE0](544106784, 0xE400000000000000);
  type metadata accessor for view_constants(0);
  sub_1AFB5AE3C();
  v21 = sub_1AFDFCF88();
  MEMORY[0x1B2718AE0](v21);

  sub_1AFB57470();
  swift_allocError();
  *v22 = v26;
  v22[1] = v27;
  swift_willThrow();
}

void sub_1AFB59C5C(uint64_t a1, uint64_t a2, int a3, id a4)
{
  v5 = [a4 members];
  sub_1AF8AB4DC();
  v6 = sub_1AFDFD418();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x206E69206E6920, 0xE700000000000000);
    type metadata accessor for view_constants(0);
    sub_1AFB5AE3C();
    v23 = sub_1AFDFCF88();
    MEMORY[0x1B2718AE0](v23);

    sub_1AFB57470();
    swift_allocError();
    *v24 = 0x20676E697373694DLL;
    v24[1] = 0xE800000000000000;
    swift_willThrow();
    return;
  }

  v7 = sub_1AFDFE108();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  while (1)
  {
    v9 = (v6 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v8, v6) : *(v6 + 8 * v8 + 32);
    v10 = v9;
    v11 = [v9 name];
    v12 = sub_1AFDFCEF8();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {
      break;
    }

    v16 = sub_1AFDFEE28();

    if (v16)
    {
      goto LABEL_15;
    }

    if (v7 == ++v8)
    {
      goto LABEL_22;
    }
  }

LABEL_15:

  v17 = sub_1AFDFDFE8();
  if ([v10 offset] == v17)
  {
    if (sub_1AF470DA4() == 16)
    {

      return;
    }

    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0x696D20657A697320, 0xEF20686374616D73);
    sub_1AF470DA4();
    v19 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  else
  {
    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF48FC0);
    [v10 offset];
    v18 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  v20 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v20);

  MEMORY[0x1B2718AE0](544106784, 0xE400000000000000);
  type metadata accessor for view_constants(0);
  sub_1AFB5AE3C();
  v21 = sub_1AFDFCF88();
  MEMORY[0x1B2718AE0](v21);

  sub_1AFB57470();
  swift_allocError();
  *v22 = v26;
  v22[1] = v27;
  swift_willThrow();
}

void sub_1AFB5A0D4(uint64_t a1, uint64_t a2, int a3, id a4)
{
  v5 = [a4 members];
  sub_1AF8AB4DC();
  v6 = sub_1AFDFD418();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x206E69206E6920, 0xE700000000000000);
    type metadata accessor for view_constants(0);
    sub_1AFB5AE3C();
    v23 = sub_1AFDFCF88();
    MEMORY[0x1B2718AE0](v23);

    sub_1AFB57470();
    swift_allocError();
    *v24 = 0x20676E697373694DLL;
    v24[1] = 0xE800000000000000;
    swift_willThrow();
    return;
  }

  v7 = sub_1AFDFE108();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  while (1)
  {
    v9 = (v6 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v8, v6) : *(v6 + 8 * v8 + 32);
    v10 = v9;
    v11 = [v9 name];
    v12 = sub_1AFDFCEF8();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {
      break;
    }

    v16 = sub_1AFDFEE28();

    if (v16)
    {
      goto LABEL_15;
    }

    if (v7 == ++v8)
    {
      goto LABEL_22;
    }
  }

LABEL_15:

  v17 = sub_1AFDFDFE8();
  if ([v10 offset] == v17)
  {
    if (sub_1AF470DA4() == 4)
    {

      return;
    }

    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0x696D20657A697320, 0xEF20686374616D73);
    sub_1AF470DA4();
    v19 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  else
  {
    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF48FC0);
    [v10 offset];
    v18 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  v20 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v20);

  MEMORY[0x1B2718AE0](544106784, 0xE400000000000000);
  type metadata accessor for view_constants(0);
  sub_1AFB5AE3C();
  v21 = sub_1AFDFCF88();
  MEMORY[0x1B2718AE0](v21);

  sub_1AFB57470();
  swift_allocError();
  *v22 = v26;
  v22[1] = v27;
  swift_willThrow();
}

void sub_1AFB5A54C(uint64_t a1, uint64_t a2, int a3, id a4)
{
  v5 = [a4 members];
  sub_1AF8AB4DC();
  v6 = sub_1AFDFD418();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x206E69206E6920, 0xE700000000000000);
    type metadata accessor for view_constants(0);
    sub_1AFB5AE3C();
    v23 = sub_1AFDFCF88();
    MEMORY[0x1B2718AE0](v23);

    sub_1AFB57470();
    swift_allocError();
    *v24 = 0x20676E697373694DLL;
    v24[1] = 0xE800000000000000;
    swift_willThrow();
    return;
  }

  v7 = sub_1AFDFE108();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  while (1)
  {
    v9 = (v6 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v8, v6) : *(v6 + 8 * v8 + 32);
    v10 = v9;
    v11 = [v9 name];
    v12 = sub_1AFDFCEF8();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {
      break;
    }

    v16 = sub_1AFDFEE28();

    if (v16)
    {
      goto LABEL_15;
    }

    if (v7 == ++v8)
    {
      goto LABEL_22;
    }
  }

LABEL_15:

  v17 = sub_1AFDFDFE8();
  if ([v10 offset] == v17)
  {
    if (sub_1AF470DA4() == 8)
    {

      return;
    }

    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0x696D20657A697320, 0xEF20686374616D73);
    sub_1AF470DA4();
    v19 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  else
  {
    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF48FC0);
    [v10 offset];
    v18 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  v20 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v20);

  MEMORY[0x1B2718AE0](544106784, 0xE400000000000000);
  type metadata accessor for view_constants(0);
  sub_1AFB5AE3C();
  v21 = sub_1AFDFCF88();
  MEMORY[0x1B2718AE0](v21);

  sub_1AFB57470();
  swift_allocError();
  *v22 = v26;
  v22[1] = v27;
  swift_willThrow();
}

void sub_1AFB5A9C4(uint64_t a1, uint64_t a2, int a3, id a4)
{
  v5 = [a4 members];
  sub_1AF8AB4DC();
  v6 = sub_1AFDFD418();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x206E69206E6920, 0xE700000000000000);
    type metadata accessor for view_constants(0);
    sub_1AFB5AE3C();
    v23 = sub_1AFDFCF88();
    MEMORY[0x1B2718AE0](v23);

    sub_1AFB57470();
    swift_allocError();
    *v24 = 0x20676E697373694DLL;
    v24[1] = 0xE800000000000000;
    swift_willThrow();
    return;
  }

  v7 = sub_1AFDFE108();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  while (1)
  {
    v9 = (v6 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v8, v6) : *(v6 + 8 * v8 + 32);
    v10 = v9;
    v11 = [v9 name];
    v12 = sub_1AFDFCEF8();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {
      break;
    }

    v16 = sub_1AFDFEE28();

    if (v16)
    {
      goto LABEL_15;
    }

    if (v7 == ++v8)
    {
      goto LABEL_22;
    }
  }

LABEL_15:

  v17 = sub_1AFDFDFE8();
  if ([v10 offset] == v17)
  {
    if (sub_1AF470DA4() == 32)
    {

      return;
    }

    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0x696D20657A697320, 0xEF20686374616D73);
    sub_1AF470DA4();
    v19 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  else
  {
    sub_1AFDFE218();

    v26 = a1;
    v27 = a2;

    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF48FC0);
    [v10 offset];
    v18 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
  }

  v20 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v20);

  MEMORY[0x1B2718AE0](544106784, 0xE400000000000000);
  type metadata accessor for view_constants(0);
  sub_1AFB5AE3C();
  v21 = sub_1AFDFCF88();
  MEMORY[0x1B2718AE0](v21);

  sub_1AFB57470();
  swift_allocError();
  *v22 = v26;
  v22[1] = v27;
  swift_willThrow();
}

unint64_t sub_1AFB5AE3C()
{
  result = qword_1ED723138;
  if (!qword_1ED723138)
  {
    type metadata accessor for view_constants(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1ED723138);
  }

  return result;
}

void sub_1AFB5AEC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_1AFB5AF80(255, a3, a4, a5);
    v6 = sub_1AFDFDD58();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AFB5AF24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1AFB5AEC8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AFB5AF80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for FrameConstantsStorage.ConstantStorage(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_1AFB5AFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AFB5B028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

BOOL sub_1AFB5B09C(uint64_t a1)
{
  v2 = v1[2];
  v3 = (v2 + 32);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v6 = *v3;
    v3 += 5;
    if (v6 == &type metadata for Depth)
    {
      return *(&(*(v5 - 2))->Kind + *v1) == a1;
    }
  }

  return 0;
}

char *sub_1AFB5B134(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 5);
  v9 = v8[9];
  v56 = v8[8];
  v10 = v8[10];
  v11 = v8[11];
  v57 = v9;
  v58 = v10;
  v59 = v11;
  v12 = v8[7];
  v54 = v8[6];
  v55 = v12;

  v13 = sub_1AFB5B09C(a4);

  if (v13)
  {
    return sub_1AF62D29C(a2);
  }

  v52[3] = &type metadata for Depth;
  v52[4] = &off_1F252A340;
  v52[0] = a4;
  v53 = 2;
  v15 = (a1 + 104);
  v14 = *(a1 + 104);
  v16 = *(v14 + 16);
  if (!v16)
  {
LABEL_31:
    v30 = *(a2 + 30) - *(a2 + 29);
    v31 = ecs_stack_allocator_allocate(*(a1 + 32), 8 * v30, 8);
    *v31 = a3;
    sub_1AF63515C(v52, v46);
    *v48 = v31;
    *&v48[8] = v30;
    *&v48[16] = 1;
    v32 = *(a1 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 104) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_1AF420EA0(0, v32[2] + 1, 1, v32);
      *v15 = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_1AF420EA0(v34 > 1, v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    v36 = &v32[9 * v35];
    *(v36 + 2) = v46[0];
    v37 = v46[1];
    v38 = v47;
    v39 = *v48;
    v36[12] = *&v48[16];
    *(v36 + 4) = v38;
    *(v36 + 5) = v39;
    *(v36 + 3) = v37;
    *v15 = v32;
    goto LABEL_36;
  }

  v17 = 0;
  v18 = v14 + 32;
  while (1)
  {
    sub_1AF6350F8(v18, v51);
    sub_1AF63515C(v51, v46);
    sub_1AF63515C(v52, v48);
    if (BYTE8(v47) <= 2u)
    {
      if (!BYTE8(v47))
      {
        sub_1AF63515C(v46, v45);
        if (v50)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }

      if (BYTE8(v47) == 1)
      {
        sub_1AF63515C(v46, v45);
        if (v50 != 1)
        {
          goto LABEL_5;
        }

LABEL_18:
        v21 = *&v45[0];
        v22 = *v48;
        sub_1AF635250(v46);
        sub_1AFB6053C(v51, sub_1AF43A540);
        if (v21 == v22)
        {
          goto LABEL_28;
        }

        goto LABEL_6;
      }

      sub_1AF63515C(v46, v45);
      if (v50 != 2)
      {
LABEL_4:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
LABEL_5:
        sub_1AFB6053C(v46, sub_1AF635194);
        sub_1AFB6053C(v51, sub_1AF43A540);
        goto LABEL_6;
      }

      goto LABEL_23;
    }

    if (BYTE8(v47) == 3)
    {
      sub_1AF63515C(v46, v45);
      if (v50 != 3)
      {
        goto LABEL_4;
      }

LABEL_23:
      sub_1AF616568(v45, v42);
      sub_1AF616568(v48, v41);
      v23 = v43;
      v24 = v44;
      sub_1AF441150(v42, v43);
      LOBYTE(v23) = sub_1AF640C98(v41, v23, v24);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v41);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v42);
      sub_1AF635250(v46);
      sub_1AFB6053C(v51, sub_1AF43A540);
      if (v23)
      {
        goto LABEL_28;
      }

      goto LABEL_6;
    }

    if (BYTE8(v47) != 4)
    {
      break;
    }

    sub_1AF63515C(v46, v45);
    if (v50 != 4)
    {
      goto LABEL_5;
    }

    v19 = LOBYTE(v45[0]);
    v20 = v48[0];
    sub_1AF635250(v46);
    sub_1AFB6053C(v51, sub_1AF43A540);
    if (v19 == v20)
    {
      goto LABEL_28;
    }

LABEL_6:
    ++v17;
    v18 += 72;
    if (v16 == v17)
    {
      goto LABEL_31;
    }
  }

  if (v50 != 5)
  {
    goto LABEL_5;
  }

  v25 = vorrq_s8(*&v48[8], v49);
  if (*&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | *v48)
  {
    goto LABEL_5;
  }

  sub_1AF635250(v46);
  sub_1AFB6053C(v51, sub_1AF43A540);
LABEL_28:
  v27 = sub_1AFBFCA08(v46);
  v28 = *(v26 + 48);
  if (v28)
  {
    v29 = *(v26 + 64);
    *(v28 + 8 * v29) = a3;
    *(v26 + 64) = v29 + 1;
  }

  (v27)(v46, 0);
LABEL_36:
  sub_1AF635250(v52);
  return sub_1AF62D29C(a2);
}

char *sub_1AFB5B5D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 5);
  v9 = v8[9];
  v56 = v8[8];
  v10 = v8[10];
  v11 = v8[11];
  v57 = v9;
  v58 = v10;
  v59 = v11;
  v12 = v8[7];
  v54 = v8[6];
  v55 = v12;

  v13 = sub_1AFB5B09C(a4);

  if (!v13)
  {
    return sub_1AF62D29C(a2);
  }

  v52[3] = &type metadata for Depth;
  v52[4] = &off_1F252A340;
  v52[0] = a4;
  v53 = 3;
  v15 = (a1 + 104);
  v14 = *(a1 + 104);
  v16 = *(v14 + 16);
  if (!v16)
  {
LABEL_31:
    v30 = *(a2 + 30) - *(a2 + 29);
    v31 = ecs_stack_allocator_allocate(*(a1 + 32), 8 * v30, 8);
    *v31 = a3;
    sub_1AF63515C(v52, v46);
    *v48 = v31;
    *&v48[8] = v30;
    *&v48[16] = 1;
    v32 = *(a1 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 104) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_1AF420EA0(0, v32[2] + 1, 1, v32);
      *v15 = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_1AF420EA0(v34 > 1, v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    v36 = &v32[9 * v35];
    *(v36 + 2) = v46[0];
    v37 = v46[1];
    v38 = v47;
    v39 = *v48;
    v36[12] = *&v48[16];
    *(v36 + 4) = v38;
    *(v36 + 5) = v39;
    *(v36 + 3) = v37;
    *v15 = v32;
    goto LABEL_36;
  }

  v17 = 0;
  v18 = v14 + 32;
  while (1)
  {
    sub_1AF6350F8(v18, v51);
    sub_1AF63515C(v51, v46);
    sub_1AF63515C(v52, v48);
    if (BYTE8(v47) <= 2u)
    {
      if (!BYTE8(v47))
      {
        sub_1AF63515C(v46, v45);
        if (v50)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }

      if (BYTE8(v47) == 1)
      {
        sub_1AF63515C(v46, v45);
        if (v50 != 1)
        {
          goto LABEL_5;
        }

LABEL_18:
        v21 = *&v45[0];
        v22 = *v48;
        sub_1AF635250(v46);
        sub_1AFB6053C(v51, sub_1AF43A540);
        if (v21 == v22)
        {
          goto LABEL_28;
        }

        goto LABEL_6;
      }

      sub_1AF63515C(v46, v45);
      if (v50 != 2)
      {
LABEL_4:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
LABEL_5:
        sub_1AFB6053C(v46, sub_1AF635194);
        sub_1AFB6053C(v51, sub_1AF43A540);
        goto LABEL_6;
      }

      goto LABEL_23;
    }

    if (BYTE8(v47) == 3)
    {
      sub_1AF63515C(v46, v45);
      if (v50 != 3)
      {
        goto LABEL_4;
      }

LABEL_23:
      sub_1AF616568(v45, v42);
      sub_1AF616568(v48, v41);
      v23 = v43;
      v24 = v44;
      sub_1AF441150(v42, v43);
      LOBYTE(v23) = sub_1AF640C98(v41, v23, v24);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v41);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v42);
      sub_1AF635250(v46);
      sub_1AFB6053C(v51, sub_1AF43A540);
      if (v23)
      {
        goto LABEL_28;
      }

      goto LABEL_6;
    }

    if (BYTE8(v47) != 4)
    {
      break;
    }

    sub_1AF63515C(v46, v45);
    if (v50 != 4)
    {
      goto LABEL_5;
    }

    v19 = LOBYTE(v45[0]);
    v20 = v48[0];
    sub_1AF635250(v46);
    sub_1AFB6053C(v51, sub_1AF43A540);
    if (v19 == v20)
    {
      goto LABEL_28;
    }

LABEL_6:
    ++v17;
    v18 += 72;
    if (v16 == v17)
    {
      goto LABEL_31;
    }
  }

  if (v50 != 5)
  {
    goto LABEL_5;
  }

  v25 = vorrq_s8(*&v48[8], v49);
  if (*&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | *v48)
  {
    goto LABEL_5;
  }

  sub_1AF635250(v46);
  sub_1AFB6053C(v51, sub_1AF43A540);
LABEL_28:
  v27 = sub_1AFBFCA08(v46);
  v28 = *(v26 + 48);
  if (v28)
  {
    v29 = *(v26 + 64);
    *(v28 + 8 * v29) = a3;
    *(v26 + 64) = v29 + 1;
  }

  (v27)(v46, 0);
LABEL_36:
  sub_1AF635250(v52);
  return sub_1AF62D29C(a2);
}

BOOL sub_1AFB5BA7C(uint64_t a1, unint64_t a2)
{
  if (a2 == 0xFFFFFFFF)
  {
    return 0;
  }

  v3 = 0;
  if ((a2 & 0x80000000) == 0 && a2 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    if (HIDWORD(a2) == 0xFFFFFFFF || *(*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2 + 8) == HIDWORD(a2))
    {
      return sub_1AFB5B09C(a1);
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1AFB5BB38(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = HIDWORD(a1);
      v6 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4;
      if (v5 != 0xFFFFFFFF && *(v6 + 8) != v5)
      {
        return 0;
      }

      v7 = *(*(v1 + 88) + 8 * *(v6 + 6) + 32);
      v8 = *(v7 + 96);
      v9 = *(v7 + 112);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Depth)
        {
          return *(&(*(v12 - 2))->Kind + v8);
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1AFB5BC04(unint64_t a1)
{
  if (a1 == -1 && !HIDWORD(a1))
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v4 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
    v5 = a1;
    if (v4 > a1)
    {
      v6 = 0;
      v7 = HIDWORD(a1);
      v8 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
LABEL_7:
      v9 = (v8 + 12 * v5);
      v10 = *(v9 + 2);
      if (v7 == -1 || v9[2] == v7)
      {
        v11 = *(*(v1 + 144) + 8 * *v9 + 32);
        v12 = *(v11 + 48);
        v13 = (v12 + 32);
        v14 = *(v12 + 16) + 1;
        while (--v14)
        {
          v15 = v13 + 5;
          v16 = *v13;
          v13 += 5;
          if (v16 == &type metadata for Parent)
          {
            v7 = (&(*(v15 - 2))->Kind + 8 * v10 + *(v11 + 128));
            LODWORD(v5) = *v7;
            LODWORD(v7) = v7[1];
            v5 = v5;
            result = 0;
            v17 = v5 == -1 && v7 == 0;
            if (!v17 && (v5 & 0x80000000) == 0 && v4 > v5)
            {
              if (v7 != -1 && *(v8 + 12 * v5 + 8) != v7)
              {
                return 0;
              }

              if (v6 == 1000)
              {
                return -1;
              }

              ++v6;
              if ((v5 & 0x80000000) != 0)
              {
                return v6;
              }

              result = v6;
              if (v4 > v5)
              {
                goto LABEL_7;
              }
            }

            return result;
          }
        }
      }

      return v6;
    }
  }

  return result;
}

BOOL sub_1AFB5BD2C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AFB5BA7C(a2, a1);
  if (!v6)
  {
    v7 = HIDWORD(a1);
    if (a2 < 1)
    {
      v12 = v6;
      v16 = sub_1AFB5BB38(a1);
      v6 = v12;
      if ((v17 & 1) == 0 && (v7 || a1 != -1) && (a1 & 0x80000000) == 0 && a1 < *(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
      {
        v18 = (*(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
        if (v7 == 0xFFFFFFFF || v18[2] == HIDWORD(a1))
        {
          v19 = *(v18 + 2);
          v10 = *(*(a3 + 144) + 8 * *v18 + 32);
          if (*(v10 + 232) <= v19 && *(v10 + 240) > v19)
          {
            v21 = **(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
            v22 = *(v10 + 344);

            os_unfair_lock_lock(v22);
            v15 = (v21 + 32);
            ecs_stack_allocator_push_snapshot(*(v21 + 32));

            sub_1AFB5B5D8(v21, v10, v19, v16);
            goto LABEL_26;
          }
        }
      }
    }

    else if ((v7 || a1 != -1) && (a1 & 0x80000000) == 0 && a1 < *(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v8 = (*(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
      if (v7 == 0xFFFFFFFF || v8[2] == HIDWORD(a1))
      {
        v9 = *(v8 + 2);
        v10 = *(*(a3 + 144) + 8 * *v8 + 32);
        if (*(v10 + 232) <= v9 && *(v10 + 240) > v9)
        {
          v12 = v6;
          v13 = **(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v14 = *(v10 + 344);

          os_unfair_lock_lock(v14);
          v15 = (v13 + 32);
          ecs_stack_allocator_push_snapshot(*(v13 + 32));

          sub_1AFB5B134(v13, v10, v9, a2);
LABEL_26:

          ecs_stack_allocator_pop_snapshot(*v15);
          os_unfair_lock_unlock(*(v10 + 344));

          return v12;
        }
      }
    }
  }

  return v6;
}

uint64_t sub_1AFB5BF70()
{
  v0 = swift_allocObject();
  sub_1AFB5BFA8();
  return v0;
}

uint64_t sub_1AFB5BFA8()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v49 = qword_1ED73B840;
  v50 = 0;
  v51 = 2;
  v52 = 0;
  v53 = 2;
  v54 = 0;
  sub_1AF7032F8(1, &v21);
  v1 = v22;
  v2 = v23;
  v3 = v25;
  v4 = v24 | 4;
  *(v0 + 16) = v21;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AF70330C(1, &v26);
  v5 = v27;
  v6 = v28;
  v7 = v30;
  v8 = v29 | 4;
  *(v0 + 56) = v26;
  *(v0 + 64) = v5;
  *(v0 + 68) = v6;
  *(v0 + 72) = v8;
  *(v0 + 80) = 2;
  *(v0 + 88) = v7;
  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for WorldTransform;
  *(inited + 40) = &off_1F2529AF8;
  *(inited + 48) = &type metadata for Depth;
  *(inited + 56) = &off_1F252A2C0;
  sub_1AF5F58E4(inited, 1, v31);
  swift_setDeallocating();
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = &type metadata for Parent;
  *(v10 + 40) = &off_1F2529C18;
  sub_1AF5C5EFC(v10, v32);
  sub_1AF692DB0(v31);
  swift_setDeallocating();
  v11 = v32[1];
  *(v0 + 96) = v32[0];
  *(v0 + 112) = v11;
  *(v0 + 128) = v33;
  sub_1AF703320(2, v34);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE4C620;
  *(v12 + 32) = &type metadata for Fixed;
  *(v12 + 40) = &off_1F252A220;
  *(v12 + 48) = &type metadata for Beamed;
  *(v12 + 56) = &off_1F2529B88;
  sub_1AF5D1EC0(v12);
  sub_1AFB610F4(v34, &unk_1ED723DA0, &type metadata for WorldTransform, &off_1F2529FC0, sub_1AF5DD590);
  swift_setDeallocating();
  v13 = v36;
  *(v0 + 136) = v35;
  *(v0 + 152) = v13;
  *(v0 + 168) = v37;
  sub_1AFCC3AA8(1, 2, v38);
  v14 = v38[1];
  *(v0 + 176) = v38[0];
  *(v0 + 192) = v14;
  *(v0 + 208) = v39;
  sub_1AFCC3ACC(1, 3, v40);
  sub_1AFA1CFD4(0, &qword_1ED7269F0, &qword_1ED72C1B0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = &type metadata for Depth;
  *(v15 + 40) = &off_1F252A340;
  sub_1AFB402C4();
  sub_1AFB6053C(v40, sub_1AFB61154);
  swift_setDeallocating();
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1AFE4C680;
  *(v16 + 32) = &type metadata for Fixed;
  *(v16 + 40) = &off_1F252A220;
  *(v16 + 48) = &type metadata for Beamed;
  *(v16 + 56) = &off_1F2529B88;
  *(v16 + 64) = &type metadata for NotInHierarchy;
  *(v16 + 72) = &off_1F252A380;
  sub_1AF5D1EC0(v16);
  sub_1AFB6053C(v41, sub_1AFB61154);
  swift_setDeallocating();
  v17 = v43;
  *(v0 + 216) = v42;
  *(v0 + 232) = v17;
  *(v0 + 248) = v44;
  sub_1AFCC3ACC(1, 3, v45);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1AFE4C680;
  *(v18 + 32) = &type metadata for Fixed;
  *(v18 + 40) = &off_1F252A220;
  *(v18 + 48) = &type metadata for Beamed;
  *(v18 + 56) = &off_1F2529B88;
  *(v18 + 64) = &type metadata for NotInHierarchy;
  *(v18 + 72) = &off_1F252A380;
  sub_1AF5D1EC0(v18);
  sub_1AFB6053C(v45, sub_1AFB61154);
  swift_setDeallocating();
  v19 = v47;
  *(v0 + 256) = v46;
  *(v0 + 272) = v19;
  *(v0 + 288) = v48;
  return v0;
}

BOOL sub_1AFB5C404(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 96);
  v4 = *(v2 + 112);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for Depth)
    {
      v9 = *(&(*(v7 - 2))->Kind + v3);
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = *(a2 + 40);
  v11 = *(v10 + 96);
  v12 = *(v10 + 112);
  v13 = (v12 + 32);
  v14 = *(v12 + 16) + 1;
  while (--v14)
  {
    v15 = v13 + 5;
    v16 = *v13;
    v13 += 5;
    if (v16 == &type metadata for Depth)
    {
      v17 = *(&(*(v15 - 2))->Kind + v11);
      return v9 < v17;
    }
  }

  v17 = 0;
  return v9 < v17;
}

char *sub_1AFB5C4A0(void *a1, uint64_t a2)
{
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v4, v5, v6, v7);
  result = sub_1AF64B110(&type metadata for Parent, &off_1F2529C98, v4, v5, v6, v7);
  v11 = a1[6];
  v10 = a1[7];
  if (v11 != v10)
  {
    v12 = 0;
    v13 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v14 = -1;
    v15 = xmmword_1AFE20150;
    v16 = xmmword_1AFE20160;
    v17 = xmmword_1AFE20180;
    v18 = xmmword_1AFE201A0;
    do
    {
      v23 = &result[8 * v11];
      v25 = *v23;
      v24 = v23[1];
      if (v25 != v14 || v24 != v12)
      {
        if (v25 == -1 && v24 == 0)
        {
          v12 = 0;
          v14 = -1;
          v15 = xmmword_1AFE20150;
          v16 = xmmword_1AFE20160;
          v17 = xmmword_1AFE20180;
          v18 = xmmword_1AFE201A0;
        }

        else
        {
          if ((v25 & 0x80000000) == 0 && v13[1] > v25)
          {
            v28 = (*v13 + 12 * v25);
            v29 = *(v28 + 2);
            if (v24 == -1 || v28[2] == v24)
            {
              v30 = *(*(a2 + 144) + 8 * *v28 + 32);
              v31 = *(v30 + 48);
              v32 = (v31 + 32);
              v33 = *(v31 + 16) + 1;
              while (--v33)
              {
                v34 = v32 + 5;
                v35 = *v32;
                v32 += 5;
                if (v35 == &type metadata for WorldTransform)
                {
                  v36 = (&(*(v34 - 2))[4 * v29] + *(v30 + 128));
                  v15 = *v36;
                  v16 = v36[1];
                  v17 = v36[2];
                  v18 = v36[3];
                  goto LABEL_19;
                }
              }
            }
          }

          v15 = xmmword_1AFE20150;
          v16 = xmmword_1AFE20160;
          v17 = xmmword_1AFE20180;
          v18 = xmmword_1AFE201A0;
LABEL_19:
          v14 = v25;
          v12 = v24;
        }
      }

      v19 = &v8[64 * v11];
      v20 = *(v19 + 3);
      v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*(v19 + 1))), v16, *(v19 + 16), 1), v17, *(v19 + 1), 2), v18, *(v19 + 1), 3);
      v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*(v19 + 2))), v16, *(v19 + 32), 1), v17, *(v19 + 2), 2), v18, *(v19 + 2), 3);
      *v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*v19)), v16, *v19, 1), v17, *v19, 2), v18, *v19, 3);
      *(v19 + 1) = v21;
      *(v19 + 2) = v22;
      *(v19 + 3) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v20.f32[0]), v16, *v20.f32, 1), v17, v20, 2), v18, v20, 3);
      ++v11;
    }

    while (v11 != v10);
  }

  return result;
}

uint64_t sub_1AFB5C754()
{
  v0 = swift_allocObject();
  sub_1AFB5C78C();
  return v0;
}

uint64_t sub_1AFB5C78C()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED73B840;
  v17 = 0;
  v18 = 2;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  sub_1AF5C909C(v8);
  v1 = v8[1];
  *(v0 + 16) = v8[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v9;
  sub_1AFCC3ACC(1, 1, v10);
  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for LastFrameWorldTransform;
  *(inited + 40) = &off_1F2529E30;
  sub_1AF5D1EC0(inited);
  sub_1AFB6053C(v10, sub_1AFB61154);
  swift_setDeallocating();
  v3 = v12;
  v4 = v13;
  v5 = v15;
  v6 = v14 | 4;
  *(v0 + 56) = v11;
  *(v0 + 64) = v3;
  *(v0 + 68) = v4;
  *(v0 + 72) = v6;
  *(v0 + 80) = 2;
  *(v0 + 88) = v5;
  return v0;
}

void sub_1AFB5C8FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = *(v1 + 56);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  v8 = *(v4 + 40);

  os_unfair_lock_unlock(v8);
}

void sub_1AFB5CA34(uint64_t a1)
{
  v3 = *(v1 + 72);
  v49[0] = *(v1 + 56);
  v49[1] = v3;
  v50 = *(v1 + 88);
  sub_1AF6B06C0(a1, v49, 0x200000000, &v28);
  v23 = v28;
  if (v28)
  {
    v4 = v31;
    v5 = v32;
    v6 = v34;
    v36 = v29;
    v37 = v30;
    v21 = v35;
    v22 = v33;
    if (v35 > 0 && v32)
    {
      v7 = *(v34 + 32);
      v8 = *(v33 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF5D15C0(&v28, v44);
      v9 = (v4 + 24);
      v19 = v8;
      v20 = a1;
      do
      {
        v27 = v5;
        v10 = *(v9 - 6);
        v11 = *(v9 - 5);
        v12 = *(v9 - 4);
        v25 = *v9;
        v26 = *(v9 - 1);
        v13 = v9[2];
        v24 = v9[1];
        if (v8)
        {
          v14 = *(v13 + 376);

          os_unfair_lock_lock(v14);
          os_unfair_lock_lock(*(v13 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v7);
        v15 = *(v6 + 64);
        v42[0] = *(v6 + 48);
        v42[1] = v15;
        v43 = *(v6 + 80);
        v16 = *(v6 + 32);
        v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;

        *(v6 + 48) = ecs_stack_allocator_allocate(v16, 48 * v17, 8);
        *(v6 + 56) = v17;
        *(v6 + 72) = 0;
        *(v6 + 80) = 0;
        *(v6 + 64) = 0;

        LOBYTE(v38) = 1;
        v44[0] = v22;
        v44[1] = v13;
        v44[2] = v6;
        v44[3] = v12;
        v44[4] = (v11 - v10 + v12);
        v44[5] = v21;
        v44[6] = v10;
        v44[7] = v11;
        v44[8] = 0;
        v44[9] = 0;
        v45 = 1;
        v46 = v26;
        v47 = v25;
        v48 = v24;

        sub_1AFD2A628(v44, v20);

        v39 = v23;
        v40 = v36;
        v41 = v37;
        sub_1AF630994(v6, &v39, v42);
        sub_1AF62D29C(v13);
        ecs_stack_allocator_pop_snapshot(v7);
        v8 = v19;
        if (v19)
        {
          os_unfair_lock_unlock(*(v13 + 344));
          os_unfair_lock_unlock(*(v13 + 376));
        }

        v9 += 6;
        v5 = v27 - 1;
      }

      while (v27 != 1);
      v18 = MEMORY[0x1E69E6720];
      sub_1AFB610F4(&v28, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
      sub_1AFB610F4(&v28, &qword_1ED725EA0, &type metadata for QueryResult, v18, sub_1AF69348C);
    }

    else
    {
      sub_1AFB610F4(&v28, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
    }
  }
}

void sub_1AFB5CEA8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  v6 = *(v4 + 40);

  os_unfair_lock_unlock(v6);
}

uint64_t sub_1AFB5CF64(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1;
      v8 = -1;
      v9 = 1;
      v10 = v7;
      do
      {
        result = *(v7 + 48 * v9 + 40);
        v11 = v8;
        v12 = v10;
        do
        {
          result = sub_1AFB5C404(result, *(v12 + 40));
          if ((result & 1) == 0)
          {
            break;
          }

          v13 = *(v12 + 56);
          v14 = *(v12 + 80);
          result = *(v12 + 88);
          v15 = *(v12 + 64);
          v16 = *(v12 + 48);
          v17 = *(v12 + 16);
          *(v12 + 48) = *v12;
          *(v12 + 64) = v17;
          *(v12 + 80) = *(v12 + 32);
          *v12 = v16;
          *(v12 + 8) = v13;
          *(v12 + 16) = v15;
          *(v12 + 32) = v14;
          *(v12 + 40) = result;
          v12 -= 48;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 48;
        --v8;
      }

      while (v9 != v2);
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v19[0] = (v6 + 32);
    v19[1] = v5;
    sub_1AFB5D0C0(v19, v20, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AFB5D0C0(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v76 = *a1;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6;
      if (v6 + 1 >= v5)
      {
        v5 = v6 + 1;
        v15 = a4;
      }

      else
      {
        v9 = 48 * v6;
        v10 = *a3 + 48 * v6;
        v11 = sub_1AFB5C404(*(*a3 + 48 * (v6 + 1) + 40), *(v10 + 40));
        v12 = v8 + 2;
        v13 = (v10 + 136);
        while (v5 != v12)
        {
          v14 = sub_1AFB5C404(*v13, *(v13 - 6));
          ++v12;
          v13 += 6;
          if (v11 != v14)
          {
            v5 = v12 - 1;
            break;
          }
        }

        v15 = a4;
        if (v8 < v5 && v11)
        {
          v16 = 48 * v5 - 48;
          v17 = v5;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v19 = *a3 + v9;
              v20 = *a3 + v16;
              v21 = *(v19 + 8);
              v22 = *(v19 + 32);
              v23 = *(v19 + 40);
              v24 = *(v19 + 16);
              v25 = *v19;
              v27 = *(v20 + 16);
              v26 = *(v20 + 32);
              *v19 = *v20;
              *(v19 + 16) = v27;
              *(v19 + 32) = v26;
              *v20 = v25;
              *(v20 + 8) = v21;
              *(v20 + 16) = v24;
              *(v20 + 32) = v22;
              *(v20 + 40) = v23;
            }

            ++v18;
            v16 -= 48;
            v9 += 48;
          }

          while (v18 < v17);
        }
      }

      v75 = v7;
      v28 = a3[1];
      if (v5 < v28 && v5 - v8 < v15)
      {
        if (v8 + v15 >= v28)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v8 + v15;
        }

        if (v8 + v15 != v5)
        {
          v31 = *a3;
          v32 = *a3 + 48 * v5 - 48;
          v73 = v8;
          v33 = v8 - v5;
          do
          {
            v34 = *(v31 + 48 * v5 + 40);
            v35 = v33;
            v36 = v32;
            do
            {
              if (!sub_1AFB5C404(v34, *(v36 + 40)))
              {
                break;
              }

              v37 = *(v36 + 56);
              v38 = *(v36 + 80);
              v34 = *(v36 + 88);
              v39 = *(v36 + 64);
              v40 = *(v36 + 48);
              v41 = *(v36 + 16);
              *(v36 + 48) = *v36;
              *(v36 + 64) = v41;
              *(v36 + 80) = *(v36 + 32);
              *v36 = v40;
              *(v36 + 8) = v37;
              *(v36 + 16) = v39;
              *(v36 + 32) = v38;
              *(v36 + 40) = v34;
              v36 -= 48;
            }

            while (!__CFADD__(v35++, 1));
            ++v5;
            v32 += 48;
            --v33;
          }

          while (v5 != v30);
          v8 = v73;
        }
      }

      else
      {
        v30 = v5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_1AF4209A4(0, *(v75 + 2) + 1, 1, v75);
      }

      v44 = *(v75 + 2);
      v43 = *(v75 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v75 = sub_1AF4209A4(v43 > 1, v44 + 1, 1, v75);
      }

      *(v75 + 2) = v45;
      v46 = v75 + 32;
      v47 = &v75[16 * v44 + 32];
      *v47 = v8;
      *(v47 + 1) = v30;
      v74 = v30;
      if (v44)
      {
        break;
      }

      v7 = v75;
LABEL_4:
      v5 = a3[1];
      v6 = v74;
      if (v74 >= v5)
      {
        goto LABEL_55;
      }
    }

    v7 = v75;
    while (1)
    {
      v48 = v45 - 1;
      if (v45 >= 4)
      {
        v52 = &v46[16 * v45];
        v53 = *(v52 - 7) - *(v52 - 8);
        v51 = *(v52 - 5) - *(v52 - 6);
        v54 = &v75[16 * v45];
        v49 = *v54;
        v50 = *(v54 + 1);
        if (v51 - v49 + v50 >= v53)
        {
          v57 = v45 - 2;
          v56 = *&v46[16 * v48 + 8] - *&v46[16 * v48];
          goto LABEL_49;
        }
      }

      else
      {
        if (v45 != 3)
        {
          v55 = *&v75[16 * v45 + 8] - *&v75[16 * v45];
          v56 = *&v46[16 * v48 + 8] - *&v46[16 * v48];
LABEL_46:
          if (v56 < v55)
          {
            goto LABEL_4;
          }

          goto LABEL_51;
        }

        v49 = *(v75 + 6);
        v50 = *(v75 + 7);
        v51 = *(v75 + 5) - *(v75 + 4);
      }

      v55 = v50 - v49;
      v56 = *&v46[16 * v48 + 8] - *&v46[16 * v48];
      if (v55 + v56 < v51)
      {
        goto LABEL_46;
      }

      v57 = v45 - 2;
LABEL_49:
      if (v51 < v56)
      {
        v48 = v57;
      }

LABEL_51:
      v58 = &v46[16 * v48];
      v59 = *(v58 - 2);
      v60 = *(v58 + 1);
      sub_1AFB5D58C((*a3 + 48 * v59), (*a3 + 48 * *v58), (*a3 + 48 * v60), v76);
      if (v4)
      {
      }

      *(v58 - 2) = v59;
      *(v58 - 1) = v60;
      v61 = *(v75 + 2);
      v45 = v61 - 1;
      memmove(&v46[16 * v48], v58 + 16, 16 * (v61 - 1 - v48));
      *(v75 + 2) = v61 - 1;
      if (v61 <= 2)
      {
        goto LABEL_4;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_55:
  v77 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AF650C88(v7);
  }

  v62 = v7 + 16;
  v63 = *(v7 + 2);
  if (v63 >= 2)
  {
    do
    {
      v64 = v7;
      v65 = &v7[16 * v63];
      v66 = *v65;
      v67 = &v62[2 * v63];
      v68 = v67[1];
      sub_1AFB5D58C((*a3 + 48 * *v65), (*a3 + 48 * *v67), (*a3 + 48 * v68), v77);
      if (v4)
      {
        break;
      }

      *v65 = v66;
      *(v65 + 1) = v68;
      v69 = *v62 - 1;
      memmove(&v62[2 * v63], v67 + 2, 16 * (*v62 - v63));
      *v62 = v69;
      v63 = v69;
      v7 = v64;
    }

    while (v69 > 1);
  }
}

uint64_t sub_1AFB5D58C(char *__dst, char *__src, char *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[6 * v9];
    if (v8 < 48)
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

      if (sub_1AFB5C404(v6[5], v4[5]))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 6;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 6;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[6 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v5 -= 48;
    do
    {
      v17 = (v5 + 48);
      if (sub_1AFB5C404(*(v12 - 1), *(v6 - 1)))
      {
        v21 = v6 - 6;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v23;
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 6;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 1);
        *(v5 + 1) = *(v12 - 2);
        *(v5 + 2) = v20;
        *v5 = v19;
      }

      v5 -= 48;
      v12 -= 6;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[6 * v24])
  {
    memmove(v6, v4, 48 * v24);
  }

  return 1;
}

uint64_t sub_1AFB5D7C8()
{
  type metadata accessor for StaticToFixedSystem();
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED73B840;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  v12 = 2;
  v13 = 0;
  sub_1AF826E1C(v4);
  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for Fixed;
  *(inited + 40) = &off_1F252A220;
  sub_1AF5D1EC0(inited);
  sub_1AFB610F4(v4, &unk_1ED723BF0, &type metadata for Static, &off_1F2529F60, sub_1AF5DD590);
  swift_setDeallocating();
  v2 = v6;
  *(v0 + 16) = v5;
  *(v0 + 32) = v2;
  *(v0 + 48) = v7;
  return v0;
}

char *sub_1AFB5D918(uint64_t a1)
{
  v2 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v3 = sub_1AF9C5CE0();
  v5 = v4;
  v6 = sub_1AF9C5CF4();
  v8 = v7;
  result = sub_1AF9C5D08();
  v11 = *(a1 + 48);
  v12 = *(a1 + 56) - v11;
  if (v5)
  {
    if (v8)
    {
      if (v10)
      {
        if (v12)
        {
          v13 = &v2[64 * v11 + 32];
          do
          {
            *(v13 - 2) = xmmword_1AFE20150;
            *(v13 - 1) = xmmword_1AFE20160;
            *v13 = xmmword_1AFE20180;
            *(v13 + 1) = xmmword_1AFE201A0;
            v13 += 64;
            --v12;
          }

          while (v12);
        }
      }

      else if (v12)
      {
        v43 = &result[16 * v11];
        v44 = &v2[64 * v11 + 32];
        v45.i64[0] = 0x8000000080000000;
        v45.i64[1] = 0x8000000080000000;
        do
        {
          v46 = *v43++;
          v47 = vabsq_f32(v46);
          v47.i32[3] = 0;
          v48 = vorrq_s8(vandq_s8(v46, v45), vabsq_f32(vmaxnmq_f32(v47, xmmword_1AFE20A30)));
          LODWORD(v49) = 0;
          HIDWORD(v49) = v48.i32[1];
          *&v50 = 0;
          *(&v50 + 1) = v48.u32[2];
          *(v44 - 2) = v48.u32[0];
          *(v44 - 1) = v49;
          *v44 = v50;
          *(v44 + 1) = xmmword_1AFE201A0;
          v44 += 64;
          --v12;
        }

        while (v12);
      }
    }

    else if (v10)
    {
      if (v12)
      {
        v17.i64[0] = 0x4000000040000000;
        v17.i64[1] = 0x4000000040000000;
        v18 = &v6[16 * v11];
        v19 = &v2[64 * v11 + 32];
        do
        {
          v20 = *v18++;
          v21 = v20;
          v22 = vmulq_f32(v21, v21);
          v23 = vmulq_laneq_f32(v21, v21, 3);
          v24 = vmuls_lane_f32(v21.f32[0], *v21.f32, 1);
          v25 = vmuls_lane_f32(v20.f32[1], v20, 2);
          v21.f32[0] = vmuls_lane_f32(v21.f32[0], v21, 2);
          v26.i32[3] = 0;
          v26.f32[0] = (0.5 - v22.f32[1]) - v22.f32[2];
          v22.f32[0] = 0.5 - v22.f32[0];
          v26.f32[1] = v24 + v23.f32[2];
          v27.i32[3] = 0;
          v27.f32[0] = v24 - v23.f32[2];
          v26.f32[2] = v21.f32[0] - v23.f32[1];
          v27.f32[1] = v22.f32[0] - v22.f32[2];
          v27.f32[2] = v25 + v23.f32[0];
          v23.f32[0] = v25 - v23.f32[0];
          v28.f32[0] = v21.f32[0] + v23.f32[1];
          v28.i32[1] = v23.i32[0];
          v28.i64[1] = COERCE_UNSIGNED_INT(v22.f32[0] - v22.f32[1]);
          *(v19 - 32) = vmulq_f32(v17, v26);
          *(v19 - 16) = vmulq_f32(v17, v27);
          *v19 = vmulq_f32(v17, v28);
          *(v19 + 16) = xmmword_1AFE201A0;
          v19 += 64;
          --v12;
        }

        while (v12);
      }
    }

    else if (v12)
    {
      v62 = &v6[16 * v11];
      v63 = &result[16 * v11];
      v64 = &v2[64 * v11 + 32];
      v65.i64[0] = 0x8000000080000000;
      v65.i64[1] = 0x8000000080000000;
      do
      {
        v66 = *v62++;
        v67 = v66;
        v68 = *v63++;
        v69 = vabsq_f32(v68);
        v69.i32[3] = 0;
        v70 = vmulq_f32(v67, v67);
        v71 = vmulq_laneq_f32(v67, v67, 3);
        v72 = vmuls_lane_f32(v67.f32[0], *v67.f32, 1);
        v73 = vmuls_lane_f32(v67.f32[1], v67, 2);
        v67.f32[0] = vmuls_lane_f32(v67.f32[0], v67, 2);
        v74 = vorrq_s8(vandq_s8(v68, v65), vabsq_f32(vmaxnmq_f32(v69, xmmword_1AFE20A30)));
        v75.i32[3] = 0;
        v76 = vaddq_f32(v74, v74);
        v75.f32[0] = (0.5 - v70.f32[1]) - v70.f32[2];
        v70.f32[0] = 0.5 - v70.f32[0];
        v75.f32[1] = v72 + v71.f32[2];
        v77.i32[3] = 0;
        v77.f32[0] = v72 - v71.f32[2];
        v75.f32[2] = v67.f32[0] - v71.f32[1];
        v77.f32[1] = v70.f32[0] - v70.f32[2];
        v77.f32[2] = v73 + v71.f32[0];
        v71.f32[0] = v73 - v71.f32[0];
        v78.f32[0] = v67.f32[0] + v71.f32[1];
        v78.i32[1] = v71.i32[0];
        v78.i64[1] = COERCE_UNSIGNED_INT(v70.f32[0] - v70.f32[1]);
        *(v64 - 32) = vmulq_n_f32(v75, v76.f32[0]);
        *(v64 - 16) = vmulq_lane_f32(v77, *v76.f32, 1);
        *v64 = vmulq_laneq_f32(v78, v76, 2);
        *(v64 + 16) = xmmword_1AFE201A0;
        v64 += 64;
        --v12;
      }

      while (v12);
    }
  }

  else if (v8)
  {
    if (v10)
    {
      if (v12)
      {
        v14 = &v3[16 * v11];
        v15 = &v2[64 * v11 + 32];
        do
        {
          v16 = *v14;
          v14 += 16;
          *(v15 - 2) = xmmword_1AFE20150;
          *(v15 - 1) = xmmword_1AFE20160;
          *v15 = xmmword_1AFE20180;
          *(v15 + 1) = v16;
          v15 += 64;
          --v12;
        }

        while (v12);
      }
    }

    else if (v12)
    {
      v51 = &v3[16 * v11];
      v52 = &result[16 * v11];
      v53 = &v2[64 * v11 + 32];
      v54.i64[0] = 0x8000000080000000;
      v54.i64[1] = 0x8000000080000000;
      do
      {
        v55 = *v51;
        v51 += 16;
        v56 = v55;
        v57 = *v52++;
        v58 = vabsq_f32(v57);
        v58.i32[3] = 0;
        v59 = vorrq_s8(vandq_s8(v57, v54), vabsq_f32(vmaxnmq_f32(v58, xmmword_1AFE20A30)));
        LODWORD(v60) = 0;
        HIDWORD(v60) = v59.i32[1];
        *&v61 = 0;
        *(&v61 + 1) = v59.u32[2];
        *(v53 - 2) = v59.u32[0];
        *(v53 - 1) = v60;
        *v53 = v61;
        *(v53 + 1) = v56;
        v53 += 64;
        --v12;
      }

      while (v12);
    }
  }

  else if (v10)
  {
    if (v12)
    {
      v29.i64[0] = 0x4000000040000000;
      v29.i64[1] = 0x4000000040000000;
      v30 = &v6[16 * v11];
      v31 = &v3[16 * v11];
      v32 = &v2[64 * v11 + 32];
      do
      {
        v33 = *v30++;
        v34 = v33;
        v35 = *v31;
        v31 += 16;
        v36 = vmulq_f32(v34, v34);
        v37 = vmulq_laneq_f32(v34, v34, 3);
        v38 = vmuls_lane_f32(v34.f32[0], *v34.f32, 1);
        v39 = vmuls_lane_f32(v34.f32[1], v34, 2);
        v34.f32[0] = vmuls_lane_f32(v34.f32[0], v34, 2);
        v40.i32[3] = 0;
        v40.f32[0] = (0.5 - v36.f32[1]) - v36.f32[2];
        v36.f32[0] = 0.5 - v36.f32[0];
        v40.f32[1] = v38 + v37.f32[2];
        v41.i32[3] = 0;
        v41.f32[0] = v38 - v37.f32[2];
        v40.f32[2] = v34.f32[0] - v37.f32[1];
        v41.f32[1] = v36.f32[0] - v36.f32[2];
        v41.f32[2] = v39 + v37.f32[0];
        v37.f32[0] = v39 - v37.f32[0];
        v42.f32[0] = v34.f32[0] + v37.f32[1];
        v42.i32[1] = v37.i32[0];
        v42.i64[1] = COERCE_UNSIGNED_INT(v36.f32[0] - v36.f32[1]);
        *(v32 - 32) = vmulq_f32(v29, v40);
        *(v32 - 16) = vmulq_f32(v29, v41);
        *v32 = vmulq_f32(v29, v42);
        *(v32 + 16) = v35;
        v32 += 64;
        --v12;
      }

      while (v12);
    }
  }

  else if (v12)
  {
    v79 = &v6[16 * v11];
    v80 = &v3[16 * v11];
    v81 = &result[16 * v11];
    v82 = &v2[64 * v11 + 32];
    v83.i64[0] = 0x8000000080000000;
    v83.i64[1] = 0x8000000080000000;
    do
    {
      v84 = *v79++;
      v85 = v84;
      v86 = *v80;
      v80 += 16;
      v87 = v86;
      v88 = *v81++;
      v89 = vabsq_f32(v88);
      v89.i32[3] = 0;
      v90 = vmulq_f32(v85, v85);
      v91 = vmulq_laneq_f32(v85, v85, 3);
      v92 = vmuls_lane_f32(v85.f32[0], *v85.f32, 1);
      v93 = vmuls_lane_f32(v85.f32[1], v85, 2);
      v85.f32[0] = vmuls_lane_f32(v85.f32[0], v85, 2);
      v94 = vorrq_s8(vandq_s8(v88, v83), vabsq_f32(vmaxnmq_f32(v89, xmmword_1AFE20A30)));
      v95.i32[3] = 0;
      v96 = vaddq_f32(v94, v94);
      v95.f32[0] = (0.5 - v90.f32[1]) - v90.f32[2];
      v90.f32[0] = 0.5 - v90.f32[0];
      v95.f32[1] = v92 + v91.f32[2];
      v97.i32[3] = 0;
      v97.f32[0] = v92 - v91.f32[2];
      v95.f32[2] = v85.f32[0] - v91.f32[1];
      v97.f32[1] = v90.f32[0] - v90.f32[2];
      v97.f32[2] = v93 + v91.f32[0];
      v91.f32[0] = v93 - v91.f32[0];
      v98.f32[0] = v85.f32[0] + v91.f32[1];
      v98.i32[1] = v91.i32[0];
      v98.i64[1] = COERCE_UNSIGNED_INT(v90.f32[0] - v90.f32[1]);
      *(v82 - 32) = vmulq_n_f32(v95, v96.f32[0]);
      *(v82 - 16) = vmulq_lane_f32(v97, *v96.f32, 1);
      *v82 = vmulq_laneq_f32(v98, v96, 2);
      *(v82 + 16) = v87;
      v82 += 64;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1AFB5DE94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if (sub_1AFB5BD2C(a1, a2, a4) || (v8 = sub_1AF3C9BA4(a1)) == 0)
  {
  }

  else
  {
    v9 = v8;
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = 32;
      do
      {
        v12 = *(v9 + v11);

        sub_1AFB5DE94(v12, a2 + 1, a3, a4);

        v11 += 8;
        --v10;
      }

      while (v10);
    }
  }
}

void sub_1AFB5DF8C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = 0;
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  v470 = *(v1 + 88);
  v469[0] = v5;
  v469[1] = v6;
  sub_1AF6B06C0(a1, v469, 0x200000000, &v385);
  v349 = v3;
  v342 = v1;
  if (v385)
  {
    if (v392 < 1 || (v346 = v389) == 0)
    {
LABEL_160:
      sub_1AFB610F4(&v385, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
      v3 = v349;
      v2 = v342;
      goto LABEL_161;
    }

    v7 = 0;
    v343 = v388;
    v8 = v391;
    v359 = *(v391 + 32);
    v355 = *(v390 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v419 = v385;
    v420 = v386;
    v421 = v387;
    while (1)
    {
      v365 = v4;
      v350 = v7;
      v9 = (v343 + 48 * v7);
      v11 = *v9;
      v10 = v9[1];
      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      v14 = *(v9 + 5);
      v370 = *(v9 + 4);
      if (v355)
      {
        v15 = *(v14 + 376);

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(*(v14 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v359);
      v16 = *(v8 + 64);
      v467[0] = *(v8 + 48);
      v467[1] = v16;
      v468 = *(v8 + 80);
      v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
      *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v17, 8);
      *(v8 + 56) = v17;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;
      v376 = sub_1AF64B110(&type metadata for SpaceOverride, &off_1F2529D48, v13, v12, v370, v8);
      if (v13)
      {
        if (v370)
        {
          v18 = v370;
          v19 = 0;
          while (1)
          {
            v20 = v13[v19];
            v21 = v376[v19];
            if (v21 != 2)
            {
              break;
            }

            v54 = *(*(v14 + 40) + 16);
            v55 = *(v54 + 128);
            if (!*(v55 + 16) || (v56 = sub_1AF449CB8(&type metadata for ParentedToScene), (v57 & 1) == 0) || *(*(v54 + 24) + 16 * *(*(v55 + 56) + 8 * v56) + 32) != &type metadata for ParentedToScene)
            {
              *&v435 = &type metadata for ParentedToScene;
              *(&v435 + 1) = &off_1F252A360;
              BYTE8(v437) = 0;
              v58 = *(v8 + 104);
              v59 = *(v58 + 16);

              if (v59)
              {
                v60 = 0;
                v61 = v58 + 32;
                while (1)
                {
                  sub_1AF6350F8(v61, &v455);
                  v62 = sub_1AF6346E0(&v455, &v435);
                  sub_1AFB6053C(&v455, sub_1AF43A540);
                  if (v62)
                  {
                    break;
                  }

                  ++v60;
                  v61 += 72;
                  if (v59 == v60)
                  {
                    goto LABEL_47;
                  }
                }

                v85 = sub_1AFBFCA08(&v455);
                v86 = *(v84 + 48);
                if (v86)
                {
                  v87 = *(v84 + 64);
                  *(v86 + 8 * v87) = v20;
                  *(v84 + 64) = v87 + 1;
                }

                (v85)(&v455, 0);

                sub_1AF635250(&v435);
              }

              else
              {
LABEL_47:
                v63 = *(v14 + 240) - *(v14 + 232);
                v64 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v63, 8);
                *v64 = v20;
                sub_1AF63515C(&v435, &v455);
                *&v458 = v64;
                *(&v458 + 1) = v63;
                v459 = 1;
                v65 = *(v8 + 104);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v8 + 104) = v65;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v65 = sub_1AF420EA0(0, v65[2] + 1, 1, v65);
                  *(v8 + 104) = v65;
                }

                v68 = v65[2];
                v67 = v65[3];
                if (v68 >= v67 >> 1)
                {
                  *(v8 + 104) = sub_1AF420EA0(v67 > 1, v68 + 1, 1, v65);
                }

                sub_1AF635250(&v435);
                v69 = *(v8 + 104);
                *(v69 + 16) = v68 + 1;
                v70 = v69 + 72 * v68;
                *(v70 + 32) = v455;
                v72 = v457;
                v71 = v458;
                v73 = v456;
                *(v70 + 96) = v459;
                *(v70 + 64) = v72;
                *(v70 + 80) = v71;
                *(v70 + 48) = v73;
                *(v8 + 104) = v69;
              }
            }

            v88 = *(*(v14 + 40) + 16);
            v89 = *(v88 + 128);
            if (!*(v89 + 16) || (v90 = sub_1AF449CB8(&type metadata for NotInHierarchy), (v91 & 1) == 0) || *(*(v88 + 24) + 16 * *(*(v89 + 56) + 8 * v90) + 32) != &type metadata for NotInHierarchy)
            {
              *&v435 = &type metadata for NotInHierarchy;
              *(&v435 + 1) = &off_1F252A400;
              BYTE8(v437) = 0;
              v92 = *(v8 + 104);
              v93 = *(v92 + 16);

              if (!v93)
              {
LABEL_73:
                v97 = *(v14 + 240) - *(v14 + 232);
                v98 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v97, 8);
                *v98 = v20;
                sub_1AF63515C(&v435, &v455);
                *&v458 = v98;
                *(&v458 + 1) = v97;
                v459 = 1;
                v99 = *(v8 + 104);
                v100 = swift_isUniquelyReferenced_nonNull_native();
                *(v8 + 104) = v99;
                if ((v100 & 1) == 0)
                {
                  v99 = sub_1AF420EA0(0, v99[2] + 1, 1, v99);
                  *(v8 + 104) = v99;
                }

                v18 = v370;
                v102 = v99[2];
                v101 = v99[3];
                if (v102 >= v101 >> 1)
                {
                  *(v8 + 104) = sub_1AF420EA0(v101 > 1, v102 + 1, 1, v99);
                }

                sub_1AF635250(&v435);
                v103 = *(v8 + 104);
                *(v103 + 16) = v102 + 1;
                v104 = v103 + 72 * v102;
                *(v104 + 32) = v455;
                v106 = v457;
                v105 = v458;
                v107 = v456;
                *(v104 + 96) = v459;
                *(v104 + 64) = v106;
                *(v104 + 80) = v105;
                *(v104 + 48) = v107;
                *(v8 + 104) = v103;
                goto LABEL_14;
              }

              v94 = 0;
              v95 = v92 + 32;
              while (1)
              {
                sub_1AF6350F8(v95, &v455);
                v96 = sub_1AF6346E0(&v455, &v435);
                sub_1AFB6053C(&v455, sub_1AF43A540);
                if (v96)
                {
                  break;
                }

                ++v94;
                v95 += 72;
                if (v93 == v94)
                {
                  goto LABEL_73;
                }
              }

              v109 = sub_1AFBFCA08(&v455);
              v110 = *(v108 + 48);
              if (v110)
              {
                v111 = *(v108 + 64);
                *(v110 + 8 * v111) = v20;
                *(v108 + 64) = v111 + 1;
              }

              (v109)(&v455, 0);

              sub_1AF635250(&v435);
            }

            v18 = v370;
LABEL_14:
            if (++v19 == v18)
            {
              goto LABEL_85;
            }
          }

          if (v21 != 1)
          {
            if (v376[v19])
            {
              goto LABEL_14;
            }

            v22 = *(*(v14 + 40) + 16);
            v23 = *(v22 + 128);
            if (*(v23 + 16))
            {
              v24 = sub_1AF449CB8(&type metadata for NotInHierarchy);
              if (v25)
              {
                v26 = *(v22 + 24) + 32;
                if (*(v26 + 16 * *(*(v23 + 56) + 8 * v24)) == &type metadata for NotInHierarchy)
                {
                  if (*(v23 + 16))
                  {
                    v112 = sub_1AF449CB8(&type metadata for NotInHierarchy);
                    if ((v113 & 1) != 0 && *(v26 + 16 * *(*(v23 + 56) + 8 * v112)) == &type metadata for NotInHierarchy)
                    {
                      *&v455 = &type metadata for NotInHierarchy;
                      *(&v455 + 1) = &off_1F252A400;
                      BYTE8(v457) = 1;
                      MEMORY[0x1EEE9AC00](v112);

                      sub_1AF63023C(0, v14, sub_1AFA9EC24);

                      sub_1AF635250(&v455);
                    }
                  }
                }
              }
            }

            v27 = *(*(v14 + 40) + 16);
            v28 = *(v27 + 128);
            if (!*(v28 + 16))
            {
              goto LABEL_14;
            }

            v29 = sub_1AF449CB8(&type metadata for ParentedToScene);
            if ((v30 & 1) == 0)
            {
              goto LABEL_14;
            }

            v31 = *(v27 + 24) + 32;
            if (*(v31 + 16 * *(*(v28 + 56) + 8 * v29)) != &type metadata for ParentedToScene)
            {
              goto LABEL_14;
            }

            if (!*(v28 + 16))
            {
              goto LABEL_14;
            }

            v32 = sub_1AF449CB8(&type metadata for ParentedToScene);
            if ((v33 & 1) == 0 || *(v31 + 16 * *(*(v28 + 56) + 8 * v32)) != &type metadata for ParentedToScene)
            {
              goto LABEL_14;
            }

LABEL_62:
            *&v455 = &type metadata for ParentedToScene;
            *(&v455 + 1) = &off_1F252A360;
            BYTE8(v457) = 1;
            MEMORY[0x1EEE9AC00](v32);

            sub_1AF63023C(0, v14, sub_1AFA9EC24);

            sub_1AF635250(&v455);
            goto LABEL_14;
          }

          v34 = *(*(v14 + 40) + 16);
          v35 = *(v34 + 128);
          if (!*(v35 + 16) || (v36 = sub_1AF449CB8(&type metadata for NotInHierarchy), (v37 & 1) == 0) || *(*(v34 + 24) + 16 * *(*(v35 + 56) + 8 * v36) + 32) != &type metadata for NotInHierarchy)
          {
            *&v435 = &type metadata for NotInHierarchy;
            *(&v435 + 1) = &off_1F252A400;
            BYTE8(v437) = 0;
            v38 = *(v8 + 104);
            v39 = *(v38 + 16);

            if (!v39)
            {
LABEL_35:
              v43 = *(v14 + 240) - *(v14 + 232);
              v44 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v43, 8);
              *v44 = v20;
              sub_1AF63515C(&v435, &v455);
              *&v458 = v44;
              *(&v458 + 1) = v43;
              v459 = 1;
              v45 = *(v8 + 104);
              v46 = swift_isUniquelyReferenced_nonNull_native();
              *(v8 + 104) = v45;
              if ((v46 & 1) == 0)
              {
                v45 = sub_1AF420EA0(0, v45[2] + 1, 1, v45);
                *(v8 + 104) = v45;
              }

              v18 = v370;
              v48 = v45[2];
              v47 = v45[3];
              if (v48 >= v47 >> 1)
              {
                *(v8 + 104) = sub_1AF420EA0(v47 > 1, v48 + 1, 1, v45);
              }

              sub_1AF635250(&v435);
              v49 = *(v8 + 104);
              *(v49 + 16) = v48 + 1;
              v50 = v49 + 72 * v48;
              *(v50 + 32) = v455;
              v52 = v457;
              v51 = v458;
              v53 = v456;
              *(v50 + 96) = v459;
              *(v50 + 64) = v52;
              *(v50 + 80) = v51;
              *(v50 + 48) = v53;
              *(v8 + 104) = v49;
LABEL_56:
              v78 = *(*(v14 + 40) + 16);
              v79 = *(v78 + 128);
              if (!*(v79 + 16))
              {
                goto LABEL_14;
              }

              v80 = sub_1AF449CB8(&type metadata for ParentedToScene);
              if ((v81 & 1) == 0)
              {
                goto LABEL_14;
              }

              v82 = *(v78 + 24) + 32;
              if (*(v82 + 16 * *(*(v79 + 56) + 8 * v80)) != &type metadata for ParentedToScene)
              {
                goto LABEL_14;
              }

              if (!*(v79 + 16))
              {
                goto LABEL_14;
              }

              v32 = sub_1AF449CB8(&type metadata for ParentedToScene);
              if ((v83 & 1) == 0 || *(v82 + 16 * *(*(v79 + 56) + 8 * v32)) != &type metadata for ParentedToScene)
              {
                goto LABEL_14;
              }

              goto LABEL_62;
            }

            v40 = 0;
            v41 = v38 + 32;
            while (1)
            {
              sub_1AF6350F8(v41, &v455);
              v42 = sub_1AF6346E0(&v455, &v435);
              sub_1AFB6053C(&v455, sub_1AF43A540);
              if (v42)
              {
                break;
              }

              ++v40;
              v41 += 72;
              if (v39 == v40)
              {
                goto LABEL_35;
              }
            }

            v75 = sub_1AFBFCA08(&v455);
            v76 = *(v74 + 48);
            if (v76)
            {
              v77 = *(v74 + 64);
              *(v76 + 8 * v77) = v20;
              *(v74 + 64) = v77 + 1;
            }

            (v75)(&v455, 0);

            sub_1AF635250(&v435);
          }

          v18 = v370;
          goto LABEL_56;
        }

        goto LABEL_85;
      }

      if (v11 != v10)
      {
        break;
      }

LABEL_85:
      sub_1AF630994(v8, &v419, v467);
      v4 = v365;
      sub_1AF62D29C(v14);
      ecs_stack_allocator_pop_snapshot(v359);
      if (v355)
      {
        os_unfair_lock_unlock(*(v14 + 344));
        os_unfair_lock_unlock(*(v14 + 376));
      }

      v7 = v350 + 1;
      if (v350 + 1 == v346)
      {
        goto LABEL_160;
      }
    }

    while (1)
    {
      v115 = v376[v11];
      if (v115 == 2)
      {
        v149 = *(*(v14 + 40) + 16);
        v150 = *(v149 + 128);
        if (!*(v150 + 16) || (v151 = sub_1AF449CB8(&type metadata for ParentedToScene), (v152 & 1) == 0) || *(*(v149 + 24) + 16 * *(*(v150 + 56) + 8 * v151) + 32) != &type metadata for ParentedToScene)
        {
          *&v435 = &type metadata for ParentedToScene;
          *(&v435 + 1) = &off_1F252A360;
          BYTE8(v437) = 0;
          v153 = *(v8 + 104);
          v154 = *(v153 + 16);

          if (v154)
          {
            v155 = 0;
            v156 = v153 + 32;
            while (1)
            {
              sub_1AF6350F8(v156, &v455);
              v157 = sub_1AF6346E0(&v455, &v435);
              sub_1AFB6053C(&v455, sub_1AF43A540);
              if (v157)
              {
                break;
              }

              ++v155;
              v156 += 72;
              if (v154 == v155)
              {
                goto LABEL_123;
              }
            }

            v181 = sub_1AFBFCA08(&v455);
            v182 = *(v180 + 48);
            if (v182)
            {
              v183 = *(v180 + 64);
              *(v182 + 8 * v183) = v11;
              *(v180 + 64) = v183 + 1;
            }

            (v181)(&v455, 0);

            sub_1AF635250(&v435);
          }

          else
          {
LABEL_123:
            v158 = *(v14 + 240) - *(v14 + 232);
            v159 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v158, 8);
            *v159 = v11;
            sub_1AF63515C(&v435, &v455);
            *&v458 = v159;
            *(&v458 + 1) = v158;
            v459 = 1;
            v160 = *(v8 + 104);
            v161 = swift_isUniquelyReferenced_nonNull_native();
            *(v8 + 104) = v160;
            if ((v161 & 1) == 0)
            {
              v160 = sub_1AF420EA0(0, v160[2] + 1, 1, v160);
              *(v8 + 104) = v160;
            }

            v163 = v160[2];
            v162 = v160[3];
            if (v163 >= v162 >> 1)
            {
              *(v8 + 104) = sub_1AF420EA0(v162 > 1, v163 + 1, 1, v160);
            }

            sub_1AF635250(&v435);
            v164 = *(v8 + 104);
            *(v164 + 16) = v163 + 1;
            v165 = v164 + 72 * v163;
            *(v165 + 32) = v455;
            v167 = v457;
            v166 = v458;
            v168 = v456;
            *(v165 + 96) = v459;
            *(v165 + 64) = v167;
            *(v165 + 80) = v166;
            *(v165 + 48) = v168;
            *(v8 + 104) = v164;
          }
        }

        v184 = *(*(v14 + 40) + 16);
        v185 = *(v184 + 128);
        if (*(v185 + 16))
        {
          v186 = sub_1AF449CB8(&type metadata for NotInHierarchy);
          if ((v187 & 1) != 0 && *(*(v184 + 24) + 16 * *(*(v185 + 56) + 8 * v186) + 32) == &type metadata for NotInHierarchy)
          {
            goto LABEL_90;
          }
        }

        *&v435 = &type metadata for NotInHierarchy;
        *(&v435 + 1) = &off_1F252A400;
        BYTE8(v437) = 0;
        v188 = *(v8 + 104);
        v189 = *(v188 + 16);

        if (v189)
        {
          v190 = 0;
          v191 = v188 + 32;
          while (1)
          {
            sub_1AF6350F8(v191, &v455);
            v192 = sub_1AF6346E0(&v455, &v435);
            sub_1AFB6053C(&v455, sub_1AF43A540);
            if (v192)
            {
              break;
            }

            ++v190;
            v191 += 72;
            if (v189 == v190)
            {
              goto LABEL_149;
            }
          }

          v205 = sub_1AFBFCA08(&v455);
          v206 = *(v204 + 48);
          if (v206)
          {
            v207 = *(v204 + 64);
            *(v206 + 8 * v207) = v11;
            *(v204 + 64) = v207 + 1;
          }

          (v205)(&v455, 0);
        }

        else
        {
LABEL_149:
          v193 = *(v14 + 240) - *(v14 + 232);
          v194 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v193, 8);
          *v194 = v11;
          sub_1AF63515C(&v435, &v455);
          *&v458 = v194;
          *(&v458 + 1) = v193;
          v459 = 1;
          v195 = *(v8 + 104);
          v196 = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 104) = v195;
          if ((v196 & 1) == 0)
          {
            v195 = sub_1AF420EA0(0, v195[2] + 1, 1, v195);
            *(v8 + 104) = v195;
          }

          v198 = v195[2];
          v197 = v195[3];
          if (v198 >= v197 >> 1)
          {
            *(v8 + 104) = sub_1AF420EA0(v197 > 1, v198 + 1, 1, v195);
          }

          v199 = *(v8 + 104);
          *(v199 + 16) = v198 + 1;
          v200 = v199 + 72 * v198;
          *(v200 + 32) = v455;
          v201 = v456;
          v202 = v457;
          v203 = v458;
          *(v200 + 96) = v459;
          *(v200 + 64) = v202;
          *(v200 + 80) = v203;
          *(v200 + 48) = v201;
          *(v8 + 104) = v199;
        }

        v114 = &v435;
      }

      else
      {
        if (v115 == 1)
        {
          v129 = *(*(v14 + 40) + 16);
          v130 = *(v129 + 128);
          if (!*(v130 + 16) || (v131 = sub_1AF449CB8(&type metadata for NotInHierarchy), (v132 & 1) == 0) || *(*(v129 + 24) + 16 * *(*(v130 + 56) + 8 * v131) + 32) != &type metadata for NotInHierarchy)
          {
            *&v435 = &type metadata for NotInHierarchy;
            *(&v435 + 1) = &off_1F252A400;
            BYTE8(v437) = 0;
            v133 = *(v8 + 104);
            v134 = *(v133 + 16);

            if (v134)
            {
              v135 = 0;
              v136 = v133 + 32;
              while (1)
              {
                sub_1AF6350F8(v136, &v455);
                v137 = sub_1AF6346E0(&v455, &v435);
                sub_1AFB6053C(&v455, sub_1AF43A540);
                if (v137)
                {
                  break;
                }

                ++v135;
                v136 += 72;
                if (v134 == v135)
                {
                  goto LABEL_111;
                }
              }

              v170 = sub_1AFBFCA08(&v455);
              v171 = *(v169 + 48);
              if (v171)
              {
                v172 = *(v169 + 64);
                *(v171 + 8 * v172) = v11;
                *(v169 + 64) = v172 + 1;
              }

              (v170)(&v455, 0);

              sub_1AF635250(&v435);
            }

            else
            {
LABEL_111:
              v138 = *(v14 + 240) - *(v14 + 232);
              v139 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v138, 8);
              *v139 = v11;
              sub_1AF63515C(&v435, &v455);
              *&v458 = v139;
              *(&v458 + 1) = v138;
              v459 = 1;
              v140 = *(v8 + 104);
              v141 = swift_isUniquelyReferenced_nonNull_native();
              *(v8 + 104) = v140;
              if ((v141 & 1) == 0)
              {
                v140 = sub_1AF420EA0(0, v140[2] + 1, 1, v140);
                *(v8 + 104) = v140;
              }

              v143 = v140[2];
              v142 = v140[3];
              if (v143 >= v142 >> 1)
              {
                *(v8 + 104) = sub_1AF420EA0(v142 > 1, v143 + 1, 1, v140);
              }

              sub_1AF635250(&v435);
              v144 = *(v8 + 104);
              *(v144 + 16) = v143 + 1;
              v145 = v144 + 72 * v143;
              *(v145 + 32) = v455;
              v147 = v457;
              v146 = v458;
              v148 = v456;
              *(v145 + 96) = v459;
              *(v145 + 64) = v147;
              *(v145 + 80) = v146;
              *(v145 + 48) = v148;
              *(v8 + 104) = v144;
            }
          }

          v173 = *(*(v14 + 40) + 16);
          v174 = *(v173 + 128);
          if (!*(v174 + 16))
          {
            goto LABEL_90;
          }

          v175 = sub_1AF449CB8(&type metadata for ParentedToScene);
          if ((v176 & 1) == 0)
          {
            goto LABEL_90;
          }

          v177 = *(v173 + 24) + 32;
          if (*(v177 + 16 * *(*(v174 + 56) + 8 * v175)) != &type metadata for ParentedToScene)
          {
            goto LABEL_90;
          }

          if (!*(v174 + 16))
          {
            goto LABEL_90;
          }

          v178 = sub_1AF449CB8(&type metadata for ParentedToScene);
          if ((v179 & 1) == 0 || *(v177 + 16 * *(*(v174 + 56) + 8 * v178)) != &type metadata for ParentedToScene)
          {
            goto LABEL_90;
          }

          *&v455 = &type metadata for ParentedToScene;
          *(&v455 + 1) = &off_1F252A360;
          BYTE8(v457) = 1;
          MEMORY[0x1EEE9AC00](v178);

          v128 = sub_1AF6AFAF8;
        }

        else
        {
          if (v376[v11])
          {
            goto LABEL_90;
          }

          v116 = *(*(v14 + 40) + 16);
          v117 = *(v116 + 128);
          if (*(v117 + 16))
          {
            v118 = sub_1AF449CB8(&type metadata for NotInHierarchy);
            if (v119)
            {
              v120 = *(v116 + 24) + 32;
              if (*(v120 + 16 * *(*(v117 + 56) + 8 * v118)) == &type metadata for NotInHierarchy)
              {
                if (*(v117 + 16))
                {
                  v208 = sub_1AF449CB8(&type metadata for NotInHierarchy);
                  if ((v209 & 1) != 0 && *(v120 + 16 * *(*(v117 + 56) + 8 * v208)) == &type metadata for NotInHierarchy)
                  {
                    *&v455 = &type metadata for NotInHierarchy;
                    *(&v455 + 1) = &off_1F252A400;
                    BYTE8(v457) = 1;
                    MEMORY[0x1EEE9AC00](v208);

                    sub_1AF63023C(0, v14, sub_1AFA9EC24);

                    sub_1AF635250(&v455);
                  }
                }
              }
            }
          }

          v121 = *(*(v14 + 40) + 16);
          v122 = *(v121 + 128);
          if (!*(v122 + 16))
          {
            goto LABEL_90;
          }

          v123 = sub_1AF449CB8(&type metadata for ParentedToScene);
          if ((v124 & 1) == 0)
          {
            goto LABEL_90;
          }

          v125 = *(v121 + 24) + 32;
          if (*(v125 + 16 * *(*(v122 + 56) + 8 * v123)) != &type metadata for ParentedToScene)
          {
            goto LABEL_90;
          }

          if (!*(v122 + 16))
          {
            goto LABEL_90;
          }

          v126 = sub_1AF449CB8(&type metadata for ParentedToScene);
          if ((v127 & 1) == 0 || *(v125 + 16 * *(*(v122 + 56) + 8 * v126)) != &type metadata for ParentedToScene)
          {
            goto LABEL_90;
          }

          *&v455 = &type metadata for ParentedToScene;
          *(&v455 + 1) = &off_1F252A360;
          BYTE8(v457) = 1;
          MEMORY[0x1EEE9AC00](v126);

          v128 = sub_1AFA9EC24;
        }

        sub_1AF63023C(0, v14, v128);

        v114 = &v455;
      }

      sub_1AF635250(v114);
LABEL_90:
      if (++v11 == v10)
      {
        goto LABEL_85;
      }
    }
  }

LABEL_161:
  v210 = *(v2 + 152);
  v465[0] = *(v2 + 136);
  v465[1] = v210;
  v466 = *(v2 + 168);
  v211 = sub_1AF6B06C0(v3, v465, 0x200000000, v393);
  if (*&v393[0])
  {
    v351 = v396;
    if (v396 > 0 && (v212 = *(&v394 + 1)) != 0)
    {
      v213 = *(&v393[2] + 1);
      v214 = *(&v395 + 1);
      v347 = v395;
      v377 = *(v395 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v371 = *(*(&v395 + 1) + 32);
      v422 = *&v393[0];
      v423 = *(v393 + 8);
      v424 = *(&v393[1] + 8);
      v437 = v393[2];
      v438 = v394;
      v439 = v395;
      v440 = v396;
      v435 = v393[0];
      v436 = v393[1];
      sub_1AF5DD298(&v435, &v455);
      v215 = (v213 + 24);
      do
      {
        v360 = v212;
        v366 = v4;
        v216 = *(v215 - 6);
        v217 = *(v215 - 5);
        v218 = *(v215 - 4);
        v219 = *v215;
        v356 = *(v215 - 1);
        v221 = v215[1];
        v220 = v215[2];
        if (v377)
        {
          v222 = *(v220 + 376);

          os_unfair_lock_lock(v222);
          os_unfair_lock_lock(*(v220 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v371);
        v223 = *(v214 + 64);
        v453[0] = *(v214 + 48);
        v453[1] = v223;
        v454 = *(v214 + 80);
        v224 = *(*(*(*(v220 + 40) + 16) + 32) + 16) + 1;
        *(v214 + 48) = ecs_stack_allocator_allocate(*(v214 + 32), 48 * v224, 8);
        *(v214 + 56) = v224;
        *(v214 + 72) = 0;
        *(v214 + 80) = 0;
        *(v214 + 64) = 0;
        LOBYTE(v413[0]) = 1;
        *&v455 = v347;
        *(&v455 + 1) = v220;
        *&v456 = v214;
        *(&v456 + 1) = v218;
        *&v457 = (v217 - v216 + v218);
        *(&v457 + 1) = v351;
        *&v458 = v216;
        *(&v458 + 1) = v217;
        v459 = 0;
        v460 = 0;
        v461 = 1;
        v462 = v356;
        v463 = v219;
        v464 = v221;
        sub_1AFB5D918(&v455);
        sub_1AF630994(v214, &v422, v453);
        v4 = v366;
        if (*(*(v214 + 104) + 16))
        {

          sub_1AF62F348(v225, v220);

          v226 = swift_isUniquelyReferenced_nonNull_native();
          v227 = *(v214 + 104);
          if (v226)
          {
            sub_1AF64C2E8(0, *(v227 + 16));
          }

          else
          {
            v228 = MEMORY[0x1E69E7CC0];
            if (*(v227 + 24) >= 2uLL)
            {
              sub_1AF9FA280(0);
              v228 = swift_allocObject();
              v229 = j__malloc_size_0(v228);
              v228[2] = 0;
              v228[3] = 2 * ((v229 - 32) / 72);
            }

            *(v214 + 104) = v228;
          }

          if (*(*(v214 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
          {
            v230 = *(v220 + 232);
            v231 = *(v220 + 256);
            if (v230 == v231)
            {
              v232 = *(v220 + 240);
            }

            else
            {
              sub_1AF6497A0(v231, v230);
              v231 = *(v220 + 232);
              v232 = *(v220 + 240);
              if (v232 == v231)
              {
                v232 = 0;
                v231 = 0;
                *(v220 + 232) = 0;
                *(v220 + 240) = 0;
              }
            }

            *(v220 + 248) = v232;
            *(v220 + 256) = v231;
          }
        }

        ecs_stack_allocator_pop_snapshot(v371);
        if (v377)
        {
          os_unfair_lock_unlock(*(v220 + 344));
          os_unfair_lock_unlock(*(v220 + 376));
        }

        v215 += 6;
        v212 = v360 - 1;
      }

      while (v360 != 1);
      v233 = MEMORY[0x1E69E6720];
      sub_1AFB610F4(v393, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
      sub_1AFB610F4(v393, &qword_1ED725EA0, &type metadata for QueryResult, v233, sub_1AF69348C);
      v3 = v349;
      v2 = v342;
    }

    else
    {
      sub_1AFB610F4(v393, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
    }
  }

  v344 = (*(*v2 + 160))(v211);
  if ((v344 & 1) == 0)
  {
    v259 = 288;
    v260 = 280;
    v261 = 272;
    v262 = 268;
    v263 = 264;
    v264 = 256;
LABEL_238:
    v293 = *(v2 + v264);
    v294 = *(v2 + v263);
    v295 = *(v2 + v262);
    v296 = *(v2 + v261);
    v297 = *(v2 + v260);
    v298 = *(v2 + v259);

    v443 = v293;
    v444 = v294;
    v445 = v295;
    v446 = v296;
    v447 = v297;
    v448 = v298;
    sub_1AF6B06C0(v3, &v443, 0x200000000, &v405);

    v353 = v405;
    if (v405)
    {
      v299 = v408;
      v300 = v409;
      v348 = v410;
      v301 = v411;
      v357 = v412;
      v417 = v406;
      v418 = v407;
      if (v344)
      {
        *&v435 = v408;
        *(&v435 + 1) = v409;
        sub_1AFB5CF64(&v435);
      }

      if (v357 >= 1 && v300)
      {
        v302 = *(v348 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v303 = *(v301 + 32);
        v304 = (v299 + 24);
        v345 = v302;
        do
        {
          v306 = *(v304 - 6);
          v305 = *(v304 - 5);
          v307 = *(v304 - 4);
          v374 = *v304;
          v380 = *(v304 - 1);
          v308 = v304[2];
          v363 = v304[1];
          if (v302)
          {
            v309 = *(v308 + 376);

            os_unfair_lock_lock(v309);
            os_unfair_lock_lock(*(v308 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v303);
          v310 = *(v301 + 64);
          v433[0] = *(v301 + 48);
          v433[1] = v310;
          v434 = *(v301 + 80);
          v311 = *(*(*(*(v308 + 40) + 16) + 32) + 16) + 1;
          *(v301 + 48) = ecs_stack_allocator_allocate(*(v301 + 32), 48 * v311, 8);
          *(v301 + 56) = v311;
          *(v301 + 72) = 0;
          *(v301 + 80) = 0;
          *(v301 + 64) = 0;
          LOBYTE(v413[0]) = 1;
          *&v435 = v348;
          *(&v435 + 1) = v308;
          *&v436 = v301;
          *(&v436 + 1) = v307;
          *&v437 = (v305 - v306 + v307);
          *(&v437 + 1) = v357;
          *&v438 = v306;
          *(&v438 + 1) = v305;
          v439 = 0uLL;
          LOBYTE(v440) = 1;
          *(&v440 + 1) = v380;
          v441 = v374;
          v442 = v363;
          sub_1AFB5C4A0(&v435, v349);
          v425 = v353;
          v426 = v417;
          v427 = v418;
          sub_1AF630994(v301, &v425, v433);
          v4 = 0;
          sub_1AF62D29C(v308);
          ecs_stack_allocator_pop_snapshot(v303);
          v302 = v345;
          if (v345)
          {
            os_unfair_lock_unlock(*(v308 + 344));
            os_unfair_lock_unlock(*(v308 + 376));
          }

          v304 += 6;
          --v300;
        }

        while (v300);
      }

      sub_1AFB610F4(&v405, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
      v3 = v349;
      v2 = v342;
    }

    v312 = *(v2 + 192);
    v431[0] = *(v2 + 176);
    v431[1] = v312;
    v432 = *(v2 + 208);
    sub_1AF6B06C0(v3, v431, 0x200000000, v413);
    if (*&v413[0])
    {
      if (v416 > 0 && (v364 = *(&v414 + 1)) != 0)
      {
        v358 = *(&v413[2] + 1);
        v313 = *(&v415 + 1);
        v314 = *(v415 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v381 = *(*(&v415 + 1) + 32);
        v428 = *&v413[0];
        v429 = *(v413 + 8);
        v430 = *(&v413[1] + 8);
        v384[2] = v413[2];
        v384[3] = v414;
        v384[4] = v415;
        v384[5] = v416;
        v384[0] = v413[0];
        v384[1] = v413[1];
        sub_1AF5DD298(v384, v382);
        v315 = 0;
        v354 = v314;
        do
        {
          v369 = v4;
          v375 = v315;
          v316 = (v358 + 48 * v315);
          v317 = *v316;
          v318 = v316[1];
          v319 = *(v316 + 2);
          v320 = *(v316 + 3);
          v321 = *(v316 + 4);
          v322 = *(v316 + 5);
          if (v314)
          {
            v323 = *(v322 + 376);

            os_unfair_lock_lock(v323);
            os_unfair_lock_lock(*(v322 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v381);
          v324 = *(v313 + 64);
          v382[0] = *(v313 + 48);
          v382[1] = v324;
          v383 = *(v313 + 80);
          v325 = *(*(*(*(v322 + 40) + 16) + 32) + 16) + 1;
          *(v313 + 48) = ecs_stack_allocator_allocate(*(v313 + 32), 48 * v325, 8);
          *(v313 + 56) = v325;
          *(v313 + 72) = 0;
          *(v313 + 80) = 0;
          *(v313 + 64) = 0;
          v326 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v319, v320, v321, v313);
          v327 = sub_1AF64B110(&type metadata for InverseWorldTransform, &off_1F2529E00, v319, v320, v321, v313);
          if (v317 != v318)
          {
            v328 = v318 - v317;
            v329 = v317 << 6;
            v330 = &v326[64 * v317 + 32];
            v331 = &v327[v329 + 32];
            do
            {
              *(v331 - 32) = __invert_f4(*(v330 - 32));
              v331 += 64;
              v330 += 64;
              --v328;
            }

            while (v328);
          }

          sub_1AF630994(v313, &v428, v382);
          v4 = v369;
          if (*(*(v313 + 104) + 16))
          {

            sub_1AF62F348(v332, v322);

            v333 = swift_isUniquelyReferenced_nonNull_native();
            v334 = *(v313 + 104);
            if (v333)
            {
              sub_1AF64C2E8(0, *(v334 + 16));
            }

            else
            {
              v335 = MEMORY[0x1E69E7CC0];
              if (*(v334 + 24) >= 2uLL)
              {
                sub_1AF9FA280(0);
                v335 = swift_allocObject();
                v336 = j__malloc_size_0(v335);
                v335[2] = 0;
                v335[3] = 2 * ((v336 - 32) / 72);
              }

              *(v313 + 104) = v335;
            }

            if (*(*(v313 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v337 = *(v322 + 232);
              v338 = *(v322 + 256);
              if (v337 == v338)
              {
                v339 = *(v322 + 240);
              }

              else
              {
                sub_1AF6497A0(v338, v337);
                v338 = *(v322 + 232);
                v339 = *(v322 + 240);
                if (v339 == v338)
                {
                  v339 = 0;
                  v338 = 0;
                  *(v322 + 232) = 0;
                  *(v322 + 240) = 0;
                }
              }

              *(v322 + 248) = v339;
              *(v322 + 256) = v338;
            }
          }

          ecs_stack_allocator_pop_snapshot(v381);
          v314 = v354;
          if (v354)
          {
            os_unfair_lock_unlock(*(v322 + 344));
            os_unfair_lock_unlock(*(v322 + 376));
          }

          v315 = v375 + 1;
        }

        while (v375 + 1 != v364);
        v341 = MEMORY[0x1E69E6720];
        sub_1AFB610F4(v413, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
        v340 = v341;
      }

      else
      {
        v340 = MEMORY[0x1E69E6720];
      }

      sub_1AFB610F4(v413, &qword_1ED725EA0, &type metadata for QueryResult, v340, sub_1AF69348C);
    }

    return;
  }

  v234 = *(v2 + 32);
  v451[0] = *(v2 + 16);
  v451[1] = v234;
  v452 = *(v2 + 48);
  *&v235 = sub_1AF6B06C0(v3, v451, 0x200000000, v397).n128_u64[0];
  if (*&v397[0])
  {
    v236 = v400;
    if (v400 >= 1)
    {
      v237 = v398;
      v238 = v399;
      v239 = thread_worker_index(v235);
      v241 = *(v240 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      if (*v239 != -1)
      {
        v241 += 8 * *v239 + 8;
      }

      v242 = *(*v241 + 32);
      ecs_stack_allocator_push_snapshot(v242);
      v243 = ecs_stack_allocator_allocate(v242, 8 * v236, 4);
      if (v238)
      {
        v352 = v243;
        v244 = 0;
        v367 = v4;
        v372 = v237 + 48 * v238;
        v361 = v243 + 4;
        do
        {
          v245 = *(v237 + 16);
          v246 = *(v237 + 40);
          v378 = v237;
          if (v245)
          {
            v247 = *(v237 + 32);

            if (v247)
            {
              v248 = &v361[8 * v244];
              do
              {
                v250 = *v245++;
                v249 = v250;

                if (*(v246 + 184))
                {
                  goto LABEL_280;
                }

                v252 = *(*(v246 + 168) + 4 * v249);
                v237 = *(*(v251 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v252 + 8);

                *(v248 - 1) = v252;
                *v248 = v237;
                ++v244;
                v248 += 8;
                --v247;
              }

              while (v247);
            }
          }

          else
          {
            v254 = *v237;
            v253 = *(v237 + 4);

            if (v254 != v253)
            {
              v255 = &v361[8 * v244];
              do
              {

                if (*(v246 + 184))
                {
                  goto LABEL_280;
                }

                v237 = *(*(v246 + 168) + 4 * v254);
                v257 = v254 + 1;
                v258 = *(*(v256 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v237 + 8);

                *(v255 - 1) = v237;
                *v255 = v258;
                ++v244;
                v255 += 8;
                v254 = v257;
              }

              while (v253 != v257);
            }
          }

          v237 = v378 + 48;
        }

        while (v378 + 48 != v372);
        v3 = v349;
        if (v244)
        {
          v265 = v352;
          v4 = v367;
          v2 = v342;
          do
          {
            v266 = *v265++;
            v267 = sub_1AFB5BC04(v266);

            sub_1AFB5DE94(v266, v267, v349, v349);
          }

          while (v265 != &v352[v244]);
        }

        else
        {
          v4 = v367;
          v2 = v342;
        }
      }

      ecs_stack_allocator_pop_snapshot(v242);
    }

    sub_1AFB610F4(v397, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  }

  v268 = *(v2 + 112);
  v449[0] = *(v2 + 96);
  v449[1] = v268;
  v450 = *(v2 + 128);
  *&v269 = sub_1AF6B06C0(v3, v449, 0x200000000, v401).n128_u64[0];
  if (!*&v401[0])
  {
LABEL_237:
    v259 = 248;
    v260 = 240;
    v261 = 232;
    v262 = 228;
    v263 = 224;
    v264 = 216;
    goto LABEL_238;
  }

  v270 = v404;
  if (v404 < 1)
  {
LABEL_236:
    sub_1AFB610F4(v401, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
    goto LABEL_237;
  }

  v237 = v402;
  v271 = v403;
  v272 = thread_worker_index(v269);
  v274 = *(v273 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (*v272 != -1)
  {
    v274 += 8 * *v272 + 8;
  }

  v275 = *(*v274 + 32);
  ecs_stack_allocator_push_snapshot(v275);
  v276 = ecs_stack_allocator_allocate(v275, 8 * v270, 4);
  if (!v271)
  {
LABEL_235:
    ecs_stack_allocator_pop_snapshot(v275);
    goto LABEL_236;
  }

  v352 = v276;
  v244 = 0;
  v368 = v4;
  v373 = v237 + 48 * v271;
  v362 = v276 + 4;
  while (1)
  {
    v277 = *(v237 + 16);
    v246 = *(v237 + 40);
    v379 = v237;
    if (!v277)
    {
      break;
    }

    v278 = *(v237 + 32);

    if (v278)
    {
      v279 = &v362[8 * v244];
      do
      {
        v281 = *v277++;
        v280 = v281;

        if (*(v246 + 184))
        {
          goto LABEL_280;
        }

        v283 = *(*(v246 + 168) + 4 * v280);
        v237 = *(*(v282 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v283 + 8);

        *(v279 - 1) = v283;
        *v279 = v237;
        ++v244;
        v279 += 8;
      }

      while (--v278);
    }

LABEL_218:

    v237 = v379 + 48;
    if (v379 + 48 == v373)
    {
      v3 = v349;
      if (v244)
      {
        v290 = v352;
        v4 = v368;
        v2 = v342;
        do
        {
          v291 = *v290++;
          v292 = sub_1AFB5BC04(v291);

          sub_1AFB5DE94(v291, v292, v349, v349);
        }

        while (v290 != &v352[v244]);
      }

      else
      {
        v4 = v368;
        v2 = v342;
      }

      goto LABEL_235;
    }
  }

  v285 = *v237;
  v284 = *(v237 + 4);

  if (v285 == v284)
  {
    goto LABEL_218;
  }

  v286 = &v362[8 * v244];
  while (1)
  {

    if (*(v246 + 184))
    {
      break;
    }

    v237 = *(*(v246 + 168) + 4 * v285);
    v288 = v285 + 1;
    v289 = *(*(v287 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v237 + 8);

    *(v286 - 1) = v237;
    *v286 = v289;
    ++v244;
    v286 += 8;
    v285 = v288;
    if (v284 == v288)
    {
      goto LABEL_218;
    }
  }

LABEL_280:
  sub_1AFDFE518();
  __break(1u);

  *&v413[0] = v352;
  *(v413 + 8) = v417;
  *(&v413[1] + 8) = v418;
  sub_1AF630994(v246, v413, v433);
  sub_1AF62D29C(0xC);
  ecs_stack_allocator_pop_snapshot(v244);
  os_unfair_lock_unlock(MEMORY[0x164]);
  os_unfair_lock_unlock(MEMORY[0x184]);
  __break(1u);
}

uint64_t sub_1AFB6053C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB6059C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v58[0] = *(v1 + 16);
  v58[1] = v2;
  v59 = *(v1 + 48);
  sub_1AF6B06C0(a1, v58, 0x200000000, v53);
  if (*&v53[0])
  {
    if (v57 >= 1 && v55)
    {
      v3 = v54;
      v38 = v56;
      v4 = v54 + 48 * v55;
      v36 = v4;
      do
      {
        v5 = *(v3 + 40);
        v6 = *(v5 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v6);
        os_unfair_lock_lock(*(v5 + 344));
        v7 = *(v5 + 24);

        v47 = 0;
        v45 = 0u;
        v46 = 0u;
        memset(v52, 0, 40);
        v8 = sub_1AF65A4B4(v7, &type metadata for Fixed, &off_1F252A2A0, 0, 0, &v45, v52);

        sub_1AFB6053C(v52, sub_1AF5C4448);
        sub_1AFB6053C(&v45, sub_1AF5C4448);
        if (sub_1AF649CEC(v8))
        {
          sub_1AF649D40(v8, v38);
        }

        else
        {
          v10 = *(v5 + 232);
          v9 = *(v5 + 240);
          v40 = *(v5 + 120);
          v44 = *(v5 + 28);
          v43 = *(v5 + 32);
          v11 = *(v5 + 16);
          v12 = *(v5 + 40);
          v13 = *(v12 + 200);
          v42 = *(*(v11 + 88) + 8 * v8 + 32);

          if ((v13 & 1) != 0 || *(v42 + 200) == 1)
          {
            *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v12 = *(v5 + 40);
          }

          v14 = v40;
          v41 = *(v5 + 128);
          v15 = *(v5 + 256);
          sub_1AF5B4FCC(v12, v10, v9, 0, v5);
          v39 = *(v5 + 256);
          v16 = v39 - v15;
          if (v39 == v15)
          {
            v17 = 0;
          }

          else
          {
            v17 = v15;
          }

          v52[0] = v17;
          v18 = *(*(v5 + 40) + 24);
          v19 = *(v18 + 16);
          if (v19)
          {
            v37 = v3;
            v20 = v18 + 32;

            v21 = 0;
            v22 = v39 - v15;
            do
            {
              v23 = (v20 + 40 * v21);
              if ((v23[4] & 1) == 0)
              {
                v24 = *v23;
                v26 = v23[2];
                v25 = v23[3];
                v27 = *(v42 + 24);
                v28 = *(v27 + 16);
                if (v28)
                {
                  v29 = (v27 + 32);
                  while (*v29 != v24)
                  {
                    v29 += 5;
                    if (!--v28)
                    {
                      goto LABEL_16;
                    }
                  }
                }

                else
                {
LABEL_16:
                  sub_1AF640BC8(v41 + v26 * v17 + v25, v22);
                  v22 = v39 - v15;
                }
              }

              ++v21;
            }

            while (v21 != v19);
            v16 = v22;

            v3 = v37;
            v14 = v40;
          }

          if (*(v11 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v11 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v5 + 72) * v16);
          }

          if (*(v5 + 184))
          {
            v30 = 0;
          }

          else
          {
            v30 = *(v5 + 168);
          }

          v51 = 0;

          MEMORY[0x1EEE9AC00](v31);
          v32 = v44;
          v33 = v43;
          DWORD2(v46) = -1;
          v47 = v15;
          v48 = v39;
          v49 = v15;
          v50 = v39;
          *&v45 = v15;
          *(&v45 + 1) = v39;
          *&v46 = v30;
          if (v16 < 1)
          {

            v4 = v36;
          }

          else
          {
            v4 = v36;
            do
            {
              sub_1AF6248A8(v8, v32 | (v33 << 32), v14, v11, &v45, sub_1AF5C5ACC);
              v33 = v43;
              v32 = v44;
            }

            while ((*(&v45 + 1) - v45) > 0);
          }

          v34 = *(v5 + 192);
          if (v34)
          {
            v35 = *(v5 + 208);
            sub_1AF75D364(v15, v39, v34);
            sub_1AF75D364(v15, v39, v35);
          }
        }

        v3 += 48;
        os_unfair_lock_unlock(*(v5 + 344));
        os_unfair_lock_unlock(*(v5 + 376));
      }

      while (v3 != v4);
    }

    sub_1AFB610F4(v53, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  }
}

void sub_1AFB60AA8(uint64_t a1)
{
  sub_1AFB5CA34(a1);
  v3 = *(v1 + 32);
  v85[0] = *(v1 + 16);
  v85[1] = v3;
  v86 = *(v1 + 48);
  sub_1AF6B06C0(a1, v85, 0x200000000, v78);
  if (!*v78)
  {
    return;
  }

  if (v81 <= 0 || (v69 = *(&v79 + 1)) == 0)
  {
    v65 = MEMORY[0x1E69E6720];
    goto LABEL_62;
  }

  v68 = *&v78[40];
  v4 = *(&v80 + 1);
  v5 = *(v80 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v74 = *(*(&v80 + 1) + 32);
  v82 = *v78;
  v83 = *&v78[8];
  v84 = *&v78[24];
  v77[2] = *&v78[32];
  v77[3] = v79;
  v77[4] = v80;
  v77[5] = v81;
  v77[0] = *v78;
  v77[1] = *&v78[16];
  sub_1AF5DD298(v77, v76);
  v6 = 0;
  v67 = v5;
  while (2)
  {
    v7 = (v68 + 48 * v6);
    v8 = *v7;
    v9 = v7[1];
    v10 = *(v7 + 2);
    v11 = *(v7 + 3);
    v13 = *(v7 + 4);
    v12 = *(v7 + 5);
    v75 = v12;
    v73 = v6;
    if (v5)
    {
      v14 = *(v12 + 376);

      v15 = v14;
      v12 = v75;
      os_unfair_lock_lock(v15);
      os_unfair_lock_lock(*(v75 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v74);
    v71 = *(v4 + 64);
    v72 = *(v4 + 48);
    v70 = *(v4 + 80);
    v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
    *(v4 + 48) = ecs_stack_allocator_allocate(*(v4 + 32), 48 * v16, 8);
    *(v4 + 56) = v16;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    *(v4 + 64) = 0;
    v17 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v10, v11, v13, v4);
    v18 = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v10, v11, v13, v4);
    if (v8 != v9)
    {
      v19 = v9 - v8;
      v20 = &v17[64 * v8 + 32];
      v21 = &v18[64 * v8 + 32];
      do
      {
        v22 = *(v20 - 2);
        v23 = *(v20 - 1);
        v24 = *v20;
        v25 = *(v20 + 1);
        v20 += 64;
        *(v21 - 2) = v22;
        *(v21 - 1) = v23;
        *v21 = v24;
        *(v21 + 1) = v25;
        v21 += 64;
        --v19;
      }

      while (v19);
    }

    v26 = *(v4 + 48);
    v27 = *(v4 + 64);
    if (!v27)
    {
      v49 = *(v4 + 56);
      v50 = *(v4 + 32);
      v51 = v73;
      v52 = v70;
      goto LABEL_42;
    }

    for (i = 0; i != v27; ++i)
    {
      v30 = (v26 + 48 * i);
      v31 = *v30;
      v32 = v30[4];
      v33 = *(v4 + 72);
      if (v33)
      {
        v34 = v31 == v33;
      }

      else
      {
        v34 = 0;
      }

      if (v34)
      {
        goto LABEL_14;
      }

      v35 = v82;
      if (!v82[11])
      {
        goto LABEL_14;
      }

      v36 = v30[2];
      v37 = v82 + 41;
      v38 = v82[9];
      if (v38 >= 0x10)
      {
        v39 = &v37[v82[8]];
        v40 = v38 >> 4;
        v41 = v82 + 41;
        while (*v39 != v31)
        {
          ++v41;
          v39 += 16;
          if (!--v40)
          {
            goto LABEL_30;
          }
        }

        v42 = v41[v82[10]];
        v43 = v42 > 5;
        v44 = (1 << v42) & 0x23;
        if (v43 || v44 == 0)
        {
LABEL_14:

          v32(v29);

          continue;
        }
      }

LABEL_30:
      if (swift_conformsToProtocol2() && v36)
      {
        if (sub_1AF5FC8D8(v36))
        {
          goto LABEL_14;
        }

        v46 = v35[9];
        if (v46 < 0x10)
        {
          goto LABEL_14;
        }

        v47 = &v37[v35[8]];
        v48 = 16 * (v46 >> 4);
        while (*v47 != v36)
        {
          v47 += 16;
          v48 -= 16;
          if (!v48)
          {
            goto LABEL_14;
          }
        }
      }
    }

    v49 = *(v4 + 56);
    v26 = *(v4 + 48);
    v50 = *(v4 + 32);
    v51 = v73;
    v52 = v70;
    if (*(v4 + 64) >= 1)
    {
      swift_arrayDestroy();
    }

    v5 = v67;
LABEL_42:
    ecs_stack_allocator_deallocate(v50, v26, 48 * v49);
    *(v4 + 48) = v72;
    *(v4 + 64) = v71;
    *(v4 + 80) = v52;
    v53 = v75;
    if (*(*(v4 + 104) + 16))
    {

      sub_1AF62F348(v54, v75);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *(v4 + 104);
      if (isUniquelyReferenced_nonNull_native)
      {
        v57 = v56[2];
        v58 = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 104) = v56;
        if ((v58 & 1) == 0)
        {
          v56 = sub_1AF420EA0(0, v57, 1, v56);
          *(v4 + 104) = v56;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v57)
        {
          v59 = v56[2] - v57;
          memmove(v56 + 4, &v56[9 * v57 + 4], 72 * v59);
          v56[2] = v59;
        }

        *(v4 + 104) = v56;
      }

      else
      {
        v60 = MEMORY[0x1E69E7CC0];
        if (v56[3] >= 2uLL)
        {
          sub_1AF9FA280(0);
          v60 = swift_allocObject();
          v61 = j__malloc_size_0(v60);
          v60[2] = 0;
          v60[3] = 2 * ((v61 - 32) / 72);
        }

        *(v4 + 104) = v60;
      }

      v53 = v75;
      if (*(*(v4 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v62 = *(v75 + 232);
        v63 = *(v75 + 256);
        if (v62 == v63)
        {
          v64 = *(v75 + 240);
        }

        else
        {
          sub_1AF6497A0(v63, v62);
          v53 = v75;
          v63 = *(v75 + 232);
          v64 = *(v75 + 240);
          if (v64 == v63)
          {
            v64 = 0;
            v63 = 0;
            *(v75 + 232) = 0;
            *(v75 + 240) = 0;
          }
        }

        *(v53 + 248) = v64;
        *(v53 + 256) = v63;
      }
    }

    ecs_stack_allocator_pop_snapshot(v74);
    if (v5)
    {
      os_unfair_lock_unlock(*(v53 + 344));
      os_unfair_lock_unlock(*(v53 + 376));
    }

    v6 = v51 + 1;
    if (v6 != v69)
    {
      continue;
    }

    break;
  }

  v66 = MEMORY[0x1E69E6720];
  sub_1AFB610F4(v78, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  v65 = v66;
LABEL_62:
  sub_1AFB610F4(v78, &qword_1ED725EA0, &type metadata for QueryResult, v65, sub_1AF69348C);
}

uint64_t sub_1AFB610F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AFB61154()
{
  if (!qword_1ED723A80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for Parent;
    v4[1] = &type metadata for WorldTransform;
    v4[2] = &off_1F2529C98;
    v4[3] = &off_1F2529FC0;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1ED723A80);
    }
  }
}

uint64_t sub_1AFB611E0(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1AF64D4EC(0, *(v5 + 2));
  }

  else
  {
    v6 = sub_1AFC85DC4(0, *(v5 + 3) >> 1);

    *v2 = v6;
  }

  v7 = v2 + 3;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v9 = v2[3];
  if (v8)
  {
    sub_1AF64C690(0, *(v9 + 2));
  }

  else
  {
    v10 = sub_1AFC854BC(0, *(v9 + 3) >> 1);

    *v7 = v10;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v12 = v2[4];
  if (v11)
  {
    sub_1AF64C690(0, *(v12 + 2));
  }

  else
  {
    v13 = sub_1AFC854BC(0, *(v12 + 3) >> 1);

    v2[4] = v13;
  }

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v15 = v2[5];
  if (v14)
  {
    sub_1AF64C690(0, *(v15 + 2));
  }

  else
  {
    v16 = sub_1AFC854BC(0, *(v15 + 3) >> 1);

    v2[5] = v16;
  }

  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = v2[1];
  v57 = (v2 + 5);
  if (v17)
  {
    result = sub_1AF64D5B0(0, *(v18 + 2));
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    v20 = sub_1AFC85750(0, *(v18 + 3) >> 1);

    v2[1] = v20;
    if (!a1)
    {
      return result;
    }
  }

  v21 = *v2;
  v22 = v2[1];
  __asm { FMOV            V0.4S, #1.0 }

  v58 = HIDWORD(_Q0);
  v28 = a1;
  do
  {
    v61 = sub_1AFB61AEC(result, -1000.0, 1000.0);
    v60 = sub_1AFB61AEC(v29, -1000.0, 1000.0);
    v59 = sub_1AFB61AEC(v30, -1000.0, 1000.0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1AF423E78(0, *(v21 + 2) + 1, 1, v21);
    }

    v32 = *(v21 + 2);
    v31 = *(v21 + 3);
    if (v32 >= v31 >> 1)
    {
      v21 = sub_1AF423E78(v31 > 1, v32 + 1, 1, v21);
    }

    *&v33 = __PAIR64__(LODWORD(v60), LODWORD(v61));
    *(&v33 + 1) = LODWORD(v59);
    *(v21 + 2) = v32 + 1;
    v34 = &v21[32 * v32];
    *(v34 + 2) = v33;
    *(v34 + 6) = 0;
    v35 = drand48();
    v36 = drand48();
    v37 = drand48();
    drand48();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AF42053C(0, *(v22 + 16) + 1, 1, v22);
      v22 = result;
    }

    v39 = *(v22 + 16);
    v38 = *(v22 + 24);
    if (v39 >= v38 >> 1)
    {
      result = sub_1AF42053C(v38 > 1, v39 + 1, 1, v22);
      v22 = result;
    }

    *&v40 = v35;
    *&v41 = v36;
    *&v42 = v37;
    *&v43 = __PAIR64__(v41, v40);
    *(&v43 + 1) = __PAIR64__(v58, v42);
    *(v22 + 16) = v39 + 1;
    *(v22 + 16 * v39 + 32) = v43;
    --v28;
  }

  while (v28);
  *v2 = v21;
  v2[1] = v22;
  v44 = a1 + 15;
  if (a1 + 15 < 0)
  {
    v44 = a1 + 30;
  }

  if ((a1 + 30) >= 0x1F)
  {
    v45 = 0;
    v46 = v44 & 0xFFFFFFFFFFFFFFF0;
    v47 = *v7;
    v48 = v2[4];
    v49 = *v57;
    v50 = 32;
    do
    {
      v62 = xmmword_1AFE21F00;
      if (v45 < a1)
      {
        v62 = *&(*v2)[v50];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_1AF41FDF8(0, *(v47 + 2) + 1, 1, v47);
      }

      v52 = *(v47 + 2);
      v51 = *(v47 + 3);
      if (v52 >= v51 >> 1)
      {
        v47 = sub_1AF41FDF8(v51 > 1, v52 + 1, 1, v47);
      }

      *(v47 + 2) = v52 + 1;
      *&v47[4 * v52 + 32] = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1AF41FDF8(0, *(v48 + 2) + 1, 1, v48);
      }

      v54 = *(v48 + 2);
      v53 = *(v48 + 3);
      if (v54 >= v53 >> 1)
      {
        v48 = sub_1AF41FDF8(v53 > 1, v54 + 1, 1, v48);
      }

      *(v48 + 2) = v54 + 1;
      *&v48[4 * v54 + 32] = DWORD1(v62);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AF41FDF8(0, *(v49 + 16) + 1, 1, v49);
        v49 = result;
      }

      v56 = *(v49 + 16);
      v55 = *(v49 + 24);
      if (v56 >= v55 >> 1)
      {
        result = sub_1AF41FDF8(v55 > 1, v56 + 1, 1, v49);
        v49 = result;
      }

      ++v45;
      *(v49 + 16) = v56 + 1;
      *(v49 + 4 * v56 + 32) = DWORD2(v62);
      v50 += 32;
    }

    while (v46 != v45);
    *v57 = v49;
    v2[4] = v48;
    v2[3] = v47;
  }

  return result;
}

void sub_1AFB61710()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1AFC0DB0C(v1);
    }

    v3 = v0[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1AFC0DB20(v3);
    }

    v4 = v0[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AFC0DB20(v4);
    }

    v5 = v0[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AFC0DB20(v5);
    }

    v7 = 0;
    v8 = 32;
    do
    {
      v9 = *&v1[8 * v7 + 48];
      v10 = *&v1[v8];
      if (v9)
      {
        *v6.i32 = v9;
        v10.i64[0] = vdivq_f32(v10, vdupq_lane_s32(v6, 0)).u64[0];
        v10.f32[2] = v10.f32[2] / v9;
        v10.i32[3] = 0;
        *&v1[v8] = v10;
      }

      *&v3[v7 + 32] = v10.i32[0];
      *&v4[v7 + 32] = v10.i32[1];
      *&v5[v7 + 32] = v10.i32[2];
      v8 += 32;
      v7 += 4;
      --v2;
    }

    while (v2);
    *v0 = v1;
    v0[4] = v4;
    v0[5] = v5;
    v0[3] = v3;
  }
}

void sub_1AFB61840(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = 100;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

float32x4_t sub_1AFB6185C(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = *(a1 + 8);
  v7 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = 0uLL;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v13 = &v7[16 * v9];
    v14 = v12;
    do
    {
      v15 = *v13++;
      result.i64[0] = v15.i64[0];
      v11 = vaddq_f32(v11, v15);
      v11.i32[3] = 0;
      --v14;
    }

    while (v14);
  }

  v16 = *(v6 + 40);
  v17 = *(v16 + 96);
  v18 = *(v16 + 112);
  v19 = (v18 + 32);
  v20 = *(v18 + 16) + 1;
  while (--v20)
  {
    v21 = v19 + 5;
    v22 = *v19;
    v19 += 5;
    if (v22 == &type metadata for kCluster)
    {
      v23 = *(&(*(v21 - 2))->Kind + v17);
      if (v23 >= a2)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  v23 = 0;
  if (a2 <= 0)
  {
    return result;
  }

LABEL_10:
  v27 = v11;
  v24 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1AFC0DB0C(v24);
    *a3 = v24;
  }

  v26 = &v24[32 * v23];
  result = vaddq_f32(v27, v26[2]);
  result.i32[3] = 0;
  v26[2] = result;
  *&(*a3)[32 * v23 + 48] += v12;
  return result;
}

void sub_1AFB619A8(void *a1, uint64_t *a2)
{

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v8;
}

uint64_t sub_1AFB61A84(uint64_t a1)
{
  v1 = *(a1 + 184);

  sub_1AF6D325C(&type metadata for kClusterState, &off_1F2561AE0, v1);
}

float sub_1AFB61AEC(uint64_t a1, float a2, float a3)
{
  v6 = a3 - a2;
  v9 = 0;
  MEMORY[0x1B271DEC0](&v9, 8);
  v7 = (v6 * vcvts_n_f32_u64(v9 & 0xFFFFFF, 0x18uLL)) + a2;
  if (v7 == a3)
  {
    return sub_1AFB61AEC(a1, a2, a3);
  }

  return v7;
}

double sub_1AFB61B74(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = a2[5];

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v8;

  return result;
}

void sub_1AFB61C1C(uint64_t a1)
{
  v1 = a1;
  v397 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 184);

  sub_1AF6D47A4(&type metadata for kClusterState, &off_1F2561AE0, v2, &v313);

  v5 = *(&v315 + 1);
  v4 = v315;
  v318 = v315;
  v6 = *(&v314 + 1);
  v316 = v313;
  v317 = *(&v314 + 1);
  v311 = v314;
  v312 = v315;
  v310 = v313;
  v7 = *(v313 + 16);
  if (v7 <= 1)
  {
    *&v377[0] = *(&v313 + 1);
    v387 = v313;
    v388 = v314;
    v389 = v315;
    v185 = *(v1 + 184);
    MEMORY[0x1EEE9AC00](v3);

    sub_1AF6D2ADC(&type metadata for kClusterState, &off_1F2561AE0, v185, sub_1AFB64480);

    sub_1AFB6449C(&v316);
    sub_1AFB64528(v377, sub_1AF6560F0);
    v186 = MEMORY[0x1E69E6448];
    v187 = MEMORY[0x1E69E62F8];
    sub_1AFB64588(&v317, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    sub_1AFB64588(&v318, &qword_1ED723210, v186, v187);
    sub_1AFB64588(&v318 + 8, &qword_1ED723210, v186, v187);
    return;
  }

  v279 = v313;
  v302 = 0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v335 = qword_1ED73B840;
  v336 = 0;
  v337 = 2;
  v338 = 0;
  v339 = 2;
  v340 = 0;
  sub_1AF829104(v321);
  sub_1AFA1CFD4(0, &qword_1ED7269F0, &qword_1ED72C1B0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = &type metadata for kCluster;
  *(v8 + 40) = &off_1F2561AC0;
  sub_1AFB402C4();
  sub_1AFB64528(v321, sub_1AFA1ECA4);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v9 = *(v279 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AF41FDF8(0, *(v6 + 2), 0, v6);
  }

  *(&v311 + 1) = v6;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AF41FDF8(0, *(v4 + 2), 0, v4);
  }

  *&v312 = v4;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AF41FDF8(0, *(v5 + 2), 0, v5);
  }

  *(&v312 + 1) = v5;

  v319[0] = v6 + 32;
  v319[1] = v4 + 32;
  v319[2] = v5 + 32;
  v320 = v9;
  v333[0] = v322[0];
  v333[1] = v322[1];
  v334 = v323;
  sub_1AF6B06C0(v1, v333, 0x200000000, v369);
  if (!*&v369[0])
  {
    goto LABEL_203;
  }

  if (v372 <= 0 || (v282 = *(&v370 + 1)) == 0)
  {
    sub_1AFB64588(v369, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
    goto LABEL_203;
  }

  v276 = v1;
  v281 = *(&v369[2] + 1);
  v10 = *(&v371 + 1);
  v287 = *(*(&v371 + 1) + 32);
  v284 = *(v371 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v280 = v314;
  v330 = *&v369[0];
  v331 = *(v369 + 8);
  v332 = *(&v369[1] + 8);
  v389 = v369[2];
  v390 = v370;
  v391 = v371;
  v392 = v372;
  v387 = v369[0];
  v388 = v369[1];
  sub_1AF5DD298(&v387, v377);
  v11 = 0;
  v296 = v10;
  while (2)
  {
    v283 = v11;
    v12 = (v281 + 48 * v11);
    v13 = *v12;
    v305 = v12[1];
    v14 = *(v12 + 2);
    v15 = *(v12 + 3);
    v16 = *(v12 + 4);
    v17 = *(v12 + 5);
    if (v284)
    {
      v18 = *(v17 + 376);

      os_unfair_lock_lock(v18);
      os_unfair_lock_lock(*(v17 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v287);
    v19 = *(v10 + 64);
    v395[0] = *(v10 + 48);
    v395[1] = v19;
    v396 = *(v10 + 80);
    v20 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;
    *(v10 + 48) = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v20, 8);
    *(v10 + 56) = v20;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    *(v10 + 64) = 0;
    v21 = *(v17 + 40);
    v22 = *(v21 + 96);
    v23 = *(v21 + 112);
    v24 = (v23 + 32);
    v25 = *(v23 + 16) + 1;
    while (--v25)
    {
      v26 = v24 + 5;
      v27 = *v24;
      v24 += 5;
      if (v27 == &type metadata for kCluster)
      {
        v299 = *(&(*(v26 - 2))->Kind + v22);
        goto LABEL_23;
      }
    }

    v299 = 0;
LABEL_23:
    v28 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v14, v15, v16, v10);
    *&v377[0] = 0;
    MEMORY[0x1B271DEC0](v377, 8);
    for (i = *&v377[0]; ((100 * *&v377[0]) & 0xFFFFFFFFFFFFFFF0) == 0; i = *&v377[0])
    {
      *&v377[0] = 0;
      MEMORY[0x1B271DEC0](v377, 8);
    }

    if (v280 < ((i * 0x64uLL) >> 64))
    {
LABEL_26:
      v30 = v302;
      goto LABEL_27;
    }

    v31 = v305 - v13;
    v32 = ecs_stack_allocator_allocate(*(v10 + 32), 4 * (v305 - v13), 4);
    v307 = v17;
    v293 = v32;
    if (!v28)
    {
      v110 = v299;
      if (!kcluster_update_compare(v319, 0, v32, v31, v299))
      {
        goto LABEL_26;
      }

      v30 = v302;
      if (v13 == v305)
      {
        goto LABEL_27;
      }

      v111 = v293;
LABEL_120:
      if (v110 == *(v111 + v13))
      {
        goto LABEL_119;
      }

      v290 = *(v111 + v13);
      v304 = v30;
      v112 = *(v17 + 40);
      v113 = *(v112 + 128);
      v114 = *(v112 + 160);
      v360 = *(v112 + 144);
      v361 = v114;
      v115 = *(v112 + 128);
      v358 = *(v112 + 112);
      v359 = v115;
      v116 = *(v112 + 160);
      v377[2] = v360;
      v378[0] = v116;
      v117 = *(v112 + 96);
      v362 = *(v112 + 176);
      LOBYTE(v378[1]) = *(v112 + 176);
      v377[0] = v358;
      v377[1] = v113;
      v118 = sub_1AF64F754(&type metadata for kCluster);
      v120 = v119;
      v365 = v377[2];
      v366 = v378[0];
      LOBYTE(v367) = v378[1];
      v363 = v377[0];
      v364 = v377[1];

      sub_1AF5DD36C(&v358, v373);
      sub_1AF5DD3C8(&v363);
      if (v120)
      {

LABEL_125:

        v122 = v290;
        goto LABEL_126;
      }

      *&v377[0] = v299;
      v121 = *(v117 + v118);

      if (v121 != v299)
      {
        v17 = v307;
        goto LABEL_125;
      }

      *&v355 = &off_1F2561AC0;
      *(&v354 + 1) = &type metadata for kCluster;
      *&v353 = v299;
      BYTE8(v355) = 3;
      v159 = *(v296 + 104);
      v160 = *(v159 + 16);
      v122 = v290;
      if (!v160)
      {
LABEL_193:
        v17 = v307;
        v174 = *(v307 + 240) - *(v307 + 232);
        v175 = ecs_stack_allocator_allocate(*(v296 + 32), 8 * v174, 8);
        *v175 = v13;
        sub_1AF63515C(&v353, v377);
        *&v378[0] = v175;
        *(&v378[0] + 1) = v174;
        *&v378[1] = 1;
        v176 = *(v296 + 104);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v296 + 104) = v176;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v176 = sub_1AF420EA0(0, v176[2] + 1, 1, v176);
          *(v296 + 104) = v176;
        }

        v179 = v176[2];
        v178 = v176[3];
        if (v179 >= v178 >> 1)
        {
          *(v296 + 104) = sub_1AF420EA0(v178 > 1, v179 + 1, 1, v176);
        }

        v180 = *(v296 + 104);
        *(v180 + 16) = v179 + 1;
        v181 = v180 + 72 * v179;
        *(v181 + 32) = v377[0];
        v182 = v377[1];
        v183 = v377[2];
        v184 = v378[0];
        *(v181 + 96) = *&v378[1];
        *(v181 + 64) = v183;
        *(v181 + 80) = v184;
        *(v181 + 48) = v182;
        *(v296 + 104) = v180;
        goto LABEL_198;
      }

      v161 = 0;
      v162 = v159 + 32;
      while (1)
      {
        sub_1AF6350F8(v162, v373);
        sub_1AF63515C(v373, v377);
        sub_1AF63515C(&v353, v378);
        if (BYTE8(v377[2]) <= 2u)
        {
          break;
        }

        if (BYTE8(v377[2]) == 3)
        {
          sub_1AF63515C(v377, &v348);
          if (BYTE8(v378[2]) != 3)
          {
            goto LABEL_166;
          }

LABEL_185:
          sub_1AF616568(&v348, &v344);
          sub_1AF616568(v378, &v341);
          v167 = *(&v345 + 1);
          v168 = v346;
          sub_1AF441150(&v344, *(&v345 + 1));
          LOBYTE(v167) = sub_1AF640C98(&v341, v167, v168);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
          sub_1AFB64528(v373, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v344);
          sub_1AF635250(v377);
          if (v167)
          {
            goto LABEL_190;
          }

          goto LABEL_168;
        }

        if (BYTE8(v377[2]) != 4)
        {
          sub_1AFB64528(v373, sub_1AF43A540);
          if (BYTE8(v378[2]) == 5)
          {
            v169 = vorrq_s8(*(v378 + 8), *(&v378[1] + 8));
            if (!(*&vorr_s8(*v169.i8, *&vextq_s8(v169, v169, 8uLL)) | *&v378[0]))
            {
              sub_1AF635250(v377);
LABEL_190:
              v171 = sub_1AFBFCA08(v377);
              v172 = *(v170 + 48);
              if (v172)
              {
                v173 = *(v170 + 64);
                *(v172 + 8 * v173) = v13;
                *(v170 + 64) = v173 + 1;
              }

              (v171)(v377, 0);
              v17 = v307;

LABEL_198:
              sub_1AF635250(&v353);
LABEL_126:
              v123 = *(v17 + 40);
              v124 = *(v123 + 128);
              v125 = *(v123 + 160);
              v350 = *(v123 + 144);
              v351 = v125;
              v126 = *(v123 + 128);
              v348 = *(v123 + 112);
              v349 = v126;
              v127 = *(v123 + 160);
              v377[2] = v350;
              v378[0] = v127;
              v128 = *(v123 + 96);
              v352 = *(v123 + 176);
              LOBYTE(v378[1]) = *(v123 + 176);
              v377[0] = v348;
              v377[1] = v124;
              v129 = sub_1AF64F754(&type metadata for kCluster);
              v131 = v130;
              v355 = v377[2];
              v356 = v378[0];
              v357 = v378[1];
              v17 = v307;
              v353 = v377[0];
              v354 = v377[1];

              sub_1AF5DD36C(&v348, v373);
              sub_1AF5DD3C8(&v353);
              if (v131)
              {

                v10 = v296;
              }

              else
              {
                *&v377[0] = v122;
                v132 = *(v128 + v129);

                v10 = v296;
                if (v132 == v122)
                {

                  v110 = v299;
                  v30 = v304;
                  goto LABEL_118;
                }
              }

              v346 = &off_1F2561AC0;
              *(&v345 + 1) = &type metadata for kCluster;
              *&v344 = v122;
              v347 = 2;
              v133 = *(v10 + 104);
              v134 = *(v133 + 16);
              if (!v134)
              {
LABEL_158:
                v17 = v307;
                v148 = *(v307 + 240) - *(v307 + 232);
                v149 = ecs_stack_allocator_allocate(*(v10 + 32), 8 * v148, 8);
                *v149 = v13;
                sub_1AF63515C(&v344, v377);
                *&v378[0] = v149;
                *(&v378[0] + 1) = v148;
                *&v378[1] = 1;
                v150 = *(v10 + 104);
                v151 = swift_isUniquelyReferenced_nonNull_native();
                *(v10 + 104) = v150;
                if ((v151 & 1) == 0)
                {
                  v150 = sub_1AF420EA0(0, v150[2] + 1, 1, v150);
                  *(v10 + 104) = v150;
                }

                v153 = v150[2];
                v152 = v150[3];
                if (v153 >= v152 >> 1)
                {
                  *(v10 + 104) = sub_1AF420EA0(v152 > 1, v153 + 1, 1, v150);
                }

                v154 = *(v10 + 104);
                *(v154 + 16) = v153 + 1;
                v155 = v154 + 72 * v153;
                *(v155 + 32) = v377[0];
                v156 = v377[1];
                v157 = v377[2];
                v158 = v378[0];
                *(v155 + 96) = *&v378[1];
                *(v155 + 64) = v157;
                *(v155 + 80) = v158;
                *(v155 + 48) = v156;
                *(v10 + 104) = v154;
                goto LABEL_163;
              }

              v135 = 0;
              v136 = v133 + 32;
              while (2)
              {
                sub_1AF6350F8(v136, v373);
                sub_1AF63515C(v373, v377);
                sub_1AF63515C(&v344, v378);
                if (BYTE8(v377[2]) > 2u)
                {
                  if (BYTE8(v377[2]) != 3)
                  {
                    if (BYTE8(v377[2]) != 4)
                    {
                      sub_1AFB64528(v373, sub_1AF43A540);
                      if (BYTE8(v378[2]) == 5)
                      {
                        v143 = vorrq_s8(*(v378 + 8), *(&v378[1] + 8));
                        if (!(*&vorr_s8(*v143.i8, *&vextq_s8(v143, v143, 8uLL)) | *&v378[0]))
                        {
                          sub_1AF635250(v377);
LABEL_155:
                          v145 = sub_1AFBFCA08(v377);
                          v146 = *(v144 + 48);
                          if (v146)
                          {
                            v147 = *(v144 + 64);
                            *(v146 + 8 * v147) = v13;
                            *(v144 + 64) = v147 + 1;
                          }

                          (v145)(v377, 0);
                          v17 = v307;

LABEL_163:
                          v110 = v299;
                          sub_1AF635250(&v344);
                          v30 = v304;
LABEL_118:
                          v111 = v293;
LABEL_119:
                          if (++v13 == v305)
                          {
                            goto LABEL_27;
                          }

                          goto LABEL_120;
                        }
                      }

                      goto LABEL_132;
                    }

                    sub_1AFB64528(v373, sub_1AF43A540);
                    sub_1AF63515C(v377, &v341);
                    if (BYTE8(v378[2]) != 4)
                    {
                      goto LABEL_132;
                    }

                    v137 = v341;
                    v138 = LOBYTE(v378[0]);
                    sub_1AF635250(v377);
                    if (v137 == v138)
                    {
                      goto LABEL_155;
                    }

LABEL_133:
                    ++v135;
                    v136 += 72;
                    if (v134 == v135)
                    {
                      goto LABEL_158;
                    }

                    continue;
                  }

                  sub_1AF63515C(v377, &v341);
                  if (BYTE8(v378[2]) == 3)
                  {
LABEL_150:
                    sub_1AF616568(&v341, v384);
                    sub_1AF616568(v378, &v381);
                    v141 = v385;
                    v142 = v386;
                    sub_1AF441150(v384, v385);
                    LOBYTE(v141) = sub_1AF640C98(&v381, v141, v142);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v381);
                    sub_1AFB64528(v373, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v384);
                    sub_1AF635250(v377);
                    if (v141)
                    {
                      goto LABEL_155;
                    }

                    goto LABEL_133;
                  }
                }

                else
                {
                  if (!BYTE8(v377[2]))
                  {
                    sub_1AFB64528(v373, sub_1AF43A540);
                    sub_1AF63515C(v377, &v341);
                    if (BYTE8(v378[2]))
                    {
                      goto LABEL_132;
                    }

LABEL_145:
                    v139 = v341;
                    v140 = *&v378[0];
                    sub_1AF635250(v377);
                    if (v139 == v140)
                    {
                      goto LABEL_155;
                    }

                    goto LABEL_133;
                  }

                  if (BYTE8(v377[2]) == 1)
                  {
                    sub_1AFB64528(v373, sub_1AF43A540);
                    sub_1AF63515C(v377, &v341);
                    if (BYTE8(v378[2]) == 1)
                    {
                      goto LABEL_145;
                    }

LABEL_132:
                    sub_1AFB64528(v377, sub_1AF635194);
                    goto LABEL_133;
                  }

                  sub_1AF63515C(v377, &v341);
                  if (BYTE8(v378[2]) == 2)
                  {
                    goto LABEL_150;
                  }
                }

                break;
              }

              sub_1AFB64528(v373, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
              goto LABEL_132;
            }
          }

          goto LABEL_167;
        }

        sub_1AFB64528(v373, sub_1AF43A540);
        sub_1AF63515C(v377, &v348);
        if (BYTE8(v378[2]) != 4)
        {
          goto LABEL_167;
        }

        v163 = v348;
        v164 = LOBYTE(v378[0]);
        sub_1AF635250(v377);
        if (v163 == v164)
        {
          goto LABEL_190;
        }

LABEL_168:
        ++v161;
        v162 += 72;
        if (v160 == v161)
        {
          goto LABEL_193;
        }
      }

      if (!BYTE8(v377[2]))
      {
        sub_1AFB64528(v373, sub_1AF43A540);
        sub_1AF63515C(v377, &v348);
        if (BYTE8(v378[2]))
        {
          goto LABEL_167;
        }

        goto LABEL_180;
      }

      if (BYTE8(v377[2]) == 1)
      {
        sub_1AFB64528(v373, sub_1AF43A540);
        sub_1AF63515C(v377, &v348);
        if (BYTE8(v378[2]) != 1)
        {
          goto LABEL_167;
        }

LABEL_180:
        v165 = v348;
        v166 = *&v378[0];
        sub_1AF635250(v377);
        if (v165 == v166)
        {
          goto LABEL_190;
        }

        goto LABEL_168;
      }

      sub_1AF63515C(v377, &v348);
      if (BYTE8(v378[2]) != 2)
      {
LABEL_166:
        sub_1AFB64528(v373, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v348);
LABEL_167:
        sub_1AFB64528(v377, sub_1AF635194);
        goto LABEL_168;
      }

      goto LABEL_185;
    }

    v33 = v28;
    v34 = v299;
    if (!kcluster_update_compare(v319, v33, v32, v31, v299))
    {
      goto LABEL_26;
    }

    v30 = v302;
    if (v13 == v305)
    {
      goto LABEL_27;
    }

    v35 = v293;
    while (2)
    {
      v36 = *(v35 + v13);
      if (v34 == v36)
      {
        goto LABEL_35;
      }

      v303 = v30;
      v37 = *(v17 + 40);
      v38 = *(v37 + 128);
      v39 = *(v37 + 160);
      v360 = *(v37 + 144);
      v361 = v39;
      v40 = *(v37 + 128);
      v358 = *(v37 + 112);
      v359 = v40;
      v41 = *(v37 + 160);
      v377[2] = v360;
      v378[0] = v41;
      v42 = *(v37 + 96);
      v362 = *(v37 + 176);
      LOBYTE(v378[1]) = *(v37 + 176);
      v377[0] = v358;
      v377[1] = v38;
      v43 = sub_1AF64F754(&type metadata for kCluster);
      v45 = v44;
      v365 = v377[2];
      v366 = v378[0];
      LOBYTE(v367) = v378[1];
      v46 = v307;
      v363 = v377[0];
      v364 = v377[1];

      sub_1AF5DD36C(&v358, v373);
      sub_1AF5DD3C8(&v363);
      if (v45)
      {

LABEL_40:

        goto LABEL_41;
      }

      *&v377[0] = v299;
      v47 = *(v42 + v43);

      if (v47 != v299)
      {
        goto LABEL_40;
      }

      *&v355 = &off_1F2561AC0;
      *(&v354 + 1) = &type metadata for kCluster;
      *&v353 = v299;
      BYTE8(v355) = 3;
      v84 = *(v296 + 104);
      v85 = *(v84 + 16);
      if (!v85)
      {
LABEL_108:
        v46 = v307;
        v99 = *(v307 + 240) - *(v307 + 232);
        v100 = ecs_stack_allocator_allocate(*(v296 + 32), 8 * v99, 8);
        *v100 = v13;
        sub_1AF63515C(&v353, v377);
        *&v378[0] = v100;
        *(&v378[0] + 1) = v99;
        *&v378[1] = 1;
        v101 = *(v296 + 104);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        *(v296 + 104) = v101;
        if ((v102 & 1) == 0)
        {
          v101 = sub_1AF420EA0(0, v101[2] + 1, 1, v101);
          *(v296 + 104) = v101;
        }

        v104 = v101[2];
        v103 = v101[3];
        if (v104 >= v103 >> 1)
        {
          *(v296 + 104) = sub_1AF420EA0(v103 > 1, v104 + 1, 1, v101);
        }

        v105 = *(v296 + 104);
        *(v105 + 16) = v104 + 1;
        v106 = v105 + 72 * v104;
        *(v106 + 32) = v377[0];
        v107 = v377[1];
        v108 = v377[2];
        v109 = v378[0];
        *(v106 + 96) = *&v378[1];
        *(v106 + 64) = v108;
        *(v106 + 80) = v109;
        *(v106 + 48) = v107;
        *(v296 + 104) = v105;
        goto LABEL_113;
      }

      v86 = 0;
      v87 = v84 + 32;
      while (1)
      {
        sub_1AF6350F8(v87, v373);
        sub_1AF63515C(v373, v377);
        sub_1AF63515C(&v353, v378);
        if (BYTE8(v377[2]) <= 2u)
        {
          if (!BYTE8(v377[2]))
          {
            sub_1AFB64528(v373, sub_1AF43A540);
            sub_1AF63515C(v377, &v348);
            if (BYTE8(v378[2]))
            {
              goto LABEL_82;
            }

            goto LABEL_95;
          }

          if (BYTE8(v377[2]) == 1)
          {
            sub_1AFB64528(v373, sub_1AF43A540);
            sub_1AF63515C(v377, &v348);
            if (BYTE8(v378[2]) != 1)
            {
              goto LABEL_82;
            }

LABEL_95:
            v90 = v348;
            v91 = *&v378[0];
            sub_1AF635250(v377);
            if (v90 == v91)
            {
              goto LABEL_105;
            }

            goto LABEL_83;
          }

          sub_1AF63515C(v377, &v348);
          if (BYTE8(v378[2]) != 2)
          {
LABEL_81:
            sub_1AFB64528(v373, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v348);
LABEL_82:
            sub_1AFB64528(v377, sub_1AF635194);
            goto LABEL_83;
          }

          goto LABEL_100;
        }

        if (BYTE8(v377[2]) == 3)
        {
          sub_1AF63515C(v377, &v348);
          if (BYTE8(v378[2]) != 3)
          {
            goto LABEL_81;
          }

LABEL_100:
          sub_1AF616568(&v348, &v344);
          sub_1AF616568(v378, &v341);
          v92 = *(&v345 + 1);
          v93 = v346;
          sub_1AF441150(&v344, *(&v345 + 1));
          LOBYTE(v92) = sub_1AF640C98(&v341, v92, v93);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
          sub_1AFB64528(v373, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v344);
          sub_1AF635250(v377);
          if (v92)
          {
            goto LABEL_105;
          }

          goto LABEL_83;
        }

        if (BYTE8(v377[2]) != 4)
        {
          break;
        }

        sub_1AFB64528(v373, sub_1AF43A540);
        sub_1AF63515C(v377, &v348);
        if (BYTE8(v378[2]) != 4)
        {
          goto LABEL_82;
        }

        v88 = v348;
        v89 = LOBYTE(v378[0]);
        sub_1AF635250(v377);
        if (v88 == v89)
        {
          goto LABEL_105;
        }

LABEL_83:
        ++v86;
        v87 += 72;
        if (v85 == v86)
        {
          goto LABEL_108;
        }
      }

      sub_1AFB64528(v373, sub_1AF43A540);
      if (BYTE8(v378[2]) != 5)
      {
        goto LABEL_82;
      }

      v94 = vorrq_s8(*(v378 + 8), *(&v378[1] + 8));
      if (*&vorr_s8(*v94.i8, *&vextq_s8(v94, v94, 8uLL)) | *&v378[0])
      {
        goto LABEL_82;
      }

      sub_1AF635250(v377);
LABEL_105:
      v96 = sub_1AFBFCA08(v377);
      v97 = *(v95 + 48);
      if (v97)
      {
        v98 = *(v95 + 64);
        *(v97 + 8 * v98) = v13;
        *(v95 + 64) = v98 + 1;
      }

      (v96)(v377, 0);
      v46 = v307;

LABEL_113:
      sub_1AF635250(&v353);
LABEL_41:
      v48 = *(v46 + 40);
      v49 = *(v48 + 128);
      v50 = *(v48 + 160);
      v350 = *(v48 + 144);
      v351 = v50;
      v51 = *(v48 + 128);
      v348 = *(v48 + 112);
      v349 = v51;
      v52 = *(v48 + 160);
      v377[2] = v350;
      v378[0] = v52;
      v53 = *(v48 + 96);
      v352 = *(v48 + 176);
      LOBYTE(v378[1]) = *(v48 + 176);
      v377[0] = v348;
      v377[1] = v49;
      v54 = sub_1AF64F754(&type metadata for kCluster);
      v56 = v55;
      v355 = v377[2];
      v356 = v378[0];
      v357 = v378[1];
      v17 = v307;
      v353 = v377[0];
      v354 = v377[1];

      sub_1AF5DD36C(&v348, v373);
      sub_1AF5DD3C8(&v353);
      if (v56)
      {

        v10 = v296;
      }

      else
      {
        *&v377[0] = v36;
        v57 = *(v53 + v54);

        v10 = v296;
        if (v57 == v36)
        {

          v34 = v299;
          v30 = v303;
          goto LABEL_34;
        }
      }

      v346 = &off_1F2561AC0;
      *(&v345 + 1) = &type metadata for kCluster;
      *&v344 = v36;
      v347 = 2;
      v58 = *(v10 + 104);
      v59 = *(v58 + 16);
      if (!v59)
      {
LABEL_73:
        v17 = v307;
        v73 = *(v307 + 240) - *(v307 + 232);
        v74 = ecs_stack_allocator_allocate(*(v10 + 32), 8 * v73, 8);
        *v74 = v13;
        sub_1AF63515C(&v344, v377);
        *&v378[0] = v74;
        *(&v378[0] + 1) = v73;
        *&v378[1] = 1;
        v75 = *(v10 + 104);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 104) = v75;
        if ((v76 & 1) == 0)
        {
          v75 = sub_1AF420EA0(0, v75[2] + 1, 1, v75);
          *(v10 + 104) = v75;
        }

        v78 = v75[2];
        v77 = v75[3];
        if (v78 >= v77 >> 1)
        {
          *(v10 + 104) = sub_1AF420EA0(v77 > 1, v78 + 1, 1, v75);
        }

        v79 = *(v10 + 104);
        *(v79 + 16) = v78 + 1;
        v80 = v79 + 72 * v78;
        *(v80 + 32) = v377[0];
        v81 = v377[1];
        v82 = v377[2];
        v83 = v378[0];
        *(v80 + 96) = *&v378[1];
        *(v80 + 64) = v82;
        *(v80 + 80) = v83;
        *(v80 + 48) = v81;
        *(v10 + 104) = v79;
        goto LABEL_78;
      }

      v60 = 0;
      v61 = v58 + 32;
      while (2)
      {
        sub_1AF6350F8(v61, v373);
        sub_1AF63515C(v373, v377);
        sub_1AF63515C(&v344, v378);
        if (BYTE8(v377[2]) <= 2u)
        {
          if (!BYTE8(v377[2]))
          {
            sub_1AFB64528(v373, sub_1AF43A540);
            sub_1AF63515C(v377, &v341);
            if (BYTE8(v378[2]))
            {
              goto LABEL_47;
            }

LABEL_60:
            v64 = v341;
            v65 = *&v378[0];
            sub_1AF635250(v377);
            if (v64 == v65)
            {
              goto LABEL_70;
            }

            goto LABEL_48;
          }

          if (BYTE8(v377[2]) == 1)
          {
            sub_1AFB64528(v373, sub_1AF43A540);
            sub_1AF63515C(v377, &v341);
            if (BYTE8(v378[2]) == 1)
            {
              goto LABEL_60;
            }

LABEL_47:
            sub_1AFB64528(v377, sub_1AF635194);
LABEL_48:
            ++v60;
            v61 += 72;
            if (v59 == v60)
            {
              goto LABEL_73;
            }

            continue;
          }

          sub_1AF63515C(v377, &v341);
          if (BYTE8(v378[2]) == 2)
          {
LABEL_65:
            sub_1AF616568(&v341, v384);
            sub_1AF616568(v378, &v381);
            v66 = v385;
            v67 = v386;
            sub_1AF441150(v384, v385);
            LOBYTE(v66) = sub_1AF640C98(&v381, v66, v67);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v381);
            sub_1AFB64528(v373, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v384);
            sub_1AF635250(v377);
            if (v66)
            {
              goto LABEL_70;
            }

            goto LABEL_48;
          }

LABEL_46:
          sub_1AFB64528(v373, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
          goto LABEL_47;
        }

        break;
      }

      if (BYTE8(v377[2]) == 3)
      {
        sub_1AF63515C(v377, &v341);
        if (BYTE8(v378[2]) == 3)
        {
          goto LABEL_65;
        }

        goto LABEL_46;
      }

      if (BYTE8(v377[2]) == 4)
      {
        sub_1AFB64528(v373, sub_1AF43A540);
        sub_1AF63515C(v377, &v341);
        if (BYTE8(v378[2]) != 4)
        {
          goto LABEL_47;
        }

        v62 = v341;
        v63 = LOBYTE(v378[0]);
        sub_1AF635250(v377);
        if (v62 == v63)
        {
          goto LABEL_70;
        }

        goto LABEL_48;
      }

      sub_1AFB64528(v373, sub_1AF43A540);
      if (BYTE8(v378[2]) != 5)
      {
        goto LABEL_47;
      }

      v68 = vorrq_s8(*(v378 + 8), *(&v378[1] + 8));
      if (*&vorr_s8(*v68.i8, *&vextq_s8(v68, v68, 8uLL)) | *&v378[0])
      {
        goto LABEL_47;
      }

      sub_1AF635250(v377);
LABEL_70:
      v70 = sub_1AFBFCA08(v377);
      v71 = *(v69 + 48);
      if (v71)
      {
        v72 = *(v69 + 64);
        *(v71 + 8 * v72) = v13;
        *(v69 + 64) = v72 + 1;
      }

      (v70)(v377, 0);
      v17 = v307;

LABEL_78:
      v34 = v299;
      sub_1AF635250(&v344);
      v30 = v303;
LABEL_34:
      v35 = v293;
LABEL_35:
      if (++v13 != v305)
      {
        continue;
      }

      break;
    }

LABEL_27:
    sub_1AF630994(v10, &v330, v395);
    v302 = v30;
    sub_1AF62D29C(v17);
    ecs_stack_allocator_pop_snapshot(v287);
    if (v284)
    {
      os_unfair_lock_unlock(*(v17 + 344));
      os_unfair_lock_unlock(*(v17 + 376));
    }

    v11 = v283 + 1;
    if (v283 + 1 != v282)
    {
      continue;
    }

    break;
  }

  v188 = MEMORY[0x1E69E6720];
  sub_1AFB64588(v369, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
  sub_1AFB64588(v369, &qword_1ED725EA0, &type metadata for QueryResult, v188);
  v1 = v276;
LABEL_203:
  sub_1AF829104(v324);
  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_1AFE4C680;
  *(v189 + 32) = &type metadata for kCluster;
  *(v189 + 40) = &off_1F2561A40;
  *(v189 + 48) = &type metadata for PointOfView;
  *(v189 + 56) = &off_1F2511DD0;
  *(v189 + 64) = &type metadata for PointOfCulling;
  *(v189 + 72) = &off_1F252B2B8;
  sub_1AF5D1EC0(v189);
  sub_1AFB64528(v324, sub_1AFA1ECA4);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v348 = v325[0];
  v349 = v325[1];
  *&v350 = v326;
  sub_1AF6B06C0(v1, &v348, 0x200000000, v373);
  if (*&v373[0])
  {
    if (v376 > 0 && (v288 = *(&v374 + 1)) != 0)
    {
      v277 = v1;
      v285 = *(&v373[2] + 1);
      v190 = *(&v375 + 1);
      v297 = *(v375 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v294 = *(*(&v375 + 1) + 32);
      v381 = *&v373[0];
      v382 = *(v373 + 8);
      v383 = *(&v373[1] + 8);
      v389 = v373[2];
      v390 = v374;
      v391 = v375;
      v392 = v376;
      v387 = v373[0];
      v388 = v373[1];
      sub_1AF5DD298(&v387, v377);
      v191 = 0;
      do
      {
        v291 = v191;
        v192 = (v285 + 48 * v191);
        v193 = *v192;
        v194 = v192[1];
        v196 = *(v192 + 2);
        v195 = *(v192 + 3);
        v197 = *(v192 + 4);
        v198 = *(v192 + 5);
        v300 = v197;
        if (v297)
        {
          v199 = v192[1];
          v200 = *(v198 + 376);

          v201 = v200;
          v194 = v199;
          v197 = v300;
          os_unfair_lock_lock(v201);
          os_unfair_lock_lock(*(v198 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v294);
        v202 = *(v190 + 64);
        v358 = *(v190 + 48);
        v359 = v202;
        *&v360 = *(v190 + 80);
        v203 = *(*(*(*(v198 + 40) + 16) + 32) + 16) + 1;
        *(v190 + 48) = ecs_stack_allocator_allocate(*(v190 + 32), 48 * v203, 8);
        *(v190 + 56) = v203;
        *(v190 + 72) = 0;
        *(v190 + 80) = 0;
        *(v190 + 64) = 0;
        v308 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v196, v195, v197, v190);
        if (v196)
        {
          if (v197)
          {
            for (j = 0; j != v197; ++j)
            {
              v205 = 0;
              v206 = v196[j];
              v207 = -1;
              v208 = INFINITY;
              v209 = (v279 + 32);
              do
              {
                v210 = *v209;
                v209 += 2;
                v211 = vsubq_f32(*&v308[16 * j], v210);
                v212 = vmulq_f32(v211, v211);
                v213 = sqrtf(v212.f32[2] + vaddv_f32(*v212.f32));
                if (v213 < v208)
                {
                  v207 = v205;
                }

                v214 = v205 + 1;
                if (v213 < v208)
                {
                  v208 = v213;
                }

                ++v205;
              }

              while (v7 != v214);
              v215 = *(v198 + 40);
              v216 = *(v215 + 96);
              v217 = *(v215 + 112);
              v218 = (v217 + 32);
              v219 = *(v217 + 16) + 1;
              do
              {
                if (!--v219)
                {

LABEL_215:
                  *&v377[2] = &off_1F2561AC0;
                  *(&v377[1] + 1) = &type metadata for kCluster;
                  *&v377[0] = v207;
                  BYTE8(v377[2]) = 2;
                  sub_1AF6304E8(v190 + 104, v377, v206, 0, v198, v190);

                  sub_1AF635250(v377);
                  goto LABEL_216;
                }

                v220 = v218 + 5;
                v221 = *v218;
                v218 += 5;
              }

              while (v221 != &type metadata for kCluster);
              v222 = *(v220 - 2);
              *&v377[0] = v207;

              if (*(v216 + v222) != *&v377[0])
              {
                v197 = v300;
                goto LABEL_215;
              }

              v197 = v300;
LABEL_216:
              ;
            }
          }
        }

        else
        {
          v223 = v193 == v194;
LABEL_232:
          while (!v223)
          {
            v224 = 0;
            v225 = v193;
            v226 = -1;
            v227 = INFINITY;
            v228 = (v279 + 32);
            do
            {
              v229 = *v228;
              v228 += 2;
              v230 = vsubq_f32(*&v308[16 * v193], v229);
              v231 = vmulq_f32(v230, v230);
              v232 = sqrtf(v231.f32[2] + vaddv_f32(*v231.f32));
              if (v232 < v227)
              {
                v226 = v224;
              }

              v233 = v224 + 1;
              if (v232 < v227)
              {
                v227 = v232;
              }

              ++v224;
            }

            while (v7 != v233);
            ++v193;
            v234 = *(v198 + 40);
            v235 = *(v234 + 96);
            v236 = *(v234 + 112);
            v237 = (v236 + 32);
            v238 = *(v236 + 16) + 1;
            do
            {
              if (!--v238)
              {

LABEL_231:
                *&v377[2] = &off_1F2561AC0;
                *(&v377[1] + 1) = &type metadata for kCluster;
                *&v377[0] = v226;
                BYTE8(v377[2]) = 2;
                sub_1AF6304E8(v190 + 104, v377, v225, 0, v198, v190);

                sub_1AF635250(v377);
                v223 = v193 == v194;
                goto LABEL_232;
              }

              v239 = v237 + 5;
              v240 = *v237;
              v237 += 5;
            }

            while (v240 != &type metadata for kCluster);
            v241 = *(v239 - 2);
            *&v377[0] = v226;

            if (*(v235 + v241) != *&v377[0])
            {
              goto LABEL_231;
            }

            v223 = v193 == v194;
          }
        }

        sub_1AF630994(v190, &v381, &v358);
        if (*(*(v190 + 104) + 16))
        {

          sub_1AF62F348(v242, v198);

          v243 = swift_isUniquelyReferenced_nonNull_native();
          v244 = *(v190 + 104);
          if (v243)
          {
            v245 = v244[2];
            v246 = swift_isUniquelyReferenced_nonNull_native();
            *(v190 + 104) = v244;
            if ((v246 & 1) == 0)
            {
              v244 = sub_1AF420EA0(0, v245, 1, v244);
              *(v190 + 104) = v244;
            }

            sub_1AF43A540(0);
            swift_arrayDestroy();
            if (v245)
            {
              v247 = v244[2] - v245;
              memmove(v244 + 4, &v244[9 * v245 + 4], 72 * v247);
              v244[2] = v247;
            }

            *(v190 + 104) = v244;
          }

          else
          {
            v248 = MEMORY[0x1E69E7CC0];
            if (v244[3] >= 2uLL)
            {
              sub_1AFB64600(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
              v248 = swift_allocObject();
              v249 = j__malloc_size_0(v248);
              v248[2] = 0;
              v248[3] = 2 * ((v249 - 32) / 72);
            }

            *(v190 + 104) = v248;
          }

          if (*(*(v190 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
          {
            v250 = *(v198 + 232);
            v251 = *(v198 + 256);
            if (v250 == v251)
            {
              v252 = *(v198 + 240);
            }

            else
            {
              sub_1AF6497A0(v251, v250);
              v251 = *(v198 + 232);
              v252 = *(v198 + 240);
              if (v252 == v251)
              {
                v252 = 0;
                v251 = 0;
                *(v198 + 232) = 0;
                *(v198 + 240) = 0;
              }
            }

            *(v198 + 248) = v252;
            *(v198 + 256) = v251;
          }
        }

        ecs_stack_allocator_pop_snapshot(v294);
        if (v297)
        {
          os_unfair_lock_unlock(*(v198 + 344));
          os_unfair_lock_unlock(*(v198 + 376));
        }

        v191 = v291 + 1;
      }

      while (v291 + 1 != v288);
      v253 = MEMORY[0x1E69E6720];
      sub_1AFB64588(v373, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
      sub_1AFB64588(v373, &qword_1ED725EA0, &type metadata for QueryResult, v253);
      v1 = v277;
    }

    else
    {
      sub_1AFB64588(v373, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
    }
  }

  sub_1AF829104(v327);
  v254 = swift_allocObject();
  *(v254 + 16) = xmmword_1AFE431C0;
  *(v254 + 32) = &type metadata for kCluster;
  *(v254 + 40) = &off_1F2561AC0;
  sub_1AFB402C4();
  sub_1AFB64528(v327, sub_1AFA1ECA4);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v255 = v279;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v255 = sub_1AFC0DB0C(v279);
  }

  v256 = 32;
  v257 = v7;
  do
  {
    v258 = &v255[v256];
    *v258 = 0;
    *(v258 + 1) = 0;
    *(v258 + 2) = 0;
    v256 += 32;
    --v257;
  }

  while (v257);
  *&v310 = v255;
  v344 = v328[0];
  v345 = v328[1];
  v346 = v329;
  sub_1AF6B06C0(v1, &v344, 0x200000000, v377);
  v292 = *&v377[0];
  if (*&v377[0])
  {
    v259 = *(&v377[2] + 1);
    v260 = *(&v378[0] + 1);
    v261 = *(&v378[1] + 1);
    v379 = *(v377 + 8);
    v380 = *(&v377[1] + 8);
    v286 = *&v378[2];
    v289 = *&v378[1];
    if (*&v378[2] > 0 && *(&v378[0] + 1))
    {
      v278 = v1;
      v262 = *(*(&v378[1] + 1) + 32);
      v309 = *(*&v378[1] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v365 = v377[2];
      v366 = v378[0];
      v367 = v378[1];
      v368 = v378[2];
      v363 = v377[0];
      v364 = v377[1];
      sub_1AF5DD298(&v363, &v387);
      v263 = (v259 + 24);
      do
      {
        v306 = v260;
        v264 = *(v263 - 6);
        v265 = *(v263 - 5);
        v266 = *(v263 - 4);
        v298 = *v263;
        v301 = *(v263 - 1);
        v267 = v263[2];
        v295 = v263[1];
        if (v309)
        {
          v268 = *(v267 + 376);

          os_unfair_lock_lock(v268);
          os_unfair_lock_lock(*(v267 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v262);
        v269 = *(v261 + 64);
        v353 = *(v261 + 48);
        v354 = v269;
        *&v355 = *(v261 + 80);
        v270 = *(*(*(*(v267 + 40) + 16) + 32) + 16) + 1;
        *(v261 + 48) = ecs_stack_allocator_allocate(*(v261 + 32), 48 * v270, 8);
        *(v261 + 56) = v270;
        *(v261 + 72) = 0;
        *(v261 + 80) = 0;
        *(v261 + 64) = 0;
        LOBYTE(v384[0]) = 1;
        *&v387 = v289;
        *(&v387 + 1) = v267;
        *&v388 = v261;
        *(&v388 + 1) = v266;
        *&v389 = (v265 - v264 + v266);
        *(&v389 + 1) = v286;
        *&v390 = v264;
        *(&v390 + 1) = v265;
        v391 = 0uLL;
        LOBYTE(v392) = 1;
        *(&v392 + 1) = v301;
        v393 = v298;
        v394 = v295;
        sub_1AFB6185C(&v387, v7, &v310);
        v341 = v292;
        v342 = v379;
        v343 = v380;
        sub_1AF630994(v261, &v341, &v353);
        sub_1AF62D29C(v267);
        ecs_stack_allocator_pop_snapshot(v262);
        if (v309)
        {
          os_unfair_lock_unlock(*(v267 + 344));
          os_unfair_lock_unlock(*(v267 + 376));
        }

        v263 += 6;
        v260 = v306 - 1;
      }

      while (v306 != 1);
      v271 = MEMORY[0x1E69E6720];
      sub_1AFB64588(v377, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
      sub_1AFB64588(v377, &qword_1ED725EA0, &type metadata for QueryResult, v271);
      v1 = v278;
    }

    else
    {
      sub_1AFB64588(v377, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
    }
  }

  sub_1AFB61710();
  MEMORY[0x1EEE9AC00](v272);
  v273 = *(v1 + 184);

  sub_1AF6D2ADC(&type metadata for kClusterState, &off_1F2561AE0, v273, sub_1AFB645E4);

  sub_1AFB64528(v328, sub_1AFA1ECA4);
  sub_1AFB64528(v325, sub_1AFA1ECA4);
  v274 = sub_1AFB64528(v322, sub_1AFA1ECA4);
  v363 = v310;
  v364 = v311;
  v365 = v312;
  v275 = *(v1 + 184);
  MEMORY[0x1EEE9AC00](v274);

  sub_1AF6D2ADC(&type metadata for kClusterState, &off_1F2561AE0, v275, sub_1AFB64910);
}

uint64_t sub_1AFB6449C(uint64_t a1)
{
  sub_1AFB64600(0, &qword_1EB642C48, sub_1AF443068, MEMORY[0x1E69E62F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AFB64528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFB64588(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AFB64664(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AFB64600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AFB64664(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t destroy for kClusterState(void *a1)
{
}

uint64_t *initializeWithCopy for kClusterState(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

uint64_t *assignWithCopy for kClusterState(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  return a1;
}

void *assignWithTake for kClusterState(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);

  *(a1 + 3) = *(a2 + 24);

  a1[5] = *(a2 + 40);

  return a1;
}

unint64_t sub_1AFB648BC()
{
  result = qword_1EB642C50;
  if (!qword_1EB642C50)
  {
    result = swift_getWitnessTable(byte_1AFE9CCBC, &type metadata for kCluster, v0, v1);
    atomic_store(result, &qword_1EB642C50);
  }

  return result;
}

uint64_t sub_1AFB6492C(void *a1, unsigned __int16 a2)
{
  v3 = a2;
  sub_1AFB67C78(0, &qword_1EB642C88, sub_1AFB67C24, &type metadata for KillShape.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB67C24();
  sub_1AFDFF3F8();
  v14 = v3;
  v13 = 0;
  sub_1AF51C6DC();
  sub_1AFDFE918();
  if (!v2)
  {
    v12 = 1;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFB64B90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656469736E69;
  }

  else
  {
    v3 = 0x6570616873;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656469736E69;
  }

  else
  {
    v5 = 0x6570616873;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFB64C30()
{
  if (*v0)
  {
    return 0x656469736E69;
  }

  else
  {
    return 0x6570616873;
  }
}

uint64_t sub_1AFB64C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656469736E69 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AFB64D38(uint64_t a1)
{
  v2 = sub_1AFB67C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB64D74(uint64_t a1)
{
  v2 = sub_1AFB67C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB64DB0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFB65A64(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1AFB64DE4(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1AFB6492C(a1, v2 | *v1);
}

uint64_t sub_1AFB64E14(uint64_t a1)
{
  v2 = sub_1AFB67CE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB64E50(uint64_t a1)
{
  v2 = sub_1AFB67CE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB64E8C(void *a1)
{
  sub_1AFB67C78(0, &qword_1EB642C90, sub_1AFB67CE0, &type metadata for ParticleKillable.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB67CE0();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v6, v3);
}

double sub_1AFB64FF0()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF5C94B0(v1);

  result = *v1;
  xmmword_1EB6C35E0 = v1[0];
  *algn_1EB6C35F0 = v1[1];
  qword_1EB6C3600 = v2;
  return result;
}

uint64_t sub_1AFB6509C(uint64_t a1, float32x4_t a2, float a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 16);
  v8 = ecs_stack_allocator_allocate(v7[4], 8 * (v6 - v5), 8);
  v9 = *(a1 + 8);
  v10 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), v7);
  v11 = 0;
  for (i = v6 - v5; v6 != v5; ++v5)
  {
    v13 = vmulq_f32(*&v10[16 * v5], a2);
    if ((vaddv_f32(vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL))) * a3) < 0.0)
    {
      v8[v11++] = v5;
    }
  }

  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v30 = 5;
  if (v11 >= 1)
  {
    if (v11 == *(v9 + 240) - *(v9 + 232))
    {
      sub_1AF63515C(v28, v25);
      v27 = 0;
      v26 = 0uLL;
    }

    else
    {
      sub_1AF63515C(v28, v25);
      *&v26 = v8;
      *(&v26 + 1) = i;
      v27 = v11;
    }

    v14 = v7[13];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7[13] = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1AF420EA0(0, v14[2] + 1, 1, v14);
      v7[13] = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v7[13] = sub_1AF420EA0(v16 > 1, v17 + 1, 1, v14);
    }

    v18 = v7[13];
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 72 * v17;
    *(v19 + 32) = v25[0];
    v20 = v25[1];
    v21 = v25[2];
    v22 = v26;
    *(v19 + 96) = v27;
    *(v19 + 64) = v21;
    *(v19 + 80) = v22;
    *(v19 + 48) = v20;
    v7[13] = v18;
  }

  return sub_1AF635250(v28);
}

uint64_t sub_1AFB652A8(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 104);
  v8 = *(a1 + 88);
  v9 = v3;
  v10 = *(a1 + 120);
  sub_1AF829104(v6);
  sub_1AF688940(a1);
  v4 = v6[1];
  *(v2 + 16) = v6[0];
  *(v2 + 32) = v4;
  *(v2 + 48) = v7;
  return v2;
}

void sub_1AFB65344(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);
  v7 = qword_1EB6372F8;

  if (v7 != -1)
  {
    swift_once();
  }

  v58[0] = xmmword_1EB6C35E0;
  v58[1] = *algn_1EB6C35F0;
  v59 = qword_1EB6C3600;
  if (v6)
  {
    v8 = 0x200000000;
  }

  else
  {
    v8 = v5;
  }

  sub_1AF6B06C0(v4, v58, v8, v37);
  v30 = *&v37[0];
  if (!*&v37[0])
  {

    return;
  }

  v10 = *(&v37[2] + 1);
  v11 = *(&v38 + 1);
  v26 = *(&v39 + 1);
  v29 = v39;
  v42 = *(v37 + 8);
  v43 = *(&v37[1] + 8);
  MEMORY[0x1EEE9AC00](v9);
  v27 = v24;
  v28 = v12;
  v24[2] = a1;
  v24[3] = v2;
  if (v12 <= 0)
  {

LABEL_23:
    sub_1AF5D1564(v37);
    return;
  }

  if (!v11)
  {
    v52 = v37[2];
    v53 = v38;
    v54 = v39;
    v55 = v40;
    v50 = v37[0];
    v51 = v37[1];
    sub_1AF5DD298(&v50, v36);

    sub_1AF5D1564(v37);
    goto LABEL_23;
  }

  v25[1] = v25;
  v25[2] = v4;
  v13 = v26;
  v14 = v26[4];
  v35 = *(v29 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v36[2] = v37[2];
  v36[3] = v38;
  v36[4] = v39;
  v36[5] = v40;
  v36[0] = v37[0];
  v36[1] = v37[1];
  sub_1AF5DD298(v36, &v50);
  v15 = (v10 + 24);
  while (1)
  {
    v34 = 0;
    v16 = *(v15 - 6);
    v17 = *(v15 - 5);
    v18 = *(v15 - 4);
    v19 = *(v15 - 1);
    v32 = *v15;
    v33 = v19;
    v20 = v15[2];
    v31 = v15[1];
    if (v35)
    {
      v21 = *(v20 + 376);

      v13 = v26;
      os_unfair_lock_lock(v21);
      os_unfair_lock_lock(*(v20 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v14);

    sub_1AF630914(v22, v13, v41);

    LOBYTE(v44) = 1;
    *&v50 = v29;
    *(&v50 + 1) = v20;
    *&v51 = v13;
    *(&v51 + 1) = v18;
    *&v52 = (v17 - v16 + v18);
    *(&v52 + 1) = v28;
    *&v53 = v16;
    *(&v53 + 1) = v17;
    v54 = 0uLL;
    LOBYTE(v55) = 1;
    *(&v55 + 1) = v33;
    v56 = v32;
    v57 = v31;
    v23 = v34;
    sub_1AF889DF4(&v50, sub_1AFB67B00, v27);
    if (v23)
    {
      break;
    }

    v47 = v30;
    v48 = v42;
    v49 = v43;
    sub_1AF630994(v13, &v47, v41);
    sub_1AF62D29C(v20);
    ecs_stack_allocator_pop_snapshot(v14);
    if (v35)
    {
      os_unfair_lock_unlock(*(v20 + 344));
      os_unfair_lock_unlock(*(v20 + 376));
    }

    v15 += 6;
    if (!--v11)
    {

      sub_1AF5D1564(v37);
      goto LABEL_23;
    }
  }

  v44 = v30;
  v45 = v42;
  v46 = v43;
  sub_1AF630994(v13, &v44, v41);
  sub_1AF62D29C(v20);
  ecs_stack_allocator_pop_snapshot(v14);
  os_unfair_lock_unlock(*(v20 + 344));
  os_unfair_lock_unlock(*(v20 + 376));
  __break(1u);
}

uint64_t sub_1AFB65758(uint64_t a1, char *a2, simd_float4x4 *a3, uint64_t a4)
{
  v27 = __invert_f4(*a3);
  v6 = *(a4 + 88);
  v35 = *(a4 + 72);
  v36 = v6;
  v7 = *(a4 + 120);
  v37 = *(a4 + 104);
  v38 = v7;
  v8 = *(a4 + 24);
  v31 = *(a4 + 8);
  v32 = v8;
  v9 = *(a4 + 56);
  v33 = *(a4 + 40);
  v34 = v9;
  sub_1AFB948D8();
  v14 = *a2;
  v15 = a2[1];
  v28[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27.columns[0], v10.f32[0]), v27.columns[1], *v10.f32, 1), v27.columns[2], v10, 2), v27.columns[3], v10, 3);
  v28[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27.columns[0], v11.f32[0]), v27.columns[1], *v11.f32, 1), v27.columns[2], v11, 2), v27.columns[3], v11, 3);
  v28[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27.columns[0], v12.f32[0]), v27.columns[1], *v12.f32, 1), v27.columns[2], v12, 2), v27.columns[3], v12, 3);
  v28[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27.columns[0], v13.f32[0]), v27.columns[1], *v13.f32, 1), v27.columns[2], v13, 2), v27.columns[3], v13, 3);
  v29 = v14;
  v30 = v15;
  if (*a4)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for emitter_killshape_uniforms(0);
    sub_1AF6F4524(v28, 1, ObjectType, v17, v18, v19, v20, v21);
  }

  v22 = v33;
  v23 = *(v31 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

  v24 = v23;

  MEMORY[0x1EEE9AC00](v25);
  sub_1AFCBF008(v22, sub_1AF9D17D4);
}

unint64_t sub_1AFB65A10()
{
  result = qword_1EB642C58;
  if (!qword_1EB642C58)
  {
    result = swift_getWitnessTable(aM_4, &type metadata for KillShape.Shape, v0, v1);
    atomic_store(result, &qword_1EB642C58);
  }

  return result;
}

uint64_t sub_1AFB65A64(void *a1)
{
  sub_1AFB67C78(0, &qword_1EB642C78, sub_1AFB67C24, &type metadata for KillShape.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB67C24();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v14 = 0;
  sub_1AF51C688();
  sub_1AFDFE768();
  v8 = v15;
  v13 = 1;
  v10 = sub_1AFDFE718();
  (*(v5 + 8))(v7, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v10)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return v11 | v8;
}

uint64_t sub_1AFB65C5C(uint64_t a1, uint64_t a2)
{

  v4 = sub_1AF693B94(a1, &type metadata for IsSubEntityOf);
  v6 = v5;

  if (v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1AF67DAE0(v4, a2);

  if ((v7 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AF47BBFC(0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1AFE431C0;
  *(result + 32) = &type metadata for ParticleAge;
  *(result + 40) = &off_1F252CBE8;
  return result;
}

void sub_1AFB65D2C(char a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  *v9.i64 = sub_1AF6DE0B4(xmmword_1AFE20160, a4, a5, a6);
  v55 = v9;
  if (a1)
  {
    v10 = -1.0;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = *(a3 + 32);
  v78[0] = *(a3 + 16);
  v78[1] = v11;
  v79 = *(a3 + 48);
  sub_1AF6B06C0(a2, v78, 0x200000000, &v62);
  if (v62)
  {
    v54 = v69;
    if (v69 >= 1)
    {
      v53 = v66;
      if (v66)
      {
        v12 = 0;
        v52 = v65;
        v13 = v68;
        v51 = v67;
        v14 = *(v67 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v61 = *(v68 + 32);
        v70 = v62;
        v71 = v63;
        v72 = v64;
        v50 = v14;
        do
        {
          v15 = (v52 + 48 * v12);
          v16 = *v15;
          v17 = v15[1];
          v18 = v15[2];
          v19 = *(v15 + 2);
          v20 = *(v15 + 3);
          v21 = *(v15 + 4);
          v22 = *(v15 + 5);
          if (v14)
          {
            v23 = *(v22 + 376);

            os_unfair_lock_lock(v23);
            os_unfair_lock_lock(*(v22 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v61);
          v58 = *(v13 + 64);
          v59 = *(v13 + 48);
          v57 = *(v13 + 80);
          v24 = *(*(*(*(v22 + 40) + 16) + 32) + 16) + 1;
          *(v13 + 48) = ecs_stack_allocator_allocate(*(v13 + 32), 48 * v24, 8);
          *(v13 + 56) = v24;
          *(v13 + 72) = 0;
          *(v13 + 80) = 0;
          *(v13 + 64) = 0;
          v73[0] = v51;
          v73[1] = v22;
          v60 = v22;
          v73[2] = v13;
          v73[3] = v18;
          v73[4] = (v17 - v16 + v18);
          v73[5] = v54;
          v73[6] = v16;
          v73[7] = v17;
          v73[8] = 0;
          v73[9] = 0;
          v74 = 1;
          v75 = v19;
          v76 = v20;
          v77 = v21;
          sub_1AFB6509C(v73, v55, v10);
          v25 = *(v13 + 48);
          v26 = *(v13 + 64);
          if (!v26)
          {
            v48 = *(v13 + 56);
            v49 = *(v13 + 32);
            goto LABEL_42;
          }

          v56 = v12;
          for (i = 0; i != v26; ++i)
          {
            v29 = (v25 + 48 * i);
            v30 = *v29;
            v31 = v29[4];
            v32 = *(v13 + 72);
            if (v32)
            {
              v33 = v30 == v32;
            }

            else
            {
              v33 = 0;
            }

            if (v33)
            {
              goto LABEL_14;
            }

            v34 = v70;
            if (!v70[11])
            {
              goto LABEL_14;
            }

            v35 = v29[2];
            v36 = v70 + 41;
            v37 = v70[9];
            if (v37 >= 0x10)
            {
              v38 = &v36[v70[8]];
              v39 = v37 >> 4;
              v40 = v70 + 41;
              while (*v38 != v30)
              {
                ++v40;
                v38 += 16;
                if (!--v39)
                {
                  goto LABEL_30;
                }
              }

              v41 = v40[v70[10]];
              v42 = v41 > 5;
              v43 = (1 << v41) & 0x23;
              if (v42 || v43 == 0)
              {
LABEL_14:

                v31(v28);

                continue;
              }
            }

LABEL_30:
            if (swift_conformsToProtocol2() && v35)
            {
              if (sub_1AF5FC8D8(v35))
              {
                goto LABEL_14;
              }

              v45 = v34[9];
              if (v45 < 0x10)
              {
                goto LABEL_14;
              }

              v46 = &v36[v34[8]];
              v47 = 16 * (v45 >> 4);
              while (*v46 != v35)
              {
                v46 += 16;
                v47 -= 16;
                if (!v47)
                {
                  goto LABEL_14;
                }
              }
            }
          }

          v48 = *(v13 + 56);
          v25 = *(v13 + 48);
          v49 = *(v13 + 32);
          if (*(v13 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v12 = v56;
LABEL_42:
          ecs_stack_allocator_deallocate(v49, v25, 48 * v48);
          *(v13 + 48) = v59;
          *(v13 + 64) = v58;
          *(v13 + 80) = v57;
          sub_1AF62D29C(v60);
          ecs_stack_allocator_pop_snapshot(v61);
          v14 = v50;
          if (v50)
          {
            os_unfair_lock_unlock(*(v60 + 344));
            os_unfair_lock_unlock(*(v60 + 376));
          }

          ++v12;
        }

        while (v12 != v53);
      }
    }

    sub_1AF5D1564(&v62);
  }
}

uint64_t sub_1AFB66134(uint64_t a1, char a2, float32x4_t a3, float32x4_t a4)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 16);
  v9 = ecs_stack_allocator_allocate(v8[4], 8 * (v7 - v6), 8);
  v10 = *(a1 + 8);
  v11 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), v8);
  v13 = 0;
  for (i = v7 - v6; v7 != v6; ++v6)
  {
    v15 = v12.i32[3];
    v12 = vabdq_f32(*&v11[16 * v6], a3);
    v12.i32[3] = v15;
    if (a2)
    {
      v16 = vcgtq_f32(v12, a4);
      if ((v16.i32[2] | v16.i32[1] | v16.i32[0]) < 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = vcgtq_f32(a4, v12);
      if ((v17.i32[2] & v17.i32[1] & v17.i32[0]) < 0)
      {
LABEL_11:
        v9[v13++] = v6;
      }
    }
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v35 = 5;
  if (v13 >= 1)
  {
    if (v13 == *(v10 + 240) - *(v10 + 232))
    {
      sub_1AF63515C(v33, v30);
      v32 = 0;
      v31 = 0uLL;
    }

    else
    {
      sub_1AF63515C(v33, v30);
      *&v31 = v9;
      *(&v31 + 1) = i;
      v32 = v13;
    }

    v18 = v8[13];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8[13] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1AF420EA0(0, v18[2] + 1, 1, v18);
      v8[13] = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v8[13] = sub_1AF420EA0(v20 > 1, v21 + 1, 1, v18);
    }

    v22 = v8[13];
    *(v22 + 16) = v21 + 1;
    v23 = v22 + 72 * v21;
    *(v23 + 32) = v30[0];
    v24 = v30[1];
    v25 = v30[2];
    v26 = v31;
    *(v23 + 96) = v32;
    *(v23 + 64) = v25;
    *(v23 + 80) = v26;
    *(v23 + 48) = v24;
    v8[13] = v22;
  }

  return sub_1AF635250(v33);
}

uint64_t sub_1AFB66344(uint64_t a1, char a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 16);
  v11 = ecs_stack_allocator_allocate(v10[4], 8 * (v9 - v8), 8);
  v12 = *(a1 + 8);
  v13 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), v10);
  v15 = 0;
  for (i = v9 - v8; v9 != v8; ++v8)
  {
    v17 = v14.i32[3];
    v14 = vabsq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(*&v13[16 * v8])), a4, *&v13[16 * v8], 1), a5, *&v13[16 * v8], 2), a6, *&v13[16 * v8], 3));
    v14.i32[3] = v17;
    if (a2)
    {
      v18 = vcgtq_f32(v14, xmmword_1AFE52680);
      if ((v18.i32[2] | v18.i32[1] | v18.i32[0]) < 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v19 = vcgtq_f32(xmmword_1AFE52680, v14);
      if ((v19.i32[2] & v19.i32[1] & v19.i32[0]) < 0)
      {
LABEL_11:
        v11[v15++] = v8;
      }
    }
  }

  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v39 = 5;
  if (v15 >= 1)
  {
    if (v15 == *(v12 + 240) - *(v12 + 232))
    {
      sub_1AF63515C(v37, v34);
      v36 = 0;
      v35 = 0uLL;
    }

    else
    {
      sub_1AF63515C(v37, v34);
      *&v35 = v11;
      *(&v35 + 1) = i;
      v36 = v15;
    }

    v20 = v10[13];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10[13] = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1AF420EA0(0, v20[2] + 1, 1, v20);
      v10[13] = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v10[13] = sub_1AF420EA0(v22 > 1, v23 + 1, 1, v20);
    }

    v24 = v10[13];
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 72 * v23;
    *(v25 + 32) = v34[0];
    v26 = v34[1];
    v27 = v34[2];
    v28 = v35;
    *(v25 + 96) = v36;
    *(v25 + 64) = v27;
    *(v25 + 80) = v28;
    *(v25 + 48) = v26;
    v10[13] = v24;
  }

  return sub_1AF635250(v37);
}

void sub_1AFB6657C(char a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v12 = vmulq_f32(a4, a4);
  v13 = vmulq_f32(a5, a5);
  v14 = vmulq_f32(a6, a6);
  v15 = vzip2q_s32(v12, v14);
  v16 = vzip1q_s32(vzip1q_s32(v12, v14), v13);
  v17 = vtrn2q_s32(v12, v13);
  v17.i32[2] = v14.i32[1];
  v18 = vaddq_f32(vzip1q_s32(v15, vdupq_laneq_s32(v13, 2)), vaddq_f32(v16, v17));
  v13.i64[0] = 0x80000000800000;
  v13.i64[1] = 0x80000000800000;
  v19 = vcgeq_f32(v13, v18);
  v18.i32[3] = 0;
  v20 = vrsqrteq_f32(v18);
  v21 = vmulq_f32(v20, vrsqrtsq_f32(v18, vmulq_f32(v20, v20)));
  v22 = v19;
  v22.i32[3] = 0;
  v23 = vbslq_s8(vcltzq_s32(v22), v18, vmulq_f32(v21, vrsqrtsq_f32(v18, vmulq_f32(v21, v21))));
  v24 = vmulq_n_f32(a4, v23.f32[0]);
  v25 = vmulq_lane_f32(a5, *v23.f32, 1);
  v26 = vmulq_laneq_f32(a6, v23, 2);
  v27 = vuzp1q_s32(v26, v26);
  v28 = vuzp1q_s32(v25, v25);
  v29 = v24;
  if (v19.i32[0])
  {
    v30 = vmlaq_f32(vmulq_f32(vextq_s8(v27, v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(v28, v25, 0xCuLL));
    v29 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
  }

  v31 = vuzp1q_s32(v24, v24);
  v32 = v25;
  if (v19.i32[1])
  {
    v33 = vmlaq_f32(vmulq_f32(vextq_s8(v31, v24, 0xCuLL), vnegq_f32(v26)), v24, vextq_s8(v27, v26, 0xCuLL));
    v32 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
  }

  if (v19.i32[2])
  {
    v34 = vmlaq_f32(vmulq_f32(vextq_s8(v28, v25, 0xCuLL), vnegq_f32(v24)), v25, vextq_s8(v31, v24, 0xCuLL));
    v26 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
  }

  v35 = (*v29.i32 + *&v32.i32[1]) + v26.f32[2];
  if (v35 <= 0.0)
  {
    if (*v29.i32 < *&v32.i32[1] || *v29.i32 < v26.f32[2])
    {
      if (*&v32.i32[1] <= v26.f32[2])
      {
        v133 = vzip2q_s32(v29, v32).u64[0];
        v134 = __PAIR64__(v29.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v26.f32[2] + 1.0) - *v29.i32) - *&v32.i32[1])));
        v135 = vdup_lane_s32(*v32.i8, 0);
        v136 = vsub_f32(*v29.i8, v135);
        v135.i32[0] = v134.i32[0];
        v135.i32[0] = vmul_f32(v134, v135).u32[0];
        v135.i32[1] = v136.i32[1];
        *v37.f32 = vadd_f32(v133, *v26.f32);
        *&v37.u32[2] = v135;
        v38 = 0.5 / v134.f32[0];
        goto LABEL_9;
      }

      v42 = sqrtf(((*&v32.i32[1] + 1.0) - *v29.i32) - v26.f32[2]);
      v46.f32[0] = *&v29.i32[1] + *v32.i32;
      v41 = vzip2q_s32(v29, v32).u64[0];
      v46.f32[1] = v42 * v42;
      *&v46.u32[2] = vext_s8(vadd_f32(*v26.f32, v41), vsub_f32(*v26.f32, v41), 4uLL);
    }

    else
    {
      v42 = sqrtf(((*v29.i32 + 1.0) - *&v32.i32[1]) - v26.f32[2]);
      v46.f32[0] = v42 * v42;
      v43 = *&v29.i32[1] + *v32.i32;
      v44 = vzip2q_s32(v29, v32).u64[0];
      LODWORD(v45) = vadd_f32(v44, *v26.f32).u32[0];
      HIDWORD(v45) = vsub_f32(v44, *&v26).i32[1];
      v46.f32[1] = v43;
      v46.i64[1] = v45;
    }

    v39 = vmulq_n_f32(v46, 0.5 / v42);
    goto LABEL_18;
  }

  v36 = sqrtf(v35 + 1.0);
  *v37.f32 = vsub_f32(*&vzip2q_s32(v32, vuzp1q_s32(v32, v26)), *&vtrn2q_s32(v26, vzip2q_s32(v26, v29)));
  v37.f32[2] = *&v29.i32[1] - *v32.i32;
  v37.f32[3] = v36 * v36;
  v38 = 0.5 / v36;
LABEL_9:
  v39 = vmulq_n_f32(v37, v38);
LABEL_18:
  v47 = 0;
  v48 = 1;
  while (!v48)
  {
    if (v47 == 3)
    {
      goto LABEL_65;
    }

    v48 = 0;
LABEL_20:
    ++v47;
  }

  v170 = v39;
  v49 = *(&v170 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3)));
  v171 = xmmword_1AFE201A0;
  v50 = *(&v171 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3)));
  v48 = v49 == v50;
  if (v47 != 3)
  {
    goto LABEL_20;
  }

  if (v49 == v50)
  {
    v161 = a4;
    v164 = a5;
    v167 = a6;
    v51 = *(a3 + 32);
    v198 = *(a3 + 16);
    v199 = v51;
    v200 = *(a3 + 48);
    sub_1AF6B06C0(a2, &v198, 0x200000000, &v173);
    if (!v173)
    {
      return;
    }

    v149 = v180;
    if (v180 >= 1)
    {
      v147 = v177;
      if (v177)
      {
        v52 = 0;
        v154 = vmlaq_f32(vmlaq_f32(vmlaq_f32(a7, 0, v167), 0, v164), 0, v161);
        v145 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v164), xmmword_1AFE52680), xmmword_1AFE52680, vabsq_f32(v161)), xmmword_1AFE52680, vabsq_f32(v167));
        v143 = v176;
        v53 = v179;
        v141 = v178;
        v54 = *(v178 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v168 = *(v179 + 32);
        v181 = v173;
        v182 = v174;
        v183 = v175;
        v139 = v54;
        while (1)
        {
          v55 = (v143 + 48 * v52);
          v56 = *v55;
          v57 = v55[1];
          v58 = v55[2];
          v59 = *(v55 + 2);
          v60 = *(v55 + 3);
          v61 = *(v55 + 4);
          v62 = *(v55 + 5);
          if (v54)
          {
            v63 = *(v62 + 376);

            os_unfair_lock_lock(v63);
            os_unfair_lock_lock(*(v62 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v168);
          v159 = *(v53 + 64);
          v162 = *(v53 + 48);
          v157 = *(v53 + 80);
          v64 = *(*(*(*(v62 + 40) + 16) + 32) + 16) + 1;
          *(v53 + 48) = ecs_stack_allocator_allocate(*(v53 + 32), 48 * v64, 8);
          *(v53 + 56) = v64;
          *(v53 + 72) = 0;
          *(v53 + 80) = 0;
          *(v53 + 64) = 0;
          v172 = 1;
          v184 = v141;
          v185 = v62;
          v165 = v62;
          v186 = v53;
          v187 = v58;
          v188 = (v57 - v56 + v58);
          v189 = v149;
          v190 = v56;
          v191 = v57;
          v192 = 0;
          v193 = 0;
          v194 = 1;
          v195 = v59;
          v196 = v60;
          v197 = v61;
          sub_1AFB66134(&v184, a1 & 1, v154, v145);
          v65 = *(v53 + 48);
          v66 = *(v53 + 64);
          if (!v66)
          {
            v88 = *(v53 + 56);
            v89 = *(v53 + 32);
            v91 = v62;
            v92 = v157;
            v90 = v139;
            goto LABEL_63;
          }

          v151 = v52;
          for (i = 0; i != v66; ++i)
          {
            v69 = (v65 + 48 * i);
            v70 = *v69;
            v71 = v69[4];
            v72 = *(v53 + 72);
            if (v72)
            {
              v73 = v70 == v72;
            }

            else
            {
              v73 = 0;
            }

            if (v73)
            {
              goto LABEL_35;
            }

            v74 = v181;
            if (!v181[11])
            {
              goto LABEL_35;
            }

            v75 = v69[2];
            v76 = v181 + 41;
            v77 = v181[9];
            if (v77 >= 0x10)
            {
              v78 = &v76[v181[8]];
              v79 = v77 >> 4;
              v80 = v181 + 41;
              while (*v78 != v70)
              {
                ++v80;
                v78 += 16;
                if (!--v79)
                {
                  goto LABEL_51;
                }
              }

              v81 = v80[v181[10]];
              v82 = v81 > 5;
              v83 = (1 << v81) & 0x23;
              if (v82 || v83 == 0)
              {
LABEL_35:

                v71(v68);

                continue;
              }
            }

LABEL_51:
            if (swift_conformsToProtocol2() && v75)
            {
              if (sub_1AF5FC8D8(v75))
              {
                goto LABEL_35;
              }

              v85 = v74[9];
              if (v85 < 0x10)
              {
                goto LABEL_35;
              }

              v86 = &v76[v74[8]];
              v87 = 16 * (v85 >> 4);
              while (*v86 != v75)
              {
                v86 += 16;
                v87 -= 16;
                if (!v87)
                {
                  goto LABEL_35;
                }
              }
            }
          }

          v88 = *(v53 + 56);
          v65 = *(v53 + 48);
          v89 = *(v53 + 32);
          if (*(v53 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v52 = v151;
          v90 = v139;
          v91 = v165;
          v92 = v157;
LABEL_63:
          ecs_stack_allocator_deallocate(v89, v65, 48 * v88);
          *(v53 + 48) = v162;
          *(v53 + 64) = v159;
          *(v53 + 80) = v92;
          sub_1AF62D29C(v91);
          ecs_stack_allocator_pop_snapshot(v168);
          v54 = v90;
          if (v90)
          {
            os_unfair_lock_unlock(*(v91 + 344));
            os_unfair_lock_unlock(*(v91 + 376));
          }

          if (++v52 == v147)
          {
            goto LABEL_105;
          }
        }
      }
    }

    goto LABEL_105;
  }

LABEL_65:
  v201.columns[0] = a4;
  v201.columns[1] = a5;
  v201.columns[2] = a6;
  v201.columns[3] = a7;
  v202 = __invert_f4(v201);
  v150 = v202.columns[1];
  v152 = v202.columns[0];
  v146 = v202.columns[3];
  v148 = v202.columns[2];
  v202.columns[1] = *(a3 + 32);
  v198 = *(a3 + 16);
  v199 = v202.columns[1];
  v200 = *(a3 + 48);
  sub_1AF6B06C0(a2, &v198, 0x200000000, &v173);
  if (!v173)
  {
    return;
  }

  v144 = v180;
  if (v180 >= 1)
  {
    v142 = v177;
    if (v177)
    {
      v93 = 0;
      v140 = v176;
      v94 = v179;
      v138 = v178;
      v95 = *(v178 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v169 = *(v179 + 32);
      v181 = v173;
      v182 = v174;
      v183 = v175;
      v137 = v95;
      do
      {
        v96 = (v140 + 48 * v93);
        v97 = *v96;
        v98 = v96[1];
        v99 = v96[2];
        v100 = *(v96 + 2);
        v101 = *(v96 + 3);
        v102 = *(v96 + 4);
        v103 = *(v96 + 5);
        if (v95)
        {
          v104 = *(v103 + 376);

          os_unfair_lock_lock(v104);
          os_unfair_lock_lock(*(v103 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v169);
        v160 = *(v94 + 64);
        v163 = *(v94 + 48);
        v158 = *(v94 + 80);
        v105 = *(*(*(*(v103 + 40) + 16) + 32) + 16) + 1;
        *(v94 + 48) = ecs_stack_allocator_allocate(*(v94 + 32), 48 * v105, 8);
        *(v94 + 56) = v105;
        *(v94 + 72) = 0;
        *(v94 + 80) = 0;
        *(v94 + 64) = 0;
        v172 = 1;
        v184 = v138;
        v185 = v103;
        v166 = v103;
        v186 = v94;
        v187 = v99;
        v188 = (v98 - v97 + v99);
        v189 = v144;
        v190 = v97;
        v191 = v98;
        v192 = 0;
        v193 = 0;
        v194 = 1;
        v195 = v100;
        v196 = v101;
        v197 = v102;
        sub_1AFB66344(&v184, a1 & 1, v152, v150, v148, v146);
        v106 = *(v94 + 48);
        v107 = *(v94 + 64);
        if (!v107)
        {
          v128 = *(v94 + 56);
          v129 = *(v94 + 32);
          v131 = v103;
          v132 = v158;
          v130 = v137;
          goto LABEL_103;
        }

        v155 = v93;
        for (j = 0; j != v107; ++j)
        {
          v110 = (v106 + 48 * j);
          v111 = *v110;
          v112 = v110[4];
          v113 = *(v94 + 72);
          if (v113)
          {
            v114 = v111 == v113;
          }

          else
          {
            v114 = 0;
          }

          if (v114)
          {
            goto LABEL_75;
          }

          v115 = v181;
          if (!v181[11])
          {
            goto LABEL_75;
          }

          v116 = v110[2];
          v117 = v181 + 41;
          v118 = v181[9];
          if (v118 >= 0x10)
          {
            v119 = &v117[v181[8]];
            v120 = v118 >> 4;
            v121 = v181 + 41;
            while (*v119 != v111)
            {
              ++v121;
              v119 += 16;
              if (!--v120)
              {
                goto LABEL_91;
              }
            }

            v122 = v121[v181[10]];
            v82 = v122 > 5;
            v123 = (1 << v122) & 0x23;
            if (v82 || v123 == 0)
            {
LABEL_75:

              v112(v109);

              continue;
            }
          }

LABEL_91:
          if (swift_conformsToProtocol2() && v116)
          {
            if (sub_1AF5FC8D8(v116))
            {
              goto LABEL_75;
            }

            v125 = v115[9];
            if (v125 < 0x10)
            {
              goto LABEL_75;
            }

            v126 = &v117[v115[8]];
            v127 = 16 * (v125 >> 4);
            while (*v126 != v116)
            {
              v126 += 16;
              v127 -= 16;
              if (!v127)
              {
                goto LABEL_75;
              }
            }
          }
        }

        v128 = *(v94 + 56);
        v106 = *(v94 + 48);
        v129 = *(v94 + 32);
        if (*(v94 + 64) >= 1)
        {
          swift_arrayDestroy();
        }

        v93 = v155;
        v130 = v137;
        v131 = v166;
        v132 = v158;
LABEL_103:
        ecs_stack_allocator_deallocate(v129, v106, 48 * v128);
        *(v94 + 48) = v163;
        *(v94 + 64) = v160;
        *(v94 + 80) = v132;
        sub_1AF62D29C(v131);
        ecs_stack_allocator_pop_snapshot(v169);
        v95 = v130;
        if (v130)
        {
          os_unfair_lock_unlock(*(v131 + 344));
          os_unfair_lock_unlock(*(v131 + 376));
        }

        ++v93;
      }

      while (v93 != v142);
    }
  }

LABEL_105:
  sub_1AF5D1564(&v173);
}