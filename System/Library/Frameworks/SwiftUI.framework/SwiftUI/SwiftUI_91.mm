void storeEnumTagSinglePayload for CoreSheetPresentationModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 80) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 80) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v7 > 0x7FFFFFFE)
  {
    v20 = *(v6 + 56);

    v20((((((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + v9 + 40) & ~v9);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v19 = 0;
    *v19 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v19 = a2;
  }
}

unint64_t lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>()
{
  result = lazy protocol witness table cache variable for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>;
  if (!lazy protocol witness table cache variable for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.InspectorKey>, &type metadata for SheetPreference.InspectorKey, &protocol witness table for SheetPreference.InspectorKey, type metadata accessor for NullSheetAnchor);
    result = swift_getWitnessTable(protocol conformance descriptor for NullSheetAnchor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>);
  }

  return result;
}

double destroy for UpdateViewDestinationRequest(uint64_t a1)
{
  if (*(a1 + 8) != 1)
  {
    swift_weakDestroy();
  }

  if (*(a1 + 160) >> 1 != 0xFFFFFFFFLL)
  {
    switch(*(a1 + 120))
    {
      case 0:
        goto LABEL_32;
      case 1:

        goto LABEL_32;
      case 2:

        __swift_destroy_boxed_opaque_existential_1((a1 + 40));
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_32;
      case 6:

        goto LABEL_32;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1((a1 + 24));

        goto LABEL_32;
      case 0xB:
        __swift_destroy_boxed_opaque_existential_1((a1 + 24));
        break;
      case 0xC:
      case 0xD:

        if (*(a1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 32));
        }

        if (*(a1 + 80) != 1)
        {
        }

        goto LABEL_32;
      case 0xE:

        if (*(a1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 32));
        }

        v3 = *(a1 + 80);
        goto LABEL_27;
      case 0x12:

        if (*(a1 + 64))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 40));
        }

        if (*(a1 + 88) != 1)
        {
        }

        goto LABEL_32;
      case 0x13:
        if (*(a1 + 48))
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 24));
        }

        v3 = *(a1 + 72);
LABEL_27:
        if (v3 == 1)
        {
          break;
        }

        goto LABEL_32;
      case 0x15:
        if (*(a1 + 24))
        {
        }

        if (*(a1 + 40))
        {
LABEL_32:
        }

        break;
      default:
        break;
    }
  }

  return result;
}

uint64_t initializeWithCopy for UpdateViewDestinationRequest(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    swift_weakCopyInit();
    v4 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v4;
  }

  if (*(a2 + 160) >> 1 == 0xFFFFFFFFLL)
  {
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    switch(*(a2 + 120))
    {
      case 0:
        v5 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v5;
        *(a1 + 120) = 0;
        goto LABEL_62;
      case 1:
        v21 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v21;
        v22 = *(a2 + 48);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v22;
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 120) = 1;

        goto LABEL_62;
      case 2:
        v14 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v14;
        v15 = *(a2 + 64);
        *(a1 + 64) = v15;
        v16 = v15;
        v17 = **(v15 - 8);

        v17(a1 + 40, a2 + 40, v16);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 120) = 2;
        break;
      case 3:
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 120) = 3;

        break;
      case 4:
        v30 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v30;
        *(a1 + 40) = *(a2 + 40);
        v13 = 4;
        goto LABEL_26;
      case 5:
        v18 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v18;
        *(a1 + 40) = *(a2 + 40);
        v13 = 5;
        goto LABEL_26;
      case 6:
        v23 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v23;
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 120) = 6;

        goto LABEL_62;
      case 0xA:
        v24 = *(a2 + 48);
        *(a1 + 48) = v24;
        (**(v24 - 8))(a1 + 24, a2 + 24);
        v25 = *(a2 + 72);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v25;
        *(a1 + 80) = *(a2 + 80);
        v13 = 10;
        goto LABEL_26;
      case 0xB:
        v33 = *(a2 + 48);
        *(a1 + 48) = v33;
        (**(v33 - 8))(a1 + 24, a2 + 24);
        *(a1 + 120) = 11;
        break;
      case 0xC:
        *(a1 + 24) = *(a2 + 24);
        v31 = *(a2 + 56);

        if (v31)
        {
          v32 = *(a2 + 64);
          *(a1 + 56) = v31;
          *(a1 + 64) = v32;
          (**(v31 - 8))(a1 + 32, a2 + 32, v31);
        }

        else
        {
          v47 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v47;
          *(a1 + 64) = *(a2 + 64);
        }

        v48 = *(a2 + 80);
        if (v48 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v48;
        }

        v49 = *(a2 + 96);
        v50 = *(a2 + 104);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v49;
        *(a1 + 104) = v50;
        v37 = 12;
        goto LABEL_61;
      case 0xD:
        *(a1 + 24) = *(a2 + 24);
        v9 = *(a2 + 56);

        if (v9)
        {
          v10 = *(a2 + 64);
          *(a1 + 56) = v9;
          *(a1 + 64) = v10;
          (**(v9 - 8))(a1 + 32, a2 + 32, v9);
        }

        else
        {
          v38 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v38;
          *(a1 + 64) = *(a2 + 64);
        }

        v39 = *(a2 + 80);
        if (v39 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v39;
        }

        v40 = *(a2 + 96);
        v41 = *(a2 + 104);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v40;
        *(a1 + 104) = v41;
        *(a1 + 112) = *(a2 + 112);
        v37 = 13;
        goto LABEL_61;
      case 0xE:
        *(a1 + 24) = *(a2 + 24);
        v19 = *(a2 + 56);

        if (v19)
        {
          v20 = *(a2 + 64);
          *(a1 + 56) = v19;
          *(a1 + 64) = v20;
          (**(v19 - 8))(a1 + 32, a2 + 32, v19);
        }

        else
        {
          v42 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v42;
          *(a1 + 64) = *(a2 + 64);
        }

        v43 = *(a2 + 80);
        if (v43 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v43;
        }

        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 120) = 14;
        break;
      case 0x11:
        v11 = *(a2 + 48);
        *(a1 + 48) = v11;
        (**(v11 - 8))(a1 + 24, a2 + 24);
        *(a1 + 64) = *(a2 + 64);
        v12 = *(a2 + 80);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = v12;
        *(a1 + 88) = *(a2 + 88);
        v13 = 17;
LABEL_26:
        *(a1 + 120) = v13;

        goto LABEL_62;
      case 0x12:
        v6 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v6;
        v7 = *(a2 + 64);

        if (v7)
        {
          v8 = *(a2 + 72);
          *(a1 + 64) = v7;
          *(a1 + 72) = v8;
          (**(v7 - 8))(a1 + 40, a2 + 40, v7);
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
        }

        v34 = *(a2 + 88);
        if (v34 == 1)
        {
          *(a1 + 80) = *(a2 + 80);
        }

        else
        {
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 88) = v34;
        }

        v35 = *(a2 + 104);
        v36 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = v35;
        *(a1 + 112) = v36;
        v37 = 18;
LABEL_61:
        *(a1 + 120) = v37;
LABEL_62:

        break;
      case 0x13:
        v26 = *(a2 + 48);
        if (v26)
        {
          v27 = *(a2 + 56);
          *(a1 + 48) = v26;
          *(a1 + 56) = v27;
          (**(v26 - 8))(a1 + 24, a2 + 24);
        }

        else
        {
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
        }

        v44 = *(a2 + 72);
        if (v44 == 1)
        {
          *(a1 + 64) = *(a2 + 64);
        }

        else
        {
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 72) = v44;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 120) = 19;
        break;
      case 0x15:
        v28 = *(a2 + 24);
        if (v28)
        {
          v29 = *(a2 + 32);
          *(a1 + 24) = v28;
          *(a1 + 32) = v29;
        }

        else
        {
          *(a1 + 24) = *(a2 + 24);
        }

        v45 = *(a2 + 40);
        if (v45)
        {
          v46 = *(a2 + 48);
          *(a1 + 40) = v45;
          *(a1 + 48) = v46;
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
        }

        *(a1 + 120) = 21;
        break;
      default:
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        break;
    }

    v51 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v51;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
  }

  return a1;
}

uint64_t assignWithCopy for UpdateViewDestinationRequest(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
    }
  }

  else if (v4 == 1)
  {
    outlined destroy of NavigationAuthority(a1);
    v6 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v6;
  }

  else
  {
    swift_weakCopyAssign();
    *(a1 + 8) = *(a2 + 1);

    *(a1 + 16) = *(a2 + 2);
  }

  v7 = a2[10] & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 160) >> 1 == 0xFFFFFFFFLL)
  {
    if (v7 == 0x1FFFFFFFELL)
    {
      v8 = *(a2 + 24);
      v9 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v9;
      *(a1 + 24) = v8;
      v10 = *(a2 + 72);
      v11 = *(a2 + 88);
      v12 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v12;
      *(a1 + 88) = v11;
      *(a1 + 72) = v10;
      v13 = *(a2 + 136);
      v14 = *(a2 + 152);
      v15 = *(a2 + 168);
      *(a1 + 184) = *(a2 + 23);
      *(a1 + 168) = v15;
      *(a1 + 152) = v14;
      *(a1 + 136) = v13;
    }

    else
    {
      switch(*(a2 + 120))
      {
        case 0:
          v24 = *(a2 + 4);
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = v24;
          *(a1 + 120) = 0;
          goto LABEL_95;
        case 1:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 56) = *(a2 + 7);
          *(a1 + 120) = 1;

          goto LABEL_95;
        case 2:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          v30 = *(a2 + 8);
          *(a1 + 64) = v30;
          *(a1 + 72) = *(a2 + 9);
          v31 = **(v30 - 8);

          v31(a1 + 40, a2 + 40, v30);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 120) = 2;
          break;
        case 3:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 120) = 3;

          break;
        case 4:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 41) = *(a2 + 41);
          v29 = 4;
          goto LABEL_36;
        case 5:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 41) = *(a2 + 41);
          v29 = 5;
          goto LABEL_36;
        case 6:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 120) = 6;

          goto LABEL_95;
        case 0xA:
          v33 = *(a2 + 6);
          *(a1 + 48) = v33;
          *(a1 + 56) = *(a2 + 7);
          (**(v33 - 8))(a1 + 24, a2 + 24);
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 81) = *(a2 + 81);
          v29 = 10;
          goto LABEL_36;
        case 0xB:
          v38 = *(a2 + 6);
          *(a1 + 48) = v38;
          *(a1 + 56) = *(a2 + 7);
          (**(v38 - 8))(a1 + 24, a2 + 24);
          *(a1 + 120) = 11;
          break;
        case 0xC:
          *(a1 + 24) = *(a2 + 3);
          v37 = *(a2 + 7);

          if (v37)
          {
            *(a1 + 56) = v37;
            *(a1 + 64) = *(a2 + 8);
            (**(v37 - 8))(a1 + 32, a2 + 2, v37);
          }

          else
          {
            v75 = a2[2];
            v76 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v75;
            *(a1 + 48) = v76;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          v77 = *(a2 + 13);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = v77;
          v65 = 12;
          goto LABEL_94;
        case 0xD:
          *(a1 + 24) = *(a2 + 3);
          v27 = *(a2 + 7);

          if (v27)
          {
            *(a1 + 56) = v27;
            *(a1 + 64) = *(a2 + 8);
            (**(v27 - 8))(a1 + 32, a2 + 2, v27);
          }

          else
          {
            v66 = a2[2];
            v67 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v66;
            *(a1 + 48) = v67;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          v68 = *(a2 + 13);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = v68;
          *(a1 + 112) = *(a2 + 112);
          v65 = 13;
          goto LABEL_94;
        case 0xE:
          *(a1 + 24) = *(a2 + 3);
          v32 = *(a2 + 7);

          if (v32)
          {
            *(a1 + 56) = v32;
            *(a1 + 64) = *(a2 + 8);
            (**(v32 - 8))(a1 + 32, a2 + 2, v32);
          }

          else
          {
            v69 = a2[2];
            v70 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v69;
            *(a1 + 48) = v70;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 120) = 14;
          break;
        case 0x11:
          v28 = *(a2 + 6);
          *(a1 + 48) = v28;
          *(a1 + 56) = *(a2 + 7);
          (**(v28 - 8))(a1 + 24, a2 + 24);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 89) = *(a2 + 89);
          v29 = 17;
LABEL_36:
          *(a1 + 120) = v29;

          goto LABEL_95;
        case 0x12:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          v26 = *(a2 + 8);

          if (v26)
          {
            *(a1 + 64) = v26;
            *(a1 + 72) = *(a2 + 9);
            (**(v26 - 8))(a1 + 40, a2 + 40, v26);
          }

          else
          {
            v62 = *(a2 + 40);
            v63 = *(a2 + 56);
            *(a1 + 72) = *(a2 + 9);
            *(a1 + 56) = v63;
            *(a1 + 40) = v62;
          }

          if (*(a2 + 11) == 1)
          {
            *(a1 + 80) = a2[5];
          }

          else
          {
            *(a1 + 80) = *(a2 + 20);
            *(a1 + 84) = *(a2 + 21);
            *(a1 + 88) = *(a2 + 11);
          }

          *(a1 + 96) = *(a2 + 12);
          v64 = *(a2 + 14);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = v64;
          v65 = 18;
LABEL_94:
          *(a1 + 120) = v65;
LABEL_95:

          break;
        case 0x13:
          v34 = *(a2 + 6);
          if (v34)
          {
            *(a1 + 48) = v34;
            *(a1 + 56) = *(a2 + 7);
            (**(v34 - 8))(a1 + 24, a2 + 24);
          }

          else
          {
            v71 = *(a2 + 24);
            v72 = *(a2 + 40);
            *(a1 + 56) = *(a2 + 7);
            *(a1 + 40) = v72;
            *(a1 + 24) = v71;
          }

          if (*(a2 + 9) == 1)
          {
            *(a1 + 64) = a2[4];
          }

          else
          {
            *(a1 + 64) = *(a2 + 16);
            *(a1 + 68) = *(a2 + 17);
            *(a1 + 72) = *(a2 + 9);
          }

          *(a1 + 80) = *(a2 + 10);
          *(a1 + 120) = 19;
          break;
        case 0x15:
          v35 = *(a2 + 3);
          if (v35)
          {
            v36 = *(a2 + 4);
            *(a1 + 24) = v35;
            *(a1 + 32) = v36;
          }

          else
          {
            *(a1 + 24) = *(a2 + 24);
          }

          v73 = *(a2 + 5);
          if (v73)
          {
            v74 = *(a2 + 6);
            *(a1 + 40) = v73;
            *(a1 + 48) = v74;
          }

          else
          {
            *(a1 + 40) = *(a2 + 40);
          }

          *(a1 + 120) = 21;
          break;
        default:
          v39 = *(a2 + 24);
          v40 = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 40) = v40;
          *(a1 + 24) = v39;
          v41 = *(a2 + 72);
          v42 = *(a2 + 88);
          v43 = *(a2 + 104);
          *(a1 + 120) = *(a2 + 120);
          *(a1 + 104) = v43;
          *(a1 + 88) = v42;
          *(a1 + 72) = v41;
          break;
      }

      v78 = a2[8];
      v79 = a2[10];
      *(a1 + 144) = a2[9];
      *(a1 + 160) = v79;
      *(a1 + 128) = v78;
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 23);
    }
  }

  else if (v7 == 0x1FFFFFFFELL)
  {
    outlined destroy of NavigationRequest(a1 + 24);
    v16 = *(a2 + 56);
    v17 = *(a2 + 40);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = v17;
    *(a1 + 56) = v16;
    v18 = *(a2 + 88);
    v19 = *(a2 + 104);
    v20 = *(a2 + 120);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 120) = v20;
    *(a1 + 104) = v19;
    *(a1 + 88) = v18;
    v21 = *(a2 + 152);
    v22 = *(a2 + 168);
    v23 = *(a2 + 23);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 184) = v23;
    *(a1 + 168) = v22;
    *(a1 + 152) = v21;
  }

  else
  {
    if (a1 != a2)
    {
      outlined destroy of NavigationRequest.Action(a1 + 24);
      switch(*(a2 + 120))
      {
        case 0:
          v25 = *(a2 + 4);
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = v25;
          *(a1 + 120) = 0;
          goto LABEL_128;
        case 1:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 56) = *(a2 + 7);
          *(a1 + 120) = 1;

          goto LABEL_128;
        case 2:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          v48 = *(a2 + 8);
          *(a1 + 64) = v48;
          *(a1 + 72) = *(a2 + 9);
          v49 = **(v48 - 8);

          v49(a1 + 40, a2 + 40, v48);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 11);
          *(a1 + 120) = 2;
          break;
        case 3:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 120) = 3;

          break;
        case 4:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 41) = *(a2 + 41);
          v47 = 4;
          goto LABEL_59;
        case 5:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 41) = *(a2 + 41);
          v47 = 5;
          goto LABEL_59;
        case 6:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 120) = 6;

          goto LABEL_128;
        case 0xA:
          v51 = *(a2 + 6);
          *(a1 + 48) = v51;
          *(a1 + 56) = *(a2 + 7);
          (**(v51 - 8))(a1 + 24, a2 + 24);
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 81) = *(a2 + 81);
          v47 = 10;
          goto LABEL_59;
        case 0xB:
          v56 = *(a2 + 6);
          *(a1 + 48) = v56;
          *(a1 + 56) = *(a2 + 7);
          (**(v56 - 8))(a1 + 24, a2 + 24);
          *(a1 + 120) = 11;
          break;
        case 0xC:
          *(a1 + 24) = *(a2 + 3);
          v55 = *(a2 + 7);

          if (v55)
          {
            *(a1 + 56) = v55;
            *(a1 + 64) = *(a2 + 8);
            (**(v55 - 8))(a1 + 32, a2 + 2, v55);
          }

          else
          {
            v93 = a2[2];
            v94 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v93;
            *(a1 + 48) = v94;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          v95 = *(a2 + 13);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = v95;
          v83 = 12;
          goto LABEL_127;
        case 0xD:
          *(a1 + 24) = *(a2 + 3);
          v45 = *(a2 + 7);

          if (v45)
          {
            *(a1 + 56) = v45;
            *(a1 + 64) = *(a2 + 8);
            (**(v45 - 8))(a1 + 32, a2 + 2, v45);
          }

          else
          {
            v84 = a2[2];
            v85 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v84;
            *(a1 + 48) = v85;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          v86 = *(a2 + 13);
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = v86;
          *(a1 + 112) = *(a2 + 112);
          v83 = 13;
          goto LABEL_127;
        case 0xE:
          *(a1 + 24) = *(a2 + 3);
          v50 = *(a2 + 7);

          if (v50)
          {
            *(a1 + 56) = v50;
            *(a1 + 64) = *(a2 + 8);
            (**(v50 - 8))(a1 + 32, a2 + 2, v50);
          }

          else
          {
            v87 = a2[2];
            v88 = a2[3];
            *(a1 + 64) = *(a2 + 8);
            *(a1 + 32) = v87;
            *(a1 + 48) = v88;
          }

          if (*(a2 + 10) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 18);
            *(a1 + 76) = *(a2 + 19);
            *(a1 + 80) = *(a2 + 10);
          }

          *(a1 + 88) = *(a2 + 11);
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 120) = 14;
          break;
        case 0x11:
          v46 = *(a2 + 6);
          *(a1 + 48) = v46;
          *(a1 + 56) = *(a2 + 7);
          (**(v46 - 8))(a1 + 24, a2 + 24);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 89) = *(a2 + 89);
          v47 = 17;
LABEL_59:
          *(a1 + 120) = v47;

          goto LABEL_128;
        case 0x12:
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
          v44 = *(a2 + 8);

          if (v44)
          {
            *(a1 + 64) = v44;
            *(a1 + 72) = *(a2 + 9);
            (**(v44 - 8))(a1 + 40, a2 + 40, v44);
          }

          else
          {
            v80 = *(a2 + 40);
            v81 = *(a2 + 56);
            *(a1 + 72) = *(a2 + 9);
            *(a1 + 56) = v81;
            *(a1 + 40) = v80;
          }

          if (*(a2 + 11) == 1)
          {
            *(a1 + 80) = a2[5];
          }

          else
          {
            *(a1 + 80) = *(a2 + 20);
            *(a1 + 84) = *(a2 + 21);
            *(a1 + 88) = *(a2 + 11);
          }

          *(a1 + 96) = *(a2 + 12);
          v82 = *(a2 + 14);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = v82;
          v83 = 18;
LABEL_127:
          *(a1 + 120) = v83;
LABEL_128:

          break;
        case 0x13:
          v52 = *(a2 + 6);
          if (v52)
          {
            *(a1 + 48) = v52;
            *(a1 + 56) = *(a2 + 7);
            (**(v52 - 8))(a1 + 24, a2 + 24);
          }

          else
          {
            v89 = *(a2 + 24);
            v90 = *(a2 + 40);
            *(a1 + 56) = *(a2 + 7);
            *(a1 + 40) = v90;
            *(a1 + 24) = v89;
          }

          if (*(a2 + 9) == 1)
          {
            *(a1 + 64) = a2[4];
          }

          else
          {
            *(a1 + 64) = *(a2 + 16);
            *(a1 + 68) = *(a2 + 17);
            *(a1 + 72) = *(a2 + 9);
          }

          *(a1 + 80) = *(a2 + 10);
          *(a1 + 120) = 19;
          break;
        case 0x15:
          v53 = *(a2 + 3);
          if (v53)
          {
            v54 = *(a2 + 4);
            *(a1 + 24) = v53;
            *(a1 + 32) = v54;
          }

          else
          {
            *(a1 + 24) = *(a2 + 24);
          }

          v91 = *(a2 + 5);
          if (v91)
          {
            v92 = *(a2 + 6);
            *(a1 + 40) = v91;
            *(a1 + 48) = v92;
          }

          else
          {
            *(a1 + 40) = *(a2 + 40);
          }

          *(a1 + 120) = 21;
          break;
        default:
          v57 = *(a2 + 24);
          v58 = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 40) = v58;
          *(a1 + 24) = v57;
          v59 = *(a2 + 72);
          v60 = *(a2 + 88);
          v61 = *(a2 + 104);
          *(a1 + 120) = *(a2 + 120);
          *(a1 + 104) = v61;
          *(a1 + 88) = v60;
          *(a1 + 72) = v59;
          break;
      }
    }

    v96 = a2[8];
    v97 = a2[10];
    *(a1 + 144) = a2[9];
    *(a1 + 160) = v97;
    *(a1 + 128) = v96;
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 23);
  }

  return a1;
}

__n128 initializeWithTake for UpdateViewDestinationRequest(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  if (*(a2 + 8) == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    a1 = swift_weakTakeInit();
    *(a1 + 8) = *v3;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t assignWithTake for UpdateViewDestinationRequest(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v5 != 1)
    {
      swift_weakTakeInit();
      *v4 = *v6;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v5 == 1)
  {
    outlined destroy of NavigationAuthority(a1);
LABEL_6:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  swift_weakTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

LABEL_8:
  if (*(a1 + 160) >> 1 == 0xFFFFFFFFLL)
  {
LABEL_11:
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    return a1;
  }

  if (*(a2 + 160) >> 1 == 0xFFFFFFFFLL)
  {
    outlined destroy of NavigationRequest(a1 + 24);
    goto LABEL_11;
  }

  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 24);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v7 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v7;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);

  return a1;
}

uint64_t storeEnumTagSinglePayload for UpdateViewDestinationRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 160) = 2 * ~a2;
      *(result + 168) = 0;
    }
  }

  return result;
}

Swift::Void __swiftcall UpdateViewDestinationRequest.enqueue()()
{
  _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v0, v5, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (*(&v5[0] + 1) == 1)
  {
    outlined destroy of NavigationAuthority?(v5, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  else
  {
    outlined init with take of NavigationAuthority(v5, v7);
    _s7SwiftUI19NavigationAuthorityVSgWOcTm_0(v0 + 24, v1, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
    if (*(&v2 + 1) >> 1 == 0xFFFFFFFFLL)
    {
      outlined destroy of NavigationAuthority(v7);
      outlined destroy of NavigationAuthority?(v1, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
    }

    else
    {
      v5[8] = v2;
      v5[9] = v3;
      v6 = v4;
      v5[4] = v1[4];
      v5[5] = v1[5];
      v5[6] = v1[6];
      v5[7] = v1[7];
      v5[0] = v1[0];
      v5[1] = v1[1];
      v5[2] = v1[2];
      v5[3] = v1[3];
      NavigationAuthority.enqueueRequest(_:)(v5);
      outlined destroy of NavigationRequest(v5);
      outlined destroy of NavigationAuthority(v7);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UpdateViewDestinationRequestProcessor<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UpdateViewDestinationRequestProcessor<A, B>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t UpdateViewDestinationViewModifier.RequestWriter.structuralSeed.getter()
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v1 = *WeakValue;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((WeakValue == 0) << 32);
}

uint64_t UpdateViewDestinationRequest.init<A>(presentDestination:key:depth:linkIdentifier:shouldTargetSourceColumn:isPresented:navigationAuthority:transaction:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v26[0] = xmmword_18CD633F0;
  memset(&v26[1], 0, 144);
  v27 = 0x1FFFFFFFELL;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (v17 >> 1 == 0xFFFFFFFF)
  {

    memset(v20, 0, sizeof(v20));
    v21 = 0;
    v22 = 0x1FFFFFFFELL;
    v24 = 0;
    v25 = 0;
    v23 = 0;
  }

  else
  {
    v19[0] = v15;
    v19[1] = v16;
    v19[2] = v17;
    closure #1 in UpdateViewDestinationRequest.init<A>(presentDestination:key:depth:linkIdentifier:shouldTargetSourceColumn:isPresented:navigationAuthority:transaction:)(v19, a1, a3, a4, a5, a6, a7 & 1, v20, a11, a12);
  }

  outlined assign with take of NavigationRequest?(v20, &v26[1] + 8, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
  outlined assign with take of NavigationRequest?(a9, v26, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  outlined init with copy of UpdateViewDestinationRequest(v26, a8);
  outlined destroy of NavigationLinkSelectionIdentifier(a4);
  (*(*(a11 - 8) + 8))(a1, a11);
  return outlined destroy of UpdateViewDestinationRequest(v26);
}

uint64_t UpdateViewDestinationRequest.init<A>(updateDestination:key:identifier:shouldTargetSourceColumn:navigationAuthority:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v23[0] = xmmword_18CD633F0;
  memset(&v23[1], 0, 144);
  v24 = 0x1FFFFFFFELL;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (v15 >> 1 == 0xFFFFFFFF)
  {
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v19 = 0x1FFFFFFFELL;
    v21 = 0;
    v22 = 0;
    v20 = 0;
  }

  else
  {
    v28[0] = v13;
    v28[1] = v14;
    v28[2] = v15;
    static NavigationRequest.updateView<A>(_:from:identifier:shouldTargetSourceColumn:)(a1, v28, a3, a4 & 1, a6, v17);
  }

  outlined assign with take of NavigationRequest?(v17, &v23[1] + 8, &lazy cache variable for type metadata for NavigationRequest?, &type metadata for NavigationRequest);
  outlined assign with take of NavigationRequest?(a5, v23, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  outlined init with copy of UpdateViewDestinationRequest(v23, a8);
  outlined destroy of NavigationLinkSelectionIdentifier(a3);
  (*(*(a6 - 8) + 8))(a1, a6);
  return outlined destroy of UpdateViewDestinationRequest(v23);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UpdateViewDestinationViewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UpdateViewDestinationViewModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

double closure #1 in UpdateViewDestinationRequest.init<A>(presentDestination:key:depth:linkIdentifier:shouldTargetSourceColumn:isPresented:navigationAuthority:transaction:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v16 = a1[1];
  v21[0] = *a1;
  v21[1] = v16;
  v21[2] = a1[2];
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  *(v17 + 32) = a8;

  static NavigationRequest.programmaticallyPresentView<A>(_:from:transaction:depth:identifier:dismiss:)(a2, v21, a4, a5, partial apply for closure #1 in View.actionSheet(isPresented:content:), v17, a9, x8_0);

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for UpdateViewDestinationRequestProcessor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = *(v9 + 64) + 7;
  v13 = v10 | *(v7 + 80) & 0xF8;
  if (v13 > 7 || ((*(v7 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v12 + ((v8 + v10) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = ~v10;
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    v18 = (a2 + v11) & v17;
    (*(v9 + 16))((a1 + v11) & v17, v18, v5);
    *((v12 + ((a1 + v11) & v17)) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v18) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for UpdateViewDestinationRequestProcessor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 16);
  v7 = *(*(v6 - 8) + 8);
  v8 = *(*(v6 - 8) + 80);
  v9 = *(v5 + 64) + a1;
  if (!*(v5 + 84))
  {
    ++v9;
  }

  return v7((v9 + v8) & ~v8);
}

void *initializeWithCopy for UpdateViewDestinationRequestProcessor(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 16))(v18, v19);
  *((*(v15 + 48) + 7 + v18) & 0xFFFFFFFFFFFFFFF8) = *((*(v15 + 48) + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithCopy for UpdateViewDestinationRequestProcessor(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 24;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (a1 + v18) & ~v17;
  v20 = (a2 + v18) & ~v17;
  (*(v15 + 24))(v19, v20);
  *((*(v16 + 40) + 7 + v19) & 0xFFFFFFFFFFFFFFF8) = *((*(v16 + 40) + 7 + v20) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *initializeWithTake for UpdateViewDestinationRequestProcessor(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 32))(v18, v19);
  *((*(v15 + 32) + 7 + v18) & 0xFFFFFFFFFFFFFFF8) = *((*(v15 + 32) + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for UpdateViewDestinationRequestProcessor(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 40;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (a1 + v18) & ~v17;
  v20 = (a2 + v18) & ~v17;
  (*(v15 + 40))(v19, v20);
  *((*(v16 + 24) + 7 + v19) & 0xFFFFFFFFFFFFFFF8) = *((*(v16 + 24) + 7 + v20) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateViewDestinationRequestProcessor(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  if (v6)
  {
    v14 = *(*(*(a3 + 24) - 8) + 64);
  }

  else
  {
    v14 = *(*(*(a3 + 24) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + v13;
  if (v12 < a2)
  {
    v16 = ((*(*(v8 - 8) + 64) + (v15 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = a2 - v12;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    v21 = v19 >= 2 ? v20 : 0;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_26:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v11)
  {
    v28 = (*(v5 + 48))(a1);
    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v25 = *(v10 + 48);
    v26 = (a1 + v15) & ~v13;

    return v25(v26, v11, v8);
  }
}

void storeEnumTagSinglePayload for UpdateViewDestinationRequestProcessor(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a4 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v10 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (!v7)
  {
    ++v11;
  }

  v15 = ((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    v16 = a3 - v14;
    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v5 = v18;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a2 - v14;
    }

    else
    {
      v19 = 1;
    }

    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v20 = ~v14 + a2;
      v21 = a1;
      bzero(a1, ((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      a1 = v21;
      *v21 = v20;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v15) = v19;
      }

      else
      {
        *(a1 + v15) = v19;
      }
    }

    else if (v5)
    {
      *(a1 + v15) = v19;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v15) = 0;
  }

  else if (v5)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v8 >= v10)
  {
    if (v8 >= a2)
    {
      v28 = *(v6 + 56);

      v28();
    }

    else
    {
      if (v11 <= 3)
      {
        v24 = ~(-1 << (8 * v11));
      }

      else
      {
        v24 = -1;
      }

      if (v11)
      {
        v25 = v24 & (~v8 + a2);
        if (v11 <= 3)
        {
          v26 = v11;
        }

        else
        {
          v26 = 4;
        }

        v27 = a1;
        bzero(a1, v11);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v27 = v25;
            *(v27 + 2) = BYTE2(v25);
          }

          else
          {
            *v27 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v27 = v25;
        }

        else
        {
          *v27 = v25;
        }
      }
    }
  }

  else
  {
    v22 = *(v9 + 56);
    v23 = (a1 + v11 + v12) & ~v12;

    v22(v23);
  }
}

uint64_t getEnumTagSinglePayload for UpdateViewDestinationRequestProcessor.PreferenceDebouncer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 60))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 44);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateViewDestinationRequestProcessor.PreferenceDebouncer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 60) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 60) = 0;
    }

    if (a2)
    {
      *(result + 44) = a2 + 1;
    }
  }

  return result;
}

uint64_t *assignWithCopy for UpdateViewDestinationViewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 17) & ~v8;
  v10 = (a2 + v8 + 17) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = v13[2];
  v12[1] = v13[1];
  v12[2] = v15;
  *v12 = v14;
  v16 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v13 + 55) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = (v12 + 71) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v13 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v12 + 87) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v13 + 87) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v21 + 8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  v24 = v23 - 1;
  v25 = *(v22 + 8);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  v26 = v25 - 1;
  if ((v24 & 0x80000000) == 0)
  {
    if (v26 < 0)
    {
      swift_weakCopyInit();
      *(v21 + 8) = *(v22 + 8);
      *(v21 + 16) = *(v22 + 16);

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v26 & 0x80000000) == 0)
  {
    swift_weakDestroy();

LABEL_10:
    v27 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v27;
    goto LABEL_11;
  }

  swift_weakCopyAssign();
  *(v21 + 8) = *(v22 + 8);

  *(v21 + 16) = *(v22 + 16);

LABEL_11:
  *(v21 + 24) = *(v22 + 24);
  v28 = ((v12 + 119) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v13 + 119) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v30) = -1;
  if (*v28 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  else
  {
    v31 = *v28;
  }

  v32 = v31 - 1;
  v33 = *v29;
  if (*v29 < 0xFFFFFFFF)
  {
    v30 = *v29;
  }

  v34 = v30 - 1;
  if (v32 < 0)
  {
    if (v34 < 0)
    {
      *v28 = v33;
    }

    else
    {

      *v28 = *v29;
    }
  }

  else
  {
    *v28 = v33;
    if (v34 < 0)
    {
    }
  }

  return a1;
}

uint64_t *assignWithTake for UpdateViewDestinationViewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 17) & ~v8;
  v10 = (a2 + v8 + 17) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = v13[2];
  v12[1] = v13[1];
  v12[2] = v15;
  *v12 = v14;
  v16 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v13 + 55) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = (v12 + 71) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v13 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v12 + 87) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v13 + 87) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v21 + 8);
  if (*(v21 + 8) >= 0xFFFFFFFFuLL)
  {
    v23 = -1;
  }

  v24 = v23 - 1;
  v25 = *(v22 + 8);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  v26 = v25 - 1;
  if ((v24 & 0x80000000) == 0)
  {
    if (v26 < 0)
    {
      swift_weakTakeInit();
      *(v21 + 8) = *(v22 + 8);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v26 & 0x80000000) == 0)
  {
    swift_weakDestroy();

LABEL_10:
    v27 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v27;
    goto LABEL_11;
  }

  swift_weakTakeAssign();
  *(v21 + 8) = *(v22 + 8);

  *(v21 + 16) = *(v22 + 16);

LABEL_11:
  *(v21 + 24) = *(v22 + 24);
  v28 = ((v12 + 119) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v13 + 119) & 0xFFFFFFFFFFFFFFF8);
  if (*v28 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  else
  {
    v30 = *v28;
  }

  v31 = *v29;
  if (v30 - 1 < 0)
  {
    LODWORD(v32) = -1;
    if (v31 < 0xFFFFFFFF)
    {
      v32 = *v29;
    }

    if (v32 - 1 < 0)
    {
      *v28 = v31;

      return a1;
    }

    v31 = *v29;
  }

  *v28 = v31;
  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateViewDestinationViewModifier(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
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

_BYTE *storeEnumTagSinglePayload for UpdateViewDestinationViewModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = &result[v8 + 17] & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[16] = 0;
        *result = a2 & 0x7FFFFFFF;
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t assignWithCopy for UpdateViewDestinationViewModifier.RequestWriter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = v4;
  if (*(a1 + 128) == 255)
  {
    switch(*(a2 + 128))
    {
      case 0:
LABEL_7:
        v10 = *(a2 + 40);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = v10;
        *(a1 + 128) = 0;

        return a1;
      case 1:
LABEL_19:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 128) = 1;

        goto LABEL_27;
      case 2:
LABEL_18:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        v16 = *(a2 + 72);
        *(a1 + 72) = v16;
        *(a1 + 80) = *(a2 + 80);
        v17 = **(v16 - 8);

        v17(a1 + 48, a2 + 48, v16);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        v18 = 2;
        goto LABEL_63;
      case 3:
LABEL_23:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 128) = 3;

        return a1;
      case 4:
LABEL_17:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 49) = *(a2 + 49);
        v15 = 4;
        goto LABEL_25;
      case 5:
LABEL_16:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 49) = *(a2 + 49);
        v15 = 5;
        goto LABEL_25;
      case 6:
LABEL_26:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 128) = 6;

LABEL_27:

        return a1;
      case 0xA:
LABEL_20:
        v19 = *(a2 + 56);
        *(a1 + 56) = v19;
        *(a1 + 64) = *(a2 + 64);
        (**(v19 - 8))(a1 + 32, a2 + 32);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 89) = *(a2 + 89);
        v15 = 10;
        goto LABEL_25;
      case 0xB:
LABEL_28:
        v22 = *(a2 + 56);
        *(a1 + 56) = v22;
        *(a1 + 64) = *(a2 + 64);
        (**(v22 - 8))(a1 + 32, a2 + 32);
        v18 = 11;
        goto LABEL_63;
      case 0xC:
LABEL_12:
        *(a1 + 32) = *(a2 + 32);
        v13 = *(a2 + 64);

        if (v13)
        {
          *(a1 + 64) = v13;
          *(a1 + 72) = *(a2 + 72);
          (**(v13 - 8))(a1 + 40, a2 + 40, v13);
        }

        else
        {
          v36 = *(a2 + 40);
          v37 = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 56) = v37;
          *(a1 + 40) = v36;
        }

        if (*(a2 + 88) == 1)
        {
          *(a1 + 80) = *(a2 + 80);
        }

        else
        {
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 84) = *(a2 + 84);
          *(a1 + 88) = *(a2 + 88);
        }

        *(a1 + 96) = *(a2 + 96);
        v38 = *(a2 + 112);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = v38;
        v35 = 12;
        goto LABEL_52;
      case 0xD:
LABEL_10:
        *(a1 + 32) = *(a2 + 32);
        v12 = *(a2 + 64);

        if (v12)
        {
          *(a1 + 64) = v12;
          *(a1 + 72) = *(a2 + 72);
          (**(v12 - 8))(a1 + 40, a2 + 40, v12);
        }

        else
        {
          v32 = *(a2 + 40);
          v33 = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 56) = v33;
          *(a1 + 40) = v32;
        }

        if (*(a2 + 88) == 1)
        {
          *(a1 + 80) = *(a2 + 80);
        }

        else
        {
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 84) = *(a2 + 84);
          *(a1 + 88) = *(a2 + 88);
        }

        *(a1 + 96) = *(a2 + 96);
        v34 = *(a2 + 112);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = v34;
        *(a1 + 120) = *(a2 + 120);
        v35 = 13;
        goto LABEL_52;
      case 0xE:
LABEL_21:
        *(a1 + 32) = *(a2 + 32);
        v20 = *(a2 + 64);

        if (v20)
        {
          *(a1 + 64) = v20;
          *(a1 + 72) = *(a2 + 72);
          (**(v20 - 8))(a1 + 40, a2 + 40, v20);
        }

        else
        {
          v42 = *(a2 + 40);
          v43 = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 56) = v43;
          *(a1 + 40) = v42;
        }

        if (*(a2 + 88) == 1)
        {
          *(a1 + 80) = *(a2 + 80);
        }

        else
        {
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 84) = *(a2 + 84);
          *(a1 + 88) = *(a2 + 88);
        }

        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
        v18 = 14;
        goto LABEL_63;
      case 0x11:
LABEL_24:
        v21 = *(a2 + 56);
        *(a1 + 56) = v21;
        *(a1 + 64) = *(a2 + 64);
        (**(v21 - 8))(a1 + 32, a2 + 32);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 97) = *(a2 + 97);
        v15 = 17;
LABEL_25:
        *(a1 + 128) = v15;

        return a1;
      case 0x12:
LABEL_14:
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        v14 = *(a2 + 72);

        if (v14)
        {
          *(a1 + 72) = v14;
          *(a1 + 80) = *(a2 + 80);
          (**(v14 - 8))(a1 + 48, a2 + 48, v14);
        }

        else
        {
          v39 = *(a2 + 48);
          v40 = *(a2 + 64);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 48) = v39;
          *(a1 + 64) = v40;
        }

        if (*(a2 + 96) == 1)
        {
          *(a1 + 88) = *(a2 + 88);
        }

        else
        {
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 92) = *(a2 + 92);
          *(a1 + 96) = *(a2 + 96);
        }

        *(a1 + 104) = *(a2 + 104);
        v41 = *(a2 + 120);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 120) = v41;
        v35 = 18;
LABEL_52:
        *(a1 + 128) = v35;

        return a1;
      case 0x13:
LABEL_8:
        v11 = *(a2 + 56);
        if (v11)
        {
          *(a1 + 56) = v11;
          *(a1 + 64) = *(a2 + 64);
          (**(v11 - 8))(a1 + 32, a2 + 32);
        }

        else
        {
          v30 = *(a2 + 32);
          v31 = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 32) = v30;
          *(a1 + 48) = v31;
        }

        if (*(a2 + 80) == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 76) = *(a2 + 76);
          *(a1 + 80) = *(a2 + 80);
        }

        *(a1 + 88) = *(a2 + 88);
        v18 = 19;
        goto LABEL_63;
      case 0x15:
LABEL_29:
        v23 = *(a2 + 32);
        if (v23)
        {
          v24 = *(a2 + 40);
          *(a1 + 32) = v23;
          *(a1 + 40) = v24;
        }

        else
        {
          *(a1 + 32) = *(a2 + 32);
        }

        v44 = *(a2 + 48);
        if (v44)
        {
          v45 = *(a2 + 56);
          *(a1 + 48) = v44;
          *(a1 + 56) = v45;
        }

        else
        {
          *(a1 + 48) = *(a2 + 48);
        }

        v18 = 21;
LABEL_63:
        *(a1 + 128) = v18;
        break;
      default:
LABEL_31:
        v25 = *(a2 + 32);
        v26 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v26;
        *(a1 + 32) = v25;
        v27 = *(a2 + 80);
        v28 = *(a2 + 96);
        v29 = *(a2 + 112);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 96) = v28;
        *(a1 + 112) = v29;
        *(a1 + 80) = v27;
        break;
    }
  }

  else if (*(a2 + 128) == 255)
  {
    outlined destroy of NavigationRequest.Action(a1 + 32);
    v6 = *(a2 + 48);
    v5 = *(a2 + 64);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
    *(a1 + 64) = v5;
    v8 = *(a2 + 96);
    v7 = *(a2 + 112);
    v9 = *(a2 + 80);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v8;
    *(a1 + 112) = v7;
    *(a1 + 80) = v9;
  }

  else if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 32);
    switch(*(a2 + 128))
    {
      case 0:
        goto LABEL_7;
      case 1:
        goto LABEL_19;
      case 2:
        goto LABEL_18;
      case 3:
        goto LABEL_23;
      case 4:
        goto LABEL_17;
      case 5:
        goto LABEL_16;
      case 6:
        goto LABEL_26;
      case 0xA:
        goto LABEL_20;
      case 0xB:
        goto LABEL_28;
      case 0xC:
        goto LABEL_12;
      case 0xD:
        goto LABEL_10;
      case 0xE:
        goto LABEL_21;
      case 0x11:
        goto LABEL_24;
      case 0x12:
        goto LABEL_14;
      case 0x13:
        goto LABEL_8;
      case 0x15:
        goto LABEL_29;
      default:
        goto LABEL_31;
    }
  }

  return a1;
}

__n128 assignWithTake for UpdateViewDestinationViewModifier.RequestWriter(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  v3 = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = v3;
  *(a1 + 24) = *(a2 + 24);
  if (*(a1 + 128) == 255)
  {
    goto LABEL_7;
  }

  if (*(a2 + 128) == 255 || a1 != a2)
  {
    v5 = a1;
    v6 = a2;
    outlined destroy of NavigationRequest.Action(a1 + 32);
    a2 = v6;
    a1 = v5;
LABEL_7:
    v7 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v7;
    *(a1 + 128) = *(a2 + 128);
    v8 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v8;
    result = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateViewDestinationViewModifier.RequestWriter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE9 && *(a1 + 129))
  {
    return (*a1 + 233);
  }

  v3 = *(a1 + 128);
  if (v3 <= 0x16)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateViewDestinationViewModifier.RequestWriter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE8)
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
    *result = a2 - 233;
    if (a3 >= 0xE9)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE9)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = ~a2;
    }
  }

  return result;
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSd_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<Double>, MEMORY[0x1E69E63B0], type metadata accessor for UserDefaultLocation);
  v12 = swift_allocObject();
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = [objc_opt_self() standardUserDefaults];
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 116) = 0;
  *(v12 + 124) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  *(v12 + 64) = 0;
  return v12;
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSS_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<String>, MEMORY[0x1E69E6158], type metadata accessor for UserDefaultLocation);
  v14 = swift_allocObject();
  *(v14 + 88) = 0;
  *(v14 + 96) = 0;
  *(v14 + 80) = 0;
  *(v14 + 104) = [objc_opt_self() standardUserDefaults];
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 124) = 0;
  *(v14 + 132) = 1;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  *(v14 + 64) = a5;
  *(v14 + 72) = 0;
  return v14;
}

char *_s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation3URLV_Tt3g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v24 = a3;
  v25 = a4;
  v13 = a7(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  (*(v14 + 16))(&v24 - v16, a6, v13, v15);
  a8(0);
  v18 = swift_allocObject();
  *&v18[*(*v18 + 128)] = 0;
  (*(v14 + 56))(&v18[*(*v18 + 136)], 1, 1, v13);
  v19 = *(*v18 + 144);
  v20 = [objc_opt_self() standardUserDefaults];
  (*(v14 + 8))(a6, v13);
  *&v18[v19] = v20;
  *&v18[*(*v18 + 152)] = 0;
  v18[*(*v18 + 160)] = 0;
  v21 = &v18[*(*v18 + 168)];
  *v21 = 0;
  v21[8] = 1;
  *&v18[*(*v18 + 112)] = a5;
  *(v18 + 2) = a1;
  *(v18 + 3) = a2;
  v22 = v25;
  *(v18 + 4) = v24;
  *(v18 + 5) = v22;
  (*(v14 + 32))(&v18[*(*v18 + 104)], v17, v13);
  *&v18[*(*v18 + 120)] = 0;
  return v18;
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation4DataV_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<Data>, MEMORY[0x1E6969080], type metadata accessor for UserDefaultLocation);
  v14 = swift_allocObject();
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *(v14 + 96) = 0xF000000000000000;
  *(v14 + 104) = [objc_opt_self() standardUserDefaults];
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 124) = 0;
  *(v14 + 132) = 1;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  *(v14 + 64) = a5;
  *(v14 + 72) = 0;
  return v14;
}

char *_s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation3URLVSg_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  type metadata accessor for URL?(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a6, v15, type metadata accessor for URL?);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for UserDefaultLocation<URL?>, type metadata accessor for URL?, type metadata accessor for UserDefaultLocation);
  v16 = swift_allocObject();
  *&v16[*(*v16 + 128)] = 0;
  (*(v13 + 56))(&v16[*(*v16 + 136)], 1, 1, v12);
  v17 = *(*v16 + 144);
  v18 = [objc_opt_self() standardUserDefaults];
  outlined destroy of Date?(a6, type metadata accessor for URL?);
  *&v16[v17] = v18;
  *&v16[*(*v16 + 152)] = 0;
  v16[*(*v16 + 160)] = 0;
  v19 = &v16[*(*v16 + 168)];
  *v19 = 0;
  v19[8] = 1;
  *&v16[*(*v16 + 112)] = a5;
  *(v16 + 2) = a1;
  *(v16 + 3) = a2;
  v20 = v23;
  *(v16 + 4) = a3;
  *(v16 + 5) = v20;
  outlined init with take of URL?(v15, &v16[*(*v16 + 104)], type metadata accessor for URL?);
  *&v16[*(*v16 + 120)] = 0;
  return v16;
}

char *_s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation4DateVSg_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  type metadata accessor for Date?(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a6, v15, type metadata accessor for Date?);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for UserDefaultLocation<Date?>, type metadata accessor for Date?, type metadata accessor for UserDefaultLocation);
  v16 = swift_allocObject();
  *&v16[*(*v16 + 128)] = 0;
  (*(v13 + 56))(&v16[*(*v16 + 136)], 1, 1, v12);
  v17 = *(*v16 + 144);
  v18 = [objc_opt_self() standardUserDefaults];
  outlined destroy of Date?(a6, type metadata accessor for Date?);
  *&v16[v17] = v18;
  *&v16[*(*v16 + 152)] = 0;
  v16[*(*v16 + 160)] = 0;
  v19 = &v16[*(*v16 + 168)];
  *v19 = 0;
  v19[8] = 1;
  *&v16[*(*v16 + 112)] = a5;
  *(v16 + 2) = a1;
  *(v16 + 3) = a2;
  v20 = v23;
  *(v16 + 4) = a3;
  *(v16 + 5) = v20;
  outlined init with take of URL?(v15, &v16[*(*v16 + 104)], type metadata accessor for Date?);
  *&v16[*(*v16 + 120)] = 0;
  return v16;
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCAA17ToolbarLabelStyleV_Tt3B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<ToolbarLabelStyle>, &type metadata for ToolbarLabelStyle, type metadata accessor for UserDefaultLocation);
  v12 = swift_allocObject();
  *(v12 + 72) = 0;
  *(v12 + 80) = 4;
  *(v12 + 88) = [objc_opt_self() standardUserDefaults];
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 108) = 0;
  *(v12 + 116) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  *(v12 + 64) = 0;
  return v12;
}

char *_s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCAA23TabSidebarCustomizationV_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v11 = type metadata accessor for TabSidebarCustomization(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a6, v14, type metadata accessor for TabSidebarCustomization);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for UserDefaultLocation<TabSidebarCustomization>, type metadata accessor for TabSidebarCustomization, type metadata accessor for UserDefaultLocation);
  v15 = swift_allocObject();
  *&v15[*(*v15 + 128)] = 0;
  (*(v12 + 56))(&v15[*(*v15 + 136)], 1, 1, v11);
  v16 = *(*v15 + 144);
  v17 = [objc_opt_self() standardUserDefaults];
  outlined destroy of Date?(a6, type metadata accessor for TabSidebarCustomization);
  *&v15[v16] = v17;
  *&v15[*(*v15 + 152)] = 0;
  v15[*(*v15 + 160)] = 0;
  v18 = &v15[*(*v15 + 168)];
  *v18 = 0;
  v18[8] = 1;
  *&v15[*(*v15 + 112)] = a5;
  *(v15 + 2) = a1;
  *(v15 + 3) = a2;
  v19 = v22;
  *(v15 + 4) = a3;
  *(v15 + 5) = v19;
  outlined init with take of URL?(v14, &v15[*(*v15 + 104)], type metadata accessor for TabSidebarCustomization);
  *&v15[*(*v15 + 120)] = 0;
  return v15;
}

char *_s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCAA20TabViewCustomizationV_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v11 = type metadata accessor for TabViewCustomization(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a6, v14, type metadata accessor for TabViewCustomization);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for UserDefaultLocation<TabViewCustomization>, type metadata accessor for TabViewCustomization, type metadata accessor for UserDefaultLocation);
  v15 = swift_allocObject();
  *&v15[*(*v15 + 128)] = 0;
  (*(v12 + 56))(&v15[*(*v15 + 136)], 1, 1, v11);
  v16 = *(*v15 + 144);
  v17 = [objc_opt_self() standardUserDefaults];
  outlined destroy of Date?(a6, type metadata accessor for TabViewCustomization);
  *&v15[v16] = v17;
  *&v15[*(*v15 + 152)] = 0;
  v15[*(*v15 + 160)] = 0;
  v18 = &v15[*(*v15 + 168)];
  *v18 = 0;
  v18[8] = 1;
  *&v15[*(*v15 + 112)] = a5;
  *(v15 + 2) = a1;
  *(v15 + 3) = a2;
  v19 = v22;
  *(v15 + 4) = a3;
  *(v15 + 5) = v19;
  outlined init with take of URL?(v14, &v15[*(*v15 + 104)], type metadata accessor for TabViewCustomization);
  *&v15[*(*v15 + 120)] = 0;
  return v15;
}

uint64_t AppStorage.wrappedValue.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.n128_f64[0] = specialized AppStorage.wrappedValue.setter(a1);
  v6 = *(*(a3 - 8) + 8);

  return v6(a1, a3, v5);
}

void (*AppStorage.wrappedValue.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = a3;
  v9 = *(a3 - 8);
  v7[2] = v9;
  v10 = *(v9 + 64);
  if (v6)
  {
    v7[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v8[4] = v11;
  UserDefaultLocation.canonicalLocation.getter();
  UserDefaultLocation.getValue(forReading:)(1, v12);

  return AppStorage.wrappedValue.modify;
}

void AppStorage.wrappedValue.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    UserDefaultLocation.canonicalLocation.getter();
    UserDefaultLocation.set(_:transaction:)(v7, v3, 0);

    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    UserDefaultLocation.canonicalLocation.getter();
    UserDefaultLocation.set(_:transaction:)(v9, v4, 0);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AppStorage.projectedValue.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UserDefaultLocation.canonicalLocation.getter();
  UserDefaultLocation.getValue(forReading:)(0, v4);

  v7 = type metadata accessor for UserDefaultLocation(255, a2, v5, v6);
  swift_getWitnessTable(protocol conformance descriptor for UserDefaultLocation<A>, v7);
  type metadata accessor for LocationBox();
  v9[1] = UserDefaultLocation.canonicalLocation.getter();
  swift_allocObject();
  LocationBox.init(_:)();
  return Binding.init(value:location:)();
}

uint64_t AppStorage.init<A>(wrappedValue:_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSS_Tt3g5(a3, a4, &unk_1EFFBA3D0, &protocol witness table for StringTransform, a5, a1, a2);
}

{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for PropertyListTransform<Data>, MEMORY[0x1E6969080], type metadata accessor for PropertyListTransform);

  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation4DataV_Tt3g5(a3, a4, v10, &protocol witness table for PropertyListTransform<A>, a5, a1, a2);
}

char *AppStorage.init<A>(wrappedValue:_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation3URLV_Tt3g5Tm(a2, a3, &unk_1EFFBA3B0, &protocol witness table for URLTransform, a4, v12, MEMORY[0x1E6968FB0], type metadata accessor for UserDefaultLocation<URL>);
  (*(v9 + 8))(a1, v8);
  return v13;
}

{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for PropertyListTransform<Date>, MEMORY[0x1E6969530], type metadata accessor for PropertyListTransform);
  v13 = v12;
  (*(v9 + 16))(v11, a1, v8);
  v14 = _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation3URLV_Tt3g5Tm(a2, a3, v13, &protocol witness table for PropertyListTransform<A>, a4, v11, MEMORY[0x1E6969530], type metadata accessor for UserDefaultLocation<Date>);
  (*(v9 + 8))(a1, v8);
  return v14;
}

{
  v8 = type metadata accessor for TabSidebarCustomization(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TabSidebarCustomization(a1, v10, type metadata accessor for TabSidebarCustomization);
  v11 = _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCAA23TabSidebarCustomizationV_Tt3g5(a2, a3, &unk_1EFFBBC20, &protocol witness table for TabSidebarCustomizationTransform, a4, v10);
  outlined destroy of TabSidebarCustomization(a1, type metadata accessor for TabSidebarCustomization);
  return v11;
}

{
  v8 = type metadata accessor for TabViewCustomization(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TabViewCustomization(a1, v10, type metadata accessor for TabViewCustomization);
  v11 = _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCAA20TabViewCustomizationV_Tt3g5(a2, a3, &unk_1F0005B70, &protocol witness table for TabViewCustomizationTransform, a4, v10);
  outlined destroy of TabViewCustomization(a1, type metadata accessor for TabViewCustomization);
  return v11;
}

char *AppStorage<A>.init(wrappedValue:_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for JSONCodableTransform(0, a5, a6, a7);
  v13 = specialized AppStorage.init(key:transform:store:defaultValue:)(a2, a3, v12, &protocol witness table for JSONCodableTransform<A>, a4, a1, a5);
  (*(*(a5 - 8) + 8))(a1, a5);
  return v13;
}

char *AppStorage<A>.init<>(_:store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation3URLVSg_Tt3g5(a1, a2, &unk_1EFFBA3B0, &protocol witness table for URLTransform, a3, v8);
}

{
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListTransform<Date>(0, &lazy cache variable for type metadata for PropertyListTransform<Date>, MEMORY[0x1E6969530], type metadata accessor for PropertyListTransform);
  v10 = v9;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  return _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfC10Foundation4DateVSg_Tt3g5(a1, a2, v10, &protocol witness table for PropertyListTransform<A>, a3, v8);
}

char *AppStorage<A>.init<A>(_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16 = type metadata accessor for JSONCodableTransform(0, a4, a5, a6);
  (*(*(a4 - 8) + 56))(v15, 1, 1, a4);
  v17 = specialized AppStorage.init(key:transform:store:defaultValue:)(a1, a2, v16, &protocol witness table for JSONCodableTransform<A>, a3, v15, v12);
  (*(v13 + 8))(v15, v12);
  return v17;
}

void (*AppStorage.objectWillChange.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = AppStorage.objectWillChange.getter();
  return AppStorage.objectWillChange.modify;
}

void AppStorage.objectWillChange.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    AppStorage.objectWillChange.setter(v2);
  }

  else
  {
    AppStorage.objectWillChange.setter(*a1);
  }
}

void (*protocol witness for _ObservableObjectProperty.objectWillChange.modify in conformance AppStorage<A>(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = v2;
  a1[2] = a2;
  *a1 = AppStorage.objectWillChange.getter();
  return protocol witness for _ObservableObjectProperty.objectWillChange.modify in conformance AppStorage<A>;
}

void protocol witness for _ObservableObjectProperty.objectWillChange.modify in conformance AppStorage<A>(uint64_t *a1, char a2)
{
  if (a2)
  {

    AppStorage.objectWillChange.setter(v2);
  }

  else
  {
    AppStorage.objectWillChange.setter(*a1);
  }
}

uint64_t EnvironmentValues.defaultAppStorageDefaults.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.defaultAppStorageDefaults : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.defaultAppStorageDefaults : EnvironmentValues(id *a1, void *a2)
{
  v3 = *a1;
  type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>, MEMORY[0x1E697FE40]);
  v4 = v3;

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void EnvironmentValues.defaultAppStorageDefaults.setter(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>, MEMORY[0x1E697FE40]);
  v3 = a1;

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

double View.defaultAppStorage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  a4();

  return result;
}

void (*EnvironmentValues.defaultAppStorageDefaults.modify(void *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v3[3] = *v1;
  v5 = v1[1];
  v3[4] = v5;
  type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>, MEMORY[0x1E697FE40]);
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *v4 = v4[1];
  return EnvironmentValues.defaultAppStorageDefaults.modify;
}

void EnvironmentValues.defaultAppStorageDefaults.modify(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  (*a1)[1] = v4;
  v5 = v3[4];
  type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>, MEMORY[0x1E697FE40]);
  v6 = v4;

  if (a2)
  {
    v7 = v6;
    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  else
  {
    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  free(v3);
}

double static PropertyListTransform.readValue(from:key:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = MEMORY[0x18D00C850](a2, a3);
  v7 = [a1 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t static PropertyListTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  outlined init with copy of Any?(a1, v25);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v16 = swift_dynamicCast();
  v17 = *(a5 - 8);
  (*(v17 + 56))(v15, v16 ^ 1u, 1, a5);
  v18 = *(v17 + 48);
  if (v18(v15, 1, a5) == 1)
  {
    v19 = MEMORY[0x18D00C850](a3, a4);
    [v24 removeObjectForKey_];
  }

  else
  {
    v23 = a3;
    v20 = v24;
    (*(v10 + 16))(v12, v15, v9);
    if (v18(v12, 1, a5) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v12, a5);
    }

    v19 = MEMORY[0x18D00C850](v23, a4);
    [v20 setObject:v21 forKey:v19];
    swift_unknownObjectRelease();
  }

  return (*(v10 + 8))(v15, v9);
}

void _s7SwiftUI32ScalarUserDefaultsValueTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLPAAE05writeF0_2to3keyyypSg_So06NSUserE0CSStFZAA04BoolG0ACLLV_Tt2g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, v10);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    v10[0] = v9 & 1;
    v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 setObject:v7 forKey:v8];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 removeObjectForKey_];
  }
}

void _s7SwiftUI32ScalarUserDefaultsValueTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLPAAE05writeF0_2to3keyyypSg_So06NSUserE0CSStFZAA07IntegerG0ACLLV_Tt2g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, v10);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    v10[0] = v9;
    v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 setObject:v7 forKey:v8];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 removeObjectForKey_];
  }
}

void _s7SwiftUI32ScalarUserDefaultsValueTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLPAAE05writeF0_2to3keyyypSg_So06NSUserE0CSStFZAA06DoubleG0ACLLV_Tt2g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, v10);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    v10[0] = v9;
    v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 setObject:v7 forKey:v8];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 removeObjectForKey_];
  }
}

double static JSONCodableTransform.readValue(from:key:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = MEMORY[0x18D00C850](a2, a3);
  v10 = [a1 dataForKey_];

  if (v10)
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    *(a6 + 24) = a4;
    __swift_allocate_boxed_opaque_existential_1(a6);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data._Representation(v11, v13);
  }

  else
  {
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

uint64_t static JSONCodableTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[0] = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v29 - v13;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(a1, v30);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if (v19)
  {
    v20(v14, 0, 1, a5);
    (*(v15 + 32))(v18, v14, a5);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v23 = v22;
    outlined copy of Data._Representation(v21, v22);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v25.n128_f64[0] = outlined consume of Data._Representation(v21, v23);
    v26 = MEMORY[0x18D00C850](a3, a4, v25);
    [v29[0] setObject:isa forKey:v26];

    swift_unknownObjectRelease();

    v27 = outlined consume of Data?(v21, v23);
    return (*(v15 + 8))(v18, a5, v27);
  }

  else
  {
    v20(v14, 1, 1, a5);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t static URLTransform.readValue(from:key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = MEMORY[0x18D00C850](a2, a3, v12);
  v16 = [a1 URLForKey_];

  if (v16)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  }

  else
  {
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  }

  outlined init with take of URL?(v10, v14, type metadata accessor for URL?);
  type metadata accessor for URL();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    result = outlined destroy of Date?(v14, type metadata accessor for URL?);
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    *(a4 + 24) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    return (*(v18 + 32))(boxed_opaque_existential_1, v14, v17);
  }

  return result;
}

double _s7SwiftUI25RawRepresentableTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLV9readValue4from3keyypSgSo14NSUserDefaultsC_SStFZAA17ToolbarLabelStyleV4RoleO_AA07IntegerE0ACLLVTt2g5@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  specialized static ScalarUserDefaultsValueTransform.readValue(from:key:)(a1, a2, a3, &v10);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v5 = swift_dynamicCast();
  if (v5)
  {
    v13 = v5 ^ 1;
    if ((v12 - 5) > 3)
    {
      v10 = 0u;
      v11 = 0u;
    }

    else
    {
      v9 = &type metadata for ToolbarLabelStyle.Role;
      LOBYTE(v8) = v12 - 5;
      outlined init with take of Any(&v8, &v10);
    }

    result = *&v10;
    v7 = v11;
    *a4 = v10;
    a4[1] = v7;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t closure #1 in static RawRepresentableTransform.readValue(from:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v8 + 16))(&v10 - v7, a1, v6);
  return dispatch thunk of RawRepresentable.init(rawValue:)();
}

uint64_t _s7SwiftUI25RawRepresentableTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLV10writeValue_2to3keyyypSg_So14NSUserDefaultsCSStFZAA17ToolbarLabelStyleV4RoleO_AA07IntegerE0ACLLVTt2g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, &v9);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast() && v8 != 4)
  {
    *(&v10 + 1) = MEMORY[0x1E69E6530];
    *&v9 = v8 + 5;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  _s7SwiftUI32ScalarUserDefaultsValueTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLPAAE05writeF0_2to3keyyypSg_So06NSUserE0CSStFZAA07IntegerG0ACLLV_Tt2g5(&v9, a2, a3, a4);
  return outlined destroy of Any?(&v9);
}

uint64_t static RawRepresentableTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(a1, &v27);
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v15, 0, 1, a5);
    (*(v16 + 32))(v19, v15, a5);
    *(&v28 + 1) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1(&v27);
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(a8 + 16))(&v27, v24, v25, v26, a6, a8);
    (*(v16 + 8))(v19, a5);
  }

  else
  {
    v21(v15, 1, 1, a5);
    (*(v13 + 8))(v15, v12);
    v27 = 0u;
    v28 = 0u;
    (*(a8 + 16))(&v27, v24, v25, v26, a6, a8);
  }

  return outlined destroy of Any?(&v27);
}

double static ToolbarLabelStyleTransform.readValue(from:key:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s7SwiftUI25RawRepresentableTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLV9readValue4from3keyypSgSo14NSUserDefaultsC_SStFZAA17ToolbarLabelStyleV4RoleO_AA07IntegerE0ACLLVTt2g5(a1, a2, a3, &v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      *(a4 + 24) = &type metadata for ToolbarLabelStyle;
      *a4 = v6;
      return result;
    }
  }

  else
  {
    outlined destroy of Any?(&v7);
  }

  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t UserDefaultLocation.wasRead.getter()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  return *(v0 + v1);
}

void UserDefaultLocation.wasRead.setter(char a1)
{
  v3 = *(*v1 + 160);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t UserDefaultLocation.changeSignal.setter(uint64_t result, char a2)
{
  v3 = v2 + *(*v2 + 168);
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

char *UserDefaultLocation.copy()(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v15 - v4;
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  v10 = UserDefaultLocation.store.getter();
  (*(v3 + 16))(v5, &v1[*(*v1 + 104)], v2);
  v13 = *&v1[*(*v1 + 120)];
  if (!v13)
  {

    v13 = v1;
  }

  type metadata accessor for UserDefaultLocation(0, v2, v11, v12);
  swift_allocObject();

  return UserDefaultLocation.init(key:transform:store:defaultValue:base:)(v6, v7, v8, v9, v10, v5, v13);
}

double UserDefaultLocation.set(_:transaction:)(double a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + *(*v3 + 128)))
  {

    ObservableObjectPublisher.send()();
  }

  v4 = Transaction.current.getter();
  MEMORY[0x1EEE9AC00](v4);
  withTransaction<A>(_:_:)();

  return result;
}

uint64_t closure #1 in UserDefaultLocation.set(_:transaction:)(void *a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = type metadata accessor for Optional();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = *(v4 - 8);
  v10 = *(v9 + 16);
  v10(v16 - v7, a2, v4, v6);
  (*(v9 + 56))(v8, 0, 1, v4);
  UserDefaultLocation.cachedValue.setter(v8);
  v11 = a1[4];
  v12 = a1[5];
  v16[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (v10)(boxed_opaque_existential_1, a2, v4);
  v14 = UserDefaultLocation.store.getter();
  (*(v12 + 16))(v16, v14, a1[2], a1[3], v11, v12);

  return outlined destroy of Any?(v16);
}

uint64_t UserDefaultLocation.update()(uint64_t a1)
{
  v3 = *v1;
  if ((*(v1 + *(*v1 + 168) + 8) & 1) != 0 || AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    v4 = *(v3 + 160);
    v5 = 1;
    swift_beginAccess();
    *(v1 + v4) = 1;
  }

  else
  {
    AGGraphGetValue();
    v5 = v6 & 1;
  }

  UserDefaultLocation.getValue(forReading:)(0, a1);
  return v5;
}

void (*protocol witness for Location.wasRead.modify in conformance UserDefaultLocation<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = UserDefaultLocation.wasRead.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
}

void UserDefaultPropertyBox.reset()(uint64_t a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state;
  v3 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state);
  if (v3)
  {
    v5 = *(v2 + 8);
    v4 = *(v2 + 16);
    v6 = v3;

    UserDefaultObserver.unobserve(oldDefaults:key:)(v6, v5, v4);
  }
}

double closure #1 in UserDefaultObserver.Target.GraphAttribute.send()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    static Transaction.current.getter();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)();
    GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)();
  }

  return result;
}

void UserDefaultObserver.Target.send()()
{
  outlined init with copy of UserDefaultObserver.Target(v0, v7);
  if (v8)
  {
    ObservableObjectPublisher.send()();
  }

  else
  {
    outlined init with take of UserDefaultObserver.Target.GraphAttribute(v7, v5);
    static Semantics.v7.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && !pthread_main_np())
    {
      v1 = static os_log_type_t.fault.getter();
      v2 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v1, &dword_18BD4A000, v2, "Updating AppStorage from background threads is not allowed; make sure to publish values from the main thread for model updates.", 127, 2, MEMORY[0x1E69E7CC0]);
    }

    Strong = swift_weakLoadStrong();
    v4 = swift_allocObject();
    *(v4 + 16) = Strong;
    *(v4 + 24) = v6;

    onMainThread(do:)();

    outlined destroy of weak AnyGestureResponder?(v5);
  }
}

id UserDefaultObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  v3 = *&v0[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  if (v3)
  {
    v5 = *(v2 + 1);
    v4 = *(v2 + 2);
    v6 = v3;

    UserDefaultObserver.unobserve(oldDefaults:key:)(v6, v5, v4);
  }

  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void UserDefaultObserver.userDefaultsDidChange(_:)()
{
  v1 = &v0[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  v2 = *&v0[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  if (v2)
  {
    v3 = v0;
    v5 = *(v1 + 1);
    v4 = *(v1 + 2);
    outlined copy of UserDefaultObserver.State(*&v0[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state]);
    v6 = v2;
    Notification.object.getter();
    v7 = v18;
    if (v18)
    {
      v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
      v9 = *(v7 - 8);
      v10 = MEMORY[0x1EEE9AC00](v8);
      v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v12, v7);
      __swift_destroy_boxed_opaque_existential_1(v17);
      swift_unknownObjectRelease();

      if (v13 == v6)
      {
        v17[0] = v5;
        v17[1] = v4;
        v16[0] = 46;
        v16[1] = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v14 = StringProtocol.contains<A>(_:)();

        if (v14)
        {
          LOBYTE(v17[0]) = 17;
          *(swift_allocObject() + 16) = v3;
          v15 = v3;
          static Update.enqueueAction(reason:_:)();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t closure #1 in UserDefaultObserver.noteDefaultChange()(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_target;
  swift_beginAccess();
  outlined init with copy of UserDefaultObserver.Target((a1 + v2), v4);
  UserDefaultObserver.Target.send()();
  return outlined destroy of UserDefaultObserver.Target(v4);
}

double specialized AppStorage.wrappedValue.setter(uint64_t a1)
{
  UserDefaultLocation.canonicalLocation.getter();
  UserDefaultLocation.set(_:transaction:)(v2, a1, 0);

  return result;
}

void type metadata accessor for PropertyListTransform<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t *assignWithCopy for UserDefaultObserver.Target(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else
    {
      swift_weakDestroy();
    }

    v5 = *(a2 + 16);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 16) = 1;
    }

    else
    {
      swift_weakCopyInit();
      a1[1] = a2[1];
      *(a1 + 16) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for UserDefaultObserver.Target(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else
    {
      swift_weakDestroy();
    }

    v5 = *(a2 + 16);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      v6 = 1;
    }

    else
    {
      swift_weakTakeInit();
      v6 = 0;
      *(a1 + 8) = *(a2 + 8);
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

id *destroy for UserDefaultObserver.State(id *result)
{
  if (*result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for UserDefaultObserver.State(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *a1 = v2;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    v5 = v2;
  }

  return result;
}

uint64_t assignWithCopy for UserDefaultObserver.State(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      *(a1 + 8) = *(a2 + 8);
      v7 = v5;

      return a1;
    }

LABEL_7:
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;
  v6 = v5;

  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = *(a2 + 2);

  return a1;
}

uint64_t assignWithTake for UserDefaultObserver.State(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*result < 0xFFFFFFFFuLL)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v4 = result;

      *v4 = *a2;
      *(v4 + 16) = *(a2 + 16);
    }

    else
    {
      *result = *a2;
      v4 = result;

      v5 = *(a2 + 16);
      *(v4 + 8) = *(a2 + 8);
      *(v4 + 16) = v5;
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserDefaultObserver.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for UserDefaultObserver.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for UserDefaultObserver.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
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

void specialized static StringTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, v9);
  if (!v10)
  {
    outlined destroy of Any?(v9);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v8 = MEMORY[0x18D00C850](a3, a4);
    [a2 removeObjectForKey_];
    goto LABEL_6;
  }

  v7 = MEMORY[0x18D00C850]();

  v8 = MEMORY[0x18D00C850](a3, a4);
  [a2 setObject:v7 forKey:v8];

LABEL_6:
}

void specialized static URLTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any?(a1, v21);
  if (v22)
  {
    v15 = swift_dynamicCast();
    (*(v12 + 56))(v10, v15 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v14, v10, v11);
      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      v19 = MEMORY[0x18D00C850](a3, a4);
      [a2 setURL:v18 forKey:v19];

      (*(v12 + 8))(v14, v11);
      return;
    }
  }

  else
  {
    outlined destroy of Any?(v21);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  outlined destroy of Date?(v10, type metadata accessor for URL?);
  v20 = MEMORY[0x18D00C850](a3, a4);
  [a2 removeObjectForKey_];
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized static ToolbarLabelStyleTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any?(a1, &v9);
  if (!*(&v10 + 1))
  {
    outlined destroy of Any?(&v9);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  *(&v10 + 1) = &type metadata for ToolbarLabelStyle.Role;
  LOBYTE(v9) = v8;
LABEL_6:
  _s7SwiftUI25RawRepresentableTransform33_F2BB00CEA25D2617C18DE8984EB64B53LLV10writeValue_2to3keyyypSg_So14NSUserDefaultsCSStFZAA17ToolbarLabelStyleV4RoleO_AA07IntegerE0ACLLVTt2g5(&v9, a2, a3, a4);
  return outlined destroy of Any?(&v9);
}

void specialized UserDefaultObserver.observeValue(forKeyPath:of:change:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4 == &static UserDefaultObserver.observationContext)
  {
    v5 = &v4[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
    v6 = *&v4[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
    if (v6)
    {
      v22 = a1;
      v9 = *(v5 + 1);
      v8 = *(v5 + 2);
      outlined init with copy of Any?(a3, v23);
      v10 = v24;
      if (v24)
      {
        v11 = __swift_project_boxed_opaque_existential_1(v23, v24);
        v12 = *(v10 - 8);
        v13 = MEMORY[0x1EEE9AC00](v11);
        v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v12 + 16))(v15, v13);
        outlined copy of UserDefaultObserver.State(v6);
        v16 = v6;
        v17 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v12 + 8))(v15, v10);
        __swift_destroy_boxed_opaque_existential_1(v23);
        swift_unknownObjectRelease();

        if (v17 == v16 && a2)
        {
          if (v9 == v22 && v8 == a2)
          {

LABEL_16:
            LOBYTE(v23[0]) = 17;
            *(swift_allocObject() + 16) = v4;
            v20 = v4;
            static Update.enqueueAction(reason:_:)();

            goto LABEL_6;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }

LABEL_6:
      }
    }
  }
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t assignWithCopy for UserDefaultPropertyBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for UserDefaultPropertyBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t initializeWithCopy for UserDefaultObserver.Target.GraphAttribute(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for UserDefaultObserver.Target.GraphAttribute(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyAssign();
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t initializeWithTake for UserDefaultObserver.Target.GraphAttribute(uint64_t a1, uint64_t a2)
{
  result = swift_weakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

double assignWithTake for UserDefaultObserver.Target.GraphAttribute(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeAssign();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

double specialized Binding.projecting<A>(_:)(uint64_t a1)
{
  v5 = a1;
  outlined init with copy of _VariadicView_Children(a1 + 16, v2);
  specialized Sequence.first(where:)(partial apply for closure #1 in ChildIndexProjection.get(base:), v3);
  outlined destroy of EnumeratedSequence<_VariadicView_Children>.Iterator(v2, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>, MEMORY[0x1E69E6E48]);
  if (v4)
  {
    outlined destroy of _VariadicView_Children.Element(v3 + 8);
  }

  else
  {
    outlined destroy of (offset: Int, element: _VariadicView_Children.Element)(v3, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element)?);
  }

  type metadata accessor for ChildIndexProjection();
  lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type ChildIndexProjection and conformance ChildIndexProjection, type metadata accessor for ChildIndexProjection, protocol conformance descriptor for ChildIndexProjection);
  dispatch thunk of AnyLocation.projecting<A>(_:)();

  return result;
}

double specialized Binding.projecting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a4);
  }

  swift_endAccess();
  type metadata accessor for ItemIndexTabsOnlyIndexProjection();
  lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection, type metadata accessor for ItemIndexTabsOnlyIndexProjection, protocol conformance descriptor for ItemIndexTabsOnlyIndexProjection);
  dispatch thunk of AnyLocation.projecting<A>(_:)();

  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, _OWORD *a2@<X8>)
{
  outlined init with copy of EnumeratedSequence<_VariadicView_Children>(v2, v21);
  if (_VariadicView_Children.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      _VariadicView_Children.subscript.getter();
      result = _VariadicView_Children.endIndex.getter();
      if (v6 >= result)
      {
        break;
      }

      *&v13[56] = v17;
      *&v13[72] = v18;
      *&v13[88] = v19;
      *&v13[8] = v14;
      *&v13[24] = v15;
      v8 = v6 + 1;
      *&v13[104] = v20;
      *&v13[40] = v16;
      *v13 = v6;
      v9 = a1(v13);
      if (v3)
      {
        v22 = v6 + 1;
        v23 = v6 + 1;
        outlined destroy of (offset: Int, element: _VariadicView_Children.Element)(v13, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element));
        return outlined destroy of EnumeratedSequence<_VariadicView_Children>.Iterator(v21, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>.Iterator, MEMORY[0x1E69E6E40]);
      }

      if (v9)
      {
        v22 = v6 + 1;
        v23 = v6 + 1;
        result = outlined destroy of EnumeratedSequence<_VariadicView_Children>.Iterator(v21, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>.Iterator, MEMORY[0x1E69E6E40]);
        v10 = *&v13[80];
        a2[4] = *&v13[64];
        a2[5] = v10;
        a2[6] = *&v13[96];
        v11 = *&v13[16];
        *a2 = *v13;
        a2[1] = v11;
        v12 = *&v13[48];
        a2[2] = *&v13[32];
        a2[3] = v12;
        return result;
      }

      outlined destroy of (offset: Int, element: _VariadicView_Children.Element)(v13, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element));
      ++v6;
      if (v8 == _VariadicView_Children.endIndex.getter())
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
LABEL_9:
    v22 = v8;
    v23 = v8;
    result = outlined destroy of EnumeratedSequence<_VariadicView_Children>.Iterator(v21, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>.Iterator, MEMORY[0x1E69E6E40]);
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      outlined init with copy of IdentifiedDocumentGroupConfiguration(v7, v11);
      result = v6(v11);
      if (v3)
      {
        return outlined destroy of IdentifiedDocumentGroupConfiguration(v11);
      }

      if (result)
      {
        break;
      }

      result = outlined destroy of IdentifiedDocumentGroupConfiguration(v11);
      v7 += 128;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = v11[5];
    a3[4] = v11[4];
    a3[5] = v8;
    a3[6] = v12[0];
    *(a3 + 105) = *(v12 + 9);
    v9 = v11[1];
    *a3 = v11[0];
    a3[1] = v9;
    v10 = v11[3];
    a3[2] = v11[2];
    a3[3] = v10;
  }

  else
  {
LABEL_6:
    *(a3 + 105) = 0u;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

void specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UISceneSession();
    lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type UISceneSession and conformance NSObject, type metadata accessor for UISceneSession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        type metadata accessor for UISceneSession();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      outlined consume of Set<UIPress>.Iterator._Variant(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      outlined consume of Set<UIPress>.Iterator._Variant(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void specialized Sequence.first(where:)(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, __int128 *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 40);
    while (1)
    {
      v8 = *v7;
      *&v11 = *(v7 - 1);
      *(&v11 + 1) = v8;

      v9 = a1(&v11);
      if (v3)
      {

        return;
      }

      if (v9)
      {
        break;
      }

      v7 += 2;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v10 = v11;
  }

  else
  {
LABEL_6:
    v10 = xmmword_18CD633F0;
  }

  *a3 = v10;
}

uint64_t specialized Sequence.first(where:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return 0;
  }

  else
  {
    v5 = a3;
    if (a4 >= a3)
    {
      v7 = result;
      while (a4 != v5)
      {
        v8 = v5;
        result = v7(&v8, a2);
        if (v4 || (result & 1) != 0)
        {
          return v5;
        }

        if (a4 == ++v5)
        {
          return 0;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t thunk for @callee_guaranteed (@in_guaranteed Binding<A>) -> (@owned Binding<Int?>)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  return result;
}

uint64_t static SidebarAdaptableTabViewStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v22 = a2[2];
  v23 = v7;
  v24 = a2[4];
  v25 = *(a2 + 20);
  v8 = a2[1];
  v20 = *a2;
  v21 = v8;
  v9 = type metadata accessor for AdaptableTabViewRoot(255, a3, a4, a4);
  type metadata accessor for TabViewStyleConfiguration.Content(255, a3, a4, v10);
  v11 = type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  v12 = type metadata accessor for ModifiedContent();
  v19 = v6;
  v18[0] = &type metadata for SidebarAdaptableTabViewStyle;
  v18[1] = a3;
  v18[2] = &protocol witness table for SidebarAdaptableTabViewStyle;
  v18[3] = a4;
  type metadata accessor for _TabViewValue(255, v18);
  type metadata accessor for _GraphValue();
  LODWORD(v18[0]) = _GraphValue.value.getter();
  v14 = type metadata accessor for SidebarAdaptableTabViewStyle.Body(0, a3, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for SidebarAdaptableTabViewStyle.Body<A>, v14);
  _GraphValue.init<A>(_:)();
  v17[0] = swift_getWitnessTable(protocol conformance descriptor for AdaptableTabViewRoot<A>, v9);
  v17[1] = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697E308], v11, v17);
  v16[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable(MEMORY[0x1E697E858], v12, v16);
  return static View.makeDebuggableView(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t static SidebarAdaptableTabViewStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = type metadata accessor for AdaptableTabViewRoot(255, a3, a4, a4);
  type metadata accessor for TabViewStyleConfiguration.Content(255, a3, a4, v8);
  v9 = type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  v10 = type metadata accessor for ModifiedContent();
  v17 = v6;
  v16[0] = &type metadata for SidebarAdaptableTabViewStyle;
  v16[1] = a3;
  v16[2] = &protocol witness table for SidebarAdaptableTabViewStyle;
  v16[3] = a4;
  type metadata accessor for _TabViewValue(255, v16);
  type metadata accessor for _GraphValue();
  LODWORD(v16[0]) = _GraphValue.value.getter();
  v12 = type metadata accessor for SidebarAdaptableTabViewStyle.Body(0, a3, a4, v11);
  swift_getWitnessTable(protocol conformance descriptor for SidebarAdaptableTabViewStyle.Body<A>, v12);
  _GraphValue.init<A>(_:)();
  v15[0] = swift_getWitnessTable(protocol conformance descriptor for AdaptableTabViewRoot<A>, v7);
  v15[1] = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  v14[0] = swift_getWitnessTable(MEMORY[0x1E697E308], v9, v15);
  v14[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v14);
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t SidebarAdaptableTabViewStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for SidebarAdaptableTabViewStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for SidebarAdaptableTabViewStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _TabViewValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t SidebarAdaptableTabViewStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v26 = a4;
  type metadata accessor for Binding();
  v25 = type metadata accessor for Optional();
  v7 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v23 - v8;
  v31[0] = &type metadata for SidebarAdaptableTabViewStyle;
  v31[1] = a2;
  v31[2] = &protocol witness table for SidebarAdaptableTabViewStyle;
  v31[3] = a3;
  v10 = type metadata accessor for _TabViewValue(0, v31);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v14 = type metadata accessor for AdaptableTabViewRoot(0, a2, a3, v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v23 = type metadata accessor for TabViewStyleConfiguration.Content(255, a2, a3, v17);
  v18 = type metadata accessor for _VariadicView.Tree();
  v24 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v23 - v19;
  SidebarAdaptableTabViewStyle.Body.base.getter(a2, a3, v12);
  (*(v7 + 32))(v9, v12, v25);
  KeyPath = swift_getKeyPath();
  AdaptableTabViewRoot.init(clientSidebarVisibility:selection:adaptationMode:)(KeyPath, 0, 0, v9, 1, a2, a3, v16);
  v27 = a2;
  v28 = a3;
  v29 = v6;
  _VariadicView.Tree.init(_:content:)();
  v30[0] = swift_getWitnessTable(protocol conformance descriptor for AdaptableTabViewRoot<A>, v14);
  v30[1] = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  swift_getWitnessTable(MEMORY[0x1E697E308], v18, v30);
  lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
  View.input<A>(_:)();
  return (*(v24 + 8))(v20, v18);
}

uint64_t AdaptableTabViewRoot.init(clientSidebarVisibility:selection:adaptationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 17) = HIBYTE(a3) & 1;
  AnyHashable.init<A>(_:)();
  *(a8 + 24) = v18;
  *(a8 + 40) = v19;
  *(a8 + 56) = v20;
  *(a8 + 64) = 0;
  *(a8 + 72) = 0;
  *(a8 + 80) = 0;
  v14 = type metadata accessor for AdaptableTabViewRoot(0, a6, a7, v13);
  v15 = *(v14 + 44);
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  result = (*(*(v16 - 8) + 32))(a8 + v15, a4, v16);
  *(a8 + *(v14 + 48)) = a5;
  return result;
}

uint64_t closure #1 in SidebarAdaptableTabViewStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = &type metadata for SidebarAdaptableTabViewStyle;
  v11[1] = a2;
  v11[2] = &protocol witness table for SidebarAdaptableTabViewStyle;
  v11[3] = a3;
  v5 = type metadata accessor for _TabViewValue(0, v11);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  SidebarAdaptableTabViewStyle.Body.base.getter(a2, a3, v11 - v7);
  (*(v6 + 8))(v8, v5);
  type metadata accessor for TabViewStyleConfiguration.Content(0, a2, a3, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SidebarAdaptableTabViewStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for AdaptableTabViewRoot(255, v4, v5, a2);
  type metadata accessor for TabViewStyleConfiguration.Content(255, v4, v5, v6);
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

uint64_t type metadata completion function for AdaptableTabViewRoot(uint64_t a1)
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for AdaptableTabViewRoot(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 84);
  v8 = v6;
  v9 = v6 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v10 = ((v8 + 16) & ~v8) + *(v5 + 64);
  v11 = v6 & 0x100000;
  if (v8 <= 7 && v11 == 0 && v10 + (v9 & (v8 + 88)) + 1 <= 0x18)
  {
    v15 = *a2;
    v16 = *(a2 + 8);
    v17 = *(a2 + 17);
    v18 = *(a2 + 16);
    v20.n128_f64[0] = outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v16, v18, v17);
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v18;
    *(a1 + 17) = v17;
    v21 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
    v23 = v22[3];
    v21[3] = v23;
    v21[4] = v22[4];
    (**(v23 - 8))(v21, v22, v20);
    v21[5] = v22[5];
    v24 = (v21 + 55) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v22 + 55) & 0xFFFFFFFFFFFFFFF8;
    *v24 = *v25;
    *(v24 + 8) = *(v25 + 8);
    v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);

    if ((v7 & 0x80000000) != 0)
    {
      if ((*(v5 + 48))(v28 + 1, v7, v4))
      {
LABEL_14:
        memcpy(v26, v27, v10);
LABEL_17:
        *(v26 + v10) = *(v27 + v10);
        return a1;
      }
    }

    else
    {
      v29 = *v28;
      if (*v28 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      if (v29 != -1)
      {
        goto LABEL_14;
      }
    }

    *v26 = *v27;
    v30 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v30 = *v28;
    v31 = *(v5 + 16);

    v31(v30 + 1, v28 + 1, v4);
    goto LABEL_17;
  }

  v14 = *a2;
  *a1 = *a2;
  a1 = v14 + (v9 & (v8 + 16));

  return a1;
}

uint64_t destroy for AdaptableTabViewRoot(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Binding<Visibility>?>.Content(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 17));
  v4 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_1(v4);

  v5 = (v4 + 55) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + (v8 | 7) + 16) & ~(v8 | 7);
  v10 = ~v8;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = v7;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    result = (*(v7 + 48))((v11 + v8 + 8) & v10);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v12 = *v11;
  if (*v11 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  result = (v12 + 1);
  if (v12 == -1)
  {
LABEL_7:

    v14 = *(v15 + 8);

    return v14((v11 + v8 + 8) & v10, v6);
  }

  return result;
}

uint64_t initializeWithCopy for AdaptableTabViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  v10.n128_f64[0] = outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v7, v9, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  v11 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[3];
  v11[3] = v13;
  v11[4] = v12[4];
  (**(v13 - 8))(v11, v12, v10);
  v11[5] = v12[5];
  v14 = (v11 + 55) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  v16 = *(a3 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  v19 = *(v17 + 80);
  v20 = *(v17 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  __dst = ((v19 + 16 + v14) & v20);
  v21 = ((v19 + 16 + v15) & v20);
  v22 = ~v19;
  v23 = ((v19 + 16) & ~v19) + *(v17 + 64);
  v24 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);

  if ((v18 & 0x80000000) == 0)
  {
    v25 = *v24;
    if (*v24 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    if (v25 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v26 = __dst;
    *__dst = *v21;
    v27 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = v16;
    *v27 = *v24;
    v28 = v27 + v19 + 8;
    v29 = *(v17 + 16);

    v29(v28 & v22, (v24 + v19 + 8) & v22, v31);
    goto LABEL_8;
  }

  if (!(*(v17 + 48))((v24 + v19 + 8) & v22, v18, v16))
  {
    goto LABEL_7;
  }

LABEL_5:
  v26 = __dst;
  memcpy(__dst, v21, v23);
LABEL_8:
  *(v26 + v23) = *(v21 + v23);
  return a1;
}

uint64_t assignWithCopy for AdaptableTabViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of Environment<Binding<Visibility>?>.Content(*a2, v7, v9, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 17);
  *a1 = v6;
  *(a1 + 8) = v7;
  v13 = *(a1 + 16);
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  outlined consume of Environment<Binding<Visibility>?>.Content(v10, v11, v13, v12);
  v14 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v14, v15);
  v14[5] = v15[5];

  v16 = (v14 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  v21 = *(v19 + 80);
  v22 = *(v19 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v23 = ((v21 + 16 + v16) & v22);
  v24 = ((v21 + 16 + v17) & v22);
  v25 = ~v21;
  v26 = *(v19 + 64);
  v27 = ((v21 + 16) & ~v21) + v26;
  v28 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v20 & 0x80000000) != 0)
  {
    v41 = ((v21 + 16) & ~v21) + v26;
    v32 = *(v19 + 48);
    v40 = v32((v28 + v21 + 8) & ~v21, v20, v18);
    v29 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = ~v21;
    v31 = v32((v29 + v21 + 8) & ~v21, v20, v18);
    v28 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    v27 = v41;
    if (!v40)
    {
LABEL_5:
      v42 = v28;
      if (!v31)
      {
        *v23 = *v24;

        *v42 = *v29;

        (*(v19 + 24))((v42 + v21 + 8) & v25, (v29 + v21 + 8) & v25, v18);
        goto LABEL_12;
      }

      (*(v19 + 8))((v42 + v21 + 8) & v25, v18);
      goto LABEL_9;
    }
  }

  else
  {
    v29 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v30) = -1;
    }

    v31 = v30 + 1;
    if (*v28 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v31)
  {
    *v23 = *v24;
    *v28 = *v29;
    v33 = v21 + 8;
    v34 = v27;
    v35 = v28 + v33;
    v36 = v29 + v33;
    v37 = *(v19 + 16);

    v38 = v35 & v25;
    v27 = v34;
    v37(v38, v36 & v25, v18);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v23, v24, v27);
LABEL_12:
  *(v23 + v27) = *(v24 + v27);
  return a1;
}

uint64_t initializeWithTake for AdaptableTabViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = v5[2];
  v4[1] = v5[1];
  v4[2] = v7;
  *v4 = v6;
  v8 = ((v4 + 55) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v5 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v8 + v12 + 16) & v13);
  v15 = ((v9 + v12 + 16) & v13);
  v16 = ~v12;
  v17 = ((v12 + 16) & ~v12) + *(v11 + 64);
  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v11 + 84) & 0x80000000) == 0)
  {
    v19 = *v18;
    if (*v18 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if (v19 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v14 = *v15;
    v20 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v18;
    (*(v11 + 32))((v20 + v12 + 8) & v16, (v18 + v12 + 8) & v16, v10);
    goto LABEL_8;
  }

  if (!(*(v11 + 48))((v18 + v12 + 8) & v16))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v14, v15, v17);
LABEL_8:
  *(v14 + v17) = *(v15 + v17);
  return a1;
}

uint64_t assignWithTake for AdaptableTabViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 17);
  *a1 = *a2;
  v11 = *(a1 + 16);
  *(a1 + 16) = v6;
  *(a1 + 17) = v7;
  outlined consume of Environment<Binding<Visibility>?>.Content(v8, v9, v11, v10);
  v12 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v12);
  v14 = *v13;
  v15 = *(v13 + 16);
  *(v12 + 32) = *(v13 + 32);
  *v12 = v14;
  *(v12 + 16) = v15;
  *(v12 + 40) = *(v13 + 40);

  v16 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v13 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  v21 = *(v19 + 80);
  v22 = *(v19 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v23 = ((v21 + 16 + v16) & v22);
  v24 = ((v21 + 16 + v17) & v22);
  v25 = *(v19 + 64);
  v26 = ((v21 + 16) & ~v21) + v25;
  v27 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = ~v21;
  if ((v20 & 0x80000000) != 0)
  {
    v36 = ((v21 + 16) & ~v21) + v25;
    v31 = *(v19 + 48);
    v32 = v31((v27 + v21 + 8) & ~v21, v20, v18);
    v33 = v31;
    v35 = v32;
    v28 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = v33((v28 + v21 + 8) & ~v21, v20, v18);
    v26 = v36;
    if (!v35)
    {
LABEL_5:
      if (!v30)
      {
        *v23 = *v24;

        *v27 = *v28;

        (*(v19 + 40))((v27 + v21 + 8) & v37, (v28 + v21 + 8) & v37, v18);
        goto LABEL_12;
      }

      (*(v19 + 8))((v27 + v21 + 8) & v37, v18);
      goto LABEL_9;
    }
  }

  else
  {
    v28 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    v29 = *v28;
    if (*v28 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v29) = -1;
    }

    v30 = v29 + 1;
    if (*v27 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v30)
  {
    *v23 = *v24;
    *v27 = *v28;
    (*(v19 + 32))((v27 + v21 + 8) & v37, (v28 + v21 + 8) & v37, v18);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v23, v24, v26);
LABEL_12:
  *(v23 + v26) = *(v24 + v26);
  return a1;
}

uint64_t getEnumTagSinglePayload for AdaptableTabViewRoot(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = *(v4 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_29;
  }

  v12 = ~(((-17 - v8) | v8) - *(*(*(a3 + 16) - 8) + 64) + ((-89 - v8) | v10));
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      v18 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0x80000000) != 0)
      {
        v20 = ((((((v18 + 55) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v5 & 0x80000000) != 0)
        {
          v22 = (*(v4 + 48))((v20 + v8 + 8) & ~v8);
        }

        else
        {
          v21 = *v20;
          if (v21 >= 0xFFFFFFFF)
          {
            LODWORD(v21) = -1;
          }

          v22 = v21 + 1;
        }

        if (v22 >= 2)
        {
          return v22 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *(v18 + 24);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (((-17 - v8) | v8) - *(*(*(a3 + 16) - 8) + 64) + ((-89 - v8) | v10) != -1)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for AdaptableTabViewRoot(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  if ((v8 - 1) <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = *(v6 + 80);
  v12 = ((v11 + 16) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  v13 = v12 + ((v11 + 88) & ~(v11 | 7)) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v19 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v13 < 4)
    {
      v18 = (v17 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 88) & ~(v11 | 7)) != -1)
      {
        v21 = v17 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_60:
              if (v16 == 2)
              {
                *&a1[v13] = v18;
              }

              else
              {
                *&a1[v13] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v16)
    {
      a1[v13] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v13] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v16)
  {
    goto LABEL_33;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v22 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v23 = ((((v22 + 55) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 16) & ~(v11 | 7));
    if (v9 >= a2)
    {
      v27 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v28 = *(v6 + 56);
        v29 = a2 + 1;

        v28((v27 + v11 + 8) & ~v11, v29);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v27 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v27 = a2;
      }
    }

    else
    {
      if (v12 <= 3)
      {
        v24 = ~(-1 << (8 * v12));
      }

      else
      {
        v24 = -1;
      }

      if (v12)
      {
        v25 = v24 & (a2 - v8);
        if (v12 <= 3)
        {
          v26 = v12;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v12);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v22 + 40) = 0;
    *(v22 + 24) = 0u;
    *(v22 + 8) = 0u;
    *v22 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v22 + 24) = a2 - 1;
  }
}

uint64_t instantiation function for generic protocol witness table for AdaptableTabViewRoot<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AdaptableTabViewRoot<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t AdaptableTabViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined init with copy of _VariadicView_Children(a1, v52);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = *&v52[16];
  *(v10 + 32) = *v52;
  *(v10 + 48) = v11;
  v12 = v54;
  *(v10 + 64) = v53;
  *(v10 + 80) = v12;
  v42 = v8;
  v43 = v9;
  v44 = partial apply for implicit closure #2 in implicit closure #1 in SystemTabView.BodyContent.body.getter;
  v45 = v10;
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  type metadata accessor for Binding<Int?>(0);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(_s7SwiftUI7BindingVyxGACySiSgGIgno_AdFs5NeverOIegnrzr_SHRzlTRTA_0, v41, MEMORY[0x1E69E73E0], v13, v14, &v48);

  v39 = a1;
  if (v49)
  {
    v15 = v50;
    v38 = v48;
    v16 = v51;
  }

  else
  {
    v17 = MEMORY[0x1E69E69B8];
    _sSiSgMaTm_0(0, &lazy cache variable for type metadata for State<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    outlined init with copy of _VariadicView_Children(a1, v52);
    type metadata accessor for ChildIndexProjection();
    v18 = swift_allocObject();
    v19 = *&v52[16];
    v18[1] = *v52;
    v18[2] = v19;
    v20 = v54;
    v18[3] = v53;
    v18[4] = v20;
    specialized Binding.projecting<A>(_:)(v18);
    v38 = v21;
    v15 = v22;
    v16 = v23;

    outlined destroy of Binding<AnyHashable>(&v46, &lazy cache variable for type metadata for Binding<AnyHashable>, v17, v24);
  }

  v25 = specialized Environment.wrappedValue.getter(*v4, *(v4 + 8), *(v4 + 16) | (*(v4 + 17) << 8));
  if (v26)
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    v31 = *(v4 + 80);
    LOBYTE(v46) = *(v4 + 72);
    v47 = v31;
    _sSiSgMaTm_0(0, &lazy cache variable for type metadata for State<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v29 = *&v52[8];
    v28 = *v52;
    v30 = v52[16];
  }

  outlined init with copy of _VariadicView_Children(v39, a3 + 48);
  KeyPath = swift_getKeyPath();
  v46 = 0;
  BindingOperations.NilCoalescing.init(defaultValue:)();
  v40 = *v52;
  v33 = *v52;
  *v52 = KeyPath;
  *&v52[8] = v33;
  v48 = v15;
  LOBYTE(v49) = v16 & 1;

  swift_getAtKeyPath();
  if (v47)
  {
    v34 = v40.n128_u64[0];
  }

  else
  {
    v34 = v46;
  }

  type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>(0, v40);
  lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>> and conformance ComposedProjection<A, B>, type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>, MEMORY[0x1E697F3A8]);
  v35 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  v36 = *(v4 + *(a2 + 48));
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  result = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = result;
  *(a3 + 40) = 0;
  *(a3 + 112) = v38;
  *(a3 + 120) = v35;
  *(a3 + 128) = v34;
  *(a3 + 136) = v28;
  *(a3 + 144) = v29;
  *(a3 + 152) = v30;
  *(a3 + 153) = v36;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance AdaptableTabViewRoot<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AdaptableTabViewRoot<A>, a5);

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

void *AdaptableTabView.body.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of _VariadicView_Children(v1 + 48, a1);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v19 = *(v1 + 128);
  v5 = *v1;
  v6 = *(v1 + 8);

  specialized Environment.wrappedValue.getter(v5, v6, &v20);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);
  v17 = *(v1 + 152);
  v18 = v20;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);

  result = specialized Environment.wrappedValue.getter(v9, v10, v11, v12);
  v14 = *(v1 + 153);
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = v19;
  *(a1 + 88) = v18;
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  *(a1 + 112) = v17;
  *(a1 + 120) = result;
  *(a1 + 128) = v15;
  *(a1 + 136) = v16;
  *(a1 + 144) = v14;
  return result;
}

uint64_t static PrimitiveAdaptableTabView._makeView(view:inputs:)(int *a1, uint64_t a2)
{
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for _GraphValue<PrimitiveAdaptableTabView>, &type metadata for PrimitiveAdaptableTabView, MEMORY[0x1E697DDB8]);
  _GraphValue.subscript.getter();
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  _GraphValue.subscript.getter();
  _GraphValue.subscript.getter();
  lazy protocol witness table accessor for type _GraphInputs.TabViewBottomAccessoryKey and conformance _GraphInputs.TabViewBottomAccessoryKey();

  PropertyList.subscript.getter();

  type metadata accessor for PrimitiveAdaptableTabView.BodyContent(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type PrimitiveAdaptableTabView.BodyContentRule and conformance PrimitiveAdaptableTabView.BodyContentRule();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type PrimitiveAdaptableTabView.BodyContent and conformance PrimitiveAdaptableTabView.BodyContent, type metadata accessor for PrimitiveAdaptableTabView.BodyContent, protocol conformance descriptor for PrimitiveAdaptableTabView.BodyContent);
  return static View.makeView(view:inputs:)();
}

double PrimitiveAdaptableTabView.BodyContentRule.value.getter@<D0>(uint64_t *a4@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of _VariadicView_Children(Value, v33);
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  v6 = AGGraphGetValue();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];

  v10 = AGGraphGetValue();
  v12 = *(v10 + 16);
  v11 = *(v10 + 32);
  v13 = *v10;
  *(v36 + 9) = *(v10 + 41);
  v35 = v12;
  v36[0] = v11;
  v34 = v13;
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
  outlined init with copy of TabSidebarConfiguration(&v34, &v32);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v15 = *WeakValue;
  }

  else
  {
    v15 = 0;
  }

  *a4 = swift_getKeyPath();
  type metadata accessor for Binding<TabViewCustomization>(0, &lazy cache variable for type metadata for Environment<Binding<TabViewCustomization>?>.Content, type metadata accessor for Binding<TabViewCustomization>?, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = type metadata accessor for PrimitiveAdaptableTabView.BodyContent(0);
  v21 = a4 + v20[5];
  *v21 = KeyPath;
  v21[8] = 0;
  v22 = a4 + v20[6];
  *v22 = v17;
  v22[8] = 0;
  v23 = a4 + v20[7];
  *v23 = v18;
  v23[8] = 0;
  v24 = a4 + v20[8];
  *v24 = v19;
  v24[8] = 0;
  v25 = (a4 + v20[9]);
  v26 = v33[1];
  *v25 = v33[0];
  v25[1] = v26;
  v27 = v33[3];
  v25[2] = v33[2];
  v25[3] = v27;
  v28 = (a4 + v20[10]);
  *v28 = v7;
  v28[1] = v8;
  v28[2] = v9;
  v29 = a4 + v20[11];
  *(v29 + 41) = *(v36 + 9);
  result = *&v35;
  v31 = v36[0];
  *(v29 + 1) = v35;
  *(v29 + 2) = v31;
  *v29 = v34;
  *(a4 + v20[12]) = v15;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance PrimitiveAdaptableTabView.BodyContentRule@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimitiveAdaptableTabView.BodyContent(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 1, 1, v3);
}

uint64_t _s7SwiftUI7BindingVyxGACySiSgGIgno_AdFs5NeverOIegnrzr_SHRzlTRTA_0@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6 & 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of EnumeratedSequence<_VariadicView_Children>.Iterator(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(0, a2, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, MEMORY[0x1E697FFD0], a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of (offset: Int, element: _VariadicView_Children.Element)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (offset: Int, element: _VariadicView_Children.Element)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: _VariadicView_Children.Element))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: _VariadicView_Children.Element));
    }
  }
}

uint64_t outlined init with copy of EnumeratedSequence<_VariadicView_Children>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(0, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6E48]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for UISceneSession()
{
  result = lazy cache variable for type metadata for UISceneSession;
  if (!lazy cache variable for type metadata for UISceneSession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UISceneSession);
  }

  return result;
}

double outlined copy of Environment<TabSidebarAccessoryViewConfiguration>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }

  return result;
}

double destroy for AdaptableTabView(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<TabSidebarAccessoryViewConfiguration>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  __swift_destroy_boxed_opaque_existential_1((a1 + 48));

  return result;
}

uint64_t initializeWithCopy for AdaptableTabView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of Environment<TabSidebarAccessoryViewConfiguration>.Content(v6, v7, v8, v9);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(a2 + 72);
  *(a1 + 72) = v10;
  (**(v10 - 8))(a1 + 48, a2 + 48);
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  *(a1 + 88) = v11;
  *(a1 + 96) = v12;
  v13 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v13;
  v14 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v14;
  v15 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v15;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 153) = *(a2 + 153);
  v16 = v11;

  return a1;
}

uint64_t assignWithCopy for AdaptableTabView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  outlined copy of Environment<TabSidebarAccessoryViewConfiguration>.Content(v8, v9, v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  outlined consume of Environment<TabSidebarAccessoryViewConfiguration>.Content(v12, v13, v14, v15);
  __swift_assign_boxed_opaque_existential_1((a1 + 48), (a2 + 48));
  v16 = *(a2 + 88);
  v17 = *(a1 + 88);
  *(a1 + 88) = v16;
  v18 = v16;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 153) = *(a2 + 153);
  return a1;
}

uint64_t assignWithTake for AdaptableTabView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = a2[4];
  v9 = *(a2 + 40);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  outlined consume of Environment<TabSidebarAccessoryViewConfiguration>.Content(v10, v11, v12, v13);
  __swift_destroy_boxed_opaque_existential_1((a1 + 48));
  v14 = *(a2 + 4);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = v14;
  v15 = a2[11];
  v16 = *(a1 + 88);
  *(a1 + 80) = a2[10];
  *(a1 + 88) = v15;

  *(a1 + 96) = a2[12];

  v17 = a2[14];
  *(a1 + 104) = a2[13];
  *(a1 + 112) = v17;

  *(a1 + 120) = a2[15];

  v18 = a2[17];
  *(a1 + 128) = a2[16];
  *(a1 + 136) = v18;

  *(a1 + 144) = a2[18];

  *(a1 + 152) = *(a2 + 76);
  return a1;
}

uint64_t getEnumTagSinglePayload for AdaptableTabView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 154))
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

uint64_t storeEnumTagSinglePayload for AdaptableTabView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 154) = 1;
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

    *(result + 154) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for PrimitiveAdaptableTabView(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  if (*(a1 + 104))
  {
  }

  if (*(a1 + 120) != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for PrimitiveAdaptableTabView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v8;
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 104);
  v10 = v5;

  if (v9)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v9;
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
  }

  v11 = *(a2 + 120);
  if (v11 == 1)
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
  }

  else
  {
    v12 = *(a2 + 128);
    v13 = *(a2 + 136);
    *(a1 + 120) = v11;
    *(a1 + 128) = v12;
    *(a1 + 136) = v13;
  }

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithCopy for PrimitiveAdaptableTabView(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v8 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v8)
    {
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);

      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      outlined destroy of Binding<AnyHashable>(a1 + 96, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], v7);
      v9 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v9;
    }
  }

  else if (v8)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    v10 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v10;
  }

  v11 = (a1 + 120);
  v13 = (a2 + 120);
  v12 = *(a2 + 120);
  if (*(a1 + 120) == 1)
  {
    if (v12 == 1)
    {
      v14 = *v13;
      *(a1 + 136) = *(a2 + 136);
      *v11 = v14;
    }

    else
    {
      *(a1 + 120) = v12;
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
    }
  }

  else if (v12 == 1)
  {
    outlined destroy of TabSidebarAccessoryViewConfiguration(a1 + 120);
    v15 = *(a2 + 136);
    *v11 = *v13;
    *(a1 + 136) = v15;
  }

  else
  {
    *(a1 + 120) = v12;

    *(a1 + 128) = *(a2 + 128);

    *(a1 + 136) = *(a2 + 136);
  }

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t outlined destroy of Binding<AnyHashable>(uint64_t a1, unint64_t *a2, uint64_t a3, __n128 a4)
{
  _sSiSgMaTm_0(0, a2, a3, MEMORY[0x1E6981948]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t assignWithTake for PrimitiveAdaptableTabView(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  if (*(a1 + 104))
  {
    v9 = *(a2 + 104);
    if (v9)
    {
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = v9;

      *(a1 + 112) = *(a2 + 112);
      goto LABEL_6;
    }

    outlined destroy of Binding<AnyHashable>(a1 + 96, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50], v8);
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
LABEL_6:
  v10 = *(a2 + 120);
  if (*(a1 + 120) != 1)
  {
    if (v10 != 1)
    {
      *(a1 + 120) = v10;

      *(a1 + 128) = *(a2 + 128);

      *(a1 + 136) = *(a2 + 136);

      goto LABEL_11;
    }

    outlined destroy of TabSidebarAccessoryViewConfiguration(a1 + 120);
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
LABEL_11:
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for PrimitiveAdaptableTabView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t storeEnumTagSinglePayload for PrimitiveAdaptableTabView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.TabViewBottomAccessoryKey and conformance _GraphInputs.TabViewBottomAccessoryKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.TabViewBottomAccessoryKey and conformance _GraphInputs.TabViewBottomAccessoryKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.TabViewBottomAccessoryKey and conformance _GraphInputs.TabViewBottomAccessoryKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.TabViewBottomAccessoryKey, &type metadata for _GraphInputs.TabViewBottomAccessoryKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.TabViewBottomAccessoryKey and conformance _GraphInputs.TabViewBottomAccessoryKey);
  }

  return result;
}

void key path getter for EnvironmentValues.tabViewCustomization : EnvironmentValues(uint64_t *a1)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>();
    lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>();
    lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

uint64_t key path setter for EnvironmentValues.tabViewCustomization : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Binding<TabViewCustomization>?(a1, v4);
  return EnvironmentValues.tabViewCustomization.setter(v4);
}

unint64_t lazy protocol witness table accessor for type PrimitiveAdaptableTabView.BodyContentRule and conformance PrimitiveAdaptableTabView.BodyContentRule()
{
  result = lazy protocol witness table cache variable for type PrimitiveAdaptableTabView.BodyContentRule and conformance PrimitiveAdaptableTabView.BodyContentRule;
  if (!lazy protocol witness table cache variable for type PrimitiveAdaptableTabView.BodyContentRule and conformance PrimitiveAdaptableTabView.BodyContentRule)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveAdaptableTabView.BodyContentRule, &unk_1EFFBAA80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveAdaptableTabView.BodyContentRule and conformance PrimitiveAdaptableTabView.BodyContentRule);
  }

  return result;
}

void _sSiSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with copy of Binding<TabViewCustomization>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TabViewCustomization.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabViewCustomization.Key>);
    }
  }
}

uint64_t LimitedAvailabilityScene.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LimitedAvailabilitySceneStorage(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1, a2);
  v10 = LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v6);
  (*(v4 + 8))(a1, a2);
  return v10;
}

uint64_t static LimitedAvailabilityScene._makeScene(scene:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *&v25[12] = *(a2 + 44);
  v5 = a2[1];
  v23 = *a2;
  v24 = v5;
  *v25 = a2[2];

  PreferencesOutputs.init()();

  v10 = *&v25[16];
  v11 = *&v25[24];
  PreferencesInputs.makeIndirectOutputs()();

  v6 = v12;
  v7 = DWORD2(v12);
  v8 = AGSubgraphGetCurrent();
  if (!v8)
  {
    __break(1u);
  }

  *(v20 + 12) = *&v25[12];
  v19[2] = v24;
  v20[0] = *v25;
  v19[1] = v23;
  LODWORD(v19[0]) = v4;
  *(&v19[0] + 1) = v8;
  *&v21 = v12;
  DWORD2(v21) = DWORD2(v12);
  v22 = 0;
  v16 = v20[1];
  v17 = v21;
  v18 = 0;
  v12 = v19[0];
  v13 = v23;
  v14 = v24;
  v15 = *v25;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _SceneInputs(&v23, &v10);
  lazy protocol witness table accessor for type LimitedAvailabilityScene.IndirectOutputs and conformance LimitedAvailabilityScene.IndirectOutputs();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LimitedAvailabilityScene.IndirectOutputs(v19);
  *&v12 = v6;
  DWORD2(v12) = v7;

  LOBYTE(v10) = 0;
  PreferencesOutputs.setIndirectDependency(_:)();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

void LimitedAvailabilityScene.IndirectOutputs.updateValue()()
{
  if (!*(v0 + 96))
  {
    v1 = AGSubgraphGetGraph();
    v2 = AGSubgraphCreate();

    *(v0 + 96) = v2;
    v4 = v2;
    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in LimitedAvailabilityScene.IndirectOutputs.updateValue()(v0);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t closure #1 in LimitedAvailabilityScene.IndirectOutputs.updateValue()(unsigned int *a1)
{
  v2 = *(a1 + 2);
  v23[0] = *(a1 + 1);
  v23[1] = v2;
  v24[0] = *(a1 + 3);
  *(v24 + 12) = *(a1 + 15);
  v3 = v2;
  v22 = v23[0];
  v4 = *(a1 + 14);
  v19 = *(a1 + 10);
  v20 = v4;
  v21 = a1[18];
  swift_beginAccess();
  v5 = v3[3];
  v25[1] = v3[2];
  v25[2] = v5;
  v6 = v3[5];
  v25[3] = v3[4];
  v25[4] = v6;
  v25[0] = v3[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v7 = swift_allocObject();
  memmove((v7 + 16), v3 + 1, 0x50uLL);
  outlined init with copy of _SceneInputs(v23, &v17);
  outlined init with copy of CachedEnvironment(v25, &v17);

  v8 = *(a1 + 10);
  v9 = a1[22];

  v10 = *AGGraphGetValue();
  LODWORD(v13) = *a1;
  v26 = v22;
  *v27 = v7;
  *&v27[8] = v19;
  *&v27[40] = v21;
  *&v27[24] = v20;
  v17 = v22;
  *v18 = *v27;
  *&v18[16] = *&v27[16];
  *&v18[28] = *&v27[28];
  v11 = *(*v10 + 80);

  outlined init with copy of _SceneInputs(&v26, v28);
  v11(&v15, &v13, &v17);

  v28[0] = v17;
  v28[1] = *v18;
  v29[0] = *&v18[16];
  *(v29 + 12) = *&v18[28];
  outlined destroy of _SceneInputs(v28);
  *&v17 = v8;
  DWORD2(v17) = v9;
  v13 = v15;
  v14 = v16;
  PreferencesOutputs.attachIndirectOutputs(to:)();

  v17 = v22;
  *v18 = v7;
  *&v18[8] = v19;
  *&v18[24] = v20;
  *&v18[40] = v21;
  return outlined destroy of _SceneInputs(&v17);
}

uint64_t LimitedAvailabilitySceneStorage.makeScene(scene:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *a1;
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v15[0] = a2[2];
  *(v15 + 12) = *(a2 + 44);
  v8 = *(v5 + 96);
  v9 = *(v5 + 104);
  v13 = v6;
  v10 = type metadata accessor for LimitedAvailabilitySceneStorage.Child(0, v8, v9, a4);
  swift_getWitnessTable(protocol conformance descriptor for LimitedAvailabilitySceneStorage<A>.Child, v10);
  _GraphValue.init<A>(_:)();
  return (*(v9 + 32))(v12, v14, v8, v9);
}

uint64_t LimitedAvailabilitySceneStorage.Child.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AGGraphGetValue();
  type metadata accessor for LimitedAvailabilitySceneStorage(0, a2, a3, v7);
  v8 = swift_dynamicCastClassUnconditional();
  v9 = *(*(a2 - 8) + 16);
  v10 = v8 + *(*v8 + 112);

  return v9(a4, v10, a2);
}

unint64_t lazy protocol witness table accessor for type LimitedAvailabilityScene.IndirectOutputs and conformance LimitedAvailabilityScene.IndirectOutputs()
{
  result = lazy protocol witness table cache variable for type LimitedAvailabilityScene.IndirectOutputs and conformance LimitedAvailabilityScene.IndirectOutputs;
  if (!lazy protocol witness table cache variable for type LimitedAvailabilityScene.IndirectOutputs and conformance LimitedAvailabilityScene.IndirectOutputs)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LimitedAvailabilityScene.IndirectOutputs, &unk_1EFFBABF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LimitedAvailabilityScene.IndirectOutputs and conformance LimitedAvailabilityScene.IndirectOutputs);
  }

  return result;
}

void DocumentGroup<>.init(newDocument:editor:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _UNKNOWN **a8@<X7>, uint64_t a9@<X8>)
{
  v18 = _typeName(_:qualified:)();
  DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, a2, a3, a4, v18, v19, a5, a6, a9, a7, a8);
}

{
  v18 = _typeName(_:qualified:)();
  DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, a2, a3, a4, v18, v19, a5, a6, a9, a7, a8);
}

void DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _UNKNOWN **a11)
{
  *a9 = 0;
  v18 = type metadata accessor for ReferenceFileDocumentBox(0, a7, a10, a4);
  *(a9 + 8) = v18;
  *(a9 + 16) = &protocol witness table for ReferenceFileDocumentBox<A>;
  *(a9 + 48) = type metadata accessor for DocumentGroupConfiguration.NewReferenceFileDocument(0, a7, a10, v19);
  *(a9 + 56) = &protocol witness table for DocumentGroupConfiguration.NewReferenceFileDocument<A>;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a11;
  v20[4] = a3;
  v20[5] = a4;
  v31 = a7;
  v32 = a8;
  v33 = a10;
  v34 = a11;
  v21 = type metadata accessor for DocumentGroupConfiguration.EditorReferenceFileDocumentContainer(255, &v31);
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v22 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ReferenceFileDocumentBox<A>, v18);
  v24 = swift_getWitnessTable(protocol conformance descriptor for DocumentGroupConfiguration.EditorReferenceFileDocumentContainer<A, B>, v21);
  v25 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>, MEMORY[0x1E697F4D0]);
  v38[0] = v24;
  v38[1] = v25;
  v26 = swift_getWitnessTable(MEMORY[0x1E697E858], v22, v38);
  v36 = PlatformItemListTransformModifier.init(flags:transform:)(v18, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:));
  v37 = v27;

  v31 = v18;
  v32 = v22;
  v33 = WitnessTable;
  v34 = &protocol witness table for ReferenceFileDocumentBox<A>;
  v35 = v26;
  type metadata accessor for ObservableDocumentBoxInputView(0, &v31);
  *(a9 + 64) = AnyView.init<A>(_:)();
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = (*(a10 + 24))(a7, a10);
  v28 = (*(a10 + 32))(a7, a10);

  *(a9 + 96) = v28;
}

{
  *a9 = 0;
  v18 = type metadata accessor for FileDocumentBox(0, a7, a10, a4);
  *(a9 + 8) = v18;
  *(a9 + 16) = &protocol witness table for FileDocumentBox<A>;
  *(a9 + 48) = type metadata accessor for DocumentGroupConfiguration.NewFileDocument(0, a7, a10, v19);
  *(a9 + 56) = &protocol witness table for DocumentGroupConfiguration.NewFileDocument<A>;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a11;
  v20[4] = a3;
  v20[5] = a4;
  v31 = a7;
  v32 = a8;
  v33 = a10;
  v34 = a11;
  v21 = type metadata accessor for DocumentGroupConfiguration.EditorFileDocumentContainer(255, &v31);
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v22 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FileDocumentBox<A>, v18);
  v24 = swift_getWitnessTable(protocol conformance descriptor for DocumentGroupConfiguration.EditorFileDocumentContainer<A, B>, v21);
  v25 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>, MEMORY[0x1E697F4D0]);
  v38[0] = v24;
  v38[1] = v25;
  v26 = swift_getWitnessTable(MEMORY[0x1E697E858], v22, v38);
  v36 = PlatformItemListTransformModifier.init(flags:transform:)(v18, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:));
  v37 = v27;

  v31 = v18;
  v32 = v22;
  v33 = WitnessTable;
  v34 = &protocol witness table for FileDocumentBox<A>;
  v35 = v26;
  type metadata accessor for ObservableDocumentBoxInputView(0, &v31);
  *(a9 + 64) = AnyView.init<A>(_:)();
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = (*(a10 + 8))(a7, a10);
  v28 = (*(a10 + 16))(a7, a10);

  *(a9 + 96) = v28;
}

void DocumentGroup<>.init(viewing:viewer:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _UNKNOWN **a7@<X6>, uint64_t x8_0@<X8>)
{
  v15 = _typeName(_:qualified:)();
  DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:)(a2, a3, v15, v16, a4, a5, a6, x8_0, a7);
}

{
  v15 = _typeName(_:qualified:)();
  DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:)(a2, a3, v15, v16, a4, a5, a6, x8_0, a7);
}

void DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, _UNKNOWN **a9)
{
  *a8 = 1;
  v15 = type metadata accessor for ReferenceFileDocumentBox(0, a5, a7, a3);
  *(a8 + 8) = v15;
  *(a8 + 16) = &protocol witness table for ReferenceFileDocumentBox<A>;
  *(a8 + 24) = 0u;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a9;
  v16[4] = a1;
  v16[5] = a2;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a9;
  v17 = type metadata accessor for DocumentGroupConfiguration.ViewerReferenceFileDocumentContainer(255, &v27);
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v18 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ReferenceFileDocumentBox<A>, v15);
  v20 = swift_getWitnessTable(protocol conformance descriptor for DocumentGroupConfiguration.ViewerReferenceFileDocumentContainer<A, B>, v17);
  v21 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>, MEMORY[0x1E697F4D0]);
  v34[0] = v20;
  v34[1] = v21;
  v22 = swift_getWitnessTable(MEMORY[0x1E697E858], v18, v34);
  v32 = PlatformItemListTransformModifier.init(flags:transform:)(v15, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:));
  v33 = v23;

  v27 = v15;
  v28 = v18;
  v29 = WitnessTable;
  v30 = &protocol witness table for ReferenceFileDocumentBox<A>;
  v31 = v22;
  type metadata accessor for ObservableDocumentBoxInputView(0, &v27);
  *(a8 + 64) = AnyView.init<A>(_:)();
  *(a8 + 72) = a3;
  *(a8 + 80) = a4;
  *(a8 + 88) = (*(a7 + 24))(a5, a7);
  v24 = (*(a7 + 32))(a5, a7);

  *(a8 + 96) = v24;
}

{
  *a8 = 1;
  v15 = type metadata accessor for FileDocumentBox(0, a5, a7, a3);
  *(a8 + 8) = v15;
  *(a8 + 16) = &protocol witness table for FileDocumentBox<A>;
  *(a8 + 24) = 0u;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a9;
  v16[4] = a1;
  v16[5] = a2;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a9;
  v17 = type metadata accessor for DocumentGroupConfiguration.ViewerFileDocumentContainer(255, &v27);
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v18 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FileDocumentBox<A>, v15);
  v20 = swift_getWitnessTable(protocol conformance descriptor for DocumentGroupConfiguration.ViewerFileDocumentContainer<A, B>, v17);
  v21 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>, MEMORY[0x1E697F4D0]);
  v34[0] = v20;
  v34[1] = v21;
  v22 = swift_getWitnessTable(MEMORY[0x1E697E858], v18, v34);
  v32 = PlatformItemListTransformModifier.init(flags:transform:)(v15, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:));
  v33 = v23;

  v27 = v15;
  v28 = v18;
  v29 = WitnessTable;
  v30 = &protocol witness table for FileDocumentBox<A>;
  v31 = v22;
  type metadata accessor for ObservableDocumentBoxInputView(0, &v27);
  *(a8 + 64) = AnyView.init<A>(_:)();
  *(a8 + 72) = a3;
  *(a8 + 80) = a4;
  *(a8 + 88) = (*(a7 + 8))(a5, a7);
  v24 = (*(a7 + 16))(a5, a7);

  *(a8 + 96) = v24;
}

uint64_t ReferenceFileDocumentConfiguration.document.getter()
{
  specialized ReferenceFileDocumentConfiguration.document.getter();

  return swift_unknownObjectRetain();
}

uint64_t key path getter for ReferenceFileDocumentConfiguration.document : <A>ReferenceFileDocumentConfiguration<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for ReferenceFileDocumentConfiguration(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  *a3 = specialized ReferenceFileDocumentConfiguration.document.getter();

  return swift_unknownObjectRetain();
}

uint64_t ReferenceFileDocumentConfiguration.init(document:fileURL:isEditable:)@<X0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = ObservedObject.init(wrappedValue:)();
  a6[1] = v11;
  v13 = type metadata accessor for ReferenceFileDocumentConfiguration(0, a4, a5, v12);
  result = outlined init with take of URL?(a2, a6 + *(v13 + 36));
  *(a6 + *(v13 + 40)) = a3;
  return result;
}

void ReferenceFileDocumentBox.base.didset()
{
  v1 = ReferenceFileDocumentBox.base.getter();
  if (v1)
  {
    swift_unknownObjectRelease();
  }

  *(v0 + *(*v0 + 120)) = v1 != 0;
}

uint64_t ReferenceFileDocumentBox.base.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double (*ReferenceFileDocumentBox.base.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ReferenceFileDocumentBox.base.getter();
  return ReferenceFileDocumentBox.base.modify;
}

double ReferenceFileDocumentBox.base.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = swift_unknownObjectRetain();
    specialized ReferenceFileDocumentBox.base.setter(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    specialized ReferenceFileDocumentBox.base.setter(v2);
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t property wrapper backing initializer of ReferenceFileDocumentBox.fileURL(uint64_t a1)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of URL?(a1, &v9 - v6);
  outlined init with copy of URL?(v7, v4);
  Published.init(initialValue:)();
  outlined destroy of FileDocumentWriteConfiguration(a1, type metadata accessor for URL?);
  return outlined destroy of FileDocumentWriteConfiguration(v7, type metadata accessor for URL?);
}

double ReferenceFileDocumentBox.fileURL.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t ReferenceFileDocumentBox.fileURL.setter(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 80);
  v7 = v11;
  v12 = *(v3 + 88);
  v8 = v12;
  swift_getKeyPath();
  v10[0] = v7;
  v10[1] = v8;
  swift_getKeyPath();
  outlined init with copy of URL?(a1, v6);

  static Published.subscript.setter();
  return outlined destroy of FileDocumentWriteConfiguration(a1, type metadata accessor for URL?);
}

uint64_t (*ReferenceFileDocumentBox.fileURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return ReferenceFileDocumentBox.fileURL.modify;
}

uint64_t ReferenceFileDocumentBox.isEditable.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ReferenceFileDocumentBox.isEditable.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ReferenceFileDocumentBox.isEditable.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return ReferenceFileDocumentBox.isEditable.modify;
}

void ReferenceFileDocumentBox.fileURL.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t ReferenceFileDocumentBox.__allocating_init()()
{
  v0 = swift_allocObject();
  ReferenceFileDocumentBox.init()();
  return v0;
}

uint64_t *ReferenceFileDocumentBox.init()()
{
  v1 = *v0;
  type metadata accessor for Published<Bool>();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation3URLVSgMaTm_1(0, &lazy cache variable for type metadata for Published<URL?>, type metadata accessor for URL?, MEMORY[0x1E695C070]);
  v23 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Optional();
  v12 = type metadata accessor for Published();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *(v1 + 96);
  v26 = 0;
  v17 = type metadata accessor for Optional();
  Published.init(wrappedValue:)(&v26, v17);
  (*(v13 + 32))(v0 + v16, v15, v12);
  v18 = *(*v0 + 104);
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  property wrapper backing initializer of ReferenceFileDocumentBox.fileURL(v11);
  (*(v6 + 32))(v0 + v18, v8, v23);
  v20 = *(*v0 + 112);
  v27 = 0;
  Published.init(initialValue:)();
  (*(v24 + 32))(v0 + v20, v4, v25);
  *(v0 + *(*v0 + 120)) = 0;
  *(v0 + *(*v0 + 128)) = 0;
  specialized ReferenceFileDocumentBox.base.setter(0);
  return v0;
}

void ReferenceFileDocumentBox.read(from:contentType:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v4;
  Configuration = type metadata accessor for FileDocumentReadConfiguration(0);
  v9 = Configuration - 8;
  MEMORY[0x1EEE9AC00](Configuration);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + 80);
  v13 = type metadata accessor for UTType();
  (*(*(v13 - 8) + 16))(v11, a2, v13);
  *&v11[*(v9 + 28)] = a1;
  v14 = *(v7 + 88);
  v15 = *(v14 + 40);
  v16 = a1;
  v17 = v15(v11, v12, v14);
  if (!v3)
  {
    specialized ReferenceFileDocumentBox.base.setter(v17);
    swift_unknownObjectRelease();
  }
}

void ReferenceFileDocumentBox.snapshotForSerialization(contentType:)(uint64_t a1)
{
  v25 = a1;
  v3 = *v1;
  v24 = type metadata accessor for UTType();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v23 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  v13 = ReferenceFileDocumentBox.base.getter();
  if (v13)
  {
    v14 = v13;
    (*(v5 + 48))(v25, v6, v5);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v20[0] = AssociatedTypeWitness;
      v20[1] = 0;
      v15 = v21 + 32;
      v21 = *(v21 + 32);
      (v21)(v9, v12, AssociatedTypeWitness);
      v16 = v22;
      (*(v22 + 16))(v23, v25, v24);
      v17 = (*(v15 + 48) + 40) & ~*(v15 + 48);
      v18 = (v8 + *(v16 + 80) + v17) & ~*(v16 + 80);
      v19 = swift_allocObject();
      *(v19 + 2) = v6;
      *(v19 + 3) = v5;
      *(v19 + 4) = v14;
      (v21)(&v19[v17], v9, v20[0]);
      (*(v16 + 32))(&v19[v18], v23, v24);
    }
  }
}

uint64_t closure #1 in ReferenceFileDocumentBox.snapshotForSerialization(contentType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for FileDocumentWriteConfiguration(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UTType();
  (*(*(v15 - 8) + 16))(v14, a4, v15);
  *&v14[*(v12 + 28)] = a1;
  v16 = *(a6 + 56);
  v17 = a1;
  v18 = v16(a3, v14, a5, a6);
  outlined destroy of FileDocumentWriteConfiguration(v14, type metadata accessor for FileDocumentWriteConfiguration);
  return v18;
}

uint64_t ReferenceFileDocumentBox.deinit()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  _s10Foundation3URLVSgMaTm_1(0, &lazy cache variable for type metadata for Published<URL?>, type metadata accessor for URL?, MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 112);
  type metadata accessor for Published<Bool>();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

double ReferenceFileDocumentBox.__deallocating_deinit()
{
  ReferenceFileDocumentBox.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ReferenceFileDocumentBox<A>@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for ReferenceFileDocumentBox(0, *(a1 + 80), *(a1 + 88), x3_0);
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t protocol witness for DocumentBaseBox.base.getter in conformance ReferenceFileDocumentBox<A>@<X0>(uint64_t *a1@<X8>)
{
  result = ReferenceFileDocumentBox.base.getter();
  *a1 = result;
  return result;
}

double protocol witness for DocumentBaseBox.base.setter in conformance ReferenceFileDocumentBox<A>(uint64_t *a1)
{
  specialized ReferenceFileDocumentBox.base.setter(*a1);

  swift_unknownObjectRelease();
  return result;
}

uint64_t (*protocol witness for DocumentBaseBox.base.modify in conformance ReferenceFileDocumentBox<A>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ReferenceFileDocumentBox.base.modify(v2);
  return protocol witness for DocumentBaseBox.base.modify in conformance ReferenceFileDocumentBox<A>;
}

uint64_t (*protocol witness for ObservableDocumentBox.fileURL.modify in conformance ReferenceFileDocumentBox<A>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ReferenceFileDocumentBox.fileURL.modify(v2);
  return protocol witness for DocumentBaseBox.base.modify in conformance ReferenceFileDocumentBox<A>;
}

void (*protocol witness for ObservableDocumentBox.isEditable.modify in conformance ReferenceFileDocumentBox<A>(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ReferenceFileDocumentBox.isEditable.modify(v2);
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

void *protocol witness for ObservableDocumentBox.undoManager.getter in conformance ReferenceFileDocumentBox<A>()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for ObservableDocumentBox.undoManager.setter in conformance ReferenceFileDocumentBox<A>(uint64_t a1)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double DocumentGroupConfiguration.NewReferenceFileDocument.provideNewDocument(to:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ReferenceFileDocumentBox(0, a5, a6, a4);
  swift_dynamicCastClassUnconditional();
  v7 = a3();
  specialized ReferenceFileDocumentBox.base.setter(v7);

  swift_unknownObjectRelease();
  return result;
}

uint64_t DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.configuration.getter@<X0>(uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = ReferenceFileDocumentBox.base.getter();
  if (result)
  {
    ReferenceFileDocumentBox.fileURL.getter();
    v11 = ReferenceFileDocumentBox.isEditable.getter();

    return ReferenceFileDocumentConfiguration.init(document:fileURL:isEditable:)(v9, v11 & 1, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void *), const char *a7)
{
  v14 = *a1;

  v20[4] = property wrapper backing initializer of DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.modelBox(a1, a4, a5, v15);
  v20[5] = v16;
  v20[6] = a2;
  v20[7] = a3;
  v17 = *(v14 + 88);
  v20[0] = *(v14 + 80);
  v20[1] = a4;
  v20[2] = v17;
  v20[3] = a5;
  v18 = a6(0, v20);
  swift_getWitnessTable(a7, v18);
  View.styleContext<A>(_:)();

  return result;
}

{
  v14 = *a1;

  v20[4] = property wrapper backing initializer of DocumentGroupConfiguration.EditorFileDocumentContainer.modelBox(a1, a4, a5, v15);
  v20[5] = v16;
  v20[6] = a2;
  v20[7] = a3;
  v17 = *(v14 + 88);
  v20[0] = *(v14 + 80);
  v20[1] = a4;
  v20[2] = v17;
  v20[3] = a5;
  v18 = a6(0, v20);
  swift_getWitnessTable(a7, v18);
  View.styleContext<A>(_:)();

  return result;
}

uint64_t property wrapper backing initializer of DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.modelBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ReferenceFileDocumentBox(0, *(*a1 + 80), *(*a1 + 88), a4);
  swift_getWitnessTable(protocol conformance descriptor for ReferenceFileDocumentBox<A>, v4);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t, uint64_t, void (*)(char *), uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v80 = a8;
  v74 = a4;
  v67 = a3;
  v83 = a1;
  v81 = a9;
  type metadata accessor for DocumentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v68 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a7;
  v71 = type metadata accessor for ReferenceFileDocumentConfiguration(0, a5, a7, v16);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v18 = v62 - v17;
  v69 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v66 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Optional();
  v84 = type metadata accessor for _EnvironmentKeyWritingModifier();
  v21 = type metadata accessor for ModifiedContent();
  v72 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v82 = v62 - v22;
  type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>(255);
  v79 = v21;
  v23 = type metadata accessor for ModifiedContent();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v75 = v62 - v28;
  v78 = type metadata accessor for _ConditionalContent();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = v62 - v29;

  v30 = ReferenceFileDocumentBox.base.getter();

  if (v30)
  {
    v65 = v23;
    v31 = v67;
    v63 = v26;
    v64 = v24;
    v32 = v80;
    a10(v83, a2, v67, v74, a5, a6, v73, v80, a2);
    v33 = v66;
    v62[1] = v30;
    v31(v18);
    (*(v70 + 8))(v18, v71);
    View.environmentObject<A>(_:)();
    (*(v69 + 8))(v33, a6);
    swift_getKeyPath();
    v34 = v68;
    v23 = v65;
    DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.documentConfiguration.getter(v68);
    v35 = type metadata accessor for DocumentConfiguration(0);
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = MEMORY[0x1E6980A18];
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E6980A18], v84);
    v86[0] = v32;
    v86[1] = WitnessTable;
    v38 = MEMORY[0x1E697E858];
    v39 = v79;
    v40 = swift_getWitnessTable(MEMORY[0x1E697E858], v79, v86);
    v41 = v63;
    v42 = v82;
    View.environment<A>(_:_:)();

    outlined destroy of FileDocumentWriteConfiguration(v34, type metadata accessor for DocumentConfiguration?);
    (*(v72 + 8))(v42, v39);
    v43 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, v36);
    v85[0] = v40;
    v85[1] = v43;
    v44 = swift_getWitnessTable(v38, v23, v85);
    v45 = v75;
    static ViewBuilder.buildExpression<A>(_:)();
    v46 = *(v64 + 8);
    v46(v41, v23);
    v47 = v41;
    static ViewBuilder.buildExpression<A>(_:)();
    v48 = v76;
    static ViewBuilder.buildEither<A, B>(first:)(v47, v23, MEMORY[0x1E69815C0], v44, MEMORY[0x1E6981580]);
    swift_unknownObjectRelease();
    v46(v47, v23);
    v46(v45, v23);
  }

  else
  {
    v92 = static Color.clear.getter();
    v49 = MEMORY[0x1E6980A18];
    v50 = swift_getWitnessTable(MEMORY[0x1E6980A18], v84);
    v39 = v79;
    v32 = v80;
    v91[0] = v80;
    v91[1] = v50;
    v51 = MEMORY[0x1E697E858];
    v52 = swift_getWitnessTable(MEMORY[0x1E697E858], v79, v91);
    v53 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, v49);
    v90[0] = v52;
    v90[1] = v53;
    v54 = swift_getWitnessTable(v51, v23, v90);
    v48 = v76;
    static ViewBuilder.buildEither<A, B>(second:)(&v92, v23, MEMORY[0x1E69815C0], v54, MEMORY[0x1E6981580]);
  }

  v55 = MEMORY[0x1E6980A18];
  v56 = swift_getWitnessTable(MEMORY[0x1E6980A18], v84);
  v89[0] = v32;
  v89[1] = v56;
  v57 = MEMORY[0x1E697E858];
  v58 = swift_getWitnessTable(MEMORY[0x1E697E858], v39, v89);
  v59 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, v55);
  v88[0] = v58;
  v88[1] = v59;
  v87[0] = swift_getWitnessTable(v57, v23, v88);
  v87[1] = MEMORY[0x1E6981580];
  v60 = v78;
  swift_getWitnessTable(MEMORY[0x1E697F968], v78, v87);
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v77 + 8))(v48, v60);
}

uint64_t DocumentGroupConfiguration.ViewerReferenceFileDocumentContainer.configuration.getter@<X0>(uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = ReferenceFileDocumentBox.base.getter();
  if (result)
  {
    ReferenceFileDocumentBox.fileURL.getter();

    return ReferenceFileDocumentConfiguration.init(document:fileURL:isEditable:)(v9, 0, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.documentConfiguration.getter(_BYTE *a2@<X8>)
{

  v3 = ReferenceFileDocumentBox.isEditable.getter();
  type metadata accessor for DocumentConfiguration(0);
  ReferenceFileDocumentBox.fileURL.getter();

  *a2 = v3 & 1;
}

uint64_t key path setter for ReferenceFileDocumentBox.fileURL : <A>ReferenceFileDocumentBox<A>(uint64_t a1)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a1, v4);
  return ReferenceFileDocumentBox.fileURL.setter(v4);
}

void specialized ReferenceFileDocumentBox.base.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();

  static Published.subscript.setter();
  ReferenceFileDocumentBox.base.didset();
}

void type metadata completion function for ReferenceFileDocumentConfiguration(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *initializeBufferWithCopyOfBuffer for ReferenceFileDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a3 + 36);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    swift_unknownObjectRetain();
    if (v11(&a2[v8], 1, v9))
    {
      type metadata accessor for URL?(0);
      memcpy(&v4[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], &a2[v8], v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v4[*(a3 + 40)] = a2[*(a3 + 40)];
  }

  return v4;
}

uint64_t destroy for ReferenceFileDocumentConfiguration(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  v4 = *(a2 + 36);
  v5 = type metadata accessor for URL();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

char *initializeWithCopy for ReferenceFileDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 36);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  swift_unknownObjectRetain();
  if (v10(&a2[v7], 1, v8))
  {
    type metadata accessor for URL?(0);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  a1[*(a3 + 40)] = a2[*(a3 + 40)];
  return a1;
}

char *assignWithCopy for ReferenceFileDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = *(a3 + 36);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for URL?(0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  a1[*(a3 + 40)] = a2[*(a3 + 40)];
  return a1;
}

char *initializeWithTake for ReferenceFileDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 36);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    type metadata accessor for URL?(0);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  a1[*(a3 + 40)] = a2[*(a3 + 40)];
  return a1;
}

char *assignWithTake for ReferenceFileDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  swift_unknownObjectRelease();
  v7 = *(a3 + 36);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(&a1[v7], &a2[v7], v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(&a1[v7], v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    type metadata accessor for URL?(0);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(&a1[v7], &a2[v7], v8);
  (*(v9 + 56))(&a1[v7], 0, 1, v8);
LABEL_7:
  a1[*(a3 + 40)] = a2[*(a3 + 40)];
  return a1;
}

void type metadata completion function for ReferenceFileDocumentBox(uint64_t a1)
{
  type metadata accessor for Optional();
  type metadata accessor for Published();
  if (v1 <= 0x3F)
  {
    _s10Foundation3URLVSgMaTm_1(319, &lazy cache variable for type metadata for Published<URL?>, type metadata accessor for URL?, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Bool>();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

uint64_t partial apply for closure #1 in ReferenceFileDocumentBox.snapshotForSerialization(contentType:)(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UTType() - 8);
  return closure #1 in ReferenceFileDocumentBox.snapshotForSerialization(contentType:)(a1, v1[4], v1 + v6, v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), v3, v4);
}

double partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:)(uint64_t *a1)
{
  return closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, v1[4], v1[5], v1[2], v1[3], type metadata accessor for DocumentGroupConfiguration.ViewerReferenceFileDocumentContainer, protocol conformance descriptor for DocumentGroupConfiguration.ViewerReferenceFileDocumentContainer<A, B>);
}

{
  return closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, v1[4], v1[5], v1[2], v1[3], type metadata accessor for DocumentGroupConfiguration.ViewerFileDocumentContainer, protocol conformance descriptor for DocumentGroupConfiguration.ViewerFileDocumentContainer<A, B>);
}

void type metadata accessor for StyleContextWriter<DocumentStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<DocumentStyleContext>)
  {
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<DocumentStyleContext>);
    }
  }
}

double partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(uint64_t *a1)
{
  return closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, v1[4], v1[5], v1[2], v1[3], type metadata accessor for DocumentGroupConfiguration.EditorReferenceFileDocumentContainer, protocol conformance descriptor for DocumentGroupConfiguration.EditorReferenceFileDocumentContainer<A, B>);
}

{
  return closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, v1[4], v1[5], v1[2], v1[3], type metadata accessor for DocumentGroupConfiguration.EditorFileDocumentContainer, protocol conformance descriptor for DocumentGroupConfiguration.EditorFileDocumentContainer<A, B>);
}

void *assignWithCopy for DocumentGroupConfiguration.EditorReferenceFileDocumentContainer(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithTake for DocumentGroupConfiguration.EditorReferenceFileDocumentContainer(void *a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 24);
  *(a1 + 1) = *(a2 + 8);
  a1[3] = v4;

  return a1;
}

uint64_t lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of FileDocumentWriteConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL?(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentValues.triggerSubmission.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t *closure #1 in OnSubmitModifier.body(content:)(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*a2 & *result) != 0)
  {
    v4 = specialized Environment.wrappedValue.getter(*(a2 + 24), *(a2 + 32), *(a2 + 40));
    if (v4)
    {
      v6 = v4;
      v7 = v5;
      v8 = v2;
      v4(&v8);
      v4 = outlined consume of TriggerSubmitAction?(v6, v7);
    }

    return (*(a2 + 8))(v4);
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance OnSubmitModifier@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 25);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = v1[1];
  v5[1] = *v1;
  v5[2] = v6;
  *(v5 + 41) = *(v1 + 25);
  *a1 = KeyPath;
  a1[1] = partial apply for closure #1 in OnSubmitModifier.body(content:);
  a1[2] = v5;
  return outlined init with copy of OnSubmitModifier(&v9, &v8);
}

void (*closure #1 in SubmitScopeModifier.body(content:)(void (*result)(uint64_t *), uint64_t a2))(uint64_t *)
{
  v2 = *result;
  if ((*a2 & 1) == 0 || (*(a2 + 8) & v2) == 0)
  {
    result = specialized Environment.wrappedValue.getter(*(a2 + 16), *(a2 + 24), *(a2 + 32));
    if (result)
    {
      v4 = result;
      v5 = v3;
      v6 = v2;
      result(&v6);
      return outlined consume of TriggerSubmitAction?(v4, v5);
    }
  }

  return result;
}

double specialized implicit closure #1 in _GraphInputs.triggerSubmission.getter@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, MEMORY[0x1E697FE40]);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

double View.onSubmit(of:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = *a1;
  v10[1] = a2;
  v10[2] = a3;
  KeyPath = swift_getKeyPath();
  v12 = 0;
  v13 = 0;

  MEMORY[0x18D00A570](v10, a4, &type metadata for OnSubmitModifier, a5);
  v7 = KeyPath;
  v8 = v12;
  LOBYTE(a4) = v13;

  return outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v7, v8, a4);
}

double View.submitScope(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v7 = 5;
  KeyPath = swift_getKeyPath();
  v9 = 0;
  v10 = 0;
  MEMORY[0x18D00A570](v6, a2, &type metadata for SubmitScopeModifier, a3);
  return outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(KeyPath, v9, v10);
}

unint64_t lazy protocol witness table accessor for type OnSubmitModifier and conformance OnSubmitModifier()
{
  result = lazy protocol witness table cache variable for type OnSubmitModifier and conformance OnSubmitModifier;
  if (!lazy protocol witness table cache variable for type OnSubmitModifier and conformance OnSubmitModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnSubmitModifier, &type metadata for OnSubmitModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnSubmitModifier and conformance OnSubmitModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA16OnSubmitModifierVGAaBHPxAaBHD1__AfA0cH0HPyHCHCTm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 8);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = a3();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t assignWithTake for SubmitScopeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v5, v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for SubmitScopeModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SubmitScopeModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double destroy for OnSubmitModifier(uint64_t a1)
{

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v2, v3, v4);
}

uint64_t initializeWithCopy for OnSubmitModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);

  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return a1;
}

uint64_t assignWithCopy for OnSubmitModifier(uint64_t a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v4;

  v5 = v2[3];
  v6 = v2[4];
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v2);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v7, v8, v9);
  return a1;
}

uint64_t assignWithTake for OnSubmitModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 40);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v5, v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnSubmitModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for OnSubmitModifier(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[6] = v0;
    v5[7] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>>, &lazy cache variable for type metadata for _ViewModifier_Content<OnSubmitModifier>, lazy protocol witness table accessor for type OnSubmitModifier and conformance OnSubmitModifier, &type metadata for OnSubmitModifier);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<SubmitScopeModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<OnSubmitModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<OnSubmitModifier>, lazy protocol witness table accessor for type OnSubmitModifier and conformance OnSubmitModifier, &type metadata for OnSubmitModifier);
    v5[1] = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double (*EnvironmentValues.navigationIndicatorVisibility.modify(uint64_t a1))(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = EnvironmentValues._navigationLinkIndicatorVisibility.getter();
  return EnvironmentValues.navigationIndicatorVisibility.modify;
}

double EnvironmentValues.navigationIndicatorVisibility.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double SplitViewNavigationIndicator.value.getter@<D0>(_OWORD *a2@<X8>)
{
  if (*(AGGraphGetValue() + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey);

    PropertyList.subscript.getter();
  }

  Value = AGGraphGetValue();
  v4 = Value[1];
  *&v6 = *Value;
  *(&v6 + 1) = v4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>, &type metadata for DefaultNavigationIndicatorVisibilityKey, &protocol witness table for DefaultNavigationIndicatorVisibilityKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>, &type metadata for DefaultNavigationIndicatorVisibilityKey, &protocol witness table for DefaultNavigationIndicatorVisibilityKey);
  swift_retain_n();

  PropertyList.subscript.setter();
  if (v4)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  result = *&v6;
  *a2 = v6;
  return result;
}

double StaticNavigationIndicator.value.getter@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = Value[1];
  *a2 = *Value;
  a2[1] = v4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>, &type metadata for DefaultNavigationIndicatorVisibilityKey, &protocol witness table for DefaultNavigationIndicatorVisibilityKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>, &type metadata for DefaultNavigationIndicatorVisibilityKey, &protocol witness table for DefaultNavigationIndicatorVisibilityKey);
  swift_retain_n();

  PropertyList.subscript.setter();
  if (v4)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HideNavigationLinkDisclosureIndicator(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t EnvironmentValues.showNavigationDisclosureIndicator.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.showNavigationDisclosureIndicator : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.navigationIndicatorVisibility : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.navigationIndicatorVisibility.setter(char a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double (*EnvironmentValues.showNavigationDisclosureIndicator.modify(uint64_t a1))(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>, &unk_1EFFBB1A0, &protocol witness table for NavigationIndicatorVisibilityKey);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *(a1 + 24) = *(a1 + 25);
  return EnvironmentValues.navigationIndicatorVisibility.modify;
}

uint64_t specialized static NavigationDisclosureEnvironmentModifier.showConditionally(inputs:)(__int128 *a1)
{
  v1 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  v2 = 1;
  if ((static StyleContextAcceptsAnyPredicate.evaluate(inputs:)() & 1) == 0)
  {
    v2 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v3 = static StyleContextAcceptsAnyPredicate.evaluate(inputs:)();
  }

  else
  {
    v3 = 0;
  }

  return v1 & (v2 | v3) & 1;
}

uint64_t getEnumTagSinglePayload for StaticNavigationIndicator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[8])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticNavigationIndicator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void type metadata accessor for TextField<_TextFieldStyleLabel>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>)
  {
    v4 = type metadata accessor for TextField(0, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RoundedBorderTextFieldStyle.BodyContent and conformance RoundedBorderTextFieldStyle.BodyContent()
{
  result = lazy protocol witness table cache variable for type RoundedBorderTextFieldStyle.BodyContent and conformance RoundedBorderTextFieldStyle.BodyContent;
  if (!lazy protocol witness table cache variable for type RoundedBorderTextFieldStyle.BodyContent and conformance RoundedBorderTextFieldStyle.BodyContent)
  {
    v3 = type metadata accessor for RoundedBorderTextFieldStyle.BodyContent(255);
    result = swift_getWitnessTable(protocol conformance descriptor for RoundedBorderTextFieldStyle.BodyContent, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedBorderTextFieldStyle.BodyContent and conformance RoundedBorderTextFieldStyle.BodyContent);
  }

  return result;
}

uint64_t type metadata completion function for AttributedTextStorage(uint64_t a1)
{
  result = type metadata accessor for BindingStorage.Storage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AttributedStringUpdates(319);
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AttributedTextStorage(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v114 = type metadata accessor for AttributedString();
  v113 = *(v114 - 8);
  v3 = *(v113 + 80);
  v4 = v3;
  v5 = ((v4 + 16) & ~v4) + *(v113 + 64);
  v115 = type metadata accessor for AttributedString.Index();
  v6 = *(v115 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v110 = v10;
  v111 = v9;
  v11 = *(v10 + 80);
  v119 = type metadata accessor for AttributeContainer();
  v12 = *(v119 - 8);
  v13 = *(v12 + 80);
  v14 = v11 | v8 | *(v12 + 80);
  v15 = (v11 | v8 | *(v12 + 80));
  v16 = v15 | 7;
  v19 = *(v6 + 64);
  if (*(v10 + 64) <= v19)
  {
    v20 = *(v6 + 64);
  }

  else
  {
    v20 = *(v10 + 64);
  }

  v120 = v20;
  v117 = v20 + 1 + v13;
  v118 = *(v119 - 8);
  v21 = *(v12 + 84);
  if (v21)
  {
    v22 = *(*(v119 - 8) + 64);
  }

  else
  {
    v22 = *(*(v119 - 8) + 64) + 1;
  }

  v23 = v22 + (v117 & ~v13) + 1;
  v18 = (v15 + 16) & ~v15;
  v17 = ((v15 | 7) + v5) & ~(v15 | 7);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v17 + v18 + v23)
  {
    v24 = v17 + v18 + v23;
  }

  else
  {
    v24 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v116 = v7;
  if (v21)
  {
    v25 = v21 - 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a3 + 16);
  v27 = *(v26 - 8);
  if (v25 <= 0xFD)
  {
    v28 = 253;
  }

  else
  {
    v28 = v25;
  }

  v29 = *(*(a3 + 16) - 8);
  v30 = *(v27 + 80);
  v31 = *(v27 + 64);
  v32 = v15 | v3 | v30;
  if (v32 <= 7 && ((v14 | v3 | v30) & 0x100000) == 0)
  {
    v112 = v15 + 8;
    v122 = v19 + v15;
    v33 = v23 + ((v19 + v15) & ~v15);
    if (((v31 + 7 + ((v33 + ((v15 + 8) & ~v15) + v30 + ((v24 + v16 + 1) & ~v16)) & ~v30)) & 0xFFFFFFFFFFFFFFF8) + 9 <= 0x18)
    {
      v105 = v33 + ((v15 + 8) & ~v15) + v30;
      v104 = *(v7 + 84);
      __n = v20 + 1;
      v99 = ~v3;
      v34 = *(a2 + v24);
      v106 = v31 + 7;
      if (v34 < 2)
      {
        v36 = a1;
        goto LABEL_37;
      }

      if (v24 <= 3)
      {
        v35 = v24;
      }

      else
      {
        v35 = 4;
      }

      v36 = a1;
      if (v35 > 1)
      {
        if (v35 == 2)
        {
          v37 = *a2;
          if (v24 >= 4)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v35 == 3)
          {
            v37 = *a2 | (*(a2 + 2) << 16);
            if (v24 < 4)
            {
              goto LABEL_36;
            }

LABEL_34:
            v34 = v37 + 2;
            goto LABEL_37;
          }

          v37 = *a2;
          if (v24 >= 4)
          {
            goto LABEL_34;
          }
        }

LABEL_36:
        v34 = (v37 | ((v34 - 2) << (8 * v24))) + 2;
LABEL_37:
        v100 = v30;
        v95 = v33;
        v96 = (v15 | 7) + v5;
        v102 = v24;
        v103 = v24 + v16 + 1;
        v109 = v25;
        v97 = v21;
        v93 = v22 + (v117 & ~v13) + 1;
        v98 = v22;
        v107 = v29;
        v108 = v26;
        v40 = ~v16;
        v41 = ~v15;
        v124 = ~v13;
        v101 = v28 - 1;
        *v36 = *a2;
        v42 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
        v43 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v42 = *v43;
        v44 = v42 + v4 + 8;
        v45 = v43 + v4 + 8;
        v39 = v36;
        v46 = *(v113 + 16);

        v46(v44 & v99, v45 & v99, v114);
        if (v34 == 1)
        {
          v47 = v41;
          *((v39 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
          *(v39 + v102) = 1;

          v48 = v115;
          v49 = a2;
          v50 = v112;
          v51 = v103;
          v52 = v40;
          v53 = v100;
        }

        else
        {
          v54 = ((v39 + v96) & v40);
          v52 = v40;
          v55 = ((a2 + v96) & v40);
          *v54 = *v55;
          v56 = ((v54 + 15) & 0xFFFFFFFFFFFFFFF8);
          v57 = ((v55 + 15) & 0xFFFFFFFFFFFFFFF8);
          *v56 = *v57;
          v50 = v112;
          v58 = ((v56 + v112) & v41);
          v47 = v41;
          v59 = ((v57 + v112) & v41);
          v60 = v59[v120];

          v61 = v60 == 1;
          if (v60 > 1)
          {
            memcpy(v58, v59, __n);
            v62 = v118;
            v63 = v115;
            v53 = v100;
          }

          else
          {
            v62 = v118;
            v53 = v100;
            v63 = v115;
            if (v61)
            {
              (*(v110 + 16))(v58, v59, v111);
              *(v58 + v120) = 1;
            }

            else
            {
              (*(v116 + 16))(v58, v59);
              *(v58 + v120) = 0;
            }
          }

          v64 = ((v58 + v117) & v124);
          v65 = (&v59[v117] & v124);
          if ((*(v62 + 48))(v65, 1, v119))
          {
            v66 = v98;
            memcpy(v64, v65, v98);
          }

          else
          {
            (*(v62 + 16))(v64, v65, v119);
            (*(v62 + 56))(v64, 0, 1, v119);
            v66 = v98;
          }

          *(v64 + v66) = *(v65 + v66);
          v51 = v103;
          *(v39 + v102) = 0;
          v49 = a2;
          v48 = v63;
        }

        v67 = ~v53;
        v68 = ((v39 + v51) & v52);
        v69 = ((v49 + v51) & v52);
        *v68 = *v69;
        v70 = ((v68 + v50) & v47);
        v71 = ((v69 + v50) & v47);

        if (v104 >= v101)
        {
          if ((*(v116 + 48))(v71))
          {
            goto LABEL_62;
          }

          v72 = (&v71[v122] & v47);
        }

        else
        {
          v72 = (&v71[v122] & v47);
          if (v109 > 0xFD)
          {
            v74 = (*(v118 + 48))(&v72[v117] & v124, v97, v119);
            if (v74 >= 2)
            {
LABEL_55:
              if (v74 < 3)
              {
                goto LABEL_56;
              }

LABEL_62:
              v81 = v70;
              v82 = v71;
              v83 = v95;
              goto LABEL_67;
            }
          }

          else
          {
            v73 = v72[v120];
            if ((v73 - 255) >= 0xFFFFFF03)
            {
              v74 = (v73 ^ 0xFF) + 1;
              goto LABEL_55;
            }
          }
        }

LABEL_56:
        v75 = v48;
        v76 = *(v116 + 16);
        v76(v70, v71, v75);
        v77 = ((v70 + v122) & v47);
        if (v109 > 0xFD)
        {
          v79 = v118;
          if ((*(v118 + 48))(&v72[v117] & v124, v97, v119) <= 1)
          {
            v84 = v72[v120];
            v80 = v84 == 1;
            if (v84 <= 1)
            {
LABEL_59:
              if (v80)
              {
                (*(v110 + 16))(v77, v72, v111);
                v77[v120] = 1;
              }

              else
              {
                v76(v77, v72, v115);
                v77[v120] = 0;
              }

LABEL_68:
              v86 = v67;
              v87 = (&v77[v117] & v124);
              v88 = (&v72[v117] & v124);
              if ((*(v79 + 48))(v88, 1, v119))
              {
                v89 = v98;
                memcpy(v87, v88, v98);
              }

              else
              {
                (*(v79 + 16))(v87, v88, v119);
                (*(v79 + 56))(v87, 0, 1, v119);
                v89 = v98;
              }

              *(v87 + v89) = *(v88 + v89);
              v85 = v108;
              goto LABEL_72;
            }

LABEL_65:
            memcpy(v77, v72, __n);
            goto LABEL_68;
          }
        }

        else
        {
          v78 = v72[v120];
          v79 = v118;
          if (v78 - 255 < 0xFFFFFF03)
          {
            v80 = v78 == 1;
            if (v78 <= 1)
            {
              goto LABEL_59;
            }

            goto LABEL_65;
          }
        }

        v81 = v77;
        v82 = v72;
        v83 = v93;
LABEL_67:
        memcpy(v81, v82, v83);
        v85 = v108;
        v86 = v67;
LABEL_72:
        (*(v107 + 16))((v68 + v105) & v86, (v69 + v105) & v86, v85);
        v90 = (v106 + ((v68 + v105) & v86)) & 0xFFFFFFFFFFFFFFF8;
        v91 = (v106 + ((v69 + v105) & v86)) & 0xFFFFFFFFFFFFFFF8;
        *v90 = *v91;
        *(v90 + 8) = *(v91 + 8);
        goto LABEL_73;
      }

      if (!v35)
      {
        goto LABEL_37;
      }

      v37 = *a2;
      if (v24 < 4)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }
  }

  v38 = *a2;
  *a1 = *a2;
  v39 = (v38 + ((v32 & 0xF8 ^ 0x1F8) & (v32 + 16)));
LABEL_73:

  return v39;
}