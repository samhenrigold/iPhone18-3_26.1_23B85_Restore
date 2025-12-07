uint64_t storeEnumTagSinglePayload for MFReaderPlaybackSpeed(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257C3EE0C()
{
  result = qword_27F8F6378;
  if (!qword_27F8F6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6378);
  }

  return result;
}

BOOL sub_257C3EF48(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEA0000000000726FLL;
    v9 = 0x746361466D6F6F7ALL;
    switch(*v4)
    {
      case 1:
        v9 = 0xD000000000000011;
        v8 = 0x8000000257EF7780;
        break;
      case 2:
        v9 = 0x4379616C70736964;
        v8 = 0xEF74736172746E6FLL;
        break;
      case 3:
        v8 = 0xE700000000000000;
        v9 = 0x737265746C6966;
        break;
      case 4:
        v8 = 0xEA00000000007468;
        v9 = 0x67696C6873616C66;
        break;
      case 5:
        v9 = 0x6544656C706F6570;
        v8 = 0xEF6E6F6974636574;
        break;
      case 6:
        v9 = 0x636F4C7375636F66;
        v8 = 0xE90000000000006BLL;
        break;
      case 7:
        v9 = 0x79546172656D6163;
        v8 = 0xEA00000000006570;
        break;
      case 8:
        v9 = 0x4D65727574706163;
        v8 = 0xEB0000000065646FLL;
        break;
      case 9:
        v9 = 0x6F69746365746564;
        v8 = 0xED000065646F4D6ELL;
        break;
      case 0xA:
        v10 = 1919905636;
        goto LABEL_20;
      case 0xB:
        v9 = 0xD000000000000013;
        v8 = 0x8000000257EF74D0;
        break;
      case 0xC:
        v9 = 0x7061436567616D69;
        v8 = 0xEC0000006E6F6974;
        break;
      case 0xD:
        v8 = 0xEA00000000006B61;
        v9 = 0x657053746E696F70;
        break;
      case 0xE:
        v10 = 1954047348;
LABEL_20:
        v9 = v10 | 0x6574654400000000;
        v8 = 0xED00006E6F697463;
        break;
      case 0xF:
        v8 = 0xEA00000000007365;
        v9 = 0x6974697669746361;
        break;
      default:
        break;
    }

    v11 = 0xEA0000000000726FLL;
    v12 = 0x746361466D6F6F7ALL;
    switch(a1)
    {
      case 1:
        v11 = 0x8000000257EF7780;
        if (v9 == 0xD000000000000011)
        {
          goto LABEL_51;
        }

        goto LABEL_2;
      case 2:
        v11 = 0xEF74736172746E6FLL;
        if (v9 != 0x4379616C70736964)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 3:
        v11 = 0xE700000000000000;
        if (v9 != 0x737265746C6966)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 4:
        v11 = 0xEA00000000007468;
        if (v9 != 0x67696C6873616C66)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 5:
        v11 = 0xEF6E6F6974636574;
        if (v9 != 0x6544656C706F6570)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 6:
        v11 = 0xE90000000000006BLL;
        if (v9 != 0x636F4C7375636F66)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 7:
        v11 = 0xEA00000000006570;
        if (v9 != 0x79546172656D6163)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 8:
        v11 = 0xEB0000000065646FLL;
        if (v9 != 0x4D65727574706163)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 9:
        v13 = 0x6F69746365746564;
        v14 = 0x65646F4D6ELL;
        goto LABEL_33;
      case 10:
        v12 = 0x65746544726F6F64;
        v11 = 0xED00006E6F697463;
        goto LABEL_50;
      case 11:
        v11 = 0x8000000257EF74D0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 12:
        v11 = 0xEC0000006E6F6974;
        if (v9 != 0x7061436567616D69)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 13:
        v11 = 0xEA00000000006B61;
        if (v9 != 0x657053746E696F70)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 14:
        v13 = 0x6574654474786574;
        v14 = 0x6E6F697463;
LABEL_33:
        v11 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v9 != v13)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      case 15:
        v11 = 0xEA00000000007365;
        if (v9 != 0x6974697669746361)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      default:
LABEL_50:
        if (v9 != v12)
        {
          goto LABEL_2;
        }

LABEL_51:
        if (v8 != v11)
        {
LABEL_2:
          v5 = sub_257ED0640();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_257C3F438(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE700000000000000;
    v9 = 0x746C7561666564;
    switch(*v4)
    {
      case 1:
        v9 = 0x6544656C706F6570;
        v8 = 0xEF6E6F6974636574;
        break;
      case 2:
        v11 = 1919905636;
        goto LABEL_21;
      case 3:
        v9 = 0xD000000000000013;
        v8 = 0x8000000257EF74D0;
        break;
      case 4:
        v9 = 0x7061436567616D69;
        v8 = 0xEC0000006E6F6974;
        break;
      case 5:
        v9 = 0x646E41746E696F70;
        v8 = 0xED00006B61657053;
        break;
      case 6:
        v11 = 1954047348;
LABEL_21:
        v9 = v11 | 0x6574654400000000;
        v8 = 0xED00006E6F697463;
        break;
      case 7:
        v9 = 0x746E656D75636F64;
        v10 = 1835102790;
        goto LABEL_17;
      case 8:
        v9 = 0xD000000000000012;
        v8 = 0x8000000257EF7520;
        break;
      case 9:
        v9 = 0x7061546B636162;
        break;
      case 0xA:
        v9 = 0x65636E756F6E6E61;
        v8 = 0xEC000000746E656DLL;
        break;
      case 0xB:
        v9 = 0x6F72506C65646F6DLL;
        v10 = 1936942435;
LABEL_17:
        v8 = v10 | 0xEF676E6900000000;
        break;
      case 0xC:
        v9 = 0x6E616353706F6F6CLL;
        v8 = 0xEC000000676E696ELL;
        break;
      case 0xD:
        v9 = 0x65636E6164697567;
        v8 = 0xEF73736563637553;
        break;
      case 0xE:
        v9 = 0x65636E6164697567;
        v8 = 0xEF6572756C696146;
        break;
      case 0xF:
        v9 = 0x75476E4F6B636F6CLL;
        v8 = 0xEE0065636E616469;
        break;
      case 0x10:
        v9 = 0x4766664F6B636F6CLL;
        v8 = 0xEF65636E61646975;
        break;
      default:
        break;
    }

    v12 = 0xE700000000000000;
    v13 = 0x746C7561666564;
    switch(a1)
    {
      case 1:
        v12 = 0xEF6E6F6974636574;
        if (v9 == 0x6544656C706F6570)
        {
          goto LABEL_55;
        }

        goto LABEL_2;
      case 2:
        v20 = 1919905636;
        goto LABEL_50;
      case 3:
        v12 = 0x8000000257EF74D0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 4:
        v18 = 0x7061436567616D69;
        v19 = 1852795252;
        goto LABEL_34;
      case 5:
        v21 = 0x646E41746E696F70;
        v22 = 0x6B61657053;
        goto LABEL_51;
      case 6:
        v20 = 1954047348;
LABEL_50:
        v21 = v20 | 0x6574654400000000;
        v22 = 0x6E6F697463;
LABEL_51:
        v12 = v22 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v9 != v21)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 7:
        v16 = 0x746E656D75636F64;
        v17 = 1835102790;
        goto LABEL_44;
      case 8:
        v12 = 0x8000000257EF7520;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 9:
        if (v9 != 0x7061546B636162)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 10:
        v13 = 0x65636E756F6E6E61;
        v12 = 0xEC000000746E656DLL;
        goto LABEL_54;
      case 11:
        v16 = 0x6F72506C65646F6DLL;
        v17 = 1936942435;
LABEL_44:
        v12 = v17 | 0xEF676E6900000000;
        if (v9 != v16)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 12:
        v18 = 0x6E616353706F6F6CLL;
        v19 = 1735289198;
LABEL_34:
        v12 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v9 != v18)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 13:
        v12 = 0xEF73736563637553;
        if (v9 != 0x65636E6164697567)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 14:
        v14 = 0x65636E6164697567;
        v15 = 0x72756C696146;
        goto LABEL_29;
      case 15:
        v12 = 0xEE0065636E616469;
        if (v9 != 0x75476E4F6B636F6CLL)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      case 16:
        v14 = 0x4766664F6B636F6CLL;
        v15 = 0x636E61646975;
LABEL_29:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
        if (v9 != v14)
        {
          goto LABEL_2;
        }

        goto LABEL_55;
      default:
LABEL_54:
        if (v9 != v13)
        {
          goto LABEL_2;
        }

LABEL_55:
        if (v8 != v12)
        {
LABEL_2:
          v5 = sub_257ED0640();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

void sub_257C3F96C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v30 = MEMORY[0x277D84F90];
    sub_257BF2844(0, v1, 0);
    v2 = a1 + 56;
    v3 = sub_257ED0190();
    v4 = a1;
    v5 = 0;
    v24 = v1;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v4 + 32))
    {
      v8 = v3 >> 6;
      if ((*(v2 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_21;
      }

      v25 = *(v4 + 36);
      v9 = *(v4 + 48) + 96 * v3;
      v28 = *(v9 + 32);
      v29 = *(v9 + 16);
      v26 = *(v9 + 64);
      v27 = *(v9 + 48);
      v10 = *(v30 + 16);
      v11 = *(v30 + 24);
      v12 = *v9;
      if (v10 >= v11 >> 1)
      {
        v21 = v11 > 1;
        v22 = v12;
        sub_257BF2844(v21, v10 + 1, 1);
        v12 = v22;
      }

      *(v30 + 16) = v10 + 1;
      v13 = v30 + 80 * v10;
      *(v13 + 32) = v12;
      *(v13 + 48) = v29;
      *(v13 + 64) = v28;
      *(v13 + 80) = v27;
      *(v13 + 96) = v26;
      v6 = 1 << *(v4 + 32);
      if (v3 >= v6)
      {
        goto LABEL_22;
      }

      v2 = a1 + 56;
      v14 = *(a1 + 56 + 8 * v8);
      if ((v14 & (1 << v3)) == 0)
      {
        goto LABEL_23;
      }

      if (v25 != *(v4 + 36))
      {
        goto LABEL_24;
      }

      v15 = v14 & (-2 << (v3 & 0x3F));
      if (v15)
      {
        v6 = __clz(__rbit64(v15)) | v3 & 0x7FFFFFFFFFFFFFC0;
        v7 = v24;
      }

      else
      {
        v16 = v8 << 6;
        v17 = v8 + 1;
        v18 = (a1 + 64 + 8 * v8);
        v7 = v24;
        while (v17 < (v6 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_257C58A64(v3, v25, 0);
            v4 = a1;
            v6 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_257C58A64(v3, v25, 0);
        v4 = a1;
      }

LABEL_4:
      ++v5;
      v3 = v6;
      if (v5 == v7)
      {
        return;
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
  }
}

uint64_t sub_257C3FBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  v15 = v29 - v14;
  sub_257BE401C(a3, v29 - v14, &unk_27F8F5D70, &unk_257ED9DB0);
  v16 = sub_257ECF930();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  sub_257ECC3F0();
  if (v18 == 1)
  {
    sub_257BE4084(v15, &unk_27F8F5D70, &unk_257ED9DB0);
  }

  else
  {
    sub_257ECF920();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_257ECF8B0();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_257ECF590() + 32;
      v24 = swift_allocObject();
      *(v24 + 16) = a4;
      *(v24 + 24) = a5;
      sub_257ECC3F0();
      if (v22 | v20)
      {
        v30[0] = 0;
        v30[1] = 0;
        v25 = v30;
        v30[2] = v20;
        v30[3] = v22;
      }

      else
      {
        v25 = 0;
      }

      v29[1] = 7;
      v29[2] = v25;
      v29[3] = v23;
      v27 = swift_task_create();

      sub_257BE4084(a3, &unk_27F8F5D70, &unk_257ED9DB0);

      return v27;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_257BE4084(a3, &unk_27F8F5D70, &unk_257ED9DB0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  if (v22 | v20)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v20;
    v30[7] = v22;
  }

  return swift_task_create();
}

uint64_t sub_257C3FED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  v15 = v29 - v14;
  sub_257BE401C(a3, v29 - v14, &unk_27F8F5D70, &unk_257ED9DB0);
  v16 = sub_257ECF930();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  sub_257ECC3F0();
  if (v18 == 1)
  {
    sub_257BE4084(v15, &unk_27F8F5D70, &unk_257ED9DB0);
  }

  else
  {
    sub_257ECF920();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_257ECF8B0();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_257ECF590() + 32;
      v24 = swift_allocObject();
      *(v24 + 16) = a4;
      *(v24 + 24) = a5;
      sub_257ECC3F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6550, &qword_257EDCCD8);
      v25 = (v22 | v20);
      if (v22 | v20)
      {
        v30[0] = 0;
        v30[1] = 0;
        v25 = v30;
        v30[2] = v20;
        v30[3] = v22;
      }

      v29[1] = 7;
      v29[2] = v25;
      v29[3] = v23;
      v26 = swift_task_create();

      sub_257BE4084(a3, &unk_27F8F5D70, &unk_257ED9DB0);

      return v26;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_257BE4084(a3, &unk_27F8F5D70, &unk_257ED9DB0);
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6550, &qword_257EDCCD8);
  if (v22 | v20)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v20;
    v30[7] = v22;
  }

  return swift_task_create();
}

uint64_t sub_257C401E8(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_257ED07B0();
    Control.rawValue.getter();
    sub_257ECF5D0();

    v4 = sub_257ED0800();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xEA0000000000726FLL;
        v9 = 0x746361466D6F6F7ALL;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v9 = 0xD000000000000011;
            v8 = 0x8000000257EF7780;
            break;
          case 2:
            v9 = 0x4379616C70736964;
            v8 = 0xEF74736172746E6FLL;
            break;
          case 3:
            v8 = 0xE700000000000000;
            v9 = 0x737265746C6966;
            break;
          case 4:
            v8 = 0xEA00000000007468;
            v9 = 0x67696C6873616C66;
            break;
          case 5:
            v9 = 0x6544656C706F6570;
            v8 = 0xEF6E6F6974636574;
            break;
          case 6:
            v9 = 0x636F4C7375636F66;
            v8 = 0xE90000000000006BLL;
            break;
          case 7:
            v9 = 0x79546172656D6163;
            v8 = 0xEA00000000006570;
            break;
          case 8:
            v9 = 0x4D65727574706163;
            v8 = 0xEB0000000065646FLL;
            break;
          case 9:
            v9 = 0x6F69746365746564;
            v8 = 0xED000065646F4D6ELL;
            break;
          case 0xA:
            v10 = 1919905636;
            goto LABEL_19;
          case 0xB:
            v9 = 0xD000000000000013;
            v8 = 0x8000000257EF74D0;
            break;
          case 0xC:
            v9 = 0x7061436567616D69;
            v8 = 0xEC0000006E6F6974;
            break;
          case 0xD:
            v8 = 0xEA00000000006B61;
            v9 = 0x657053746E696F70;
            break;
          case 0xE:
            v10 = 1954047348;
LABEL_19:
            v9 = v10 | 0x6574654400000000;
            v8 = 0xED00006E6F697463;
            break;
          case 0xF:
            v8 = 0xEA00000000007365;
            v9 = 0x6974697669746361;
            break;
          default:
            break;
        }

        v11 = 0xEA0000000000726FLL;
        v12 = 0x746361466D6F6F7ALL;
        switch(a1)
        {
          case 1:
            v11 = 0x8000000257EF7780;
            if (v9 == 0xD000000000000011)
            {
              goto LABEL_50;
            }

            goto LABEL_51;
          case 2:
            v11 = 0xEF74736172746E6FLL;
            if (v9 != 0x4379616C70736964)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 3:
            v11 = 0xE700000000000000;
            if (v9 != 0x737265746C6966)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 4:
            v11 = 0xEA00000000007468;
            if (v9 != 0x67696C6873616C66)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 5:
            v11 = 0xEF6E6F6974636574;
            if (v9 != 0x6544656C706F6570)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 6:
            v11 = 0xE90000000000006BLL;
            if (v9 != 0x636F4C7375636F66)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 7:
            v11 = 0xEA00000000006570;
            if (v9 != 0x79546172656D6163)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 8:
            v11 = 0xEB0000000065646FLL;
            if (v9 != 0x4D65727574706163)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 9:
            v13 = 0x6F69746365746564;
            v14 = 0x65646F4D6ELL;
            goto LABEL_32;
          case 10:
            v12 = 0x65746544726F6F64;
            v11 = 0xED00006E6F697463;
            goto LABEL_49;
          case 11:
            v11 = 0x8000000257EF74D0;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 12:
            v11 = 0xEC0000006E6F6974;
            if (v9 != 0x7061436567616D69)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 13:
            v11 = 0xEA00000000006B61;
            if (v9 != 0x657053746E696F70)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 14:
            v13 = 0x6574654474786574;
            v14 = 0x6E6F697463;
LABEL_32:
            v11 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v9 != v13)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          case 15:
            v11 = 0xEA00000000007365;
            if (v9 != 0x6974697669746361)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          default:
LABEL_49:
            if (v9 != v12)
            {
              goto LABEL_51;
            }

LABEL_50:
            if (v8 == v11)
            {

              v15 = 1;
              return v15 & 1;
            }

LABEL_51:
            v15 = sub_257ED0640();

            if (v15)
            {
              return v15 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v15 & 1;
            }

            break;
        }
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t sub_257C4075C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_257ED07B0();
  sub_257ECF5D0();
  v6 = sub_257ED0800();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_257ED0640() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_257C40854(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_257ED07B0();
    MEMORY[0x259C732E0](a1 & 1);
    v5 = sub_257ED0800();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

BOOL sub_257C4091C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v3);
  v4 = sub_257ED0800();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_257C409E8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_257ED0240();
  }

  else if (*(a2 + 16) && (sub_257BD2C2C(0, &qword_281543DC0, 0x277CCABB0), v5 = sub_257ECFF40(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_257ECFF50();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_257C40B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  v15 = v29 - v14;
  sub_257BE401C(a3, v29 - v14, &unk_27F8F5D70, &unk_257ED9DB0);
  v16 = sub_257ECF930();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  sub_257ECC3F0();
  if (v18 == 1)
  {
    sub_257BE4084(v15, &unk_27F8F5D70, &unk_257ED9DB0);
  }

  else
  {
    sub_257ECF920();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_257ECF8B0();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_257ECF590() + 32;
      v24 = swift_allocObject();
      *(v24 + 16) = a4;
      *(v24 + 24) = a5;
      sub_257ECC3F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6550, &qword_257EDCCD8);
      v25 = (v22 | v20);
      if (v22 | v20)
      {
        v30[0] = 0;
        v30[1] = 0;
        v25 = v30;
        v30[2] = v20;
        v30[3] = v22;
      }

      v29[1] = 7;
      v29[2] = v25;
      v29[3] = v23;
      v26 = swift_task_create();

      return v26;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6550, &qword_257EDCCD8);
  if (v22 | v20)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v20;
    v30[7] = v22;
  }

  return swift_task_create();
}

uint64_t sub_257C40DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  v15 = v29 - v14;
  sub_257BE401C(a3, v29 - v14, &unk_27F8F5D70, &unk_257ED9DB0);
  v16 = sub_257ECF930();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  sub_257ECC3F0();
  if (v18 == 1)
  {
    sub_257BE4084(v15, &unk_27F8F5D70, &unk_257ED9DB0);
  }

  else
  {
    sub_257ECF920();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_257ECF8B0();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_257ECF590() + 32;
      v24 = swift_allocObject();
      *(v24 + 16) = a4;
      *(v24 + 24) = a5;
      sub_257ECC3F0();
      if (v22 | v20)
      {
        v30[0] = 0;
        v30[1] = 0;
        v25 = v30;
        v30[2] = v20;
        v30[3] = v22;
      }

      else
      {
        v25 = 0;
      }

      v29[1] = 7;
      v29[2] = v25;
      v29[3] = v23;
      v27 = swift_task_create();

      return v27;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  if (v22 | v20)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v20;
    v30[7] = v22;
  }

  return swift_task_create();
}

uint64_t sub_257C41094()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257C4111C(uint64_t a1)
{
  sub_257ECCCF0();
  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_257ECF400();
}

uint64_t sub_257C411A0(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257C41224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_257ECCCC0() & 1) == 0)
  {
    return 0;
  }

  return sub_257ECCC40();
}

void sub_257C4128C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_257C412EC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_257C41340(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MAGObjectUnderstandingService.__allocating_init(arService:eventHandler:pulseFeedbackProcessor:)(void *a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_257C562A8(a1, a2, a3);

  return v8;
}

id MAGObjectUnderstandingService.init(arService:eventHandler:pulseFeedbackProcessor:)(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_257C562A8(a1, a2, a3);

  return v5;
}

uint64_t sub_257C414A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_257ECF900();
  *(v4 + 48) = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C41540, v6, v5);
}

uint64_t sub_257C41540()
{
  v1 = *(v0 + 40);

  v2 = *(*&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_arService] + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_eventHandler);
  sub_257ECC3F0();
  v3 = v1;
  v4 = [v3 description];
  v5 = sub_257ECF500();
  v7 = v6;

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_257EDCE58;
  *(v9 + 24) = v8;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_257EC7760(&unk_257EDCE60, v9, v5, v7, isUniquelyReferenced_nonNull_native);

  *(v2 + 16) = v13;
  swift_endAccess();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_257C416F0(void *a1)
{
  v2 = v1;
  v91 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v90 - v8;
  v10 = sub_257ECD990();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_257ECDA30();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4A0();
  v26 = sub_257ECDA20();
  v27 = sub_257ECFBD0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v90 = v2;
    v29 = v17;
    v30 = v11;
    v31 = v10;
    v32 = v9;
    v33 = v28;
    *v28 = 0;
    _os_log_impl(&dword_257BAC000, v26, v27, "Starting object understanding service", v28, 2u);
    v34 = v33;
    v9 = v32;
    v10 = v31;
    v11 = v30;
    v17 = v29;
    v2 = v90;
    MEMORY[0x259C74820](v34, -1, -1);
  }

  (*(v19 + 8))(v25, v18);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v35 = sub_257ECD9C0();
  __swift_project_value_buffer(v35, qword_27F8F5D90);
  sub_257ECD980();
  v36 = sub_257ECD9A0();
  v37 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v36, v37, v39, "StartObjUndrerstandService", "", v38, 2u);
    MEMORY[0x259C74820](v38, -1, -1);
  }

  (*(v11 + 8))(v17, v10);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v40 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
  swift_beginAccess();
  v41 = v40[1];
  v42 = v40[2];
  v93[0] = *v40;
  v93[1] = v41;
  v93[2] = v42;
  v43 = qword_2815447E0;

  if (v43 != -1)
  {
    v44 = swift_once();
  }

  MEMORY[0x28223BE20](v44, v45, v46, v47, v48);
  *(&v90 - 2) = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
  sub_257ECFD50();

  v49 = v92;
  v50 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pulseFeedbackProcessor);
  v51 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  swift_beginAccess();
  v52 = *(v49 + 16);
  v53 = (v49 + 32);
  v54 = (v49 + 32);
  do
  {
    v55 = v52;
    v56 = v52-- != 0;
    if (!v56)
    {
      break;
    }

    v57 = *v54++;
  }

  while (v57 != 3);
  [*(v50 + v51) setUseHapticFeedback_];
  v58 = *(v50 + v51);
  v59 = *(v49 + 16);
  do
  {
    v60 = v59;
    v56 = v59-- != 0;
    if (!v56)
    {
      break;
    }

    v61 = *v53++;
  }

  while (v61 != 2);
  v62 = v60 != 0;
  v63 = v58;

  [v63 setUseSoundFeedback_];

  sub_257C42454();
  v64 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene;
  v65 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene);
  v66 = v91;
  *(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene) = v91;
  v67 = v66;

  v68 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointer;
  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointer) removeFromParentNode];
  v69 = objc_allocWithZone(type metadata accessor for ObjectPointer());
  v70 = ObjectPointer.init(length:)(v69, 3.0);
  v71 = *(v2 + v68);
  *(v2 + v68) = v70;
  v72 = v70;

  v73 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  swift_beginAccess();
  v74 = *(v2 + v73);
  [v74 addChildNode_];

  v75 = *(v2 + v64);
  if (v75)
  {
    v76 = [v75 rootNode];
    [v76 addChildNode_];

    v77 = *(v2 + v64);
    if (v77)
    {
      v78 = [v77 rootNode];
      [v78 addChildNode_];

      v79 = *(v2 + v64);
      if (v79)
      {
        v80 = [v79 rootNode];
        [v80 addChildNode_];
      }
    }
  }

  v81 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession;
  if (!*(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession))
  {
    v82 = [objc_allocWithZone(MEMORY[0x277D36D08]) init_];
    v83 = *(v2 + v81);
    *(v2 + v81) = v82;
    v84 = v82;

    if (v84)
    {
      [v84 setDelegate_];
    }
  }

  v85 = sub_257ECF930();
  (*(*(v85 - 8) + 56))(v9, 1, 1, v85);
  v86 = *(v2 + v81);
  v87 = swift_allocObject();
  v87[2] = 0;
  v87[3] = 0;
  v87[4] = v86;
  v88 = v86;
  sub_257C40B00(0, 0, v9, &unk_257EDCB88, v87);

  return sub_257BE4084(v9, &unk_27F8F5D70, &unk_257ED9DB0);
}

uint64_t sub_257C41E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_257C41E60, 0, 0);
}

uint64_t sub_257C41E60()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D36CF8]) init];
    [v1 runWithConfiguration_];
  }

  **(v0 + 16) = v1 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_257C41F04()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v48 - v7;
  v9 = sub_257ECD990();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECDA30();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19, v20, v21, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4A0();
  v25 = sub_257ECDA20();
  v26 = sub_257ECFBD0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v49 = v16;
    v28 = v10;
    v29 = v9;
    v30 = v8;
    v31 = v27;
    *v27 = 0;
    _os_log_impl(&dword_257BAC000, v25, v26, "Stopping object understanding service", v27, 2u);
    v32 = v31;
    v8 = v30;
    v9 = v29;
    v10 = v28;
    v16 = v49;
    MEMORY[0x259C74820](v32, -1, -1);
  }

  (*(v18 + 8))(v24, v17);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v33 = sub_257ECD9C0();
  __swift_project_value_buffer(v33, qword_27F8F5D90);
  sub_257ECD980();
  v34 = sub_257ECD9A0();
  v35 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v34, v35, v37, "StopObjUndrerstandService", "", v36, 2u);
    MEMORY[0x259C74820](v36, -1, -1);
  }

  (*(v10 + 8))(v16, v9);
  v38 = *&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pulseFeedbackProcessor];
  v39 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
  swift_beginAccess();
  [*(v38 + v39) setUseHapticFeedback_];
  [*(v38 + v39) setUseSoundFeedback_];
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode] removeFromParentNode];
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode] removeFromParentNode];
  v40 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  swift_beginAccess();
  [*&v1[v40] removeFromParentNode];
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pointerHitTestDebugNode] removeFromParentNode];
  v41 = sub_257ECF930();
  (*(*(v41 - 8) + 56))(v8, 1, 1, v41);
  v42 = *&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession];
  v43 = swift_allocObject();
  *(v43 + 16) = v1;
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v42;
  v44[5] = sub_257C566E0;
  v44[6] = v43;
  v45 = v42;
  v46 = v1;
  sub_257C40DD4(0, 0, v8, &unk_257EDCB98, v44);

  return sub_257BE4084(v8, &unk_27F8F5D70, &unk_257ED9DB0);
}

uint64_t sub_257C423BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_257C423E0, 0, 0);
}

uint64_t sub_257C423E0()
{
  (*(v0 + 24))([*(v0 + 16) stop]);
  v1 = *(v0 + 8);

  return v1();
}

void sub_257C42454()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache) = MEMORY[0x277D84F90];

  v2 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
  swift_beginAccess();
  v3 = MEMORY[0x277D84F98];
  *(v0 + v2) = MEMORY[0x277D84F98];

  v4 = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode) = v4;

  v6 = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  v7 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode) = v6;

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedStorageGroups) = v1;

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTableChairGroups) = v3;

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetDistance) = 0;
  v8 = (v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject);
  v9 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject + 48);
  v12[2] = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject + 32);
  v12[3] = v9;
  v12[4] = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject + 64);
  v10 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject + 16);
  v12[0] = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject);
  v12[1] = v10;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v8[4] = 0u;
  sub_257BE4084(v12, &qword_27F8F9C90, &unk_257EDCBD0);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetOccupancy) = 0;
  v11 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession) = 0;
}

double sub_257C425C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  *&v8 = MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7).n128_u64[0];
  v10 = &v25 - v9;
  v11 = *&v1[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession];
  if (v11)
  {
    [v11 updateWithFrame_];
  }

  v12 = sub_257ECF930();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = [a1 camera];
  [v13 transform];
  v27 = v15;
  v28 = v14;
  v25 = v17;
  v26 = v16;

  sub_257ECF900();
  v18 = v1;
  v19 = sub_257ECF8F0();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = v18;
  v22 = v27;
  *(v20 + 48) = v28;
  *(v20 + 64) = v22;
  v23 = v25;
  *(v20 + 80) = v26;
  *(v20 + 96) = v23;
  sub_257C3FBD4(0, 0, v10, &unk_257EDBE30, v20);

  return result;
}

uint64_t sub_257C42754(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8[176] = a4;
  v8[175] = a3;
  v8[174] = a2;
  v8[173] = a1;
  v8[191].n128_u64[0] = a8;
  v9 = sub_257ECF120();
  v8[191].n128_u64[1] = v9;
  v8[192].n128_u64[0] = *(v9 - 8);
  v8[192].n128_u64[1] = swift_task_alloc();
  v10 = sub_257ECF190();
  v8[193].n128_u64[0] = v10;
  v8[193].n128_u64[1] = *(v10 - 8);
  v8[194].n128_u64[0] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v8[194].n128_u64[1] = swift_task_alloc();
  v11 = sub_257ECDA30();
  v8[195].n128_u64[0] = v11;
  v8[195].n128_u64[1] = *(v11 - 8);
  v8[196].n128_u64[0] = swift_task_alloc();
  v8[196].n128_u64[1] = swift_task_alloc();
  v8[197].n128_u64[0] = swift_task_alloc();
  v8[197].n128_u64[1] = sub_257ECF900();
  v8[198].n128_u64[0] = sub_257ECF8F0();
  v13 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C42964, v13, v12);
}

uint64_t sub_257C42964()
{
  v260 = v0;
  v2 = v0 + 1232;
  v219 = (v0 + 1520);
  v3 = *(v0 + 3056);
  v4 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointerParentNode;
  v238 = *(v0 + 2784);
  v242 = *(v0 + 2768);
  v233 = *(v0 + 2816);
  v235 = *(v0 + 2800);
  swift_beginAccess();
  [*(v3 + v4) setSimdWorldTransform_];
  [*(v3 + v4) simdPosition];
  v243 = v5;
  v6 = sub_257C48C44();
  v232 = (v0 + 1232);
  if (!v6)
  {
    goto LABEL_50;
  }

  v7 = v6;
  v8 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_23:
    v9 = sub_257ED0210();
    if (v9)
    {
LABEL_4:
      v10 = 0;
      v1 = v0 + 848;
      v239 = MEMORY[0x277D84F90];
      do
      {
        v11 = v10;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x259C72E20](v11, v7);
          }

          else
          {
            if (v11 >= *(v8 + 16))
            {
              goto LABEL_22;
            }

            v12 = *(v7 + 8 * v11 + 32);
          }

          v13 = v12;
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          sub_257C48E20(v12, &v244, v243);

          if (*(&v244 + 1) <= 0xFFFFFFFEFFFFFFFFLL)
          {
            break;
          }

          v14 = v247;
          *(v0 + 880) = v246;
          *(v0 + 896) = v14;
          *(v0 + 912) = v248[0];
          *(v0 + 924) = *(v248 + 12);
          v15 = v245;
          *v1 = v244;
          *(v0 + 864) = v15;
          sub_257BE4084(v0 + 848, &qword_27F8F6658, &unk_257EDCE00);
          ++v11;
          if (v10 == v9)
          {
            goto LABEL_25;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v16 = v239;
        }

        else
        {
          v16 = sub_257BFD6B8(0, *(v239 + 2) + 1, 1, v239);
        }

        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = sub_257BFD6B8((v17 > 1), v18 + 1, 1, v16);
        }

        v257 = v246;
        v258 = v247;
        v259[0] = v248[0];
        *(v259 + 12) = *(v248 + 12);
        v19 = v244;
        v255 = v244;
        v256 = v245;
        *(v16 + 2) = v18 + 1;
        v239 = v16;
        v20 = &v16[96 * v18];
        *(v20 + 3) = v256;
        v21 = v257;
        v22 = v258;
        v23 = v259[0];
        *(v20 + 108) = *(v259 + 12);
        *(v20 + 5) = v22;
        *(v20 + 6) = v23;
        *(v20 + 4) = v21;
        *(v20 + 2) = v19;
      }

      while (v10 != v9);
      goto LABEL_25;
    }
  }

  else
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v239 = MEMORY[0x277D84F90];
LABEL_25:

  v24 = v239;
  i = *(v239 + 2);
  v26 = MEMORY[0x277D84F90];
  if (i)
  {
    v27 = 0;
    v28 = v0 + 944;
    v1 = (v239 + 32);
    v29 = 96;
    do
    {
      v30 = (v1 + 96 * v27);
      v31 = v27;
      while (1)
      {
        if (v31 >= *(v24 + 2))
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v32 = v30[1];
        *v28 = *v30;
        *(v0 + 960) = v32;
        v33 = v30[2];
        v34 = v30[3];
        v35 = v30[4];
        *(v0 + 1020) = *(v30 + 76);
        *(v0 + 992) = v34;
        *(v0 + 1008) = v35;
        *(v0 + 976) = v33;
        v27 = v31 + 1;
        if ((*(v0 + 952) & 0x8000000000000000) == 0 || *(*v28 + 16))
        {
          break;
        }

        v30 += 6;
        ++v31;
        if (i == v27)
        {
          goto LABEL_38;
        }
      }

      sub_257C58DDC(v0 + 944, v0 + 1040);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v255 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_257BF2864(0, *(v26 + 16) + 1, 1);
        v26 = v255;
      }

      v7 = *(v26 + 16);
      v37 = *(v26 + 24);
      v38 = v26;
      v24 = v239;
      if (v7 >= v37 >> 1)
      {
        sub_257BF2864((v37 > 1), v7 + 1, 1);
        v24 = v239;
        v38 = v255;
      }

      *(v38 + 16) = v7 + 1;
      v39 = (v38 + 96 * v7);
      v40 = *(v0 + 960);
      v39[2] = *v28;
      v39[3] = v40;
      v41 = *(v0 + 976);
      v42 = *(v0 + 992);
      v43 = *(v0 + 1008);
      *(v39 + 108) = *(v0 + 1020);
      v39[5] = v42;
      v39[6] = v43;
      v39[4] = v41;
      v26 = v38;
    }

    while (i - 1 != v31);
  }

LABEL_38:

  v29 = *(v26 + 16);
  if (v29)
  {
    v44 = *(v26 + 48);
    *(v0 + 1136) = *(v26 + 32);
    *(v0 + 1152) = v44;
    v45 = *(v26 + 64);
    v46 = *(v26 + 80);
    v47 = *(v26 + 96);
    *(v0 + 1212) = *(v26 + 108);
    *(v0 + 1184) = v46;
    *(v0 + 1200) = v47;
    *(v0 + 1168) = v45;
    sub_257C58DDC(v0 + 1136, v0 + 752);
    v48 = *(v0 + 1184);
    *(v0 + 208) = *(v0 + 1168);
    *(v0 + 224) = v48;
    *(v0 + 240) = *(v0 + 1200);
    *(v0 + 252) = *(v0 + 1212);
    v49 = *(v0 + 1152);
    *(v0 + 176) = *(v0 + 1136);
    *(v0 + 192) = v49;
    if (v29 != 1)
    {
      v83 = (v0 + 656);
      v84 = (v26 + 128);
      for (i = 1; i != v29; ++i)
      {
        if (i >= *(v26 + 16))
        {
          goto LABEL_141;
        }

        v85 = v84[1];
        *v83 = *v84;
        *(v0 + 672) = v85;
        v86 = v84[2];
        v87 = v84[3];
        v88 = v84[4];
        *(v0 + 732) = *(v84 + 76);
        *(v0 + 704) = v87;
        *(v0 + 720) = v88;
        *(v0 + 688) = v86;
        if (*(v0 + 668) >= 0)
        {
          v89 = (v0 + 744);
        }

        else
        {
          v89 = (v0 + 664);
        }

        v90 = *v89;
        if (*(v0 + 188) >= 0)
        {
          v91 = (v0 + 264);
        }

        else
        {
          v91 = (v0 + 184);
        }

        if (v90 < *v91)
        {
          sub_257C58DDC(v0 + 656, v0 + 560);
          sub_257C58E38(v0 + 176);
          v92 = *(v0 + 704);
          *(v0 + 208) = *(v0 + 688);
          *(v0 + 224) = v92;
          *(v0 + 240) = *(v0 + 720);
          *(v0 + 252) = *(v0 + 732);
          v93 = *(v0 + 672);
          *(v0 + 176) = *v83;
          *(v0 + 192) = v93;
        }

        v84 += 6;
      }
    }

    v7 = *(v0 + 176);
    v1 = &qword_281544000;
    v239 = v26;
    if ((*(v0 + 184) & 0x8000000000000000) != 0)
    {
      sub_257ECD4A0();
      v94 = sub_257ECDA20();
      v95 = sub_257ECFBD0();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_257BAC000, v94, v95, "Create multi-object contact event", v96, 2u);
        MEMORY[0x259C74820](v96, -1, -1);
      }

      v97 = *(v0 + 3152);
      v98 = *(v0 + 3128);
      v99 = *(v0 + 3120);

      (*(v98 + 8))(v97, v99);
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v100 = qword_281548348;
      v101 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
      swift_beginAccess();
      v102 = *(v101 + 8);
      v103 = *(v101 + 16);
      *(v0 + 2976) = *v101;
      *(v0 + 2984) = v102;
      *(v0 + 2992) = v103;
      v104 = qword_2815447E0;

      if (v104 != -1)
      {
        swift_once();
      }

      v1 = qword_2815447E8;
      *(swift_task_alloc() + 16) = v0 + 2976;
      i = 0;
      sub_257ECFD50();

      if (*(v0 + 269))
      {
        v105 = sub_257ECC3F0();
        v106 = sub_257C572E8(v105);

        v107 = 2;
      }

      else
      {
        sub_257C3F96C(v7);
        v106 = sub_257C56FFC(v117);

        v119 = *(v0 + 224);
        v257 = *(v0 + 208);
        v258 = v119;
        v259[0] = *(v0 + 240);
        *(v259 + 12) = *(v0 + 252);
        v120 = *(v0 + 192);
        v255 = *(v0 + 176);
        v256 = v120;
        sub_257D81B70(v118, v121);
        v216 = v122;
        v107 = 1;
      }

      LODWORD(v218) = v107;
      v26 = v7 + 56;
      v123 = -1 << *(v7 + 32);
      if (-v123 < 64)
      {
        v124 = ~(-1 << -v123);
      }

      else
      {
        v124 = -1;
      }

      v125 = v124 & *(v7 + 56);
      *&v233 = v100;
      v217.i64[0] = v106;
      if (v125)
      {
        v126 = 0;
        v127 = __clz(__rbit64(v125));
        i = (v125 - 1) & v125;
        v128 = (63 - v123) >> 6;
      }

      else
      {
        v129 = 0;
        v128 = (63 - v123) >> 6;
        do
        {
          if (v128 - 1 == v125)
          {
            goto LABEL_143;
          }

          v126 = v125 + 1;
          v130 = *(v7 + 64 + 8 * v125);
          v129 -= 64;
          ++v125;
        }

        while (!v130);
        i = (v130 - 1) & v130;
        v127 = __clz(__rbit64(v130)) - v129;
      }

      v1 = 96;
      v131 = *(v7 + 48) + 96 * v127;
      v220 = *(v131 + 16);
      v222 = *(v131 + 32);
      v225 = *(v131 + 48);
      v229 = *(v131 + 64);
      v132 = *(v131 + 88);
      v112 = *v131;

      sub_257C58DDC(v0 + 176, v0 + 464);
      if (!i)
      {
        goto LABEL_90;
      }

      do
      {
LABEL_88:
        while (1)
        {
          v133 = __clz(__rbit64(i));
          i &= i - 1;
          v134 = *(v7 + 48) + 96 * (v133 | (v126 << 6));
          v135 = *(v134 + 88);
          if (v135 < v132)
          {
            break;
          }

          if (!i)
          {
            goto LABEL_90;
          }
        }

        v225 = *(v134 + 48);
        v229 = *(v134 + 64);
        v220 = *(v134 + 16);
        v222 = *(v134 + 32);
        v215 = *v134;

        v112 = v215;
        v132 = v135;
      }

      while (i);
      while (1)
      {
LABEL_90:
        v136 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          goto LABEL_142;
        }

        if (v136 >= v128)
        {
          break;
        }

        i = *(v26 + 8 * v136);
        ++v126;
        if (i)
        {
          v126 = v136;
          goto LABEL_88;
        }
      }

      *(v0 + 1616) = v106;
      *(v0 + 1624) = v216;
      v7 = MEMORY[0x277D84F90];
      v26 = v239;
      v116 = v225;
      v115 = v229;
      v114 = v220;
      v113 = v222;
      v1 = &qword_281544000;
      v66 = v218;
    }

    else
    {
      v50 = *(v0 + 176);
      v226 = *(v0 + 224);
      v230 = *(v0 + 240);
      v221 = *(v0 + 192);
      v223 = *(v0 + 208);

      v51 = *(v0 + 176);

      sub_257ECD4A0();
      v52 = sub_257ECDA20();
      v53 = sub_257ECFBD0();
      v54 = os_log_type_enabled(v52, v53);
      v7 = MEMORY[0x277D84F90];
      if (v54)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_257BAC000, v52, v53, "Create single object contact event", v55, 2u);
        MEMORY[0x259C74820](v55, -1, -1);
      }

      v56 = *(v0 + 3144);
      v57 = *(v0 + 3128);
      v58 = *(v0 + 3120);

      (*(v57 + 8))(v56, v58);
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      *&v233 = qword_281548348;
      v59 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
      swift_beginAccess();
      v60 = *(v59 + 8);
      v61 = *(v59 + 16);
      *(v0 + 3000) = *v59;
      *(v0 + 3008) = v60;
      *(v0 + 3016) = v61;
      v62 = qword_2815447E0;

      if (v62 != -1)
      {
        swift_once();
      }

      v63 = qword_2815447E8;
      *(swift_task_alloc() + 16) = v0 + 3000;
      sub_257ECFD50();

      if (*(v0 + 268))
      {
        v64 = sub_257ECC3F0();
        v65 = sub_257C572E8(v64);

        v66 = 2;
      }

      else
      {
        v108 = *(v0 + 224);
        v257 = *(v0 + 208);
        v258 = v108;
        v259[0] = *(v0 + 240);
        *(v259 + 12) = *(v0 + 252);
        v109 = *(v0 + 192);
        v255 = *(v0 + 176);
        v256 = v109;
        v65 = v50;
        sub_257D81B70(v65, v110);
        v63 = v111;
        v66 = 0;
      }

      v112 = v50;
      sub_257C58E38(v0 + 176);
      *(v0 + 1616) = v65;
      v114 = v221;
      v113 = v223;
      *(v0 + 1632) = v221;
      *(v0 + 1648) = v223;
      v116 = v226;
      v115 = v230;
      *(v0 + 1664) = v226;
      *(v0 + 1680) = v230;
      *(v0 + 1696) = v63;
    }

    i = v0 + 3024;
    *(v0 + 1704) = v66;
    *&v255 = v112;
    v220 = v114;
    v222 = v113;
    v256 = v114;
    v257 = v113;
    v225 = v116;
    v229 = v115;
    v258 = v116;
    v259[0] = v115;
    v137 = v112;
    sub_257E4FDE8(v243);
    v217 = v138;
    v218 = v137;

    if (qword_281544FE0 != -1)
    {
      goto LABEL_144;
    }

    while (1)
    {
      v139 = v233 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
      swift_beginAccess();
      v140 = *(v139 + 8);
      v141 = *(v139 + 16);
      *(v0 + 3024) = *v139;
      *(v0 + 3032) = v140;
      *(v0 + 3040) = v141;
      v142 = *(v1 + 2016);

      if (v142 != -1)
      {
        swift_once();
      }

      *(swift_task_alloc() + 16) = i;
      sub_257ECFD50();

      if (!*(v0 + 270))
      {
        break;
      }

      v143 = 0;
      i = v0 + 368;
      v1 = v26 + 32;
      *&v254[0] = v7;
      v237 = v29;
      *&v233 = v26 + 32;
      while (v143 < *(v26 + 16))
      {
        v145 = (v1 + 96 * v143);
        v146 = v145[1];
        *i = *v145;
        *(v0 + 384) = v146;
        v147 = v145[2];
        v148 = v145[3];
        v149 = v145[4];
        *(v0 + 444) = *(v145 + 76);
        *(v0 + 416) = v148;
        *(v0 + 432) = v149;
        *(v0 + 400) = v147;
        if ((*(v0 + 376) & 0x8000000000000000) != 0)
        {
          v29 = *i;
          *&v255 = v7;
          v150 = -1 << *(v29 + 32);
          if (-v150 < 64)
          {
            v151 = ~(-1 << -v150);
          }

          else
          {
            v151 = -1;
          }

          v26 = v151 & *(v29 + 56);
          sub_257C58DDC(v0 + 368, v0 + 272);
          v7 = (63 - v150) >> 6;

          v1 = 0;
          if (v26)
          {
            goto LABEL_115;
          }

          while (1)
          {
            v152 = v1 + 1;
            if (__OFADD__(v1, 1))
            {
              break;
            }

            if (v152 >= v7)
            {

              v144 = sub_257C5714C(v255);

              sub_257C58E38(v0 + 368);
              v7 = MEMORY[0x277D84F90];
              v26 = v239;
              v29 = v237;
              v1 = v233;
              goto LABEL_103;
            }

            v26 = *(v29 + 56 + 8 * v152);
            ++v1;
            if (v26)
            {
              v1 = v152;
              do
              {
LABEL_115:
                v26 &= v26 - 1;

                sub_257EB0738(v153);
              }

              while (v26);
              continue;
            }
          }

          __break(1u);
          goto LABEL_139;
        }

        v144 = *(v0 + 448);

LABEL_103:
        ++v143;
        sub_257EB0738(v144);
        if (v143 == v29)
        {

          v154 = sub_257C5714C(*&v254[0]);

          v155 = *(v154 + 16);
          goto LABEL_120;
        }
      }

LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      swift_once();
    }

    v157 = *(v0 + 224);
    v257 = *(v0 + 208);
    v258 = v157;
    v259[0] = *(v0 + 240);
    *(v259 + 12) = *(v0 + 252);
    v158 = *(v0 + 192);
    v255 = *(v0 + 176);
    v256 = v158;
    sub_257D81B70(v156, v159);
    v155 = *(v160 + 16);
LABEL_120:

    v161 = vsub_f32(vzip1_s32(*v243.f32, *&vextq_s8(v243, v243, 8uLL)), vzip1_s32(*v217.i8, *&vextq_s8(v217, v217, 8uLL)));
    v162 = *(v0 + 3056) + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject;
    *(v0 + 1808) = *v162;
    v163 = *(v162 + 64);
    v165 = *(v162 + 16);
    v164 = *(v162 + 32);
    *(v0 + 1856) = *(v162 + 48);
    *(v0 + 1872) = v163;
    *(v0 + 1824) = v165;
    *(v0 + 1840) = v164;
    v166 = *(v0 + 1808);
    v167 = sqrtf(vaddv_f32(vmul_f32(v161, v161)));
    v168 = *(v162 + 24);
    v169 = *(v162 + 56);
    v251 = *(v162 + 40);
    v252 = v169;
    v253 = *(v162 + 72);
    v249 = *(v162 + 8);
    v250 = v168;
    v170 = &qword_27F8F6000;
    if (v166)
    {
      *(v0 + 2288) = v166;
      *(v0 + 2296) = *(v162 + 8);
      v171 = *(v162 + 24);
      v172 = *(v162 + 40);
      v173 = *(v162 + 56);
      *(v0 + 2360) = *(v162 + 72);
      *(v0 + 2328) = v172;
      *(v0 + 2344) = v173;
      *(v0 + 2312) = v171;
      v174 = *(v0 + 2336);
      v254[2] = *(v0 + 2320);
      v254[3] = v174;
      v254[4] = *(v0 + 2352);
      v175 = *(v0 + 2304);
      v254[0] = *(v0 + 2288);
      v254[1] = v175;
      if (v218)
      {
        *&v255 = v218;
        v256 = v220;
        v257 = v222;
        v258 = v225;
        v259[0] = v229;
        v241 = v218;
        sub_257BE401C(v0 + 1808, v0 + 2608, &qword_27F8F9C90, &unk_257EDCBD0);
        sub_257BE401C(v0 + 2288, v0 + 2688, &qword_27F8F9C90, &unk_257EDCBD0);
        v176 = _s16MagnifierSupport14DetectedObjectV2eeoiySbAC_ACtFZ_0(v254, &v255);

        *(v0 + 2528) = v166;
        v177 = v252;
        *(v0 + 2568) = v251;
        *(v0 + 2584) = v177;
        *(v0 + 2600) = v253;
        v178 = v250;
        *(v0 + 2536) = v249;
        *(v0 + 2552) = v178;
        sub_257BE4084(v0 + 2528, &qword_27F8F9C90, &unk_257EDCBD0);
        if (v176)
        {
          v170 = &qword_27F8F6000;
LABEL_130:
          sub_257C44854(v167);
          v187 = v186;

          sub_257C58E38(v0 + 176);
          if ((v187 & 1) == 0 && *(*(v0 + 3056) + v170[137]) == v155)
          {

            sub_257C58D88(v0 + 1616);
            *v232 = 0u;
            *(v0 + 1248) = 0u;
            *(v0 + 1264) = 0u;
            *(v0 + 1280) = 0u;
            *(v0 + 1296) = 0u;
            *(v0 + 1312) = 0;
            goto LABEL_55;
          }

          goto LABEL_133;
        }

        sub_257C58E38(v0 + 176);

        v170 = &qword_27F8F6000;
LABEL_133:
        v188 = *(v0 + 3056);
        *(v188 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetDistance) = v167;
        *(v0 + 1968) = *v162;
        v189 = *(v162 + 16);
        v190 = *(v162 + 32);
        v191 = *(v162 + 64);
        *(v0 + 2016) = *(v162 + 48);
        *(v0 + 2032) = v191;
        *(v0 + 1984) = v189;
        *(v0 + 2000) = v190;
        *v162 = v218;
        *(v162 + 16) = v220;
        *(v162 + 32) = v222;
        *(v162 + 48) = v225;
        *(v162 + 64) = v229;
        sub_257BE4084(v0 + 1968, &qword_27F8F9C90, &unk_257EDCBD0);
        *(v188 + v170[137]) = v155;
        v2 = v0 + 1232;
        v234 = *(v0 + 1632);
        v236 = *(v0 + 1616);
        v227 = *(v0 + 1664);
        v231 = *(v0 + 1648);
        v240 = *(v0 + 1680);
        v79 = *(v0 + 1688);
        v80 = *(v0 + 1696);
        v82 = *(v0 + 1704);
        sub_257C58BFC(v0 + 1616, v0 + 1424);
        v192 = *(v0 + 1664);
        v81 = (v0 + 1520);
        *(v0 + 1552) = *(v0 + 1648);
        *(v0 + 1568) = v192;
        *(v0 + 1584) = *(v0 + 1680);
        *(v0 + 1593) = *(v0 + 1689);
        v193 = *(v0 + 1632);
        *v219 = *(v0 + 1616);
        *(v0 + 1536) = v193;
        goto LABEL_134;
      }

      sub_257BE401C(v0 + 1808, v0 + 2368, &qword_27F8F9C90, &unk_257EDCBD0);
      sub_257BE401C(v0 + 2288, v0 + 2448, &qword_27F8F9C90, &unk_257EDCBD0);
      sub_257C58E38(v0 + 176);

      v170 = &qword_27F8F6000;
    }

    else
    {
      if (!v218)
      {
        *(v0 + 2128) = 0;
        *(v0 + 2136) = *(v162 + 8);
        v183 = *(v162 + 24);
        v184 = *(v162 + 40);
        v185 = *(v162 + 56);
        *(v0 + 2200) = *(v162 + 72);
        *(v0 + 2168) = v184;
        *(v0 + 2184) = v185;
        *(v0 + 2152) = v183;
        sub_257BE401C(v0 + 1808, v0 + 2208, &qword_27F8F9C90, &unk_257EDCBD0);
        sub_257BE4084(v0 + 2128, &qword_27F8F9C90, &unk_257EDCBD0);
        goto LABEL_130;
      }

      v179 = v218;
      sub_257BE401C(v0 + 1808, v0 + 1888, &qword_27F8F9C90, &unk_257EDCBD0);
      sub_257C58E38(v0 + 176);
    }

    v180 = v249;
    *(v0 + 40) = v250;
    v181 = v252;
    *(v0 + 56) = v251;
    *(v0 + 72) = v181;
    *(v0 + 16) = v166;
    v182 = v253;
    *(v0 + 24) = v180;
    *(v0 + 88) = v182;
    *(v0 + 96) = v218;
    *(v0 + 112) = v220;
    *(v0 + 128) = v222;
    *(v0 + 144) = v225;
    *(v0 + 160) = v229;
    sub_257BE4084(v0 + 16, &qword_27F8F6660, &unk_257EDF520);
    goto LABEL_133;
  }

  v2 = v0 + 1232;
LABEL_50:
  v67 = *(v0 + 3056);

  v68 = (v67 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject);
  if (!*(v67 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject))
  {
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
LABEL_55:
    *(v0 + 1320) = -1;
    goto LABEL_135;
  }

  v69 = *(v0 + 3056);
  *(v69 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetDistance) = 0;
  *(v0 + 2048) = *v68;
  v70 = v68[1];
  v71 = v68[2];
  v72 = v68[4];
  *(v0 + 2096) = v68[3];
  *(v0 + 2112) = v72;
  *(v0 + 2064) = v70;
  *(v0 + 2080) = v71;
  v68[2] = 0u;
  v68[3] = 0u;
  v68[4] = 0u;
  *v68 = 0u;
  v68[1] = 0u;
  sub_257BE4084(v0 + 2048, &qword_27F8F9C90, &unk_257EDCBD0);
  *(v69 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetOccupancy) = 0;
  sub_257ECD4A0();
  v73 = sub_257ECDA20();
  v74 = sub_257ECFBD0();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_257BAC000, v73, v74, "Create empty contact event", v75, 2u);
    MEMORY[0x259C74820](v75, -1, -1);
  }

  v76 = *(v0 + 3136);
  v77 = *(v0 + 3128);
  v78 = *(v0 + 3120);

  (*(v77 + 8))(v76, v78);
  v240 = 0;
  v79 = 0;
  v80 = 0;
  v81 = (v0 + 1520);
  *(v0 + 1600) = 0;
  *(v0 + 1568) = 0u;
  *(v0 + 1584) = 0u;
  *(v0 + 1536) = 0u;
  *(v0 + 1552) = 0u;
  v82 = 3;
  v234 = 0u;
  v236 = 0u;
  *v219 = 0u;
  v227 = 0u;
  v231 = 0u;
  *(v0 + 1608) = 3;
LABEL_134:
  v194 = *(v0 + 3112);
  v195 = *(v0 + 3056);
  v196 = v81[3];
  *(v0 + 1360) = v81[2];
  *(v0 + 1376) = v196;
  *(v0 + 1392) = v81[4];
  *(v0 + 1401) = *(v81 + 73);
  v197 = v81[1];
  *(v0 + 1328) = *v81;
  *(v0 + 1344) = v197;
  v198 = sub_257ECF930();
  (*(*(v198 - 8) + 56))(v194, 1, 1, v198);
  v199 = v195;
  sub_257C58BFC(v81, v0 + 1712);
  v200 = sub_257ECF8F0();
  v201 = swift_allocObject();
  v202 = MEMORY[0x277D85700];
  *(v201 + 16) = v200;
  *(v201 + 24) = v202;
  *(v201 + 32) = v199;
  v203 = *(v0 + 1376);
  *(v201 + 80) = *(v0 + 1360);
  *(v201 + 96) = v203;
  *(v201 + 112) = *(v0 + 1392);
  *(v201 + 121) = *(v0 + 1401);
  v204 = *(v0 + 1344);
  *(v201 + 48) = *(v0 + 1328);
  *(v201 + 64) = v204;
  sub_257E81524(0, 0, v194, &unk_257EDCDF8, v201);
  sub_257C58D88(v81);

  *v2 = v236;
  *(v2 + 16) = v234;
  *(v2 + 32) = v231;
  *(v2 + 48) = v227;
  *(v0 + 1296) = v240;
  *(v0 + 1304) = v79;
  *(v0 + 1312) = v80;
  *(v0 + 1320) = v82;
LABEL_135:
  v205 = *(v0 + 3104);
  v206 = *(v0 + 3096);
  v228 = *(v0 + 3088);
  v207 = *(v0 + 3080);
  v208 = *(v0 + 3072);
  v209 = *(v0 + 3064);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v224 = sub_257ECFD30();
  v210 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v211 = swift_allocObject();
  *(v211 + 16) = v210;
  *(v211 + 32) = v243;
  *(v0 + 2864) = sub_257C58BA8;
  *(v0 + 2872) = v211;
  *(v0 + 2832) = MEMORY[0x277D85DD0];
  *(v0 + 2840) = 1107296256;
  *(v0 + 2848) = sub_257D231C0;
  *(v0 + 2856) = &block_descriptor_96_0;
  v212 = _Block_copy((v0 + 2832));
  sub_257ECC3F0();
  sub_257ECF150();
  *(v0 + 3048) = MEMORY[0x277D84F90];
  sub_257C58BB4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v205, v207, v212);
  _Block_release(v212);

  sub_257BE4084(v232, &qword_27F8F6650, &qword_257EDCDE8);
  (*(v208 + 8))(v207, v209);
  (*(v206 + 8))(v205, v228);

  v213 = *(v0 + 8);

  return v213();
}

void sub_257C44114(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for OU3DObjectType(0);
  v4 = v3;
  v5 = sub_257C58BB4(&qword_27F8F4C98, type metadata accessor for OU3DObjectType, &unk_257ED7BBC);
  v6 = 0;
  v13[1] = MEMORY[0x259C725B0](v2, v4, v5);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_257C4BA10(v13, *(*(a1 + 48) + ((v11 << 9) | (8 * v12))));
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_257C44258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_257ECDA30();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  sub_257ECF900();
  v5[19] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();
  v5[20] = v8;
  v5[21] = v7;

  return MEMORY[0x2822009F8](sub_257C4434C, v8, v7);
}

uint64_t sub_257C4434C(uint64_t a1)
{
  sub_257ECD4A0();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFBD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "Dispatch contact event", v4, 2u);
    MEMORY[0x259C74820](v4, -1, -1);
  }

  v6 = *(v1 + 136);
  v5 = *(v1 + 144);
  v8 = *(v1 + 120);
  v7 = *(v1 + 128);

  (*(v6 + 8))(v5, v7);
  v9 = v8[1];
  *(v1 + 16) = *v8;
  *(v1 + 32) = v9;
  v11 = v8[3];
  v10 = v8[4];
  v12 = v8[2];
  *(v1 + 89) = *(v8 + 73);
  *(v1 + 64) = v11;
  *(v1 + 80) = v10;
  *(v1 + 48) = v12;
  v13 = swift_task_alloc();
  *(v1 + 176) = v13;
  *v13 = v1;
  v13[1] = sub_257C444BC;

  return MAGOUEventHandler.send(_:)((v1 + 16));
}

uint64_t sub_257C444BC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_257C4463C;
  }

  else
  {
    v5 = sub_257C445D0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C445D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C4463C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_257C446A8(uint64_t a1, float32x4_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject), v4 = Strong, v5 = v3, v4, v3))
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pulseFeedbackProcessor);

      sub_257E4FDE8(a2);
      v10 = vsubq_f32(a2, v9);
      v11 = vmulq_f32(v10, v10);
      sub_257DE2E10(sqrtf(v11.f32[0] + v11.f32[2]));
    }
  }

  else
  {
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v14 = *(v12 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_pulseFeedbackProcessor);

    v15 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
    swift_beginAccess();
    v5 = *&v14[v15];

    [v5 stopPulse];
  }
}

void sub_257C44854(float a1)
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetDistance;
  v6 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetDistance) * 1000.0;
  if (COERCE_INT(fabs(v6)) > 2139095039)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v6 <= -2147500000.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 >= 2147500000.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v1 = v2;
  v3 = depthRoundingIncrement(for:)(v6);
  v7 = a1 * 1000.0;
  if (COERCE_INT(fabs(a1 * 1000.0)) > 2139095039)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 <= -2147500000.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v7 >= 2147500000.0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_10;
  }

  v8 = depthRoundingIncrement(for:)(v7);
  if (v8 < v3)
  {
    v3 = v8;
  }

  if (qword_281544FE0 != -1)
  {
    goto LABEL_27;
  }

LABEL_10:
  swift_beginAccess();
  v9 = qword_2815447E0;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  sub_257ECFD50();

  v15 = 0.3048;
  if (!v19)
  {
    v15 = 1.0;
  }

  v16 = v3 * v15;
  v17 = floorf(*(v1 + v5) / v16);
  if ((LODWORD(v17) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v17 <= -9.2234e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v17 >= 9.2234e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = floorf(a1 / v16);
  if ((LODWORD(v18) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v18 <= -9.2234e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v18 >= 9.2234e18)
  {
LABEL_33:
    __break(1u);
  }
}

void sub_257C44B20(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_arService);
  v4 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = [v5 currentFrame];
    if (v6)
    {
      v7 = v6;
      v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_ouSession);
      if (v8)
      {
        v9 = v8;

        if (a1 >> 62)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E78, &qword_257EDBE38);
          sub_257ED0420();
        }

        else
        {
          sub_257ED0660();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5E78, &qword_257EDBE38);
        v10 = sub_257ECF7F0();

        [v9 updateWithKeyframes:v10 ouframe:v7];
      }
    }
  }
}

uint64_t sub_257C44D04(uint64_t a1)
{
  v188 = 0;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6588, &qword_257EDCD08);
  MEMORY[0x28223BE20](v177, v2, v3, v4, v5);
  v185 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v176 = &v164 - v12;
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v184 = &v164 - v18;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v175 = &v164 - v24;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6590, &qword_257EDCD10);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174, v25, v26, v27, v28);
  v186 = &v164 - v29;
  v30 = sub_257ECCCF0();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32, v33, v34, v35);
  v167 = &v164 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v43 = &v164 - v42;
  MEMORY[0x28223BE20](v44, v45, v46, v47, v48);
  v50 = &v164 - v49;
  *&v56 = MEMORY[0x28223BE20](v51, v52, v53, v54, v55).n128_u64[0];
  v193 = (&v164 - v57);
  v58 = *(a1 + 16);
  v183 = v58;
  v165 = a1;
  if (v58)
  {
    v59 = (a1 + 96);
    do
    {
      v61 = *(v59 - 1);
      v60 = *v59;
      v63 = *(v59 - 3);
      v62 = *(v59 - 2);
      v195 = *(v59 - 8);
      v196 = v63;
      v197 = v62;
      v198 = v61;
      v199 = v60;
      v64 = v195;
      v65 = v188;
      sub_257C45BEC(&v195, v180);
      v188 = v65;
      if (v65)
      {
LABEL_86:

        __break(1u);
        goto LABEL_87;
      }

      v59 += 5;
      --v58;
    }

    while (v58);
  }

  v66 = [*(v180 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode) childNodes];
  sub_257BD2C2C(0, &qword_27F8FA5C0, 0x277CDBAA8);
  v67 = sub_257ECF810();

  v171 = v67;
  if (v67 >> 62)
  {
    goto LABEL_84;
  }

  for (i = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {
    v189 = v31;
    v190 = v43;
    v69 = v183;
    if (i)
    {
      v70 = 0;
      v182 = v171 & 0xC000000000000001;
      v181 = v171 & 0xFFFFFFFFFFFFFF8;
      v179 = v171 + 32;
      v172 = v165 + 32;
      v192 = (v31 + 8);
      v178 = i;
      v191 = v30;
      while (1)
      {
        if (v182)
        {
          v71 = MEMORY[0x259C72E20](v70, v171);
        }

        else
        {
          if (v70 >= *(v181 + 16))
          {
            goto LABEL_77;
          }

          v71 = *(v179 + 8 * v70);
        }

        v72 = v71;
        v73 = __OFADD__(v70, 1);
        v74 = (v70 + 1);
        if (v73)
        {
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v187 = v74;
        if (v69)
        {
          break;
        }

LABEL_9:
        [v72 removeFromParentNode];
LABEL_10:

        v70 = v187;
        v31 = v189;
        v69 = v183;
        if (v187 == v178)
        {
          goto LABEL_30;
        }
      }

      v75 = v172;
      while (1)
      {
        v76 = *v75;
        v77 = [v76 identifier];
        if (!v77)
        {
          break;
        }

        v78 = v77;
        v79 = v193;
        sub_257ECCCD0();

        v80 = sub_257ECCCA0();
        v82 = v81;
        (*v192)(v79, v30);
        v83 = v72;
        v84 = [v72 name];
        if (v84)
        {
          v85 = v84;
          v86 = v50;
          v87 = sub_257ECF500();
          v89 = v88;

          if (v80 == v87 && v82 == v89)
          {

            v43 = v190;
            v50 = v86;
LABEL_28:
            v72 = v83;
            v30 = v191;
            goto LABEL_10;
          }

          v91 = sub_257ED0640();

          v43 = v190;
          v50 = v86;
          if (v91)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        v75 += 10;
        --v69;
        v72 = v83;
        v30 = v191;
        if (!v69)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_86;
    }

LABEL_30:

    v92 = MEMORY[0x277D84F90];
    if (v69)
    {
      v195 = MEMORY[0x277D84F90];
      sub_257ED0360();
      v93 = (v165 + 32);
      do
      {
        v94 = *v93;
        v93 += 10;
        v95 = v94;
        sub_257ED0330();
        v96 = v69;
        sub_257ED0370();
        sub_257ED0380();
        sub_257ED0340();
        --v69;
      }

      while (v96 != 1);
      v97 = v195;
    }

    else
    {
      v97 = MEMORY[0x277D84F90];
    }

    v98 = objc_opt_self();
    v171 = sub_257BD2C2C(0, &qword_27F8F6598, 0x277D36CE8);
    v99 = sub_257ECF7F0();
    v178 = v98;
    v100 = [v98 storageGroupsForObjects_];

    v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65A0, &qword_257EDCD18);
    v101 = sub_257ECF810();

    v102 = *(v101 + 16);
    if (v102)
    {
      v195 = v92;
      sub_257BF28C4(0, v102, 0);
      v103 = 0;
      v104 = v195;
      v181 = v101 + 32;
      v31 += 8;
      v179 = v97;
      v183 = v101;
      v182 = v102;
      while (v103 < *(v101 + 16))
      {
        v192 = v104;
        v193 = v103;
        v105 = *(v181 + 8 * v103);
        v106 = *(v105 + 2);
        v107 = sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

        v108 = MEMORY[0x259C725B0](v106, v30, v107);
        v194 = v108;
        v109 = *(v105 + 2);
        if (v109)
        {
          v110 = (*(v189 + 80) + 32) & ~*(v189 + 80);
          v187 = v105;
          v111 = v105 + v110;
          v112 = v50;
          v113 = *(v189 + 72);
          v114 = v43;
          v115 = *(v189 + 16);
          do
          {
            v115(v112, v111, v30);
            sub_257C4BFF0(v114, v112);
            (*v31)(v114, v30);
            v111 += v113;
            --v109;
          }

          while (v109);

          v116 = v194;
          v43 = v114;
          v50 = v112;
        }

        else
        {
          v116 = v108;
        }

        v104 = v192;
        v117 = v193;
        v195 = v192;
        v119 = v192[2];
        v118 = v192[3];
        if (v119 >= v118 >> 1)
        {
          sub_257BF28C4((v118 > 1), v119 + 1, 1);
          v117 = v193;
          v104 = v195;
        }

        v103 = v117 + 1;
        v104[2] = v119 + 1;
        v104[v119 + 4] = v116;
        v101 = v183;
        if (v103 == v182)
        {

          v31 = v189;
          v92 = MEMORY[0x277D84F90];
          goto LABEL_48;
        }
      }

LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v104 = MEMORY[0x277D84F90];
LABEL_48:
    *(v180 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedStorageGroups) = v104;

    v120 = sub_257ECF7F0();

    v121 = [v178 tableChairGroupsForObjects_];

    v179 = sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v122 = sub_257ECF3D0();

    v123 = v122[2];
    if (!v123)
    {
      break;
    }

    v195 = v92;
    sub_257BF28A4(0, v123, 0);
    v43 = v195;
    v124 = (v122 + 8);
    v50 = sub_257ED0190();
    v125 = 0;
    v169 = *(v122 + 9);
    v172 = v31 + 32;
    v126 = (v31 + 8);
    v166 = (v122 + 9);
    v178 = v122;
    v168 = v123;
    v170 = (v122 + 8);
    v171 = v31 + 16;
    while ((v50 & 0x8000000000000000) == 0 && v50 < 1 << *(v122 + 32))
    {
      if ((*&v124[8 * (v50 >> 6)] & (1 << v50)) == 0)
      {
        goto LABEL_80;
      }

      v182 = 1 << v50;
      v183 = v50 >> 6;
      v181 = v125;
      v193 = v43;
      v129 = *(v31 + 72);
      v130 = *(v31 + 16);
      v131 = v175;
      v130(v175, v122[6] + v129 * v50, v30);
      v132 = v122[7];
      v192 = v50;
      v133 = *(v132 + 8 * v50);
      v187 = *(v31 + 32);
      v134 = v184;
      v187(v184, v131, v30);
      v135 = v177;
      *(v134 + *(v177 + 48)) = v133;
      v136 = v176;
      sub_257BE401C(v134, v176, &qword_27F8F6588, &qword_257EDCD08);

      v187(v186, v136, v30);
      v137 = v185;
      sub_257BE401C(v134, v185, &qword_27F8F6588, &qword_257EDCD08);
      v138 = *(v137 + *(v135 + 48));
      v139 = MEMORY[0x259C725B0](*(v138 + 2), v30, v179);
      v194 = v139;
      v140 = *(v138 + 2);
      if (v140)
      {
        v141 = v190;
        v142 = *(v189 + 80);
        v187 = v138;
        v143 = v138 + ((v142 + 32) & ~v142);
        v144 = v167;
        do
        {
          v130(v144, v143, v30);
          sub_257C4BFF0(v141, v144);
          (*v126)(v141, v30);
          v143 += v129;
          --v140;
        }

        while (v140);
        v145 = v194;
      }

      else
      {
        v145 = v139;
      }

      v146 = *(v174 + 48);
      sub_257BE4084(v184, &qword_27F8F6588, &qword_257EDCD08);

      (*v126)(v185, v30);
      v147 = v186;
      *&v186[v146] = v145;
      v148 = v192;
      v43 = v193;
      v195 = v193;
      v150 = v193[2];
      v149 = v193[3];
      if (v150 >= v149 >> 1)
      {
        sub_257BF28A4((v149 > 1), v150 + 1, 1);
        v147 = v186;
        v43 = v195;
      }

      *(v43 + 2) = v150 + 1;
      sub_257C0DD14(v147, &v43[((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v150], &qword_27F8F6590, &qword_257EDCD10);
      v122 = v178;
      v50 = 1 << *(v178 + 32);
      v31 = v189;
      if (v148 >= v50)
      {
        goto LABEL_81;
      }

      v124 = v170;
      v151 = *&v170[8 * v183];
      if ((v151 & v182) == 0)
      {
        goto LABEL_82;
      }

      if (v169 != *(v178 + 9))
      {
        goto LABEL_83;
      }

      v152 = v151 & (-2 << (v148 & 0x3F));
      if (v152)
      {
        v50 = __clz(__rbit64(v152)) | v148 & 0x7FFFFFFFFFFFFFC0;
        v127 = v168;
        v128 = v181;
      }

      else
      {
        v153 = v183 << 6;
        v154 = v183 + 1;
        v155 = &v166[8 * v183];
        v127 = v168;
        v128 = v181;
        while (v154 < (v50 + 63) >> 6)
        {
          v157 = *v155++;
          v156 = v157;
          v153 += 64;
          ++v154;
          if (v157)
          {
            v50 = __clz(__rbit64(v156)) + v153;
            break;
          }
        }
      }

      v125 = v128 + 1;
      if (v125 == v127)
      {

        if (!*(v43 + 2))
        {
          goto LABEL_73;
        }

        goto LABEL_71;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    ;
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_71:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B28, &unk_257EDCD20);
    v158 = sub_257ED0480();
  }

  else
  {
LABEL_73:
    v158 = MEMORY[0x277D84F98];
  }

  v159 = v165;
  v195 = v158;

  v161 = v188;
  sub_257C5431C(v160, 1, &v195);
  if (!v161)
  {

    v162 = v180;
    *(v180 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTableChairGroups) = v195;

    *(v162 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache) = v159;
  }

LABEL_87:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_257C45BEC(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 32);
  v101 = *(a1 + 16);
  v102 = v13;
  v14 = *(a1 + 64);
  v103 = *(a1 + 48);
  v104 = v14;
  v15 = [v12 type];
  if (!v15)
  {
    __break(1u);
    goto LABEL_42;
  }

  v16 = v15;
  v17 = sub_257ECF500();
  v19 = v18;
  v21 = v17 == sub_257ECF500() && v19 == v20;
  v106 = v2;
  if (v21)
  {
    goto LABEL_15;
  }

  v22 = sub_257ED0640();

  if (v22)
  {
LABEL_7:

LABEL_16:
    [v12 dimensions];
    v107 = v33;
    [v12 dimensions];
    v35 = vmuls_lane_f32(1.1, v34, 1);
    [v12 dimensions];
    v37 = sub_257ECFB50(v107, v35, vmuls_lane_f32(1.1, v36, 2));
    v40 = [objc_opt_self() boxWithWidth:v37 height:v38 length:v39 chamferRadius:0.0];
    v41 = *(MEMORY[0x277D860B8] + 16);
    v107 = *MEMORY[0x277D860B8];
    v97 = v41;
    v42 = *(MEMORY[0x277D860B8] + 48);
    v98 = *(MEMORY[0x277D860B8] + 32);
    v99 = v42;
    [v12 dimensions];
    v43.f32[0] = vmuls_lane_f32(0.05, *v43.f32, 1);
    v100 = v43;
    [v12 dimensions];
    v96 = 0;
    v45 = vmulq_f32(v107, 0);
    v107 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v107, 0, v97), 0, v98), 0, v99);
    v95 = vmlaq_f32(vmlaq_f32(vaddq_f32(v97, v45), 0, v98), 0, v99);
    v94 = vmlaq_f32(vaddq_f32(v98, vmlaq_f32(v45, 0, v97)), 0, v99);
    v46 = vaddq_f32(v99, vmlaq_n_f32(vmlaq_n_f32(v45, v97, v100.f32[0]), v98, vmuls_lane_f32(0.05, v44, 2)));
    goto LABEL_17;
  }

  v23 = sub_257ECF500();
  v25 = v24;
  if (v23 == sub_257ECF500() && v25 == v26)
  {
    goto LABEL_15;
  }

  v28 = sub_257ED0640();

  if (v28)
  {
    goto LABEL_7;
  }

  v29 = sub_257ECF500();
  v31 = v30;
  if (v29 == sub_257ECF500() && v31 == v32)
  {
    goto LABEL_15;
  }

  v80 = sub_257ED0640();

  if (v80)
  {
    goto LABEL_7;
  }

  v81 = sub_257ECF500();
  v83 = v82;
  if (v81 == sub_257ECF500() && v83 == v84)
  {
    goto LABEL_15;
  }

  v85 = sub_257ED0640();

  if (v85)
  {
    goto LABEL_7;
  }

  v86 = sub_257ECF500();
  v88 = v87;
  if (v86 == sub_257ECF500() && v88 == v89)
  {
LABEL_15:

    goto LABEL_16;
  }

  v90 = sub_257ED0640();

  if (v90)
  {
    goto LABEL_16;
  }

  [v12 dimensions];
  sub_257ECFB60();
  v40 = [objc_opt_self() boxWithWidth:v91 height:v92 length:v93 chamferRadius:0.0];
  v46 = 0uLL;
  v107 = 0u;
  v96 = 1;
  v95 = 0u;
  v94 = 0u;
LABEL_17:
  v100 = v46;
  v47 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode;
  v48 = *(v105 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsRootNode);
  v49 = [v12 identifier];
  if (v49)
  {
    v50 = v49;
    sub_257ECCCD0();

    sub_257ECCCA0();
    (*(v5 + 8))(v11, v4);
    v51 = sub_257ECF4C0();

    v52 = [v48 childNodeWithName:v51 recursively:0];

    if (v52)
    {
      v53 = v40;
      [v52 setGeometry_];
      [v52 setOpacity_];
      v54 = [v52 physicsBody];
      if (v54)
      {
        v55 = v54;
        v56 = [objc_opt_self() shapeWithGeometry:v53 options:0];

        [v55 setPhysicsShape_];
        v53 = v56;
      }

      [v12 transform];
      [v52 setSimdTransform_];
    }

    else
    {
      sub_257BD2C2C(0, &qword_27F8FA5C0, 0x277CDBAA8);
      v108[0] = v12;
      v109 = v101;
      v110 = v102;
      v111 = v103;
      v112 = v104;
      v61 = v12;
      v62 = SCNNode.init(_:)(v108);
      if (!v62)
      {
LABEL_32:

        return;
      }

      v52 = v62;
      v63 = [objc_opt_self() shapeWithGeometry:v40 options:0];
      v64 = [objc_opt_self() bodyWithType:2 shape:v63];

      [v52 setPhysicsBody_];
      v65 = [v52 physicsBody];
      if (v65)
      {
        v66 = v65;
        [v65 setCategoryBitMask_];
      }

      [v52 setCategoryBitMask_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C8, &qword_257EDCD38);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED9BD0;
      v68 = *MEMORY[0x277D36D38];
      *(inited + 32) = *MEMORY[0x277D36D38];
      v69 = *MEMORY[0x277D36D68];
      *(inited + 40) = *MEMORY[0x277D36D68];
      v70 = v68;
      v71 = v69;
      v72 = [v61 type];
      v108[0] = v72;
      MEMORY[0x28223BE20](v72, v73, v74, v75, v76);
      *(&v94 - 2) = v108;
      v77 = v106;
      LOBYTE(v69) = sub_257DF8E30(sub_257C5883C, (&v94 - 2), inited);
      v106 = v77;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65D0, &qword_257EDCD40);
      swift_arrayDestroy();

      if (v69)
      {
        v78 = [v52 physicsBody];
        if (v78)
        {
          v79 = v78;
          [v78 setContactTestBitMask_];
        }
      }

      [*(v105 + v47) addChildNode_];
    }

    if ((v96 & 1) == 0)
    {
      [v52 setSimdPivot_];
    }

    goto LABEL_32;
  }

LABEL_42:
  __break(1u);
}

double sub_257C465C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache);

  sub_257E4F980(a1, a2, v7, a3);

  return result;
}

void sub_257C4662C(uint64_t a1)
{
  v3 = v1;
  v249.i64[0] = a1;
  v244 = sub_257ECDA30();
  v242 = *(v244 - 8);
  MEMORY[0x28223BE20](v244, v4, v5, v6, v7);
  v9 = v231 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for SpatialPersonDetection(0);
  *&v245 = *(v255 - 8);
  MEMORY[0x28223BE20](v255, v10, v11, v12, v13);
  v15 = v231 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v247 = v231 - v21;
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v28 = v231 - v27;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F63D8, &qword_257EDCBC0);
  MEMORY[0x28223BE20](v256, v29, v30, v31, v32);
  v254 = v231 - v33;
  v34 = sub_257ECCC80();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36, v37, v38, v39);
  v41 = v231 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
  v48 = v231 - v47;
  v250 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene;
  v49 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene);
  if (!v49)
  {
    return;
  }

  v243 = v15;
  v241 = v9;
  v251 = v49;
  sub_257ECCC50();
  v246 = v48;
  sub_257ECCBF0();
  v51 = *(v35 + 8);
  v50 = (v35 + 8);
  v236 = v34;
  v235 = v50;
  v234 = v51;
  v51(v41, v34);
  v52 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
  swift_beginAccess();
  v252 = v52;
  v53 = *(v3 + v52);
  v56 = *(v53 + 64);
  v55 = v53 + 64;
  v54 = v56;
  v57 = 1 << *(*(v3 + v52) + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & v54;
  v60 = (v57 + 63) >> 6;
  v257 = *(v3 + v52);
  swift_bridgeObjectRetain_n();
  v61 = 0;
  v248 = v3;
  v253 = v28;
  if (v59)
  {
    while (1)
    {
      v62 = v61;
LABEL_10:
      v63 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v64 = v63 | (v62 << 6);
      v65 = v257;
      v66 = *(v257 + 6);
      v67 = sub_257ECCCF0();
      v68 = v254;
      v69 = (*(*(v67 - 8) + 16))(v254, v66 + *(*(v67 - 8) + 72) * v64, v67);
      v70 = *(*(v65 + 7) + 8 * v64);
      *(v68 + v256[12]) = v70;
      MEMORY[0x28223BE20](v69, v71, v72, v73, v74);
      v231[-2] = v246;
      swift_bridgeObjectRetain_n();
      v75 = sub_257C55804(sub_257C57884, &v231[-4], v70);
      v3 = v248;
      v50 = v252;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v264 = *(v50 + v3);
      *(v50 + v3) = 0x8000000000000000;
      v52 = &v264;
      sub_257EC7788(v75, v68, isUniquelyReferenced_nonNull_native);
      *(v50 + v3) = v264;
      swift_endAccess();
      sub_257BE4084(v68, &qword_27F8F63D8, &qword_257EDCBC0);
      v28 = v253;
      if (!v59)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v62 >= v60)
    {
      break;
    }

    v59 = *(v55 + 8 * v62);
    ++v61;
    if (v59)
    {
      v61 = v62;
      goto LABEL_10;
    }
  }

  v231[1] = 0;

  v77 = v249.i64[0];
  v78 = *(v249.i64[0] + 16);
  v79 = MEMORY[0x277D84F90];
  v252 = v78;
  if (v78)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_257BF26A4(0, v78, 0);
    v79 = aBlock;
    v80 = v78;
    v81 = v77 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
    v82 = *(v245 + 72);
    do
    {
      sub_257C58770(v81, v28, type metadata accessor for SpatialPersonDetection);
      v83 = sub_257ECCCA0();
      v85 = v84;
      sub_257C58710(v28, type metadata accessor for SpatialPersonDetection);
      aBlock = v79;
      v87 = *(v79 + 16);
      v86 = *(v79 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_257BF26A4((v86 > 1), v87 + 1, 1);
        v79 = aBlock;
      }

      *(v79 + 16) = v87 + 1;
      v88 = v79 + 16 * v87;
      *(v88 + 32) = v83;
      *(v88 + 40) = v85;
      v81 += v82;
      --v80;
    }

    while (v80);
    v3 = v248;
  }

  v50 = sub_257C573BC(v79);

  v52 = [v251 rootNode];
  v261 = sub_257C592E4;
  v262 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v2 = 1107296256;
  *&v259 = 1107296256;
  *(&v259 + 1) = sub_257C47EA4;
  v260 = &block_descriptor_11;
  v89 = _Block_copy(&aBlock);

  v90 = [v52 childNodesPassingTest_];

  _Block_release(v89);
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_40;
  }

  v256 = v50;
  v237 = sub_257BD2C2C(0, &qword_27F8FA5C0, 0x277CDBAA8);
  v52 = sub_257ECF810();

  v50 = (v52 & 0xFFFFFFFFFFFFFF8);
  if (v52 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v92 = 0;
    v257 = MEMORY[0x277D84F90];
LABEL_22:
    v93 = v92;
    while (1)
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v94 = MEMORY[0x259C72E20](v93, v52);
      }

      else
      {
        if (v93 >= v50[2])
        {
          goto LABEL_39;
        }

        v94 = *(v52 + 8 * v93 + 32);
      }

      v95 = v94;
      v92 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        break;
      }

      v96 = [v94 name];
      if (v96)
      {
        v97 = v96;
        v98 = sub_257ECF500();
        v100 = v99;

        v101 = v100;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v257 = sub_257BFCB3C(0, *(v257 + 2) + 1, 1, v257);
        }

        v103 = *(v257 + 2);
        v102 = *(v257 + 3);
        if (v103 >= v102 >> 1)
        {
          v257 = sub_257BFCB3C((v102 > 1), v103 + 1, 1, v257);
        }

        v104 = v257;
        *(v257 + 2) = v103 + 1;
        v105 = &v104[16 * v103];
        *(v105 + 4) = v98;
        *(v105 + 5) = v101;
        v3 = v248;
        if (v92 != i)
        {
          goto LABEL_22;
        }

        goto LABEL_43;
      }

      ++v93;
      if (v92 == i)
      {
        goto LABEL_43;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v257 = MEMORY[0x277D84F90];
LABEL_43:

  v106 = sub_257C573BC(v257);

  v107 = v256;

  v108 = sub_257C55144(v106, v107);
  if (*(v106 + 16) <= *(v107 + 2) >> 3)
  {
    aBlock = v107;

    sub_257C54870(v106, v110);
    v109 = aBlock;
  }

  else
  {

    v109 = sub_257C5499C(v106, v107);
  }

  v111 = v241;
  v112 = v247;
  v113 = v252;
  if (*(v107 + 2) <= *(v106 + 16) >> 3)
  {
    aBlock = v106;

    sub_257C54870(v107, v115);

    v114 = aBlock;
  }

  else
  {

    v114 = sub_257C5499C(v107, v106);
  }

  v264 = v114;
  v233 = objc_opt_self();
  [v233 begin];
  if (!v113)
  {

    goto LABEL_82;
  }

  v232 = v2;
  v117 = 0;
  v254 = (v249.i64[0] + ((*(v245 + 80) + 32) & ~*(v245 + 80)));
  ++v242;
  v257 = (v106 + 56);
  v253 = *(v245 + 72);
  __asm
  {
    FMOV            V15.2S, #0.75
    FMOV            V11.2S, #0.25
  }

  *&v116 = 136315138;
  v238 = v116;
  v240 = v109;
  v239 = v108;
  do
  {
    sub_257C58770(&v254[v253 * v117], v112, type metadata accessor for SpatialPersonDetection);
    v123 = *(v112 + *(v255 + 20));
    if (vmuls_lane_f32(vmuls_lane_f32(v123.f32[0], *v123.f32, 1), v123, 2) >= 0.02)
    {
      v249 = *(v112 + *(v255 + 20));
      v256 = sub_257BFC1BC(0.0);
      v134 = sub_257ECCCA0();
      v136 = sub_257C4075C(v134, v135, v108);

      if (v136)
      {
        v137 = [v251 rootNode];
        sub_257ECCCA0();
        v138 = sub_257ECF4C0();

        v139 = [v137 childNodeWithName:v138 recursively:0];

        v113 = v252;
        if (v139)
        {
          [v139 simdWorldPosition];
          v245 = v140;
          [v256 simdWorldPosition];
          [v139 setSimdWorldPosition_];
          v142 = [v139 geometry];
          if (v142)
          {
            v143 = v142;
            objc_opt_self();
            v144 = swift_dynamicCastObjCClass();
            if (v144)
            {
              v145 = v144;
              [v144 width];
              [v145 height];
              [v145 length];
              sub_257ECFB40();
              v147.n128_f32[0] = v146 * 0.75;
              v150 = sub_257ECFB50(v147, v148 * 0.75, v149 * 0.75);
              v152 = v151;
              v154 = v153;
              sub_257ECFB60();
              v156.n128_f32[0] = v155 * 0.25;
              v159.n128_f32[0] = v150 + sub_257ECFB50(v156, v157 * 0.25, v158 * 0.25);
              v162 = sub_257ECFB50(v159, v152 + v160, v154 + v161);
              v164 = v163;
              v166 = v165;
              [v145 setWidth_];
              [v145 setHeight_];
              v167 = v145;
              v109 = v240;
              [v167 setLength_];
            }
          }

          [v139 simdOrientation];
          v249 = v168;
          v169 = v256;
          [v256 simdOrientation];
          simd_slerp(v249, v170, v171);
          [v139 setSimdOrientation_];

          goto LABEL_73;
        }
      }

      v172 = sub_257ECCCA0();
      v174 = sub_257C4075C(v172, v173, v109);

      if (v174)
      {
        v175 = [v251 rootNode];
        v176 = v256;
        [v175 addChildNode_];

LABEL_73:
        sub_257C58710(v112, type metadata accessor for SpatialPersonDetection);
        goto LABEL_52;
      }

      sub_257ECD4A0();
      v177 = v112;
      v178 = v112;
      v179 = v243;
      sub_257C58770(v177, v243, type metadata accessor for SpatialPersonDetection);
      v180 = sub_257ECDA20();
      v181 = sub_257ECFBE0();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        aBlock = v183;
        *v182 = v238;
        v184 = sub_257ECCCA0();
        v186 = v185;
        v249.i64[0] = type metadata accessor for SpatialPersonDetection;
        sub_257C58710(v179, type metadata accessor for SpatialPersonDetection);
        v187 = sub_257BF1FC8(v184, v186, &aBlock);

        *(v182 + 4) = v187;
        v111 = v241;
        _os_log_impl(&dword_257BAC000, v180, v181, "Person %s should have been added or updated in objectUnderstanding scene, but was not.", v182, 0xCu);
        v188 = __swift_destroy_boxed_opaque_existential_0(v183);
        v189 = v183;
        v108 = v239;
        MEMORY[0x259C74820](v189, -1, -1, v188);
        v190 = v182;
        v109 = v240;
        MEMORY[0x259C74820](v190, -1, -1);

        (*v242)(v111, v244);
        v191 = v178;
        v192 = v249.i64[0];
      }

      else
      {

        sub_257C58710(v179, type metadata accessor for SpatialPersonDetection);
        (*v242)(v111, v244);
        v191 = v178;
        v192 = type metadata accessor for SpatialPersonDetection;
      }

      sub_257C58710(v191, v192);
      v112 = v178;
      v113 = v252;
      v3 = v248;
    }

    else
    {
      v124 = sub_257ECCCA0();
      v126 = v125;
      if (*(v106 + 16))
      {
        v127 = v124;
        sub_257ED07B0();
        sub_257ECF5D0();
        v128 = sub_257ED0800();
        v129 = -1 << *(v106 + 32);
        v130 = v128 & ~v129;
        if ((*&v257[(v130 >> 3) & 0xFFFFFFFFFFFFFF8] >> v130))
        {
          v131 = ~v129;
          while (1)
          {
            v132 = (*(v106 + 48) + 16 * v130);
            _ZF = *v132 == v127 && v132[1] == v126;
            if (_ZF || (sub_257ED0640() & 1) != 0)
            {
              break;
            }

            v130 = (v130 + 1) & v131;
            if (((*&v257[(v130 >> 3) & 0xFFFFFFFFFFFFFF8] >> v130) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          v112 = v247;
          v193 = sub_257ECCCA0();
          sub_257C4D080(&aBlock, v193, v194);
        }

        else
        {
LABEL_63:

          v112 = v247;
        }

        sub_257C58710(v112, type metadata accessor for SpatialPersonDetection);
        v113 = v252;
      }

      else
      {

        sub_257C58710(v112, type metadata accessor for SpatialPersonDetection);
      }
    }

LABEL_52:
    ++v117;
  }

  while (v117 != v113);

  v114 = v264;
  v2 = v232;
LABEL_82:

  v195 = 0;
  v196 = 1 << *(v114 + 32);
  v197 = -1;
  if (v196 < 64)
  {
    v197 = ~(-1 << v196);
  }

  v198 = v197 & *(v114 + 56);
  v199 = (v196 + 63) >> 6;
  if (v198)
  {
    goto LABEL_90;
  }

  while (2)
  {
    v200 = v195 + 1;
    if (__OFADD__(v195, 1))
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v200 < v199)
    {
      v198 = *(v114 + 56 + 8 * v200);
      ++v195;
      if (v198)
      {
        v195 = v200;
        do
        {
LABEL_90:
          v198 &= v198 - 1;

          v106 = [v251 rootNode];
          v201 = sub_257ECF4C0();

          v202 = [v106 childNodeWithName:v201 recursively:0];

          [v202 removeFromParentNode];
        }

        while (v198);
        continue;
      }

      continue;
    }

    break;
  }

  [v233 commit];
  v203 = [v251 rootNode];
  v261 = sub_257C592E4;
  v262 = 0;
  aBlock = MEMORY[0x277D85DD0];
  *&v259 = v2;
  *(&v259 + 1) = sub_257C47EA4;
  v260 = &block_descriptor_15;
  v204 = _Block_copy(&aBlock);

  v205 = [v203 childNodesPassingTest_];

  _Block_release(v204);
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_125;
  }

  v106 = sub_257ECF810();

  if (v106 >> 62)
  {
LABEL_126:
    v206 = sub_257ED0210();
    if (!v206)
    {
      goto LABEL_127;
    }

LABEL_95:
    v207 = 0;
    v208 = (v106 & 0xC000000000000001);
    v255 = v106 & 0xFFFFFFFFFFFFFF8;
    v254 = (v106 + 32);
    v257 = *MEMORY[0x277CDBBD8];
    v209 = &selRef_imageByApplyingSymbolConfiguration_;
    v253 = v206;
    v256 = (v106 & 0xC000000000000001);
    while (1)
    {
      if (v208)
      {
        v210 = MEMORY[0x259C72E20](v207, v106);
      }

      else
      {
        if (v207 >= *(v255 + 16))
        {
          goto LABEL_123;
        }

        v210 = *&v254[8 * v207];
      }

      v211 = v210;
      _VF = __OFADD__(v207++, 1);
      if (_VF)
      {
        goto LABEL_120;
      }

      v212 = [v210 v209[158]];
      if (v212)
      {
        v213 = v212;
        v214 = *(v3 + v250);
        if (v214)
        {
          v215 = [v214 physicsWorld];
          v263[4] = MEMORY[0x277D83B88];
          v216 = v257;
          v263[0] = v257;
          v263[1] = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F63F0, &qword_257EDA678);
          v217 = sub_257ED0480();
          v218 = v216;
          sub_257BE401C(v263, &aBlock, &qword_27F8F5718, &qword_257EDA680);
          v219 = aBlock;
          v220 = sub_257C09E74();
          if (v221)
          {
            goto LABEL_121;
          }

          v217[(v220 >> 6) + 8] |= 1 << v220;
          *(v217[6] + 8 * v220) = v219;
          sub_257BEBE08(&v259, (v217[7] + 32 * v220));
          v222 = v217[2];
          _VF = __OFADD__(v222, 1);
          v223 = v222 + 1;
          if (_VF)
          {
            goto LABEL_122;
          }

          v217[2] = v223;
          sub_257BE4084(v263, &qword_27F8F5718, &qword_257EDA680);
          type metadata accessor for TestOption(0);
          sub_257C58BB4(&qword_27F8F6400, type metadata accessor for TestOption, &unk_257ED8158);
          v224 = sub_257ECF3C0();

          v225 = [v215 contactTestWithBody:v213 options:v224];

          sub_257BD2C2C(0, &qword_27F8F6408, 0x277CDBAC0);
          v226 = sub_257ECF810();

          if (v226 >> 62)
          {
            v227 = sub_257ED0210();
            if (!v227)
            {
              goto LABEL_117;
            }

LABEL_109:
            if (v227 < 1)
            {
              goto LABEL_124;
            }

            for (j = 0; j != v227; ++j)
            {
              if ((v226 & 0xC000000000000001) != 0)
              {
                v229 = MEMORY[0x259C72E20](j, v226);
              }

              else
              {
                v229 = *(v226 + 8 * j + 32);
              }

              v230 = v229;
              sub_257C48580(v229);
            }

            v206 = v253;
          }

          else
          {
            v227 = *((v226 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v227)
            {
              goto LABEL_109;
            }

LABEL_117:
          }

          v208 = v256;
          v209 = &selRef_imageByApplyingSymbolConfiguration_;
          goto LABEL_97;
        }
      }

LABEL_97:

      if (v207 == v206)
      {
        goto LABEL_127;
      }
    }
  }

  v206 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v206)
  {
    goto LABEL_95;
  }

LABEL_127:

  v234(v246, v236);
}

id sub_257C47E54(void *a1)
{
  result = [a1 physicsBody];
  if (result)
  {
    v2 = result;
    v3 = [result categoryBitMask];

    return ((v3 >> 2) & 1);
  }

  return result;
}

uint64_t sub_257C47EA4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void sub_257C47EF0(id *a1, uint64_t a2)
{
  v5 = type metadata accessor for Occupant(0);
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v55 = &v51 - v17;
  v56 = sub_257ECCCF0();
  v18 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v19, v20, v21, v22);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = MEMORY[0x28223BE20](v25, v26, v27, v28, v29).n128_u64[0];
  v32 = &v51 - v31;
  v54 = *a1;
  v33 = [v54 identifier];
  if (v33)
  {
    v34 = v33;
    sub_257ECCCD0();

    v35 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
    swift_beginAccess();
    v52 = v2;
    v36 = *(v2 + v35);
    v37 = *(v36 + 16);

    v53 = v24;
    if (v37 && (v38 = sub_257C042F8(v32), (v39 & 1) != 0))
    {
      v40 = *(*(v36 + 56) + 8 * v38);
    }

    else
    {
      v40 = MEMORY[0x277D84FA0];
    }

    v41 = *(v18 + 8);
    v42 = v32;
    v43 = v56;
    v41(v42, v56);
    v58 = v40;
    (*(v18 + 16))(v11, a2, v43);
    sub_257ECCC50();
    v44 = v55;
    sub_257C4CDB4(v55, v11);
    sub_257C58710(v44, type metadata accessor for Occupant);
    v45 = [v54 identifier];
    if (v45)
    {
      v46 = v45;
      v47 = v53;
      sub_257ECCCD0();

      v48 = v58;
      v49 = v52;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v49 + v35);
      *(v49 + v35) = 0x8000000000000000;
      sub_257EC7788(v48, v47, isUniquelyReferenced_nonNull_native);
      v41(v47, v43);
      *(v49 + v35) = v57;
      swift_endAccess();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_257C4820C(id *a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  v54 = type metadata accessor for Occupant(0);
  MEMORY[0x28223BE20](v54, v5, v6, v7, v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6578, &qword_257EDCCF8);
  MEMORY[0x28223BE20](v11 - 8, v12, v13, v14, v15);
  v17 = &v50 - v16;
  v18 = sub_257ECCCF0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = MEMORY[0x28223BE20](v26, v27, v28, v29, v30).n128_u64[0];
  v33 = &v50 - v32;
  v34 = *a1;
  v35 = [*a1 identifier];
  if (!v35)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v36 = v35;
  sub_257ECCCD0();

  v37 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
  swift_beginAccess();
  v38 = *(v3 + v37);
  if (*(v38 + 16))
  {

    v39 = sub_257C042F8(v33);
    if (v40)
    {
      v51 = v25;
      v52 = v17;
      v41 = *(*(v38 + 56) + 8 * v39);
      v42 = v18;
      v53 = v34;
      v43 = *(v19 + 8);

      v50 = v43;
      v43(v33, v18);

      v57 = v41;
      (*(v19 + 16))(v10, v55, v18);
      sub_257ECCC50();
      v44 = v52;
      sub_257D6DCF8(v52);
      sub_257C58710(v10, type metadata accessor for Occupant);
      sub_257BE4084(v44, &qword_27F8F6578, &qword_257EDCCF8);
      v45 = [v53 identifier];
      if (v45)
      {
        v46 = v45;
        v47 = v51;
        sub_257ECCCD0();

        v48 = v57;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = *(v3 + v37);
        *(v3 + v37) = 0x8000000000000000;
        sub_257EC7788(v48, v47, isUniquelyReferenced_nonNull_native);
        v50(v47, v42);
        *(v3 + v37) = v56;
        swift_endAccess();
        return;
      }

      goto LABEL_10;
    }
  }

  (*(v19 + 8))(v33, v18);
}

void sub_257C48580(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728, &qword_257EDA690);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v67 - v8;
  v10 = sub_257ECCCF0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v24 = &v67 - v23;
  *&v30 = MEMORY[0x28223BE20](v25, v26, v27, v28, v29).n128_u64[0];
  v32 = &v67 - v31;
  v33 = [a1 nodeA];
  v34 = [v33 physicsBody];

  if (v34)
  {
    v35 = [v34 categoryBitMask];

    if ((v35 & 4) != 0)
    {
      v73 = v11;
      v74 = v10;
      v72 = v1;
      v36 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache);

      v37 = [a1 nodeB];
      v38 = [v37 name];

      if (v38)
      {
        v39 = sub_257ECF500();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      sub_257E4F980(v39, v41, v36, v80);

      v42 = *&v80[0];
      if (*&v80[0])
      {
        v67 = v80[1];
        v68 = v80[2];
        v69 = v80[3];
        v70 = v80[4];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C8, &qword_257EDCD38);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED9BD0;
        v44 = *MEMORY[0x277D36D38];
        *(inited + 32) = *MEMORY[0x277D36D38];
        v45 = *MEMORY[0x277D36D68];
        *(inited + 40) = *MEMORY[0x277D36D68];
        v46 = v44;
        v47 = v45;
        v71 = v42;
        v48 = [v42 type];
        v75[0] = v48;
        MEMORY[0x28223BE20](v48, v49, v50, v51, v52);
        *(&v67 - 2) = v75;
        v53 = sub_257DF8E30(sub_257C592B4, (&v67 - 2), inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65D0, &qword_257EDCD40);
        swift_arrayDestroy();

        if (v53)
        {
          v54 = [a1 nodeA];
          v55 = [v54 name];

          if (v55)
          {
            sub_257ECF500();
          }

          v56 = v73;
          sub_257ECCC90();

          v57 = v74;
          if ((*(v56 + 48))(v9, 1, v74))
          {
            sub_257BE4084(v9, &qword_27F8F5728, &qword_257EDA690);
          }

          else
          {
            v58 = *(v56 + 32);
            v58(v24, v9, v57);
            v58(v32, v24, v57);
            [a1 penetrationDistance];
            if (v59 <= 0.05)
            {
              v60 = [v71 identifier];
              if (!v60)
              {
                __break(1u);
                return;
              }

              v61 = v60;
              sub_257ECCCD0();

              v62 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
              v63 = v72;
              swift_beginAccess();
              if (*(*(v63 + v62) + 16))
              {

                sub_257C042F8(v17);
                if (v64)
                {
                  v65 = *(v56 + 8);

                  v65(v17, v57);

                  v75[0] = v71;
                  v76 = v67;
                  v77 = v68;
                  v78 = v69;
                  v79 = v70;
                  sub_257C4820C(v75, v32);
                  v65(v32, v57);
                  goto LABEL_18;
                }
              }

              v66 = *(v56 + 8);
              v66(v17, v57);
              sub_257BE4084(v80, &qword_27F8F9C90, &unk_257EDCBD0);
              v66(v32, v57);
              return;
            }

            v75[0] = v71;
            v76 = v67;
            v77 = v68;
            v78 = v69;
            v79 = v70;
            sub_257C47EF0(v75, v32);
            (*(v56 + 8))(v32, v57);
          }
        }

LABEL_18:
        sub_257BE4084(v80, &qword_27F8F9C90, &unk_257EDCBD0);
      }
    }
  }
}

id sub_257C48C44()
{
  result = [*(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointer) physicsBody];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_scene);
    if (v3)
    {
      v4 = [v3 physicsWorld];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6410, &qword_257EDCBC8);
      inited = swift_initStackObject();
      v6 = *MEMORY[0x277CDBBD8];
      *(inited + 32) = *MEMORY[0x277CDBBD8];
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 40) = 2;
      v7 = v6;
      sub_257BE94BC(inited);
      swift_setDeallocating();
      sub_257BE4084(inited + 32, &qword_27F8F5718, &qword_257EDA680);
      type metadata accessor for TestOption(0);
      sub_257C58BB4(&qword_27F8F6400, type metadata accessor for TestOption, &unk_257ED8158);
      v8 = sub_257ECF3C0();

      v9 = [v4 contactTestWithBody:v2 options:v8];

      sub_257BD2C2C(0, &qword_27F8F6408, 0x277CDBAC0);
      v10 = sub_257ECF810();

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_257C48E20(void *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_objectPointer];
  sub_257BD2C2C(0, &qword_27F8FA5C0, 0x277CDBAA8);
  v8 = v7;
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  *&v9 = (*(&v61 + 2) + *(&v62 + 1)) * 0.5;
  *&v10 = (*&v61 + *(&v61 + 3)) * 0.5;
  LODWORD(v11) = v62;
  [v8 convertPosition:0 toNode:{v10, v11, v9}];

  v12 = [a1 nodeB];
  sub_257C567CC(v12);
  LOBYTE(v8) = v13;

  if (v8)
  {
    goto LABEL_22;
  }

  v14 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache;
  v15 = *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsCache];

  v16 = [a1 nodeB];
  v17 = [v16 name];

  if (v17)
  {
    v18 = sub_257ECF500();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  sub_257E4F980(v18, v20, v15, v60);

  if (!*&v60[0])
  {
    goto LABEL_22;
  }

  *&v61 = *&v60[0];
  v62 = v60[1];
  v63 = v60[2];
  v64 = v60[3];
  v65 = v60[4];
  v21 = *&v4[v14];
  v22 = *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedStorageGroups];
  v23 = *&v4[OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTableChairGroups];

  v24 = sub_257C492E4(&v61, v22, v23, v21);

  if (!v24)
  {
    v35 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedObjectsOccupants;
    swift_beginAccess();
    v36 = *&v4[v35];
    v58 = v64;
    v59 = v65;
    v56 = v62;
    v57 = v63;
    v55 = v61;
    sub_257BE401C(v60, v54, &qword_27F8F9C90, &unk_257EDCBD0);

    v37 = Dictionary<>.occupants(of:)(&v55, v36);

    v58 = v64;
    v59 = v65;
    v56 = v62;
    v57 = v63;
    v55 = v61;
    sub_257E4FDE8(a3);
    v39 = vsubq_f32(a3, v38);
    v40 = vmulq_f32(v39, v39);
    v41 = sqrtf(v40.f32[0] + v40.f32[2]);
    sub_257BE4084(v60, &qword_27F8F9C90, &unk_257EDCBD0);
    v42 = v62;
    v43 = v63;
    v44 = v64;
    v45 = v65;
    *a2 = v61;
    *(a2 + 8) = 0;
    *(a2 + 16) = v42;
    *(a2 + 32) = v43;
    *(a2 + 48) = v44;
    *(a2 + 64) = v45;
    *(a2 + 80) = v37;
    *(a2 + 88) = v41;
    return;
  }

  v25 = v4;
  sub_257C55E8C(v24, v25, a3);
  v27 = v26;

  v28 = *(v27 + 16);
  if (v28)
  {
    *&v55 = MEMORY[0x277D84F90];
    sub_257BF27A4(0, v28, 0);
    v29 = v55;
    v30 = (v27 + 120);
    v31 = *(v55 + 16);
    do
    {
      v32 = *v30;
      *&v55 = v29;
      v33 = *(v29 + 24);
      v34 = v31 + 1;
      if (v31 >= v33 >> 1)
      {
        sub_257BF27A4((v33 > 1), v31 + 1, 1);
        v29 = v55;
      }

      *(v29 + 16) = v34;
      *(v29 + 4 * v31 + 32) = v32;
      v30 += 24;
      ++v31;
      --v28;
    }

    while (v28);
    goto LABEL_15;
  }

  v29 = MEMORY[0x277D84F90];
  v34 = *(MEMORY[0x277D84F90] + 16);
  if (!v34)
  {

    sub_257BE4084(v60, &qword_27F8F9C90, &unk_257EDCBD0);

LABEL_22:
    *a2 = xmmword_257EDCB70;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 76) = 0u;
    return;
  }

LABEL_15:
  v46 = *(v29 + 32);
  v47 = v34 - 1;
  if (v34 != 1)
  {
    v48 = (v29 + 36);
    v49 = *(v29 + 32);
    do
    {
      v50 = *v48++;
      v51 = v50;
      if (v50 < v49)
      {
        v46 = v51;
        v49 = v51;
      }

      --v47;
    }

    while (v47);
  }

  v52 = sub_257C5709C(v27);

  sub_257BE4084(v60, &qword_27F8F9C90, &unk_257EDCBD0);
  *a2 = v52;
  *(a2 + 8) = v46;
  *(a2 + 12) = 0x80000000;
}

id sub_257C492E4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  result = [*a1 type];
  if (!result)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v10 = result;
  v11 = sub_257ECF500();
  v13 = v12;
  if (v11 == sub_257ECF500() && v13 == v14)
  {
    goto LABEL_10;
  }

  v16 = sub_257ED0640();

  if (v16)
  {
LABEL_11:

    return sub_257C4A31C(a1, a2, a4);
  }

  result = [v8 type];
  if (!result)
  {
    goto LABEL_37;
  }

  v10 = result;
  v17 = sub_257ECF500();
  v19 = v18;
  if (v17 == sub_257ECF500() && v19 == v20)
  {
    goto LABEL_10;
  }

  v21 = sub_257ED0640();

  if (v21)
  {
    goto LABEL_11;
  }

  result = [v8 type];
  if (!result)
  {
    goto LABEL_38;
  }

  v10 = result;
  v22 = sub_257ECF500();
  v24 = v23;
  if (v22 == sub_257ECF500() && v24 == v25)
  {
    goto LABEL_10;
  }

  v26 = sub_257ED0640();

  if (v26)
  {
    goto LABEL_11;
  }

  result = [v8 type];
  if (!result)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v10 = result;
  v27 = sub_257ECF500();
  v29 = v28;
  if (v27 == sub_257ECF500() && v29 == v30)
  {
LABEL_10:

    goto LABEL_11;
  }

  v31 = sub_257ED0640();

  if (v31)
  {
    goto LABEL_11;
  }

  result = [v8 type];
  if (!result)
  {
    goto LABEL_40;
  }

  v32 = result;
  v33 = sub_257ECF500();
  v35 = v34;
  if (v33 != sub_257ECF500() || v35 != v36)
  {
    v37 = sub_257ED0640();

    if (v37)
    {
      goto LABEL_28;
    }

    result = [v8 type];
    if (result)
    {
      v32 = result;
      v38 = sub_257ECF500();
      v40 = v39;
      if (v38 != sub_257ECF500() || v40 != v41)
      {
        v42 = sub_257ED0640();

        if ((v42 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_28;
      }

      goto LABEL_26;
    }

LABEL_41:
    __break(1u);
    return result;
  }

LABEL_26:

LABEL_28:

  return sub_257C4A760(a1, a3, a4);
}

uint64_t sub_257C49704(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  v4 = sub_257ECCCF0();
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *(a1 + 8);
  *(v2 + 64) = v5;
  *(v2 + 72) = v6;
  *(v2 + 88) = *(a1 + 16);
  sub_257ECF900();
  *(v2 + 80) = sub_257ECF8F0();
  v8 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C49808, v8, v7);
}

uint64_t sub_257C49808()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 88);
    switch(v3)
    {
      case 4:
        v15 = *(v0 + 72);
        v42 = v15;
        v37 = Strong;
        if (v15 >> 62)
        {
          goto LABEL_43;
        }

        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_19;
        }

LABEL_33:
        v2 = v37;
        break;
      case 3:
        sub_257C57918(*(v0 + 72));
        break;
      case 2:
        v4 = *(v0 + 72);
        if (v4 >> 62)
        {
          v5 = sub_257ED0210();
          if (!v5)
          {
            break;
          }

          goto LABEL_7;
        }

        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
LABEL_7:
          v6 = 0;
          v7 = *(v0 + 72);
          v40 = v7 & 0xFFFFFFFFFFFFFF8;
          v42 = v7 & 0xC000000000000001;
          v38 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode;
          while (1)
          {
            if (v42)
            {
              v8 = MEMORY[0x259C72E20](v6, v4);
            }

            else
            {
              if (v6 >= *(v40 + 16))
              {
                goto LABEL_40;
              }

              v8 = *(v4 + 8 * v6 + 32);
            }

            v9 = v8;
            v10 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            objc_opt_self();
            v11 = swift_dynamicCastObjCClass();
            if (!v11)
            {

              goto LABEL_34;
            }

            v12 = v11;
            objc_allocWithZone(type metadata accessor for Plane(0));
            v13 = v9;
            v14 = sub_257E51A64(v12);
            [v13 transform];
            [v14 setSimdTransform_];
            [*&v2[v38] addChildNode_];

            ++v6;
            if (v10 == v5)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_40:
          __break(1u);
          while (1)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            v16 = sub_257ED0210();
            if (!v16)
            {
              goto LABEL_33;
            }

LABEL_19:
            v17 = 0;
            v18 = *(v0 + 72);
            v39 = v18 & 0xFFFFFFFFFFFFFF8;
            v41 = v18 & 0xC000000000000001;
            v35 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode;
            v36 = (*(v0 + 56) + 8);
            while (1)
            {
              if (v41)
              {
                v19 = MEMORY[0x259C72E20](v17, v42);
              }

              else
              {
                if (v17 >= *(v39 + 16))
                {
                  goto LABEL_42;
                }

                v19 = *(v42 + 8 * v17 + 32);
              }

              v20 = v19;
              v21 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              objc_opt_self();
              v22 = swift_dynamicCastObjCClass();
              if (!v22)
              {

                goto LABEL_33;
              }

              v23 = v22;
              v24 = *(v0 + 64);
              v25 = *(v0 + 48);
              v26 = *&v37[v35];
              v27 = v20;
              v28 = v26;
              v29 = [v23 identifier];
              sub_257ECCCD0();

              sub_257ECCCA0();
              (*v36)(v24, v25);
              v30 = sub_257ECF4C0();

              v31 = [v28 childNodeWithName:v30 recursively:0];

              if (!v31)
              {

                goto LABEL_33;
              }

              type metadata accessor for Plane(0);
              v32 = swift_dynamicCastClass();
              if (!v32)
              {

                v2 = v31;
                goto LABEL_34;
              }

              [v32 removeFromParentNode];

              ++v17;
              if (v21 == v16)
              {
                goto LABEL_33;
              }
            }
          }
        }

        break;
    }

LABEL_34:
  }

  v33 = *(v0 + 8);

  return v33();
}

void sub_257C49C28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_17:
    v3 = sub_257ED0210();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  v5 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode;
  while ((a2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x259C72E20](v4, a2);
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v13 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    objc_allocWithZone(type metadata accessor for Plane(0));
    v10 = v13;
    v11 = sub_257E51A64(v9);
    [v10 transform];
    [v11 setSimdTransform_];
    [*(v12 + v5) addChildNode_];

    ++v4;
    if (v7 == v3)
    {
      return;
    }
  }

  if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(a2 + 8 * v4 + 32);
  v7 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:
}

void sub_257C49DD8(uint64_t a1, unint64_t a2)
{
  v28 = sub_257ECCCF0();
  v3 = *(v28 - 8);
  v8 = MEMORY[0x28223BE20](v28, v4, v5, v6, v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v12 = 0;
    v27 = a2 & 0xC000000000000001;
    v25 = OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedPlanesRootNode;
    v26 = a2 & 0xFFFFFFFFFFFFFF8;
    v24 = v3 + 1;
    while (1)
    {
      if (v27)
      {
        v13 = MEMORY[0x259C72E20](v12, a2, v8);
      }

      else
      {
        if (v12 >= *(v26 + 16))
        {
          goto LABEL_20;
        }

        v13 = *(a2 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = v16;
      v18 = i;
      v19 = *(v29 + v25);
      v3 = v14;
      v20 = v19;
      v21 = [v17 identifier];
      sub_257ECCCD0();

      sub_257ECCCA0();
      (*v24)(v10, v28);
      v22 = sub_257ECF4C0();

      v14 = [v20 childNodeWithName:v22 recursively:0];

      if (!v14)
      {
        v14 = v3;
LABEL_16:

LABEL_17:
        return;
      }

      type metadata accessor for Plane(0);
      v23 = swift_dynamicCastClass();
      if (!v23)
      {

        goto LABEL_16;
      }

      [v23 removeFromParentNode];

      ++v12;
      i = v18;
      if (v15 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

id MAGObjectUnderstandingService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAGObjectUnderstandingService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGObjectUnderstandingService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_257C4A24C(uint64_t (*a1)(id *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 96);
    while (1)
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      v18[0] = *(v7 - 8);
      v19 = v11;
      v20 = v10;
      v21 = v9;
      v22 = v8;
      v12 = v18[0];
      v13 = a1(v18);
      if (v3)
      {

        return;
      }

      if (v13)
      {
        break;
      }

      v7 += 10;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    *a3 = v18[0];
    *(a3 + 16) = v14;
    *(a3 + 32) = v15;
    *(a3 + 48) = v16;
    *(a3 + 64) = v17;
  }

  else
  {
LABEL_6:
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }
}

id sub_257C4A31C(void **a1, uint64_t a2, uint64_t a3)
{
  v54 = a1;
  v5 = sub_257ECDA30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECCCF0();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v58 = &v47 - v26;
  v52 = *(a2 + 16);
  if (v52)
  {
    v49 = v5;
    v50 = a3;
    v47 = v12;
    v48 = v6;
    v27 = 0;
    v53 = a2 + 32;
    v56 = v25 + 16;
    v51 = v25;
    v28 = (v25 + 8);
    while (1)
    {
      v55 = v27;
      v29 = *(v53 + 8 * v27);
      v30 = *v54;

      result = [v30 identifier];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v32 = result;
      sub_257ECCCD0();

      if (*(v29 + 16))
      {
        sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v33 = sub_257ECF3F0();
        v34 = -1 << *(v29 + 32);
        v35 = v33 & ~v34;
        v57 = v29 + 56;
        if ((*(v29 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          break;
        }
      }

LABEL_3:
      v27 = v55 + 1;

      (*v28)(v58, v13);
      if (v27 == v52)
      {
        return 0;
      }
    }

    v36 = ~v34;
    v37 = *(v51 + 72);
    v38 = *(v51 + 16);
    while (1)
    {
      v38(v19, *(v29 + 48) + v37 * v35, v13);
      sub_257C58BB4(&qword_27F8F57B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v39 = sub_257ECF450();
      v40 = *v28;
      (*v28)(v19, v13);
      if (v39)
      {
        break;
      }

      v35 = (v35 + 1) & v36;
      if (((*(v57 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v40(v58, v13);
    v41 = sub_257C4B058(v29, v50);

    if (*(v41 + 16))
    {
      v42 = sub_257C56FFC(v41);

      return v42;
    }

    v43 = v47;
    sub_257ECD4A0();
    v44 = sub_257ECDA20();
    v45 = sub_257ECFBE0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_257BAC000, v44, v45, "Warning: group of found objects is unexpectedly empty", v46, 2u);
      MEMORY[0x259C74820](v46, -1, -1);
    }

    (*(v48 + 8))(v43, v49);
  }

  return 0;
}

id sub_257C4A760(void **a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v110 = a1;
  v100 = sub_257ECDA30();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v4, v5, v6, v7);
  v98 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECCCF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  *&v117 = &v98 - v22;
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v107 = &v98 - v28;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6610, &unk_257EDCD60);
  MEMORY[0x28223BE20](v111, v29, v30, v31, v32);
  v34 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36, v37, v38, v39);
  v108 = &v98 - v40;
  MEMORY[0x28223BE20](v41, v42, v43, v44, v45);
  v101 = &v98 - v46;
  MEMORY[0x28223BE20](v47, v48, v49, v50, v51);
  v102 = &v98 - v52;
  v53 = a2 + 64;
  v54 = 1 << *(a2 + 32);
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  else
  {
    v55 = -1;
  }

  v56 = v55 & *(a2 + 64);
  v57 = (v54 + 63) >> 6;
  *&v115 = v10 + 16;
  v109 = v10;
  *&v116 = v10 + 8;
  v112 = a2;

  v59 = 0;
  v105 = a2 + 64;
  v104 = v57;
  v106 = v34;
  while (1)
  {
    if (!v56)
    {
      while (1)
      {
        v60 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v60 >= v57)
        {

          return 0;
        }

        v56 = *(v53 + 8 * v60);
        ++v59;
        if (v56)
        {
          v59 = v60;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

LABEL_11:
    v61 = __clz(__rbit64(v56)) | (v59 << 6);
    v62 = v112;
    v63 = *(v112 + 48);
    *&v114 = *(v109 + 72);
    v64 = v108;
    v113 = *(v109 + 16);
    v113(v108, v63 + v114 * v61, v9);
    v65 = *(*(v62 + 56) + 8 * v61);
    v66 = v111;
    *(v64 + *(v111 + 48)) = v65;
    sub_257C0DD14(v64, v34, &unk_27F8F6610, &unk_257EDCD60);
    v67 = *&v34[*(v66 + 48)];
    v68 = *v110;

    result = [v68 identifier];
    if (!result)
    {
      goto LABEL_31;
    }

    v69 = result;
    v70 = v107;
    sub_257ECCCD0();

    LOBYTE(v69) = sub_257ECCCC0();
    v71 = *v116;
    (*v116)(v70, v9);
    if (v69)
    {

      goto LABEL_22;
    }

    result = [v68 identifier];
    if (!result)
    {
      goto LABEL_32;
    }

    v72 = result;
    sub_257ECCCD0();

    if (*(v67 + 16))
    {
      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v73 = sub_257ECF3F0();
      v74 = -1 << *(v67 + 32);
      v75 = v73 & ~v74;
      if ((*(v67 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
      {
        break;
      }
    }

LABEL_5:
    v56 &= v56 - 1;
    v71(v117, v9);
    v34 = v106;
    result = sub_257BE4084(v106, &unk_27F8F6610, &unk_257EDCD60);
    v53 = v105;
    v57 = v104;
  }

  v76 = ~v74;
  while (1)
  {
    v113(v16, *(v67 + 48) + v75 * v114, v9);
    sub_257C58BB4(&qword_27F8F57B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v77 = sub_257ECF450();
    v71(v16, v9);
    if (v77)
    {
      break;
    }

    v75 = (v75 + 1) & v76;
    if (((*(v67 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v71(v117, v9);

  v34 = v106;
LABEL_22:
  v78 = v101;
  sub_257C0DD14(v34, v101, &unk_27F8F6610, &unk_257EDCD60);
  v79 = v102;
  v80 = sub_257C0DD14(v78, v102, &unk_27F8F6610, &unk_257EDCD60);
  MEMORY[0x28223BE20](v80, v81, v82, v83, v84);
  *(&v98 - 2) = v79;
  v85 = v103;
  sub_257C4A24C(sub_257C58AB4, v103, v119);
  v120 = v119[0];
  v121 = v119[1];
  v122 = v119[2];
  v123 = v119[3];
  v124 = v119[4];
  v86 = *&v119[0];
  if (*&v119[0])
  {
    v117 = v124;
    v116 = v123;
    v115 = v122;
    v114 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A60, &unk_257EDB290);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_257ED6D30;
    *(v87 + 32) = v86;
    v88 = v115;
    *(v87 + 48) = v114;
    *(v87 + 64) = v88;
    v89 = v117;
    *(v87 + 80) = v116;
    *(v87 + 96) = v89;
    v90 = *(v79 + *(v111 + 48));
    v91 = v86;
    v92 = sub_257C4B058(v90, v85);
    v118 = v87;
    sub_257EB0DAC(v92);
    v93 = sub_257C56FFC(v118);

    sub_257BE4084(&v120, &qword_27F8F9C90, &unk_257EDCBD0);
    sub_257BE4084(v79, &unk_27F8F6610, &unk_257EDCD60);
    return v93;
  }

  else
  {
    v94 = v98;
    sub_257ECD4A0();
    v95 = sub_257ECDA20();
    v96 = sub_257ECFBE0();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_257BAC000, v95, v96, "Warning: could not find DetectedObject expected to match given ID", v97, 2u);
      MEMORY[0x259C74820](v97, -1, -1);
    }

    (*(v99 + 8))(v94, v100);
    sub_257BE4084(v79, &unk_27F8F6610, &unk_257EDCD60);
    return 0;
  }
}

uint64_t sub_257C4B058(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a2;
  v19 = &v20;
  v12 = sub_257C83814(sub_257C58A70, v18, a1);
  if (*(v12 + 16) != *(a1 + 16))
  {
    sub_257ECD4A0();

    v13 = sub_257ECDA20();
    v14 = sub_257ECFBE0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134218496;
      v16 = *(a1 + 16);
      *(v15 + 4) = v16 - *(v12 + 16);
      *(v15 + 12) = 2048;
      *(v15 + 14) = v16;

      *(v15 + 22) = 2048;
      *(v15 + 24) = *(v12 + 16);

      _os_log_impl(&dword_257BAC000, v13, v14, "Warning: %ld/%ld object IDs did not have a corresponding DetectedObject. Continuing with %ld found objects.", v15, 0x20u);
      MEMORY[0x259C74820](v15, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v11, v4);
  }

  return v12;
}

uint64_t sub_257C4B258(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_257C4B350;

  return v6(a1);
}

uint64_t sub_257C4B350()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_257C4B448(char *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_257ED07B0();
  Control.rawValue.getter();
  sub_257ECF5D0();

  v5 = sub_257ED0800();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_55:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    sub_257C52214(v3, v7, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
    goto LABEL_58;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xEA0000000000726FLL;
    v10 = 0x746361466D6F6F7ALL;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v10 = 0xD000000000000011;
        v9 = 0x8000000257EF7780;
        break;
      case 2:
        v10 = 0x4379616C70736964;
        v9 = 0xEF74736172746E6FLL;
        break;
      case 3:
        v9 = 0xE700000000000000;
        v10 = 0x737265746C6966;
        break;
      case 4:
        v9 = 0xEA00000000007468;
        v10 = 0x67696C6873616C66;
        break;
      case 5:
        v10 = 0x6544656C706F6570;
        v9 = 0xEF6E6F6974636574;
        break;
      case 6:
        v10 = 0x636F4C7375636F66;
        v9 = 0xE90000000000006BLL;
        break;
      case 7:
        v10 = 0x79546172656D6163;
        v9 = 0xEA00000000006570;
        break;
      case 8:
        v10 = 0x4D65727574706163;
        v9 = 0xEB0000000065646FLL;
        break;
      case 9:
        v10 = 0x6F69746365746564;
        v9 = 0xED000065646F4D6ELL;
        break;
      case 0xA:
        v11 = 1919905636;
        goto LABEL_18;
      case 0xB:
        v10 = 0xD000000000000013;
        v9 = 0x8000000257EF74D0;
        break;
      case 0xC:
        v10 = 0x7061436567616D69;
        v9 = 0xEC0000006E6F6974;
        break;
      case 0xD:
        v9 = 0xEA00000000006B61;
        v10 = 0x657053746E696F70;
        break;
      case 0xE:
        v11 = 1954047348;
LABEL_18:
        v10 = v11 | 0x6574654400000000;
        v9 = 0xED00006E6F697463;
        break;
      case 0xF:
        v9 = 0xEA00000000007365;
        v10 = 0x6974697669746361;
        break;
      default:
        break;
    }

    v12 = 0xEA0000000000726FLL;
    v13 = 0x746361466D6F6F7ALL;
    switch(v3)
    {
      case 1:
        v12 = 0x8000000257EF7780;
        if (v10 == 0xD000000000000011)
        {
          goto LABEL_49;
        }

        goto LABEL_50;
      case 2:
        v12 = 0xEF74736172746E6FLL;
        if (v10 != 0x4379616C70736964)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 3:
        v12 = 0xE700000000000000;
        if (v10 != 0x737265746C6966)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 4:
        v12 = 0xEA00000000007468;
        if (v10 != 0x67696C6873616C66)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 5:
        v12 = 0xEF6E6F6974636574;
        if (v10 != 0x6544656C706F6570)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 6:
        v12 = 0xE90000000000006BLL;
        if (v10 != 0x636F4C7375636F66)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 7:
        v12 = 0xEA00000000006570;
        if (v10 != 0x79546172656D6163)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 8:
        v12 = 0xEB0000000065646FLL;
        if (v10 != 0x4D65727574706163)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 9:
        v14 = 0x6F69746365746564;
        v15 = 0x65646F4D6ELL;
        goto LABEL_31;
      case 10:
        v13 = 0x65746544726F6F64;
        v12 = 0xED00006E6F697463;
        goto LABEL_48;
      case 11:
        v12 = 0x8000000257EF74D0;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 12:
        v12 = 0xEC0000006E6F6974;
        if (v10 != 0x7061436567616D69)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 13:
        v12 = 0xEA00000000006B61;
        if (v10 != 0x657053746E696F70)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 14:
        v14 = 0x6574654474786574;
        v15 = 0x6E6F697463;
LABEL_31:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v10 != v14)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 15:
        v12 = 0xEA00000000007365;
        if (v10 != 0x6974697669746361)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      default:
LABEL_48:
        if (v10 != v13)
        {
          goto LABEL_50;
        }

LABEL_49:
        if (v9 != v12)
        {
LABEL_50:
          v16 = sub_257ED0640();

          if (v16)
          {
            goto LABEL_57;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_55;
          }

          continue;
        }

LABEL_57:
        result = 0;
        v3 = *(*(v4 + 48) + v7);
LABEL_58:
        *a1 = v3;
        return result;
    }
  }
}

uint64_t sub_257C4BA10(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_257ECF500();
  sub_257ED07B0();
  sub_257ECF5D0();
  v7 = sub_257ED0800();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_257ECF500();
      v13 = v12;
      if (v11 == sub_257ECF500() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_257ED0640();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_257C52814(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_257C4BBBC(_OWORD *a1, id *a2)
{
  v5 = sub_257ECCCF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v73 = &v63 - v17;
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v24 = &v63 - v23;
  v25 = *v2;
  sub_257ED07B0();
  v26 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
  v72 = *a2;
  result = [v72 identifier];
  if (result)
  {
    v28 = result;
    v64 = v2;
    v65 = a2;
    v66 = a1;
    sub_257ECCCD0();

    sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_257ECF400();
    v29 = *(v6 + 8);
    v29(v24, v5);
    v30 = sub_257ED0800();
    v31 = -1 << *(v25 + 32);
    v32 = v30 & ~v31;
    v68 = v25 + 56;
    if (((*(v25 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
LABEL_10:
      v48 = v64;
      v49 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = *v48;
      v51 = v65;
      sub_257C588B0(v65, v75);
      sub_257C529FC(v51, v49, isUniquelyReferenced_nonNull_native);
      *v48 = v76;
      v52 = *(v51 + 3);
      v53 = v66;
      v66[2] = *(v51 + 2);
      v53[3] = v52;
      v53[4] = *(v51 + 4);
      v54 = *(v51 + 1);
      result = 1;
      *v53 = *v51;
      v53[1] = v54;
      return result;
    }

    v69 = v25;
    v70 = v5;
    v67 = ~v31;
    while (1)
    {
      v33 = *(v25 + 48);
      v74 = v32;
      v34 = *(v33 + 80 * v32);
      result = [v34 v26[273]];
      if (!result)
      {
        break;
      }

      v35 = result;
      v36 = v73;
      sub_257ECCCD0();

      v37 = sub_257ECCCA0();
      v39 = v38;
      v40 = v70;
      v29(v36, v70);
      v41 = v26;
      result = [v72 v26[273]];
      if (!result)
      {
        __break(1u);
        break;
      }

      v42 = result;
      v43 = v71;
      sub_257ECCCD0();

      v44 = sub_257ECCCA0();
      v46 = v45;
      v29(v43, v40);
      if (v37 == v44 && v39 == v46)
      {

LABEL_12:
        sub_257C5890C(v65);
        v55 = *(v69 + 48) + 80 * v74;
        v56 = *v55;
        v57 = *(v55 + 16);
        v58 = *(v55 + 32);
        v59 = *(v55 + 48);
        v60 = *(v55 + 64);
        v61 = v66;
        *v66 = v56;
        v61[1] = v57;
        v61[2] = v58;
        v61[3] = v59;
        v61[4] = v60;
        v62 = v56;
        return 0;
      }

      v47 = sub_257ED0640();

      if (v47)
      {
        goto LABEL_12;
      }

      v32 = (v74 + 1) & v67;
      v25 = v69;
      v26 = v41;
      if (((*(v68 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_257C4BFF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v37 = a2;
  v15 = sub_257ECF3F0();
  v16 = v14 + 56;
  v35 = v14 + 56;
  v36 = v14;
  v17 = -1 << *(v14 + 32);
  v18 = v15 & ~v17;
  if ((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v32 = v2;
    v33 = a1;
    v34 = ~v17;
    v31 = v7;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    v23 = (v20 - 8);
    v30[1] = v20 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v24 = v19;
      v19(v13, *(v36 + 48) + v22 * v18, v6);
      sub_257C58BB4(&qword_27F8F57B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v25 = sub_257ECF450();
      v26 = *v23;
      (*v23)(v13, v6);
      if (v25)
      {
        break;
      }

      v18 = (v18 + 1) & v34;
      v19 = v24;
      if (((*(v35 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v26(v37, v6);
    v24(v33, *(v36 + 48) + v22 * v18, v6);
    return 0;
  }

  else
  {
    v19 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v19(v13, v37, v6);
    v38 = *v3;
    sub_257C52F58(v13, v18, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_257C4C2D0(_OWORD *a1, _OWORD *a2)
{
  v3 = a2;
  v74 = a1;
  v4 = a2[3];
  v96 = a2[2];
  v97 = v4;
  v98[0] = a2[4];
  *(v98 + 12) = *(a2 + 76);
  v5 = a2[1];
  v94 = *a2;
  v95 = v5;
  v6 = sub_257ECCCF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v80 = &v72 - v18;
  v73 = v2;
  v19 = *v2;
  v20 = v3[3];
  v91[2] = v3[2];
  v91[3] = v20;
  v92[0] = v3[4];
  *(v92 + 12) = *(v3 + 76);
  v21 = v3[1];
  v91[0] = *v3;
  v91[1] = v21;
  sub_257ED07B0();
  FurnitureDetectionResult.hash(into:)(v89);
  v22 = sub_257ED0800();
  v23 = -1 << *(v19 + 32);
  v24 = v22 & ~v23;
  v85 = v19 + 56;
  if (((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
LABEL_21:
    v57 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = *v57;
    sub_257C58DDC(v3, v91);
    sub_257C531FC(v3, v24, isUniquelyReferenced_nonNull_native);
    *v57 = *&v89[0];
    v59 = v3[3];
    v60 = v74;
    v74[2] = v3[2];
    v60[3] = v59;
    v60[4] = v3[4];
    *(v60 + 76) = *(v3 + 76);
    v61 = v3[1];
    result = 1;
    *v60 = *v3;
    v60[1] = v61;
    return result;
  }

  v84 = ~v23;
  v77 = (v7 + 8);
  v78 = v6;
  v75 = v19;
  v76 = v3;
  while (1)
  {
    v25 = *(v19 + 48);
    v83 = 96 * v24;
    v26 = (v25 + 96 * v24);
    v27 = v26[1];
    v89[0] = *v26;
    v89[1] = v27;
    v29 = v26[3];
    v28 = v26[4];
    v30 = v26[2];
    *(v90 + 12) = *(v26 + 76);
    v89[3] = v29;
    v90[0] = v28;
    v89[2] = v30;
    memmove(v91, v26, 0x5CuLL);
    v92[4] = v96;
    v92[5] = v97;
    v93[0] = v98[0];
    *(v93 + 12) = *(v98 + 12);
    v92[2] = v94;
    v92[3] = v95;
    v31 = *&v89[0];
    if ((HIDWORD(v89[0]) & 0x80000000) == 0)
    {
      break;
    }

    if ((*(v3 + 3) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    v52 = *(v3 + 2);
    v53 = *v3;
    v54 = *(v89 + 2);
    sub_257C58DDC(v89, v87);
    sub_257C58DDC(v3, v87);
    sub_257C58DDC(v89, v87);
    sub_257C93E84(v31, v53);
    v56 = v55;
    sub_257C58E38(v89);
    sub_257BE4084(v91, &qword_27F8F6670, &qword_257EDCE10);
    if ((v56 & 1) != 0 && v54 == v52)
    {
LABEL_22:
      sub_257C58E38(v3);
      v62 = (*(v19 + 48) + v83);
      v63 = v62[1];
      v87[0] = *v62;
      v87[1] = v63;
      v65 = v62[3];
      v64 = v62[4];
      v66 = v62[2];
      *(v88 + 12) = *(v62 + 76);
      v87[3] = v65;
      v88[0] = v64;
      v87[2] = v66;
      v67 = v62[1];
      v68 = v74;
      *v74 = *v62;
      v68[1] = v67;
      v69 = v62[2];
      v70 = v62[3];
      v71 = v62[4];
      *(v68 + 76) = *(v62 + 76);
      v68[3] = v70;
      v68[4] = v71;
      v68[2] = v69;
      sub_257C58DDC(v87, &v86);
      return 0;
    }

LABEL_5:
    v24 = (v24 + 1) & v84;
    if (((*(v85 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ((*(v3 + 1) & 0x8000000000000000) != 0)
  {
LABEL_4:
    sub_257C58DDC(v3, v87);
    sub_257C58DDC(v89, v87);
    sub_257BE4084(v91, &qword_27F8F6670, &qword_257EDCE10);
    goto LABEL_5;
  }

  v32 = *(&v90[1] + 2);
  v33 = *(v3 + 22);
  v81 = *(v3 + 10);
  v82 = *&v90[1];
  v34 = *v3;
  sub_257C58DDC(v89, v87);
  sub_257C58DDC(v3, v87);
  sub_257C58DDC(v89, v87);
  sub_257C58DDC(v3, v87);
  sub_257C58DDC(v89, v87);
  result = [v31 identifier];
  if (!result)
  {
    goto LABEL_24;
  }

  v36 = result;
  v37 = v80;
  sub_257ECCCD0();

  v38 = sub_257ECCCA0();
  v40 = v39;
  v41 = *v77;
  v42 = v37;
  v43 = v78;
  (*v77)(v42, v78);
  result = [v34 identifier];
  if (result)
  {
    v44 = result;
    v45 = v79;
    sub_257ECCCD0();

    v46 = sub_257ECCCA0();
    v48 = v47;
    v41(v45, v43);
    if (v38 == v46 && v40 == v48)
    {

      v19 = v75;
      v3 = v76;
    }

    else
    {
      v49 = sub_257ED0640();

      v19 = v75;
      v3 = v76;
      if ((v49 & 1) == 0)
      {
        sub_257BE4084(v91, &qword_27F8F6670, &qword_257EDCE10);
        sub_257C58E38(v89);
        sub_257C58E38(v3);
        sub_257C58E38(v89);
        goto LABEL_5;
      }
    }

    sub_257C943E4(v82, v81);
    v51 = v50;
    sub_257BE4084(v91, &qword_27F8F6670, &qword_257EDCE10);
    sub_257C58E38(v89);
    sub_257C58E38(v3);
    sub_257C58E38(v89);
    if ((v51 & 1) != 0 && v32 == v33)
    {
      goto LABEL_22;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_257C4C894(_OWORD *a1, _OWORD *a2)
{
  v5 = sub_257ECCCF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v80 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v82 = &v70 - v17;
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v24 = &v70 - v23;
  v25 = *v2;
  sub_257ED07B0();
  v81 = *a2;
  result = [v81 identifier];
  if (result)
  {
    v27 = result;
    v70 = v2;
    v72 = a1;
    v28 = *(a2 + 22);
    v71 = a2;
    v29 = *(a2 + 10);
    sub_257ECCCD0();

    sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_257ECF400();
    v32 = *(v6 + 8);
    v31 = v6 + 8;
    v30 = v32;
    v32(v24, v5);
    v73 = v29;
    sub_257C9C120(v86, v29);
    sub_257ED07E0();
    v33 = sub_257ED0800();
    v34 = -1 << *(v25 + 32);
    v35 = v33 & ~v34;
    v79 = v25 + 56;
    if ((*(v25 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
    {
      v75 = ~v34;
      v77 = v5;
      v76 = v31;
      v78 = v25;
      do
      {
        v36 = *(v25 + 48);
        v83 = v35;
        v74 = 96 * v35;
        v37 = v36 + 96 * v35;
        v38 = *(v37 + 80);
        v39 = *(v37 + 88);
        v40 = *v37;
        v84 = v38;

        v85 = v40;
        result = [v40 identifier];
        if (!result)
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v41 = result;
        v42 = v82;
        sub_257ECCCD0();

        v43 = sub_257ECCCA0();
        v45 = v44;
        v30(v42, v5);
        result = [v81 identifier];
        if (!result)
        {
          __break(1u);
          goto LABEL_17;
        }

        v46 = result;
        v47 = v80;
        sub_257ECCCD0();

        v48 = sub_257ECCCA0();
        v50 = v49;
        v30(v47, v5);
        if (v43 == v48 && v45 == v50)
        {

          v25 = v78;
        }

        else
        {
          v51 = sub_257ED0640();

          v25 = v78;
          if ((v51 & 1) == 0)
          {

            goto LABEL_5;
          }
        }

        sub_257C943E4(v84, v73);
        v53 = v52;

        if ((v53 & 1) != 0 && v39 == v28)
        {
          sub_257C58A10(v71);
          v54 = *(v25 + 48) + v74;
          v55 = *v54;
          v56 = *(v54 + 16);
          v57 = *(v54 + 32);
          v58 = *(v54 + 48);
          v59 = *(v54 + 64);
          v60 = *(v54 + 80);
          v61 = *(v54 + 88);
          v62 = v72;
          *v72 = v55;
          v62[1] = v56;
          v62[2] = v57;
          v62[3] = v58;
          v62[4] = v59;
          *(v62 + 10) = v60;
          *(v62 + 22) = v61;
          v63 = v55;

          return 0;
        }

LABEL_5:
        v35 = (v83 + 1) & v75;
        v5 = v77;
      }

      while (((*(v79 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0);
    }

    v64 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *v64;
    v66 = v71;
    sub_257C589B4(v71, v86);
    sub_257C537C0(v66, v35, isUniquelyReferenced_nonNull_native);
    *v64 = v87;
    v67 = v66[3];
    v68 = v72;
    v72[2] = v66[2];
    v68[3] = v67;
    v68[4] = v66[4];
    *(v68 + 76) = *(v66 + 76);
    v69 = v66[1];
    result = 1;
    *v68 = *v66;
    v68[1] = v69;
  }

  else
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_257C4CDB4(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v4 = type metadata accessor for Occupant(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v30 = &v30 - v17;
  v31 = v2;
  v18 = *v2;
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  v19 = sub_257ED0800();
  v20 = -1 << *(v18 + 32);
  v21 = v19 & ~v20;
  if ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = ~v20;
    v23 = *(v5 + 72);
    do
    {
      sub_257C58770(*(v18 + 48) + v23 * v21, v11, type metadata accessor for Occupant);
      if (sub_257ECCCC0())
      {
        v24 = sub_257ECCC40();
        sub_257C58710(v11, type metadata accessor for Occupant);
        if (v24)
        {
          sub_257C58710(a2, type metadata accessor for Occupant);
          sub_257C58770(*(v18 + 48) + v23 * v21, v32, type metadata accessor for Occupant);
          return 0;
        }
      }

      else
      {
        sub_257C58710(v11, type metadata accessor for Occupant);
      }

      v21 = (v21 + 1) & v22;
    }

    while (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  v26 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v30;
  sub_257C58770(a2, v30, type metadata accessor for Occupant);
  v33 = *v26;
  sub_257C53C54(v28, v21, isUniquelyReferenced_nonNull_native);
  v29 = v32;
  *v26 = v33;
  sub_257C587D8(a2, v29);
  return 1;
}

uint64_t sub_257C4D080(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_257ED07B0();
  sub_257ECF5D0();
  v8 = sub_257ED0800();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_257ED0640() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v17 = (*(v7 + 48) + 16 * v10);
    v18 = v17[1];
    *a1 = *v17;
    a1[1] = v18;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;

    sub_257C53F00(a2, a3, v10, isUniquelyReferenced_nonNull_native, v15);
    *v3 = v19;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_257C4D224(_BYTE *a1, char a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v9 = v5;
  v12 = *v9;
  sub_257ED07B0();
  v13 = a2 & 1;
  MEMORY[0x259C732E0](a2 & 1);
  v14 = sub_257ED0800();
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = *(v12 + 48);
      if (*(v18 + v16) == v13)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v13) = *(v18 + v16);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v9;
    sub_257C54080(v13, v16, isUniquelyReferenced_nonNull_native, a3, a4, a5, v20);
    *v9 = v22;
    result = 1;
  }

  *a1 = v13;
  return result;
}

uint64_t sub_257C4D368(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v9 = a2;
  v11 = *v5;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v9);
  v12 = sub_257ED0800();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != v9)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    sub_257C52DE8(v9, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5, v17);
    *v5 = v19;
    result = 1;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_257C4D488(unsigned int *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = MEMORY[0x259C732B0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != v3)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_257C541F8(v3, v8, isUniquelyReferenced_nonNull_native, v11);
    *v2 = v13;
    result = 1;
  }

  *a1 = v3;
  return result;
}

void sub_257C4D584()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65F0, &qword_257EDCD50);
  v2 = *v0;
  v3 = sub_257ED0290();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_257C4D6D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65E0, &qword_257EDCD48);
  v2 = *v0;
  v3 = sub_257ED0290();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 80 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 16);
        v21 = *(v18 + 32);
        v22 = *(v18 + 48);
        v23 = *(v18 + 64);
        v24 = *(v4 + 48) + v17;
        *v24 = *v18;
        *(v24 + 16) = v20;
        *(v24 + 32) = v21;
        *(v24 + 48) = v22;
        *(v24 + 64) = v23;
        v25 = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_257C4D86C()
{
  v1 = v0;
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C0, &qword_257EDCD30);
  v10 = *v0;
  v11 = sub_257ED0290();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v1;
    v13 = (v11 + 56);
    v14 = v10 + 56;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v14 + 8 * v15)
    {
      memmove(v13, (v10 + 56), 8 * v15);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    v27 = v3 + 32;
    v28 = v3 + 16;
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_14:
      v24 = *(v3 + 72) * (v21 | (v16 << 6));
      (*(v3 + 16))(v9, *(v10 + 48) + v24, v2);
      (*(v3 + 32))(*(v12 + 48) + v24, v9, v2);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v1 = v26;
        goto LABEL_18;
      }

      v23 = *(v14 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v12;
  }
}

void sub_257C4DAA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6678, &qword_257EDCE18);
  v2 = *v0;
  v3 = sub_257ED0290();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 96 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[4];
        *&v25[12] = *(v18 + 76);
        v24[3] = v20;
        *v25 = v21;
        v22 = v18[1];
        v24[0] = *v18;
        v24[1] = v22;
        v24[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x5CuLL);
        sub_257C58DDC(v24, &v23);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_257C4DC34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6608, &qword_257EDCD58);
  v2 = *v0;
  v3 = sub_257ED0290();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 96 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 16);
        v21 = *(v18 + 32);
        v22 = *(v18 + 48);
        v23 = *(v18 + 64);
        v24 = *(v18 + 80);
        v25 = *(v18 + 88);
        v26 = *(v4 + 48) + v17;
        *v26 = *v18;
        *(v26 + 16) = v20;
        *(v26 + 32) = v21;
        *(v26 + 48) = v22;
        *(v26 + 64) = v23;
        *(v26 + 80) = v24;
        *(v26 + 88) = v25;
        v27 = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_257C4DDBC()
{
  v1 = v0;
  v2 = type metadata accessor for Occupant(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4, v5, v6, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6580, &qword_257EDCD00);
  v10 = *v0;
  v11 = sub_257ED0290();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = (v11 + 56);
    v14 = v10 + 56;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v14 + 8 * v15)
    {
      memmove(v13, (v10 + 56), 8 * v15);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = *(v10 + 56);
    v19 = -1;
    if (v17 < 64)
    {
      v19 = ~(-1 << v17);
    }

    v20 = v19 & v18;
    v21 = (v17 + 63) >> 6;
    if ((v19 & v18) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_14:
        v25 = *(v3 + 72) * (v22 | (v16 << 6));
        sub_257C58770(*(v10 + 48) + v25, v9, type metadata accessor for Occupant);
        sub_257C587D8(v9, *(v12 + 48) + v25);
      }

      while (v20);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        goto LABEL_16;
      }

      v24 = *(v14 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v12;
  }
}

void sub_257C4DFB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6640, &unk_257EDAB50);
  v2 = *v0;
  v3 = sub_257ED0290();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_257C4E14C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_257ED0290();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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
}

void sub_257C4E290()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6548, &qword_257EDCCC0);
  v2 = *v0;
  v3 = sub_257ED0290();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_257C4E3D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F64E0, &qword_257EDCC88);
  v4 = sub_257ED02A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_257ED07B0();
      sub_257ECF5D0();

      v12 = sub_257ED0800();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_257C4E7EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65F0, &qword_257EDCD50);
  v4 = sub_257ED02A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_257ECF500();
      sub_257ED07B0();
      v18 = v17;
      sub_257ECF5D0();
      v19 = sub_257ED0800();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

void sub_257C4EA40(uint64_t a1)
{
  v2 = v1;
  v47 = sub_257ECCCF0();
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v4, v5, v6, v7);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65E0, &qword_257EDCD48);
  v10 = sub_257ED02A0();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v1;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v45 = (v3 + 8);
    v18 = v10 + 56;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v52 = (v16 - 1) & v16;
LABEL_15:
      v26 = v9;
      v27 = *(v9 + 48) + 80 * (v23 | (v12 << 6));
      v28 = *v27;
      v29 = *(v27 + 16);
      v50 = *(v27 + 32);
      v51 = v29;
      v30 = *(v27 + 48);
      v48 = *(v27 + 64);
      v49 = v30;
      sub_257ED07B0();
      v31 = v28;
      v32 = [v31 identifier];
      if (!v32)
      {
        goto LABEL_30;
      }

      v33 = v32;
      v34 = v46;
      sub_257ECCCD0();

      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v35 = v47;
      sub_257ECF400();
      (*v45)(v34, v35);
      v36 = sub_257ED0800();
      v37 = -1 << *(v11 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v18 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v18 + 8 * v39);
          if (v43 != -1)
          {
            v19 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_29;
      }

      v19 = __clz(__rbit64((-1 << v38) & ~*(v18 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = *(v11 + 48) + 80 * v19;
      *v20 = v31;
      v21 = v50;
      *(v20 + 16) = v51;
      *(v20 + 32) = v21;
      v22 = v48;
      *(v20 + 48) = v49;
      *(v20 + 64) = v22;
      ++*(v11 + 16);
      v9 = v26;
      v16 = v52;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v44;
        goto LABEL_27;
      }

      v25 = *(v13 + 8 * v12);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v52 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v11;
  }
}

void sub_257C4EDD4(uint64_t a1)
{
  v2 = v1;
  v38 = sub_257ECCCF0();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v4, v5, v6, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C0, &qword_257EDCD30);
  v11 = sub_257ED02A0();
  v12 = v10;
  if (*(v10 + 16))
  {
    v33 = v1;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v3 + 16;
    v37 = v3;
    v19 = v11 + 56;
    v34 = (v3 + 32);
    v35 = v12;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v9, *(v12 + 48) + v24 * (v21 | (v13 << 6)), v38);
      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v25 = sub_257ECF3F0();
      v26 = -1 << *(v11 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v9, v38);
      ++*(v11 + 16);
      v12 = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_26;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v11;
  }
}

void sub_257C4F0F0(uint64_t a1)
{
  v2 = v1;
  v54 = sub_257ECCCF0();
  v3 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v4, v5, v6, v7);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6678, &qword_257EDCE18);
  v10 = sub_257ED02A0();
  v11 = v10;
  if (*(v9 + 16))
  {
    v50 = v1;
    v12 = 0;
    v13 = 1 << *(v9 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v9 + 56);
    v16 = (v13 + 63) >> 6;
    v52 = (v3 + 8);
    v17 = v10 + 56;
    v51 = v10;
    while (v15)
    {
      v24 = __clz(__rbit64(v15));
      v60 = (v15 - 1) & v15;
LABEL_15:
      v27 = *(v9 + 48) + 96 * (v24 | (v12 << 6));
      v28 = *(v27 + 16);
      v62 = *v27;
      v29 = *(v27 + 32);
      v57 = *(v27 + 48);
      v58 = v29;
      v59 = v28;
      v30 = *(v27 + 64);
      v55 = *(v27 + 72);
      v56 = v30;
      v31 = *(v27 + 80);
      v61 = *(v27 + 88);
      sub_257ED07B0();
      if ((*(&v62 + 1) & 0x8000000000000000) != 0)
      {
        v40 = v62;
        MEMORY[0x259C732E0](1);

        v11 = v51;
        sub_257C9BE54(v63, v40);
        v39 = v61;
      }

      else
      {
        v32 = v62;
        MEMORY[0x259C732E0](0);
        v33 = v32;

        v34 = [v33 identifier];
        if (!v34)
        {
          goto LABEL_33;
        }

        v35 = v34;
        v36 = v31;
        v37 = v53;
        sub_257ECCCD0();

        sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v38 = v54;
        sub_257ECF400();
        (*v52)(v37, v38);
        v31 = v36;
        sub_257C9C120(v63, v36);
        v39 = v61;
      }

      sub_257ED07E0();
      v41 = sub_257ED0800();
      v42 = -1 << *(v11 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v17 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v19 = v62;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v17 + 8 * v44);
          if (v48 != -1)
          {
            v18 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_32;
      }

      v18 = __clz(__rbit64((-1 << v43) & ~*(v17 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v19 = v62;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v20 = *(v11 + 48) + 96 * v18;
      v21 = v59;
      *v20 = v19;
      *(v20 + 16) = v21;
      v22 = v57;
      *(v20 + 32) = v58;
      *(v20 + 48) = v22;
      v23 = v55;
      *(v20 + 64) = v56;
      *(v20 + 72) = v23;
      *(v20 + 80) = v31;
      *(v20 + 88) = v39;
      ++*(v11 + 16);
      v15 = v60;
    }

    v25 = v12;
    while (1)
    {
      v12 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v50;
        goto LABEL_30;
      }

      v26 = *(v9 + 56 + 8 * v12);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v60 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v11;
  }
}

void sub_257C4F54C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6608, &qword_257EDCD58);
  v4 = sub_257ED02A0();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = (*(v3 + 48) + 96 * (v10 | (v5 << 6)));
      v14 = v13[1];
      v19[0] = *v13;
      v19[1] = v14;
      v16 = v13[3];
      v15 = v13[4];
      v17 = v13[2];
      *&v20[12] = *(v13 + 76);
      v19[3] = v16;
      *v20 = v15;
      v19[2] = v17;
      sub_257C589B4(v19, &v18);
      sub_257C52014(v19, v4);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v4;
  }
}

void sub_257C4F6B8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Occupant(0);
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6580, &qword_257EDCD00);
  v11 = sub_257ED02A0();
  v12 = v11;
  if (*(v10 + 16))
  {
    v34 = v1;
    v35 = v10;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = v11 + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(v10 + 48);
      v25 = *(v36 + 72);
      sub_257C58770(v24 + v25 * (v21 | (v13 << 6)), v9, type metadata accessor for Occupant);
      sub_257ED07B0();
      sub_257ECCCF0();
      sub_257C58BB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_257ECF400();
      v26 = sub_257ED0800();
      v27 = -1 << *(v12 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_257C587D8(v9, *(v12 + 48) + v20 * v25);
      ++*(v12 + 16);
      v10 = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v34;
        goto LABEL_26;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v12;
  }
}

void sub_257C4F9C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6640, &unk_257EDAB50);
  v4 = sub_257ED02A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_257ED07B0();

      sub_257ECF5D0();
      v20 = sub_257ED0800();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

void sub_257C4FC00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_257ED02A0();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_257ED07B0();
      MEMORY[0x259C732E0](v18);
      v19 = sub_257ED0800();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
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

        v4 = v3;
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
}

void sub_257C4FE18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6548, &qword_257EDCCC0);
  v4 = sub_257ED02A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x259C732B0](*(v5 + 40), v16, 4);
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_257C5000C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F64E0, &qword_257EDCC88);
  v4 = sub_257ED02A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_257ED07B0();
      sub_257ECF5D0();

      v13 = sub_257ED0800();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_257C50458(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65F0, &qword_257EDCD50);
  v4 = sub_257ED02A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_257ECF500();
      sub_257ED07B0();
      sub_257ECF5D0();
      v18 = sub_257ED0800();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}