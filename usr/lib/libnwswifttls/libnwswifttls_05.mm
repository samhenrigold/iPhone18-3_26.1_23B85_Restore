unint64_t lazy protocol witness table accessor for type CertificateVerify and conformance CertificateVerify()
{
  result = lazy protocol witness table cache variable for type CertificateVerify and conformance CertificateVerify;
  if (!lazy protocol witness table cache variable for type CertificateVerify and conformance CertificateVerify)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateVerify and conformance CertificateVerify);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CertificateVerify(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CertificateVerify(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary15ProtocolVersionV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 33);
  v4 = (result + 33);
  while (v2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v3 += 2;
    v7 = v6;
    result = *(v4 - 1) == v5 && *v4 == v7;
    v9 = result != 1 || v2-- == 1;
    v4 += 2;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v54[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 56);
    for (i = (a2 + 56); ; i += 8)
    {
      v8 = *(v4 - 2);
      v52 = *(v4 - 3);
      v9 = *(v4 - 1);
      v11 = *(i - 3);
      v10 = *(i - 2);
      v12 = *(i - 1);
      v49 = *i;
      v50 = *v4;
      v13 = v8 >> 62;
      if ((v8 >> 62) <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = *(v4 - 3);
        v15 = *(v52 + 24);
LABEL_16:
        outlined copy of Data._Representation(v14, v8);
        if (v15 < v9)
        {
          goto LABEL_79;
        }

        goto LABEL_19;
      }

      if (v9 > 0)
      {
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
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
      }

LABEL_19:
      outlined copy of Data._Representation(v11, v10);
      v16 = Data._Representation.subscript.getter();
      v18 = v17;
      v19 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v19 == 2)
        {
          v20 = *(v11 + 24);
        }

        else
        {
          v20 = 0;
        }
      }

      else if (v19)
      {
        v20 = v11 >> 32;
      }

      else
      {
        v20 = BYTE6(v10);
      }

      if (v20 < v12)
      {
        goto LABEL_80;
      }

      v51 = v11;
      v21 = Data._Representation.subscript.getter();
      v23 = v18 >> 62;
      v24 = v22 >> 62;
      if (v18 >> 62 == 3)
      {
        v25 = 0;
        if (!v16 && v18 == 0xC000000000000000 && v22 >> 62 == 3)
        {
          v25 = 0;
          if (!v21 && v22 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(0, 0xC000000000000000);
            v6 = 0;
            v7 = 0xC000000000000000;
            goto LABEL_7;
          }
        }

LABEL_43:
        if (v24 <= 1)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v31 = *(v16 + 16);
          v30 = *(v16 + 24);
          v28 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v28)
          {
            goto LABEL_83;
          }

          goto LABEL_43;
        }

        v25 = 0;
        if (v24 <= 1)
        {
          goto LABEL_44;
        }
      }

      else if (v23)
      {
        LODWORD(v25) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_84;
        }

        v25 = v25;
        if (v24 <= 1)
        {
LABEL_44:
          if (v24)
          {
            LODWORD(v29) = HIDWORD(v21) - v21;
            if (__OFSUB__(HIDWORD(v21), v21))
            {
              goto LABEL_81;
            }

            v29 = v29;
          }

          else
          {
            v29 = BYTE6(v22);
          }

          goto LABEL_48;
        }
      }

      else
      {
        v25 = BYTE6(v18);
        if (v24 <= 1)
        {
          goto LABEL_44;
        }
      }

LABEL_37:
      if (v24 != 2)
      {
        if (v25)
        {
          goto LABEL_76;
        }

LABEL_6:
        outlined consume of Data._Representation(v21, v22);
        v6 = v16;
        v7 = v18;
LABEL_7:
        outlined consume of Data._Representation(v6, v7);
        outlined consume of Data._Representation(v11, v10);
        outlined consume of Data._Representation(v52, v8);
        if (v50 != v49)
        {
          return 0;
        }

        goto LABEL_8;
      }

      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (v28)
      {
        goto LABEL_82;
      }

LABEL_48:
      if (v25 != v29)
      {
LABEL_76:
        outlined consume of Data._Representation(v21, v22);
        outlined consume of Data._Representation(v16, v18);
        outlined consume of Data._Representation(v11, v10);
        outlined consume of Data._Representation(v52, v8);
        return 0;
      }

      if (v25 < 1)
      {
        goto LABEL_6;
      }

      v48 = v8;
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          memset(v54, 0, 14);
          v42 = v21;
          v43 = v22;
          outlined copy of Data._Representation(v21, v22);
          closure #1 in static Data.== infix(_:_:)(v54, v42, v43, &v53);
          outlined consume of Data._Representation(v42, v43);
          outlined consume of Data._Representation(v16, v18);
          v34 = v42;
          v35 = v43;
          goto LABEL_71;
        }

        v46 = v22;
        v47 = v3;
        v36 = *(v16 + 16);
        v37 = *(v16 + 24);
        v45 = v21;
        outlined copy of Data._Representation(v21, v22);
        v38 = __DataStorage._bytes.getter();
        if (v38)
        {
          v39 = __DataStorage._offset.getter();
          if (__OFSUB__(v36, v39))
          {
            goto LABEL_87;
          }

          v38 += v36 - v39;
        }

        if (__OFSUB__(v37, v36))
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (!v23)
        {
          v54[0] = v16;
          LOWORD(v54[1]) = v18;
          BYTE2(v54[1]) = BYTE2(v18);
          BYTE3(v54[1]) = BYTE3(v18);
          BYTE4(v54[1]) = BYTE4(v18);
          BYTE5(v54[1]) = BYTE5(v18);
          v32 = v21;
          v33 = v22;
          outlined copy of Data._Representation(v21, v22);
          closure #1 in static Data.== infix(_:_:)(v54, v32, v33, &v53);
          outlined consume of Data._Representation(v32, v33);
          outlined consume of Data._Representation(v16, v18);
          v34 = v32;
          v35 = v33;
LABEL_71:
          outlined consume of Data._Representation(v34, v35);
          v41 = v53;
          goto LABEL_72;
        }

        v47 = v3;
        if (v16 >> 32 < v16)
        {
          goto LABEL_85;
        }

        v45 = v21;
        v46 = v22;
        outlined copy of Data._Representation(v21, v22);
        v38 = __DataStorage._bytes.getter();
        if (v38)
        {
          v40 = __DataStorage._offset.getter();
          if (__OFSUB__(v16, v40))
          {
            goto LABEL_88;
          }

          v38 += v16 - v40;
        }
      }

      MEMORY[0x1B274CD90]();
      v3 = v47;
      closure #1 in static Data.== infix(_:_:)(v38, v45, v46, v54);
      outlined consume of Data._Representation(v45, v46);
      outlined consume of Data._Representation(v16, v18);
      outlined consume of Data._Representation(v45, v46);
      v41 = LOBYTE(v54[0]);
LABEL_72:
      outlined consume of Data._Representation(v51, v10);
      outlined consume of Data._Representation(v52, v48);
      result = 0;
      if (!v41 || v50 != v49)
      {
        return result;
      }

LABEL_8:
      v4 += 8;
      if (!--v2)
      {
        return 1;
      }
    }

    if (!v13)
    {
      if (BYTE6(v8) < v9)
      {
        goto LABEL_79;
      }

      goto LABEL_19;
    }

    v14 = *(v4 - 3);
    v15 = v52 >> 32;
    goto LABEL_16;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v52[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v11 = *(v4 - 1);
      v50 = *(v4 - 2);
      v12 = *v4;
      v14 = *(i - 2);
      v13 = *(i - 1);
      v15 = *i;
      v16 = v11 >> 62;
      if ((v11 >> 62) <= 1)
      {
        break;
      }

      if (v16 == 2)
      {
        v17 = *(v4 - 2);
        v18 = *(v50 + 24);
LABEL_16:
        outlined copy of Data._Representation(v17, v11);
        if (v18 < v12)
        {
          goto LABEL_77;
        }

        goto LABEL_19;
      }

      if (v12 > 0)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
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
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
      }

LABEL_19:
      outlined copy of Data._Representation(v14, v13);
      v19 = Data._Representation.subscript.getter();
      v21 = v20;
      v22 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v22 == 2)
        {
          v23 = *(v14 + 24);
        }

        else
        {
          v23 = 0;
        }
      }

      else if (v22)
      {
        v23 = v14 >> 32;
      }

      else
      {
        v23 = BYTE6(v13);
      }

      if (v23 < v15)
      {
        goto LABEL_78;
      }

      v49 = v14;
      v24 = Data._Representation.subscript.getter();
      v26 = v21 >> 62;
      v27 = v25 >> 62;
      if (v21 >> 62 != 3)
      {
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            v36 = *(v19 + 16);
            v35 = *(v19 + 24);
            v33 = __OFSUB__(v35, v36);
            v28 = v35 - v36;
            if (v33)
            {
              goto LABEL_82;
            }

LABEL_43:
            if (v27 <= 1)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v28 = 0;
            if (v27 <= 1)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          if (!v26)
          {
            v28 = BYTE6(v21);
            if (v27 > 1)
            {
              goto LABEL_37;
            }

LABEL_44:
            if (v27)
            {
              LODWORD(v34) = HIDWORD(v24) - v24;
              if (__OFSUB__(HIDWORD(v24), v24))
              {
                goto LABEL_80;
              }

              v34 = v34;
            }

            else
            {
              v34 = BYTE6(v25);
            }

LABEL_50:
            if (v28 != v34)
            {
LABEL_75:
              outlined consume of Data._Representation(v24, v25);
              outlined consume of Data._Representation(v19, v21);
              outlined consume of Data._Representation(v14, v13);
              outlined consume of Data._Representation(v50, v11);
              return 0;
            }

            if (v28 >= 1)
            {
              v48 = v11;
              if (v26 > 1)
              {
                if (v26 != 2)
                {
                  memset(v52, 0, 14);
                  v6 = v24;
                  v7 = v25;
                  outlined copy of Data._Representation(v24, v25);
                  closure #1 in static Data.== infix(_:_:)(v52, v6, v7, &v51);
                  outlined consume of Data._Representation(v6, v7);
                  outlined consume of Data._Representation(v19, v21);
                  v8 = v6;
                  v9 = v7;
                  goto LABEL_6;
                }

                v46 = v25;
                v47 = v3;
                v39 = *(v19 + 16);
                v40 = *(v19 + 24);
                v45 = v24;
                outlined copy of Data._Representation(v24, v25);
                v41 = __DataStorage._bytes.getter();
                if (v41)
                {
                  v42 = __DataStorage._offset.getter();
                  if (__OFSUB__(v39, v42))
                  {
                    goto LABEL_85;
                  }

                  v41 += v39 - v42;
                }

                if (__OFSUB__(v40, v39))
                {
                  goto LABEL_84;
                }
              }

              else
              {
                if (!v26)
                {
                  v52[0] = v19;
                  LOWORD(v52[1]) = v21;
                  BYTE2(v52[1]) = BYTE2(v21);
                  BYTE3(v52[1]) = BYTE3(v21);
                  BYTE4(v52[1]) = BYTE4(v21);
                  BYTE5(v52[1]) = BYTE5(v21);
                  v37 = v24;
                  v38 = v25;
                  outlined copy of Data._Representation(v24, v25);
                  closure #1 in static Data.== infix(_:_:)(v52, v37, v38, &v51);
                  outlined consume of Data._Representation(v37, v38);
                  outlined consume of Data._Representation(v19, v21);
                  v8 = v37;
                  v9 = v38;
LABEL_6:
                  outlined consume of Data._Representation(v8, v9);
                  v10 = v51;
LABEL_7:
                  outlined consume of Data._Representation(v49, v13);
                  outlined consume of Data._Representation(v50, v48);
                  if ((v10 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_8;
                }

                v47 = v3;
                if (v19 >> 32 < v19)
                {
                  goto LABEL_83;
                }

                v45 = v24;
                v46 = v25;
                outlined copy of Data._Representation(v24, v25);
                v41 = __DataStorage._bytes.getter();
                if (v41)
                {
                  v43 = __DataStorage._offset.getter();
                  if (__OFSUB__(v19, v43))
                  {
                    goto LABEL_86;
                  }

                  v41 += v19 - v43;
                }
              }

              MEMORY[0x1B274CD90]();
              v3 = v47;
              closure #1 in static Data.== infix(_:_:)(v41, v45, v46, v52);
              outlined consume of Data._Representation(v45, v46);
              outlined consume of Data._Representation(v19, v21);
              outlined consume of Data._Representation(v45, v46);
              v10 = v52[0];
              goto LABEL_7;
            }

            goto LABEL_55;
          }

          LODWORD(v28) = HIDWORD(v19) - v19;
          if (__OFSUB__(HIDWORD(v19), v19))
          {
            goto LABEL_81;
          }

          v28 = v28;
          if (v27 <= 1)
          {
            goto LABEL_44;
          }
        }

LABEL_37:
        if (v27 == 2)
        {
          v32 = *(v24 + 16);
          v31 = *(v24 + 24);
          v33 = __OFSUB__(v31, v32);
          v34 = v31 - v32;
          if (v33)
          {
            goto LABEL_79;
          }

          goto LABEL_50;
        }

        if (v28)
        {
          goto LABEL_75;
        }

LABEL_55:
        outlined consume of Data._Representation(v24, v25);
        v29 = v19;
        v30 = v21;
        goto LABEL_56;
      }

      v28 = 0;
      if (v19)
      {
        goto LABEL_43;
      }

      if (v21 != 0xC000000000000000)
      {
        goto LABEL_43;
      }

      if (v25 >> 62 != 3)
      {
        goto LABEL_43;
      }

      v28 = 0;
      if (v24 || v25 != 0xC000000000000000)
      {
        goto LABEL_43;
      }

      outlined consume of Data._Representation(0, 0xC000000000000000);
      v29 = 0;
      v30 = 0xC000000000000000;
LABEL_56:
      outlined consume of Data._Representation(v29, v30);
      outlined consume of Data._Representation(v14, v13);
      outlined consume of Data._Representation(v50, v11);
LABEL_8:
      v4 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    if (!v16)
    {
      if (BYTE6(v11) < v12)
      {
        goto LABEL_77;
      }

      goto LABEL_19;
    }

    v17 = *(v4 - 2);
    v18 = v50 >> 32;
    goto LABEL_16;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  v55[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 56);
    v5 = (a2 + 56);
    do
    {
      if (!v2)
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
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
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
      }

      if (*(v4 - 12) != *(v5 - 12))
      {
        return 0;
      }

      v10 = *(v4 - 2);
      v9 = *(v4 - 1);
      v11 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v10 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v10 >> 32;
      }

      else
      {
        v12 = BYTE6(v9);
      }

      if (v12 < *v4)
      {
        goto LABEL_77;
      }

      v52 = v2;
      v14 = *(v5 - 2);
      v13 = *(v5 - 1);
      v15 = *v5;
      outlined copy of Data._Representation(v10, v9);
      outlined copy of Data._Representation(v14, v13);
      v53 = v10;
      v16 = Data._Representation.subscript.getter();
      v18 = v17;
      v19 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v19 == 2)
        {
          v21 = v14;
          v20 = *(v14 + 24);
          goto LABEL_26;
        }

        v20 = 0;
      }

      else if (v19)
      {
        v20 = v14 >> 32;
      }

      else
      {
        v20 = BYTE6(v13);
      }

      v21 = v14;
LABEL_26:
      if (v20 < v15)
      {
        goto LABEL_78;
      }

      v22 = Data._Representation.subscript.getter();
      v24 = v18 >> 62;
      v25 = v23 >> 62;
      if (v18 >> 62 == 3)
      {
        v26 = 0;
        if (!v16 && v18 == 0xC000000000000000 && v23 >> 62 == 3)
        {
          v26 = 0;
          if (!v22 && v23 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(0, 0xC000000000000000);
            v27 = 0;
            v28 = 0xC000000000000000;
            goto LABEL_56;
          }
        }

LABEL_43:
        if (v25 <= 1)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v34 = *(v16 + 16);
          v33 = *(v16 + 24);
          v31 = __OFSUB__(v33, v34);
          v26 = v33 - v34;
          if (v31)
          {
            goto LABEL_81;
          }

          goto LABEL_43;
        }

        v26 = 0;
        if (v25 <= 1)
        {
          goto LABEL_44;
        }
      }

      else if (v24)
      {
        LODWORD(v26) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_82;
        }

        v26 = v26;
        if (v25 <= 1)
        {
LABEL_44:
          if (v25)
          {
            LODWORD(v32) = HIDWORD(v22) - v22;
            if (__OFSUB__(HIDWORD(v22), v22))
            {
              goto LABEL_80;
            }

            v32 = v32;
          }

          else
          {
            v32 = BYTE6(v23);
          }

          goto LABEL_50;
        }
      }

      else
      {
        v26 = BYTE6(v18);
        if (v25 <= 1)
        {
          goto LABEL_44;
        }
      }

LABEL_37:
      if (v25 != 2)
      {
        if (v26)
        {
          goto LABEL_74;
        }

LABEL_55:
        outlined consume of Data._Representation(v22, v23);
        v27 = v16;
        v28 = v18;
LABEL_56:
        outlined consume of Data._Representation(v27, v28);
        outlined consume of Data._Representation(v21, v13);
        outlined consume of Data._Representation(v53, v9);
        goto LABEL_7;
      }

      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      v31 = __OFSUB__(v29, v30);
      v32 = v29 - v30;
      if (v31)
      {
        goto LABEL_79;
      }

LABEL_50:
      if (v26 != v32)
      {
LABEL_74:
        outlined consume of Data._Representation(v22, v23);
        outlined consume of Data._Representation(v16, v18);
        outlined consume of Data._Representation(v21, v13);
        outlined consume of Data._Representation(v53, v9);
        return 0;
      }

      if (v26 < 1)
      {
        goto LABEL_55;
      }

      v51 = v9;
      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v48 = v3;
          v50 = v21;
          v37 = *(v16 + 16);
          v38 = *(v16 + 24);
          v44 = v22;
          v46 = v23;
          outlined copy of Data._Representation(v22, v23);
          v39 = __DataStorage._bytes.getter();
          if (v39)
          {
            v40 = __DataStorage._offset.getter();
            if (__OFSUB__(v37, v40))
            {
              goto LABEL_85;
            }

            v39 += v37 - v40;
          }

          if (__OFSUB__(v38, v37))
          {
            goto LABEL_84;
          }

          MEMORY[0x1B274CD90]();
          v3 = v48;
          closure #1 in static Data.== infix(_:_:)(v39, v44, v46, v55);
          outlined consume of Data._Representation(v44, v46);
          outlined consume of Data._Representation(v16, v18);
          outlined consume of Data._Representation(v44, v46);
          v8 = v55[0];
          v21 = v50;
        }

        else
        {
          memset(v55, 0, 14);
          v6 = v22;
          v7 = v23;
          outlined copy of Data._Representation(v22, v23);
          closure #1 in static Data.== infix(_:_:)(v55, v6, v7, &v54);
          outlined consume of Data._Representation(v6, v7);
          outlined consume of Data._Representation(v16, v18);
          outlined consume of Data._Representation(v6, v7);
          v8 = v54;
        }
      }

      else
      {
        v49 = v21;
        if (v24)
        {
          if (v16 >> 32 < v16)
          {
            goto LABEL_83;
          }

          v45 = v22;
          v47 = v23;
          outlined copy of Data._Representation(v22, v23);
          v41 = __DataStorage._bytes.getter();
          if (v41)
          {
            v42 = __DataStorage._offset.getter();
            if (__OFSUB__(v16, v42))
            {
              goto LABEL_86;
            }

            v41 += v16 - v42;
          }

          MEMORY[0x1B274CD90]();
          closure #1 in static Data.== infix(_:_:)(v41, v45, v47, v55);
          outlined consume of Data._Representation(v45, v47);
          outlined consume of Data._Representation(v16, v18);
          outlined consume of Data._Representation(v45, v47);
          v8 = v55[0];
        }

        else
        {
          v55[0] = v16;
          LOWORD(v55[1]) = v18;
          BYTE2(v55[1]) = BYTE2(v18);
          BYTE3(v55[1]) = BYTE3(v18);
          BYTE4(v55[1]) = BYTE4(v18);
          BYTE5(v55[1]) = BYTE5(v18);
          v35 = v22;
          v36 = v23;
          outlined copy of Data._Representation(v22, v23);
          closure #1 in static Data.== infix(_:_:)(v55, v35, v36, &v54);
          outlined consume of Data._Representation(v35, v36);
          outlined consume of Data._Representation(v16, v18);
          outlined consume of Data._Representation(v35, v36);
          v8 = v54;
          v21 = v49;
        }
      }

      outlined consume of Data._Representation(v21, v13);
      outlined consume of Data._Representation(v53, v51);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v4 += 4;
      v5 += 4;
      v2 = v52 - 1;
    }

    while (v52 != 1);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_i64[0];
  if (v2 == a2[1].n128_u64[0])
  {
    if (!v2 || a1 == a2)
    {
      v12 = 1;
    }

    else
    {
      v3 = a1 + 2;
      v4 = a2 + 2;
      do
      {
        v5 = v3[2];
        v6 = v3[4];
        v15[3] = v3[3];
        v15[4] = v6;
        v16 = v3[5].n128_u8[0];
        v7 = v3[1];
        v15[0] = *v3;
        v15[1] = v7;
        v15[2] = v5;
        v8 = v4[3];
        v17[2] = v4[2];
        v17[3] = v8;
        v17[4] = v4[4];
        v18 = v4[5].n128_i8[0];
        v9 = v4[1];
        v17[0] = *v4;
        v17[1] = v9;
        outlined init with copy of Extension(v15, v14);
        outlined init with copy of Extension(v17, v14);
        v12 = specialized static Extension.__derived_enum_equals(_:_:)(v15, v17, v10, v11);
        outlined destroy of Extension(v17);
        outlined destroy of Extension(v15);
        if ((v12 & 1) == 0)
        {
          break;
        }

        v4 = (v4 + 88);
        v3 = (v3 + 88);
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary18CertificateMessageV0D5EntryV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  v62 = a1 + 32;
  v61 = a2 + 32;
  v60 = *(a1 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_69;
    }

    v4 = (v62 + 32 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        v8 = *(v5 + 24);
      }

      else
      {
        v8 = 0;
      }
    }

    else if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(v6);
    }

    if (v8 < v4[2])
    {
      goto LABEL_70;
    }

    v9 = v4[3];
    v10 = (v61 + 32 * v3);
    v12 = *v10;
    v11 = v10[1];
    v14 = v10[2];
    v13 = v10[3];
    outlined copy of Data._Representation(v5, v6);

    outlined copy of Data._Representation(v12, v11);

    v15 = Data._Representation.subscript.getter();
    v17 = v16;
    v18 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      v19 = v11;
      v20 = v12;
      if (v18 == 2)
      {
        v21 = *(v12 + 24);
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v19 = v11;
      v20 = v12;
      if (v18)
      {
        v21 = v12 >> 32;
      }

      else
      {
        v21 = BYTE6(v11);
      }
    }

    if (v21 < v14)
    {
      goto LABEL_71;
    }

    v22 = v20;
    v23 = v19;
    v24 = Data._Representation.subscript.getter();
    v26 = v17 >> 62;
    v27 = v25 >> 62;
    v63 = v5;
    if (v17 >> 62 == 3)
    {
      v28 = 0;
      if (!v15 && v17 == 0xC000000000000000 && v25 >> 62 == 3)
      {
        v28 = 0;
        if (!v24 && v25 == 0xC000000000000000)
        {
          outlined consume of Data._Representation(0, 0xC000000000000000);
          v29 = 0;
          v30 = 0xC000000000000000;
          goto LABEL_50;
        }
      }

LABEL_36:
      if (v27 <= 1)
      {
        goto LABEL_37;
      }

      goto LABEL_42;
    }

    if (v26 == 2)
    {
      v32 = *(v15 + 16);
      v31 = *(v15 + 24);
      v33 = __OFSUB__(v31, v32);
      v28 = v31 - v32;
      if (v33)
      {
        goto LABEL_75;
      }

      goto LABEL_36;
    }

    if (v26 == 1)
    {
      LODWORD(v28) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_74;
      }

      v28 = v28;
      if (v27 <= 1)
      {
LABEL_37:
        if (v27)
        {
          LODWORD(v34) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            goto LABEL_72;
          }

          v34 = v34;
        }

        else
        {
          v34 = BYTE6(v25);
        }

        goto LABEL_44;
      }
    }

    else
    {
      v28 = BYTE6(v17);
      if (v27 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_42:
    if (v27 != 2)
    {
      if (v28)
      {
LABEL_65:
        outlined consume of Data._Representation(v24, v25);
        outlined consume of Data._Representation(v15, v17);
        outlined consume of Data._Representation(v22, v23);

        v57 = v5;
        v58 = v6;
        goto LABEL_63;
      }

LABEL_49:
      outlined consume of Data._Representation(v24, v25);
      v29 = v15;
      v30 = v17;
LABEL_50:
      outlined consume of Data._Representation(v29, v30);
      goto LABEL_51;
    }

    v36 = *(v24 + 16);
    v35 = *(v24 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
      goto LABEL_73;
    }

LABEL_44:
    if (v28 != v34)
    {
      goto LABEL_65;
    }

    if (v28 < 1)
    {
      goto LABEL_49;
    }

    v37 = v23;
    v38 = v22;
    v39 = v24;
    v40 = v25;
    outlined copy of Data._Representation(v24, v25);
    v59 = specialized Data.withUnsafeBytes<A>(_:)(v15, v17, v39, v40);
    outlined consume of Data._Representation(v15, v17);
    outlined consume of Data._Representation(v39, v40);
    if ((v59 & 1) == 0)
    {
      v55 = v38;
      v56 = v37;
      goto LABEL_62;
    }

    v22 = v38;
    v23 = v37;
LABEL_51:
    v41 = *(v9 + 16);
    if (v41 != *(v13 + 16))
    {
LABEL_61:
      v55 = v22;
      v56 = v23;
LABEL_62:
      outlined consume of Data._Representation(v55, v56);

      v57 = v63;
      v58 = v6;
LABEL_63:
      outlined consume of Data._Representation(v57, v58);

      return;
    }

    if (v41 && v9 != v13)
    {
      break;
    }

LABEL_5:
    ++v3;
    outlined consume of Data._Representation(v22, v23);

    outlined consume of Data._Representation(v63, v6);

    v2 = v60;
    if (v3 == v60)
    {
      return;
    }
  }

  v42 = 0;
  v43 = 32;
  while (v42 < *(v9 + 16))
  {
    v44 = *(v9 + v43);
    v65[1] = *(v9 + v43 + 16);
    v45 = *(v9 + v43 + 32);
    v46 = *(v9 + v43 + 48);
    v47 = *(v9 + v43 + 64);
    v66 = *(v9 + v43 + 80);
    v65[3] = v46;
    v65[4] = v47;
    v65[2] = v45;
    v65[0] = v44;
    if (v42 >= *(v13 + 16))
    {
      goto LABEL_68;
    }

    v48 = *(v13 + v43 + 16);
    v67[0] = *(v13 + v43);
    v67[1] = v48;
    v49 = *(v13 + v43 + 32);
    v50 = *(v13 + v43 + 48);
    v51 = *(v13 + v43 + 64);
    v68 = *(v13 + v43 + 80);
    v67[3] = v50;
    v67[4] = v51;
    v67[2] = v49;
    outlined init with copy of Extension(v65, v64);
    outlined init with copy of Extension(v67, v64);
    v54 = specialized static Extension.__derived_enum_equals(_:_:)(v65, v67, v52, v53);
    outlined destroy of Extension(v67);
    outlined destroy of Extension(v65);
    if ((v54 & 1) == 0)
    {
      goto LABEL_61;
    }

    ++v42;
    v43 += 88;
    if (v41 == v42)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary11CipherSuiteV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t CertificateRequest.extensions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static CertificateRequest.__derived_struct_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5, unint64_t a6, uint64_t a7, __n128 *a8)
{
  if ((specialized static ByteBuffer.== infix(_:_:)(a1, a2, a3, a5, a6, a7) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(a4, a8);
}

uint64_t CertificateRequest.hash(into:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = a2 >> 32;
  }

  else
  {
    v8 = BYTE6(a3);
  }

  if (v8 < a4)
  {
    __break(1u);
  }

  else
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);
    v12 = *(a5 + 16);
    result = MEMORY[0x1B274DB20](v12);
    if (v12)
    {
      v13 = a5 + 32;
      do
      {
        v14 = *(v13 + 32);
        v15 = *(v13 + 64);
        v18[3] = *(v13 + 48);
        v18[4] = v15;
        v19 = *(v13 + 80);
        v16 = *(v13 + 16);
        v18[0] = *v13;
        v18[1] = v16;
        v18[2] = v14;
        outlined init with copy of Extension(v18, v17);
        Extension.hash(into:)(v6);
        result = outlined destroy of Extension(v18);
        v13 += 88;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

Swift::Int CertificateRequest.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  CertificateRequest.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CertificateRequest()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  CertificateRequest.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CertificateRequest(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  Hasher.init(_seed:)();
  CertificateRequest.hash(into:)(v7, v2, v3, v5, v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CertificateRequest(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  if ((specialized static ByteBuffer.== infix(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v2, v3);
}

unint64_t CertificateRequest.write(into:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a1[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    v15 = 0;
    if (v12 == 2)
    {
      v15 = *(v10 + 24);
    }
  }

  else
  {
    v13 = BYTE6(v11);
    v14 = v10 >> 32;
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }
  }

  LOBYTE(v35) = 0;
  v16 = MEMORY[0x1E69E6290];
  v17 = MEMORY[0x1E6969DF8];
  v38 = MEMORY[0x1E69E6290];
  v39 = MEMORY[0x1E6969DF8];
  v36 = &v35;
  v37 = (&v35 + 1);
  __swift_project_boxed_opaque_existential_0(&v36, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v18 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v20 = *(a2 + 16);
      v19 = *(a2 + 24);
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    if (v18)
    {
      v19 = a2 >> 32;
    }

    else
    {
      v19 = BYTE6(a3);
    }

    if (v18)
    {
      v20 = a2;
    }

    else
    {
      v20 = 0;
    }
  }

  if (v19 < a4 || v19 < v20)
  {
    __break(1u);
    goto LABEL_43;
  }

  v21 = Data._Representation.subscript.getter();
  v23 = v22;
  Data.append(_:)();
  v24 = v23;
  v25 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v25)
    {
      outlined consume of Data._Representation(v21, v23);
      v21 = BYTE6(v23);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v25 != 2)
  {
    goto LABEL_31;
  }

  v27 = *(v21 + 16);
  v26 = *(v21 + 24);
  outlined consume of Data._Representation(v21, v24);
  v21 = v26 - v27;
  if (__OFSUB__(v26, v27))
  {
    __break(1u);
LABEL_26:
    outlined consume of Data._Representation(v21, v24);
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      goto LABEL_46;
    }

    v21 = HIDWORD(v21) - v21;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v21 <= 0xFF)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_31:
  outlined consume of Data._Representation(v21, v24);
  v21 = 0;
LABEL_32:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v21, v15);
  v28 = *a1;
  v29 = a1[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v28 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v28 >> 32;
  }

  else
  {
    v31 = BYTE6(v29);
  }

  v35 = 0;
  v38 = v16;
  v39 = v17;
  v36 = &v35;
  v37 = &v36;
  __swift_project_boxed_opaque_existential_0(&v36, v16);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v32 = specialized Sequence.reduce<A>(into:_:)(0, a5);
  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_44;
  }

  v33 = v32;
  if (v32 >> 16)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v32, v31);
  return v21 + v33 + 3;
}

uint64_t _s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc14readExtensionsL_ySayAA9ExtensionOGAFzAHYKF(uint64_t *a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v45 = *a1;
  LOWORD(v64) = 0;
  v3 = a1[2];
  v4 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  v5 = v1;
  v7 = v2 >> 62;
  v8 = MEMORY[0x1E69E7CC0];
  v46 = BYTE6(v2);
  v47 = v2 >> 62;
  while (1)
  {
    if (v7 <= 1)
    {
      v9 = v46;
      if (v7)
      {
        v9 = v45 >> 32;
      }

LABEL_8:
      if (v9 < v4)
      {
        return v8;
      }

      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v9 = *(v45 + 24);
      goto LABEL_8;
    }

    if (v4 >= 1)
    {
      return v8;
    }

LABEL_11:
    v10 = *a1;
    v11 = a1[1];
    *&v58 = *a1;
    *(&v58 + 1) = v11;
    if (v4 < v3)
    {
      goto LABEL_64;
    }

    v48 = v5;
    *&v50 = v3;
    *(&v50 + 1) = v4;
    v49 = v4;
    outlined copy of Data._Representation(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v58, *(&v58 + 1));
    v12 = v64;
    a1[2] = v49;
    v14 = *a1;
    v13 = a1[1];
    LOWORD(v64) = 0;
    v15 = v49 + 2;
    if (__OFADD__(v49, 2))
    {
      goto LABEL_65;
    }

    v16 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      break;
    }

    if (v16)
    {
      v17 = v14 >> 32;
    }

    else
    {
      v17 = BYTE6(v13);
    }

LABEL_19:
    if (v17 < v15)
    {
      goto LABEL_58;
    }

LABEL_22:
    *&v58 = v14;
    *(&v58 + 1) = v13;
    if (v15 < v49)
    {
      goto LABEL_66;
    }

    *&v50 = v49;
    *(&v50 + 1) = v49 + 2;
    outlined copy of Data._Representation(v14, v13);
    outlined copy of Data._Representation(v14, v13);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v58, *(&v58 + 1));
    v18 = bswap32(v64) >> 16;
    a1[2] = v15;
    v19 = v15 + v18;
    if (__OFADD__(v15, v18))
    {
      goto LABEL_67;
    }

    v20 = *a1;
    v21 = a1[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (v22)
      {
        v23 = v20 >> 32;
      }

      else
      {
        v23 = BYTE6(v21);
      }

LABEL_30:
      if (v23 < v19)
      {
        goto LABEL_59;
      }

      goto LABEL_33;
    }

    if (v22 == 2)
    {
      v23 = *(v20 + 24);
      goto LABEL_30;
    }

    if (v19 > 0)
    {
      goto LABEL_59;
    }

LABEL_33:
    if (v19 < v15)
    {
      goto LABEL_68;
    }

    v24 = Data._Representation.subscript.getter();
    v26 = 0;
    a1[2] = v19;
    v27 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      v28 = v48;
      if (v27 == 2)
      {
        v26 = *(v24 + 16);
      }
    }

    else
    {
      v28 = v48;
      if (v27)
      {
        v26 = v24;
      }
    }

    v64 = v24;
    v65 = v25;
    v66 = v26;
    _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v64, bswap32(v12) >> 16, 13, 0, v56, &v58);
    if (v28)
    {
      v8 = v56[0];
      v43 = v56[1];
      v38 = v57;
      v42 = v64;
      v41 = v65;
      goto LABEL_61;
    }

    v5 = 0;
    v29 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v30 = *(v64 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v29)
    {
      v30 = v64 >> 32;
    }

    else
    {
      v30 = BYTE6(v65);
    }

    if (__OFSUB__(v30, v66))
    {
      goto LABEL_69;
    }

    if (v30 != v66)
    {
      v38 = 2;
      v39 = v64;
      v40 = v65;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v50 = v58;
      v51 = v59;
      outlined destroy of Extension(&v50);
      v41 = v40;
      v42 = v39;
      v43 = 0;
      v8 = 1;
LABEL_61:
      outlined consume of Data._Representation(v42, v41);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v14;
      a1[1] = v13;
      a1[2] = v49;
      *&v58 = v8;
      *(&v58 + 1) = v43;
      LOBYTE(v59) = v38;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();

      return v8;
    }

    outlined consume of Data._Representation(v64, v65);
    outlined consume of Data._Representation(v14, v13);
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v50 = v58;
    v51 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    }

    LODWORD(v7) = v47;
    v32 = *(v8 + 16);
    v31 = *(v8 + 24);
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 16) = v32 + 1;
    v33 = v8 + 88 * v32;
    v34 = v51;
    *(v33 + 32) = v50;
    *(v33 + 48) = v34;
    v35 = v52;
    v36 = v53;
    v37 = v54;
    *(v33 + 112) = v55;
    *(v33 + 80) = v36;
    *(v33 + 96) = v37;
    *(v33 + 64) = v35;
    LOWORD(v64) = 0;
    v3 = a1[2];
    v4 = v3 + 2;
    if (__OFADD__(v3, 2))
    {
      goto LABEL_63;
    }
  }

  if (v16 == 2)
  {
    v17 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v15 < 1)
  {
    goto LABEL_22;
  }

LABEL_58:
  outlined copy of Data._Representation(v14, v13);
  v20 = *a1;
  v21 = a1[1];
LABEL_59:
  outlined consume of Data._Representation(v20, v21);
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v49;
  return v8;
}

uint64_t _s15SwiftTLSLibrary18CertificateRequestVAA24HandshakeMessageProtocolA2aDP5bytesxAA10ByteBufferVz_tAA8TLSErrorOYKcfCTW@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1);
  if (v3)
  {
    *a2 = result;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
  }

  return result;
}

uint64_t *_s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfc04readcD7ContextL_yA2FzFTf4n_g(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v3 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 16);
    v4 = *(v2 + 24);
  }

  else
  {
    if (!v3)
    {
      v4 = BYTE6(v1);
LABEL_13:
      result[2] = v4;
      return v2;
    }

    v4 = v2 >> 32;
    v5 = v2;
  }

  if (v4 < v5)
  {
    __break(1u);
  }

  else
  {
    if (v3 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = v2 >> 32;
    }

    if (v6 >= v4)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary18CertificateRequestV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  outlined copy of Data._Representation(*a1, v3);
  _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s5UInt8V_ACTg504_s15a12TLSLibrary10cd5VAcA8L125OIglozo_A2cEIeglrzo_TR04_s15a42TLSLibrary18CertificateRequestV5bytesAcA10cd7Vz_tAA8E30OYKcfc04readcD7ContextL_yA2FzFTf3nnpf_nTf1nnc_n(v14, &v16);
  if (v1)
  {
    v6 = v14[0];
    v7 = v14[1];
    v8 = v15;
    outlined consume of Data._Representation(*a1, a1[1]);
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
    v16 = v6;
    v17 = v7;
    LOBYTE(v18) = v8;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  else
  {
    v9 = v17;
    if (v17 >> 60 == 15)
    {
      outlined consume of Data._Representation(*a1, a1[1]);
      v10 = v16;
      v11 = v9;
    }

    else
    {
      outlined consume of Data._Representation(v4, v3);
      v13 = v16;
      v19 = v18;
      v4 = *a1;
      v3 = a1[1];
      v5 = a1[2];
      outlined copy of Data._Representation(*a1, v3);
      if (_s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionOGTg504_s15a12TLSLibrary10cd7VSayAA9q5OGAA8l114OIglozo_AcfHIeglrzo_TR04_s15a42TLSLibrary18CertificateRequestV5bytesAcA10cd7Vz_tAA8f31OYKcfc14readExtensionsL_ySayU22E10OGAFzAHYKFTf3nnpf_nTf1nc_n(a1))
      {
        outlined consume of Data._Representation(v4, v3);
        return v13;
      }

      outlined consume of Data._Representation(*a1, a1[1]);
      v10 = v13;
      v11 = v9;
    }

    outlined consume of ByteBuffer?(v10, v11);
    *a1 = v4;
    a1[1] = v3;
    a1[2] = v5;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type CertificateRequest and conformance CertificateRequest()
{
  result = lazy protocol witness table cache variable for type CertificateRequest and conformance CertificateRequest;
  if (!lazy protocol witness table cache variable for type CertificateRequest and conformance CertificateRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateRequest and conformance CertificateRequest);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CertificateRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for CertificateRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(uint64_t a1, uint64_t a2)
{

  return sub_1B2628AE0(a1, a2);
}

void Extension.SupportedVersions.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(a2);
    Hasher._combine(_:)(BYTE1(a2));
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    v4 = *(a2 + 16);
    MEMORY[0x1B274DB20](v4);
    if (v4)
    {
      v5 = (a2 + 33);
      do
      {
        v6 = *(v5 - 1);
        v7 = *v5;
        v5 += 2;
        Hasher._combine(_:)(v6);
        Hasher._combine(_:)(v7);
        --v4;
      }

      while (v4);
    }
  }
}

Swift::Int Extension.SupportedVersions.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Extension.SupportedVersions.hash(into:)(v5, a1, a2 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.SupportedVersions()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Extension.SupportedVersions.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.SupportedVersions(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  Extension.SupportedVersions.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

void _s15SwiftTLSLibrary10ByteBufferV21readSupportedVersions11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKFSayAA15ProtocolVersionVGACzXEfU_(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v3);
    v8 = v4 >> 32;
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  v10 = __OFSUB__(v9, v5);
  v11 = v9 - v5;
  if (v10)
  {
    goto LABEL_29;
  }

  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v11 / 2) & ~((v11 + (v11 >> 63)) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v13 = a1[1];
  v24 = *a1;
  v14 = v5 + 2;
  if (__OFADD__(v5, 2))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v15 = v12;
  v16 = v13 >> 62;
  v17 = BYTE6(v13);
  while (1)
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        if (*(v24 + 24) < v14)
        {
          break;
        }
      }

      else if (v14 > 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v18 = v17;
    if (v16)
    {
      v18 = v24 >> 32;
    }

    if (v18 < v14)
    {
      break;
    }

LABEL_20:
    v25 = *a1;
    v26 = a1[1];
    if (v14 < v5)
    {
      goto LABEL_28;
    }

    outlined copy of Data._Representation(*a1, a1[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v25, v26);
    a1[2] = v14;
    v20 = *(v15 + 2);
    v19 = *(v15 + 3);
    if (v20 >= v19 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
    }

    v21 = bswap32(0) >> 16;
    *(v15 + 2) = v20 + 1;
    v22 = &v15[2 * v20];
    v22[32] = BYTE1(v21);
    v22[33] = v21;
    v5 = v14;
    v10 = __OFADD__(v14, 2);
    v14 += 2;
    if (v10)
    {
      goto LABEL_27;
    }
  }

  *a2 = v15;
}

BOOL specialized static Extension.SupportedVersions.__derived_enum_equals(_:_:)(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0 && result == a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    v4 = *(result + 16);
    if (v4 != *(a3 + 16))
    {
      return 0;
    }

    else if (v4 && result != a3)
    {
      v5 = (a3 + 33);
      v6 = (result + 33);
      while (v4)
      {
        v7 = *(v5 - 1);
        v8 = *v5;
        v5 += 2;
        v9 = v8;
        result = *(v6 - 1) == v7 && *v6 == v9;
        v11 = result != 1 || v4-- == 1;
        v6 += 2;
        if (v11)
        {
          return result;
        }
      }

      __break(1u);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.SupportedVersions and conformance Extension.SupportedVersions()
{
  result = lazy protocol witness table cache variable for type Extension.SupportedVersions and conformance Extension.SupportedVersions;
  if (!lazy protocol witness table cache variable for type Extension.SupportedVersions and conformance Extension.SupportedVersions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.SupportedVersions and conformance Extension.SupportedVersions);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Extension.SupportedVersions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Extension.SupportedVersions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t TLSMessageSerializer.writeHandshakeMessage(_:into:)(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 104);
  if (v4 > 3)
  {
    if (*(a1 + 104) > 5u)
    {
      if (v4 == 6)
      {
        return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(*a1, v1, v2);
      }

      else
      {
        return specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
      }
    }

    else if (v4 == 4)
    {
      return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(*a1, v1, v2, v3, 11, CertificateMessage.write(into:));
    }

    else
    {
      return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(*a1, v1, v2, v3);
    }
  }

  else if (*(a1 + 104) > 1u)
  {
    if (v4 == 2)
    {
      return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(*a1);
    }

    else
    {
      return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(*a1, v1, v2, v3, 13, CertificateRequest.write(into:));
    }
  }

  else if (*(a1 + 104))
  {
    return specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
  }

  else
  {
    return specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
  }
}

uint64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  LOBYTE(v13) = 8;
  v3 = MEMORY[0x1E69E6290];
  v4 = MEMORY[0x1E6969DF8];
  v16 = MEMORY[0x1E69E6290];
  v17 = MEMORY[0x1E6969DF8];
  v14 = &v13;
  v15 = (&v13 + 1);
  __swift_project_boxed_opaque_existential_0(&v14, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v14);
  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  LOBYTE(v13) = 0;
  v16 = v3;
  v17 = v4;
  v14 = &v13;
  v15 = (&v13 + 1);
  __swift_project_boxed_opaque_existential_0(&v14, v3);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v14);
  v13 = 0;
  v16 = v3;
  v17 = v4;
  v14 = &v13;
  v15 = &v14;
  __swift_project_boxed_opaque_existential_0(&v14, v3);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v14);
  v9 = EncryptedExtensions.write(into:)(v1, a1);
  if (v9 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v10 = v9;
  v11 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v9), v8);
  if (__OFADD__(v8, v11))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v10, v8 + v11);
  return v10 + 4;
}

uint64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return specialized ByteBuffer.writeHandshakeMessage<A>(_:)(a1, a2, a3, a4, 11, CertificateMessage.write(into:));
}

int64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  LOBYTE(v19) = 15;
  v9 = MEMORY[0x1E69E6290];
  v10 = MEMORY[0x1E6969DF8];
  v22 = MEMORY[0x1E69E6290];
  v23 = MEMORY[0x1E6969DF8];
  v20 = &v19;
  v21 = (&v19 + 1);
  __swift_project_boxed_opaque_existential_0(&v20, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v20);
  v11 = *v4;
  v12 = v4[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v11 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v11 >> 32;
  }

  else
  {
    v14 = BYTE6(v12);
  }

  LOBYTE(v19) = 0;
  v22 = v9;
  v23 = v10;
  v20 = &v19;
  v21 = (&v19 + 1);
  __swift_project_boxed_opaque_existential_0(&v20, v9);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v20);
  v19 = 0;
  v22 = v9;
  v23 = v10;
  v20 = &v19;
  v21 = &v20;
  __swift_project_boxed_opaque_existential_0(&v20, v9);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v20);
  v15 = CertificateVerify.write(into:)(v4, a1, a2, a3, a4);
  if (v15 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v16 = v15;
  v17 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v15), v14);
  if (__OFADD__(v14, v17))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v16, v14 + v17);
  return v16 + 4;
}

uint64_t specialized ByteBuffer.writeHandshakeMessage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v27 = *MEMORY[0x1E69E9840];
  LOBYTE(v22) = a5;
  v12 = MEMORY[0x1E69E6290];
  v13 = MEMORY[0x1E6969DF8];
  v25 = MEMORY[0x1E69E6290];
  v26 = MEMORY[0x1E6969DF8];
  v23 = &v22;
  v24 = (&v22 + 1);
  __swift_project_boxed_opaque_existential_0(&v23, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v23);
  v14 = *v6;
  v15 = v6[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v14 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v14 >> 32;
  }

  else
  {
    v17 = BYTE6(v15);
  }

  LOBYTE(v22) = 0;
  v25 = v12;
  v26 = v13;
  v23 = &v22;
  v24 = (&v22 + 1);
  __swift_project_boxed_opaque_existential_0(&v23, v12);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v23);
  v22 = 0;
  v25 = v12;
  v26 = v13;
  v23 = &v22;
  v24 = &v23;
  __swift_project_boxed_opaque_existential_0(&v23, v12);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v23);
  v18 = a6(v6, a1, a2, a3, a4);
  if (v18 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v19 = v18;
  v20 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v18), v17);
  if (__OFADD__(v17, v20))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v19, v17 + v20);
  return v19 + 4;
}

uint64_t Extension.PreSharedKey.OfferedPSKs.identities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Extension.PreSharedKey.OfferedPSKs.binders.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

BOOL static Extension.PreSharedKey.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return (a6 & 1) != 0 && a1 == a4;
  }

  else
  {
    return (a6 & 1) == 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(a1, a4) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(a2, a5) & 1) != 0;
  }
}

uint64_t static Extension.PreSharedKey.OfferedPSKs.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(a2, a4);
}

void Extension.PreSharedKey.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1B274DB20](1, a2, a3);
    Hasher._combine(_:)(a2);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    specialized Array<A>.hash(into:)(a1, a2);

    specialized Array<A>.hash(into:)(a1, a3);
  }
}

Swift::Int Extension.PreSharedKey.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(a1);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    specialized Array<A>.hash(into:)(v7, a1);
    specialized Array<A>.hash(into:)(v7, a2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.PreSharedKey()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    specialized Array<A>.hash(into:)(v5, v1);
    specialized Array<A>.hash(into:)(v5, v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Extension.PreSharedKey(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(v3);
  }

  else
  {
    v4 = *(v1 + 8);
    MEMORY[0x1B274DB20](0);
    specialized Array<A>.hash(into:)(a1, v3);

    specialized Array<A>.hash(into:)(a1, v4);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PreSharedKey(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (v4)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(v2);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    specialized Array<A>.hash(into:)(v6, v2);
    specialized Array<A>.hash(into:)(v6, v3);
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PreSharedKey(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0 && v4 == v5;
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    return (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(v4, v5) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(v8, v7) & 1) != 0;
  }
}

void Extension.PreSharedKey.OfferedPSKs.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized Array<A>.hash(into:)(a1, a2);

  specialized Array<A>.hash(into:)(a1, a3);
}

Swift::Int Extension.PreSharedKey.OfferedPSKs.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, a1);
  specialized Array<A>.hash(into:)(v5, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.PreSharedKey.OfferedPSKs()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Extension.PreSharedKey.OfferedPSKs(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Array<A>.hash(into:)(a1, v3);

  specialized Array<A>.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PreSharedKey.OfferedPSKs(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  specialized Array<A>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PreSharedKey.OfferedPSKs(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryV_Tt1g5(v2, v3);
}

void Extension.PreSharedKey.OfferedPSKs.PSKIdentity.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, Swift::UInt32 a5)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = a2 >> 32;
  }

  else
  {
    v7 = BYTE6(a3);
  }

  if (v7 < a4)
  {
    __break(1u);
  }

  else
  {
    v8 = Data._Representation.subscript.getter();
    v10 = v9;
    Data.hash(into:)();
    outlined consume of Data._Representation(v8, v10);
    Hasher._combine(_:)(a5);
  }
}

void *Extension.PreSharedKey.OfferedPSKs.PSKIdentity.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  result = Hasher.init(_seed:)();
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 == 2)
    {
      v10 = *(a1 + 24);
    }
  }

  else if (v9)
  {
    v10 = a1 >> 32;
  }

  else
  {
    v10 = BYTE6(a2);
  }

  if (v10 < a3)
  {
    __break(1u);
  }

  else
  {
    v11 = Data._Representation.subscript.getter();
    v13 = v12;
    Data.hash(into:)();
    outlined consume of Data._Representation(v11, v13);
    Hasher._combine(_:)(a4);
    return Hasher._finalize()();
  }

  return result;
}

void protocol witness for Hashable.hash(into:) in conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v2 >> 32;
  }

  else
  {
    v5 = BYTE6(v3);
  }

  if (v5 < *(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v1 + 24);
    v7 = Data._Representation.subscript.getter();
    v9 = v8;
    Data.hash(into:)();
    outlined consume of Data._Representation(v7, v9);
    Hasher._combine(_:)(v6);
  }
}

void *protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = Hasher.init(_seed:)();
  v7 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v3 >> 32;
  }

  else
  {
    v8 = BYTE6(v2);
  }

  if (v8 < v4)
  {
    __break(1u);
  }

  else
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);
    Hasher._combine(_:)(v5);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  return specialized static ByteBuffer.== infix(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & (v2 == v3);
}

void Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = a2 >> 32;
  }

  else
  {
    v5 = BYTE6(a3);
  }

  if (v5 < a4)
  {
    __break(1u);
  }

  else
  {
    v6 = Data._Representation.subscript.getter();
    v8 = v7;
    Data.hash(into:)();

    outlined consume of Data._Representation(v6, v8);
  }
}

void *Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = Hasher.init(_seed:)();
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(a1 + 24);
    }
  }

  else if (v7)
  {
    v8 = a1 >> 32;
  }

  else
  {
    v8 = BYTE6(a2);
  }

  if (v8 < a3)
  {
    __break(1u);
  }

  else
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);
    return Hasher._finalize()();
  }

  return result;
}

void *protocol witness for Hashable.hashValue.getter in conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = Hasher.init(_seed:)();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v9 = v8;
    Data.hash(into:)();
    outlined consume of Data._Representation(v7, v9);
    return Hasher._finalize()();
  }

  return result;
}

void protocol witness for Hashable.hash(into:) in conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v2 >> 32;
  }

  else
  {
    v5 = BYTE6(v3);
  }

  if (v5 < v1[2])
  {
    __break(1u);
  }

  else
  {
    v6 = Data._Representation.subscript.getter();
    v8 = v7;
    Data.hash(into:)();

    outlined consume of Data._Representation(v6, v8);
  }
}

void *protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  result = Hasher.init(_seed:)();
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v3);
  }

  if (v7 < v4)
  {
    __break(1u);
  }

  else
  {
    v8 = Data._Representation.subscript.getter();
    v10 = v9;
    Data.hash(into:)();
    outlined consume of Data._Representation(v8, v10);
    return Hasher._finalize()();
  }

  return result;
}

unint64_t ByteBuffer.writePreSharedKey(_:)(uint64_t a1, uint64_t a2, char a3, __n128 a4, __n128 a5)
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = bswap32(a1) >> 16;
    v7[3] = MEMORY[0x1E69E6290];
    v7[4] = MEMORY[0x1E6969DF8];
    v7[0] = &v6;
    v7[1] = v7;
    __swift_project_boxed_opaque_existential_0(v7, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(v7);
    return 2;
  }

  else
  {

    return ByteBuffer.writeOfferedPSKs(_:)(a1, a2);
  }
}

unint64_t ByteBuffer.writeOfferedPSKs(_:)(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  v6 = v2[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v10 = 0;
    if (v7 == 2)
    {
      v10 = *(v5 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v6);
    v9 = v5 >> 32;
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }
  }

  v24 = 0;
  v11 = MEMORY[0x1E69E6290];
  v12 = MEMORY[0x1E6969DF8];
  v27 = MEMORY[0x1E69E6290];
  v28 = MEMORY[0x1E6969DF8];
  v25 = &v24;
  v26 = &v25;
  __swift_project_boxed_opaque_existential_0(&v25, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  v13 = specialized Sequence.reduce<A>(into:_:)(0, a1);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  if (v13 >> 16)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v13, v10);
  v15 = *v2;
  v16 = v2[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v20 = *(v15 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v18 = BYTE6(v16);
    v19 = v15 >> 32;
    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }
  }

  v24 = 0;
  v27 = v11;
  v28 = v12;
  v25 = &v24;
  v26 = &v25;
  __swift_project_boxed_opaque_existential_0(&v25, v11);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  v21 = specialized Sequence.reduce<A>(into:_:)(0, a2);
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v22 = v21;
  if (v21 >> 16)
  {
    goto LABEL_22;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v21, v20);
  return v14 + v22 + 4;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV16readPreSharedKey11messageType17helloRetryRequestAA9ExtensionO0fgH0OAA09HandshakeJ0V_SbtAA8TLSErrorOYKF(unsigned __int8 a1, char a2)
{
  if (a1 == 2)
  {
    if ((a2 & 1) == 0)
    {
      v9 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
      if ((v9 & 0x10000) == 0)
      {
        return v9;
      }

LABEL_13:
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return 0;
    }

LABEL_6:
    v8 = a1 | 0x290000;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v8;
  }

  if (a1 != 1)
  {
    goto LABEL_6;
  }

  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  outlined copy of Data._Representation(*v2, v4);
  v7 = _s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionO12PreSharedKeyO11OfferedPSKsV11PSKIdentityVGTg504_s15a12TLSLibrary10cd7VSayAA9q3O12rst3O11uv3V11w5VGAA8L175OIglozo_AclNIeglrzo_TR04_s15a12TLSLibrary10cd7V15readi44PSKs33_D0516996C2746F7B9FC40561F63FA534LLAA9e3O12fgh12O0fG0VSgyAA8l28OYKF0E10IdentitiesL_ySayAK11K10VGACzANYKFTf3nnpf_nTf1nc_n(v2);
  v8 = v7;
  if (!v3)
  {
    if (v7)
    {
      outlined consume of Data._Representation(v5, v4);
      v5 = *v2;
      v4 = v2[1];
      v6 = v2[2];
      outlined copy of Data._Representation(*v2, v4);
      if (_s15SwiftTLSLibrary10ByteBufferV24readVariableLengthVector15lengthFieldType_q_Sgxm_q_ACzAA8TLSErrorOYKXEtAHYKs17FixedWidthIntegerRzr0_lFAfCzAHYKXEfU_s6UInt16V_SayAA9ExtensionO12PreSharedKeyO11OfferedPSKsV14PSKBinderEntryVGTg504_s15a12TLSLibrary10cd7VSayAA9q3O12rst3O11uv3V14wx5VGAA8L179OIglozo_AclNIeglrzo_TR04_s15a12TLSLibrary10cd7V15readi44PSKs33_D0516996C2746F7B9FC40561F63FA534LLAA9e3O12fgh12O0fG0VSgyAA8m31OYKF0E13BinderEntriesL_ySayAK14kL10VGACzANYKFTf3nnpf_nTf1nc_n(v2))
      {
        outlined consume of Data._Representation(v5, v4);
        return v8;
      }

      outlined consume of Data._Representation(*v2, v2[1]);
    }

    else
    {
      outlined consume of Data._Representation(*v2, v2[1]);
    }

    *v2 = v5;
    v2[1] = v4;
    v2[2] = v6;
    goto LABEL_13;
  }

  outlined consume of Data._Representation(*v2, v2[1]);
  *v2 = v5;
  v2[1] = v4;
  v2[2] = v6;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return v8;
}

unint64_t ByteBuffer.writePSKIdentity(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = *v4;
  v10 = v4[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v14 = *(v9 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v12 = BYTE6(v10);
    v13 = v9 >> 32;
    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }
  }

  LOWORD(v28) = 0;
  v15 = MEMORY[0x1E69E6290];
  v16 = MEMORY[0x1E6969DF8];
  v31 = MEMORY[0x1E69E6290];
  v32 = MEMORY[0x1E6969DF8];
  v29 = &v28;
  v30 = (&v28 + 2);
  __swift_project_boxed_opaque_existential_0(&v29, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(a1 + 16);
      v18 = *(a1 + 24);
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    if (v17)
    {
      v18 = a1 >> 32;
    }

    else
    {
      v18 = BYTE6(a2);
    }

    if (v17)
    {
      v19 = a1;
    }

    else
    {
      v19 = 0;
    }
  }

  if (v18 < a3 || v18 < v19)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  v20 = Data._Representation.subscript.getter();
  v22 = v21;
  Data.append(_:)();
  v23 = v22;
  v24 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_32;
    }

    v26 = *(v20 + 16);
    v25 = *(v20 + 24);
    outlined consume of Data._Representation(v20, v23);
    v20 = v25 - v26;
    if (!__OFSUB__(v25, v26))
    {
LABEL_29:
      if ((v20 & 0x8000000000000000) == 0)
      {
        if (!(v20 >> 16))
        {
          goto LABEL_33;
        }

        __break(1u);
LABEL_32:
        outlined consume of Data._Representation(v20, v23);
        v20 = 0;
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_27:
    outlined consume of Data._Representation(v20, v23);
    if (__OFSUB__(HIDWORD(v20), v20))
    {
      goto LABEL_36;
    }

    v20 = HIDWORD(v20) - v20;
    goto LABEL_29;
  }

  if (v24)
  {
    goto LABEL_27;
  }

  outlined consume of Data._Representation(v20, v22);
  v20 = BYTE6(v22);
LABEL_33:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v20, v14);
  v28 = bswap32(a4);
  v31 = v15;
  v32 = v16;
  v29 = &v28;
  v30 = &v29;
  __swift_project_boxed_opaque_existential_0(&v29, v15);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v29);
  return v20 + 6;
}

unint64_t ByteBuffer.writePSKBinder(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v7 = *v3;
  v8 = v3[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v12 = *(v7 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v10 = BYTE6(v8);
    v11 = v7 >> 32;
    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }
  }

  v24 = 0;
  v25[3] = MEMORY[0x1E69E6290];
  v25[4] = MEMORY[0x1E6969DF8];
  v25[0] = &v24;
  v25[1] = v25;
  __swift_project_boxed_opaque_existential_0(v25, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v25);
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v15 = *(a1 + 16);
      v14 = *(a1 + 24);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    if (v13)
    {
      v14 = a1 >> 32;
    }

    else
    {
      v14 = BYTE6(a2);
    }

    if (v13)
    {
      v15 = a1;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v14 < a3 || v14 < v15)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  v16 = Data._Representation.subscript.getter();
  v18 = v17;
  Data.append(_:)();
  v19 = v18;
  v20 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_32;
    }

    v22 = *(v16 + 16);
    v21 = *(v16 + 24);
    outlined consume of Data._Representation(v16, v19);
    v16 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
LABEL_29:
      if ((v16 & 0x8000000000000000) == 0)
      {
        if (v16 <= 0xFF)
        {
          goto LABEL_33;
        }

        __break(1u);
LABEL_32:
        outlined consume of Data._Representation(v16, v19);
        v16 = 0;
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_27:
    outlined consume of Data._Representation(v16, v19);
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      goto LABEL_36;
    }

    v16 = HIDWORD(v16) - v16;
    goto LABEL_29;
  }

  if (v20)
  {
    goto LABEL_27;
  }

  outlined consume of Data._Representation(v16, v18);
  v16 = BYTE6(v18);
LABEL_33:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v16, v12);
  return v16 + 1;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV15readOfferedPSKs33_D0516996C2746F7B9FC40561F63FA534LLAA9ExtensionO12PreSharedKeyO0fG0VSgyAA8TLSErrorOYKF0E10IdentitiesL_ySayAK11PSKIdentityVGACzANYKF(uint64_t *a1)
{
  v1 = a1[1];
  v44 = *a1;
  v2 = a1[2];
  v3 = v2 + 2;
  if (__OFADD__(v2, 2))
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
  }

  v5 = v1 >> 62;
  v6 = *a1;
  v7 = MEMORY[0x1E69E7CC0];
  v45 = BYTE6(v1);
  v46 = v1 >> 62;
  while (1)
  {
    if (v5 <= 1)
    {
      v8 = v45;
      if (v5)
      {
        v8 = v44 >> 32;
      }

LABEL_8:
      if (v8 < v3)
      {
        goto LABEL_84;
      }

      goto LABEL_11;
    }

    if (v5 == 2)
    {
      v8 = *(v44 + 24);
      goto LABEL_8;
    }

    if (v3 >= 1)
    {
LABEL_84:
      v42 = v1;
      outlined copy of Data._Representation(v6, v1);
      v12 = *a1;
      v13 = a1[1];
      goto LABEL_86;
    }

LABEL_11:
    v53 = v1;
    if (v3 < v2)
    {
      goto LABEL_91;
    }

    v47 = v2;
    v9 = v1;
    outlined copy of Data._Representation(v6, v1);
    v50 = v9;
    outlined copy of Data._Representation(v6, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v6, v53);
    v10 = bswap32(0) >> 16;
    a1[2] = v3;
    v11 = v3 + v10;
    if (__OFADD__(v3, v10))
    {
      goto LABEL_92;
    }

    v12 = *a1;
    v13 = a1[1];
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(v12 + 24);
        goto LABEL_19;
      }

      if (v11 <= 0)
      {
        goto LABEL_22;
      }

LABEL_85:
      v2 = v47;
      v42 = v50;
LABEL_86:
      outlined consume of Data._Representation(v12, v13);
      *a1 = v6;
      a1[1] = v42;
      a1[2] = v2;
      return v7;
    }

    v15 = v14 ? v12 >> 32 : BYTE6(v13);
LABEL_19:
    if (v15 < v11)
    {
      goto LABEL_85;
    }

LABEL_22:
    if (v11 < v3)
    {
      goto LABEL_93;
    }

    v16 = Data._Representation.subscript.getter();
    v18 = v16;
    v19 = v17;
    a1[2] = v11;
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v16 = *(v16 + 16);
        v21 = *(v18 + 24);
      }

      else
      {
        v16 = 0;
        v21 = 0;
      }
    }

    else if (v20)
    {
      v16 = v16;
      v21 = v18 >> 32;
    }

    else
    {
      v16 = 0;
      v21 = BYTE6(v17);
    }

    v22 = __OFSUB__(v21, v16);
    v23 = v21 - v16;
    if (v22)
    {
      goto LABEL_94;
    }

    v24 = v16 + v23;
    if (__OFADD__(v16, v23))
    {
      goto LABEL_95;
    }

    if (v20 <= 1)
    {
      if (v20)
      {
        v25 = v18 >> 32;
      }

      else
      {
        v25 = BYTE6(v17);
      }

LABEL_38:
      if (v25 < v24)
      {
        goto LABEL_101;
      }

      goto LABEL_41;
    }

    if (v20 == 2)
    {
      v25 = *(v18 + 24);
      goto LABEL_38;
    }

    if (v24 > 0)
    {
      goto LABEL_102;
    }

LABEL_41:
    if (v24 < v16)
    {
      goto LABEL_96;
    }

    v48 = v7;
    v26 = Data._Representation.subscript.getter();
    v27 = 0;
    v49 = v28;
    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v27 = *(v26 + 16);
      }
    }

    else if (v29)
    {
      v27 = v26;
    }

    v51 = v26;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v30 = *(v18 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v20)
    {
      v30 = v18 >> 32;
    }

    else
    {
      v30 = BYTE6(v19);
    }

    if (__OFSUB__(v30, v24))
    {
      goto LABEL_97;
    }

    if (v30 != v24)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v51, v49);
      outlined consume of Data._Representation(v18, v19);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v6;
      a1[1] = v50;
      a1[2] = v47;
      swift_willThrowTypedImpl();

      return 1;
    }

    outlined consume of Data._Representation(v18, v19);
    outlined consume of Data._Representation(v6, v50);
    v31 = v11 + 4;
    if (__OFADD__(v11, 4))
    {
      goto LABEL_98;
    }

    v32 = *a1;
    v33 = a1[1];
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      break;
    }

    v35 = v27;
    if (v34)
    {
      v36 = v32 >> 32;
    }

    else
    {
      v36 = BYTE6(v33);
    }

LABEL_64:
    v37 = v49;
    if (v36 < v31)
    {
      goto LABEL_87;
    }

LABEL_67:
    v52 = *a1;
    v54 = a1[1];
    if (v31 < v11)
    {
      goto LABEL_99;
    }

    outlined copy of Data._Representation(v32, v33);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v52, v54);
    a1[2] = v31;
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v38 = *(v51 + 24);
      }

      else
      {
        v38 = 0;
      }
    }

    else if (v29)
    {
      v38 = v51 >> 32;
    }

    else
    {
      v38 = BYTE6(v37);
    }

    v7 = v48;
    v22 = __OFSUB__(v38, v35);
    v39 = v38 - v35;
    if (v22)
    {
      goto LABEL_100;
    }

    if (v39 <= 0)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v51, v37);

      return 9;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
    }

    v5 = *(v7 + 2);
    v40 = *(v7 + 3);
    if (v5 >= v40 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v5 + 1, 1, v7);
    }

    *(v7 + 2) = v5 + 1;
    v41 = &v7[32 * v5];
    *(v41 + 4) = v51;
    *(v41 + 5) = v37;
    *(v41 + 6) = v35;
    *(v41 + 14) = bswap32(0);
    v6 = *a1;
    v1 = a1[1];
    v2 = a1[2];
    v3 = v2 + 2;
    LODWORD(v5) = v46;
    if (__OFADD__(v2, 2))
    {
      goto LABEL_90;
    }
  }

  v35 = v27;
  if (v34 == 2)
  {
    v36 = *(v32 + 24);
    goto LABEL_64;
  }

  v37 = v49;
  if (v31 <= 0)
  {
    goto LABEL_67;
  }

LABEL_87:
  outlined consume of Data._Representation(v51, v37);
  return v48;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV15readOfferedPSKs33_D0516996C2746F7B9FC40561F63FA534LLAA9ExtensionO12PreSharedKeyO0fG0VSgyAA8TLSErrorOYKF0E13BinderEntriesL_ySayAK14PSKBinderEntryVGACzANYKF(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_78:
    __break(1u);
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
    __break(1u);
  }

  v6 = v2 >> 62;
  v7 = MEMORY[0x1E69E7CC0];
  v37 = BYTE6(v2);
  v38 = v2 >> 62;
  v41 = a1[1];
  while (1)
  {
    v39 = v3;
    if (v6 > 1)
    {
      break;
    }

    v8 = v37;
    if (v6)
    {
      v8 = v1 >> 32;
    }

LABEL_8:
    if (v8 < v4)
    {
      goto LABEL_72;
    }

LABEL_11:
    v9 = *a1;
    v10 = a1[1];
    v43 = *a1;
    if (v4 < v3)
    {
      goto LABEL_77;
    }

    outlined copy of Data._Representation(v1, v2);
    outlined copy of Data._Representation(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v43, v10);
    a1[2] = v4;
    v11 = *a1;
    v12 = a1[1];
    v13 = v12 >> 62;
    if ((v12 >> 62) <= 1)
    {
      if (v13)
      {
        v14 = v11 >> 32;
      }

      else
      {
        v14 = BYTE6(v12);
      }

LABEL_18:
      if (v14 < v4)
      {
        goto LABEL_73;
      }

      goto LABEL_21;
    }

    if (v13 == 2)
    {
      v14 = *(v11 + 24);
      goto LABEL_18;
    }

    if (v4 > 0)
    {
      goto LABEL_73;
    }

LABEL_21:
    v15 = Data._Representation.subscript.getter();
    v17 = v15;
    v18 = v16;
    a1[2] = v4;
    v19 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v15 = *(v15 + 16);
        v20 = *(v17 + 24);
      }

      else
      {
        v15 = 0;
        v20 = 0;
      }
    }

    else if (v19)
    {
      v15 = v15;
      v20 = v17 >> 32;
    }

    else
    {
      v15 = 0;
      v20 = BYTE6(v16);
    }

    v21 = __OFSUB__(v20, v15);
    v22 = v20 - v15;
    if (v21)
    {
      goto LABEL_78;
    }

    v23 = v7;
    v24 = v15 + v22;
    if (__OFADD__(v15, v22))
    {
      goto LABEL_79;
    }

    if (v19 <= 1)
    {
      if (v19)
      {
        v25 = v17 >> 32;
      }

      else
      {
        v25 = BYTE6(v16);
      }

LABEL_36:
      if (v25 < v24)
      {
        goto LABEL_83;
      }

      goto LABEL_39;
    }

    if (v19 == 2)
    {
      v25 = *(v17 + 24);
      goto LABEL_36;
    }

    if (v24 > 0)
    {
      goto LABEL_84;
    }

LABEL_39:
    if (v24 < v15)
    {
      goto LABEL_80;
    }

    v26 = Data._Representation.subscript.getter();
    v27 = 0;
    v40 = v28;
    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v27 = *(v26 + 16);
      }
    }

    else if (v29)
    {
      v27 = v26;
    }

    v42 = v26;
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v30 = *(v17 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v19)
    {
      v30 = v17 >> 32;
    }

    else
    {
      v30 = BYTE6(v18);
    }

    if (__OFSUB__(v30, v24))
    {
      goto LABEL_81;
    }

    if (v30 != v24)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v42, v40);
      outlined consume of Data._Representation(v17, v18);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v1;
      a1[1] = v41;
      a1[2] = v39;
      swift_willThrowTypedImpl();

      return 1;
    }

    outlined consume of Data._Representation(v17, v18);
    outlined consume of Data._Representation(v1, v41);
    if (v29 > 1)
    {
      v7 = v23;
      if (v29 == 2)
      {
        v32 = *(v42 + 24);
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v7 = v23;
      if (!v29)
      {
        v31 = v40;
        v32 = BYTE6(v40);
        goto LABEL_63;
      }

      v32 = v42 >> 32;
    }

    v31 = v40;
LABEL_63:
    v21 = __OFSUB__(v32, v27);
    v33 = v32 - v27;
    if (v21)
    {
      goto LABEL_82;
    }

    if (v33 <= 31)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v42, v31);

      return 9;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v6 = *(v7 + 2);
    v34 = *(v7 + 3);
    if (v6 >= v34 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v6 + 1, 1, v7);
    }

    *(v7 + 2) = v6 + 1;
    v35 = &v7[24 * v6];
    *(v35 + 4) = v42;
    *(v35 + 5) = v31;
    *(v35 + 6) = v27;
    v3 = a1[2];
    v4 = v3 + 1;
    v2 = v41;
    LODWORD(v6) = v38;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_76;
    }
  }

  if (v6 == 2)
  {
    v8 = *(v1 + 24);
    goto LABEL_8;
  }

  if (v4 < 1)
  {
    goto LABEL_11;
  }

LABEL_72:
  outlined copy of Data._Representation(v1, v2);
  v11 = *a1;
  v12 = a1[1];
LABEL_73:
  outlined consume of Data._Representation(v11, v12);
  *a1 = v1;
  a1[1] = v2;
  a1[2] = v39;
  return v7;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (a2 + 48);
    while (1)
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        break;
      }

      if (v8 == 2)
      {
        v9 = *(v5 + 24);
LABEL_10:
        outlined copy of Data._Representation(*(v4 - 2), *(v4 - 1));
        outlined copy of Data._Representation(v5, v6);
        if (v9 < v7)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v7 > 0)
      {
LABEL_15:
        __break(1u);
        return;
      }

LABEL_13:
      v4 += 3;
      v10 = Data._Representation.subscript.getter();
      v12 = v11;
      Data.hash(into:)();
      outlined consume of Data._Representation(v10, v12);
      outlined consume of Data._Representation(v5, v6);
      outlined consume of Data._Representation(v5, v6);
      if (!--v3)
      {
        return;
      }
    }

    if (!v8)
    {
      if (BYTE6(v6) < v7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v9 = v5 >> 32;
    goto LABEL_10;
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (a2 + 56);
    while (1)
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        break;
      }

      if (v9 == 2)
      {
        v10 = *(v5 + 24);
LABEL_10:
        outlined copy of Data._Representation(*(v4 - 3), *(v4 - 2));
        if (v10 < v7)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v7 > 0)
      {
LABEL_15:
        __break(1u);
        return;
      }

LABEL_13:
      v4 += 8;
      v11 = Data._Representation.subscript.getter();
      v13 = v12;
      Data.hash(into:)();
      outlined consume of Data._Representation(v11, v13);
      Hasher._combine(_:)(v8);
      outlined consume of Data._Representation(v5, v6);
      if (!--v3)
      {
        return;
      }
    }

    if (!v9)
    {
      if (BYTE6(v6) < v7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v10 = v5 >> 32;
    goto LABEL_10;
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1B274DB20](v3);
  if (v3)
  {
    v4 = (a2 + 56);
    while (1)
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      Hasher._combine(_:)(*(v4 - 12));
      v8 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        break;
      }

      if (v8 == 2)
      {
        v9 = *(v5 + 24);
LABEL_10:
        outlined copy of Data._Representation(v5, v6);
        outlined copy of Data._Representation(v5, v6);
        if (v9 < v7)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v7 > 0)
      {
LABEL_15:
        __break(1u);
        return;
      }

LABEL_13:
      v4 += 4;
      v10 = Data._Representation.subscript.getter();
      v12 = v11;
      Data.hash(into:)();
      outlined consume of Data._Representation(v10, v12);
      outlined consume of Data._Representation(v5, v6);
      outlined consume of Data._Representation(v5, v6);
      if (!--v3)
      {
        return;
      }
    }

    if (!v8)
    {
      if (BYTE6(v6) < v7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v9 = v5 >> 32;
    goto LABEL_10;
  }
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B274DB20](v4);
  if (v4)
  {
    v6 = 0;
    v22 = a2 + 32;
    while (1)
    {
      v7 = (v22 + 32 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        v11 = v10 == 2 ? *(v8 + 24) : 0;
      }

      else
      {
        v11 = v10 ? v8 >> 32 : BYTE6(v9);
      }

      if (v11 < v7[2])
      {
        break;
      }

      v12 = v7[3];
      outlined copy of Data._Representation(*v7, v7[1]);

      v13 = Data._Representation.subscript.getter();
      v15 = v14;
      Data.hash(into:)();
      outlined consume of Data._Representation(v13, v15);
      MEMORY[0x1B274DB20](*(v12 + 16));
      v16 = *(v12 + 16);
      if (v16)
      {
        v17 = v12 + 32;
        do
        {
          v18 = *(v17 + 16);
          v24[0] = *v17;
          v24[1] = v18;
          v19 = *(v17 + 32);
          v20 = *(v17 + 48);
          v21 = *(v17 + 64);
          v25 = *(v17 + 80);
          v24[3] = v20;
          v24[4] = v21;
          v24[2] = v19;
          outlined init with copy of Extension(v24, v23);
          Extension.hash(into:)(a1);
          outlined destroy of Extension(v24);
          v17 += 88;
          --v16;
        }

        while (v16);
      }

      outlined consume of Data._Representation(v8, v9);

      if (++v6 == v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKey and conformance Extension.PreSharedKey()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKey and conformance Extension.PreSharedKey;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKey and conformance Extension.PreSharedKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKey and conformance Extension.PreSharedKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKey.OfferedPSKs and conformance Extension.PreSharedKey.OfferedPSKs()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs and conformance Extension.PreSharedKey.OfferedPSKs;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs and conformance Extension.PreSharedKey.OfferedPSKs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs and conformance Extension.PreSharedKey.OfferedPSKs);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKey.OfferedPSKs.PSKIdentity and conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKIdentity and conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKIdentity and conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKIdentity and conformance Extension.PreSharedKey.OfferedPSKs.PSKIdentity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry and conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry()
{
  result = lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry and conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry;
  if (!lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry and conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry and conformance Extension.PreSharedKey.OfferedPSKs.PSKBinderEntry);
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

uint64_t getEnumTagSinglePayload for Extension.PreSharedKey(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Extension.PreSharedKey(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs.PSKIdentity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 28))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Extension.PreSharedKey.OfferedPSKs.PSKIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t SignatureScheme.description.getter(__int16 a1)
{
  result = 0xD000000000000017;
  if (a1 == 2052)
  {
    return 0xD000000000000014;
  }

  if (a1 != 1283 && a1 != 1027)
  {
    _StringGuts.grow(_:)(29);

    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v3);

    MEMORY[0x1B274D610](41, 0xE100000000000000);
    return 0xD00000000000001ALL;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SignatureScheme and conformance SignatureScheme()
{
  result = lazy protocol witness table cache variable for type SignatureScheme and conformance SignatureScheme;
  if (!lazy protocol witness table cache variable for type SignatureScheme and conformance SignatureScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SignatureScheme and conformance SignatureScheme);
  }

  return result;
}

uint64_t _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA256V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5@<X0>(Swift::Int a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 514, 0, MEMORY[0x1E69E7CC0]);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a4 >> 16;
    if (!(a4 >> 16))
    {
      v5 = v12;
      v6 = *(v12 + 2);
      v13 = *(v12 + 3);
      v14 = v13 >> 1;
      v7 = v6 + 1;
      if (v13 >> 1 > v6)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v7, 1, v5);
  v13 = *(v5 + 3);
  v14 = v13 >> 1;
LABEL_4:
  *(v5 + 2) = v7;
  v5[v6 + 32] = BYTE1(a4);
  v15 = v6 + 2;
  if (v14 < (v6 + 2))
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v6 + 2, 1, v5);
  }

  *(v5 + 2) = v15;
  v5[v7 + 32] = a4;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v16 = String.UTF8View._foreignCount()();
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v16 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v16 = HIBYTE(a3) & 0xF;
LABEL_12:
  LODWORD(v6) = v16 + 6;
  if ((v6 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a5 = *(v5 + 2);
  v15 = *(v5 + 3);
  v7 = a5 + 1;

  if (a5 >= v15 >> 1)
  {
LABEL_21:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v7, 1, v5);
  }

  *(v5 + 2) = v7;
  v5[a5 + 32] = v6;
  specialized Array.append<A>(contentsOf:)(0x203331736C74, 0xE600000000000000);
  v17 = specialized Array.append<A>(contentsOf:)(a2, a3);
  MEMORY[0x1EEE9AC00](v17);
  type metadata accessor for SHA256Digest();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  type metadata accessor for SHA256();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA256> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR, MEMORY[0x1E69664B0]);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E00]);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
}

uint64_t RawEPSK.init(identity:epsk:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for RawEPSK(0) + 20);
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t GeneralEPSK.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return GeneralEPSK.init(_:)(a1, type metadata accessor for RawEPSK, a2);
}

{
  return GeneralEPSK.init(_:)(a1, type metadata accessor for ImportedPSK, a2);
}

size_t _s15SwiftTLSLibrary4EPSKV18deriveImportedPSKs3forSayAA0E3PSKVGSayAA16TLSKDFIdentifierVG_tAA8TLSErrorOYKF(uint64_t a1)
{
  v3 = type metadata accessor for ImportedPSK(0);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SHA256();
  v6 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SHA256Digest();
  v8 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SymmetricKey();
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v43 - v15;
  v53 = *(a1 + 16);
  if (v53)
  {
    result = static SHA256Digest.byteCount.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      v62 = a1;
      v43 = v14;
      v44 = v13;
      v69 = v1;
      v61 = v6;
      v47 = v8;
      if (result)
      {
        v17 = result;
        v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v18 + 16) = v17;
        bzero((v18 + 32), v17);
      }

      else
      {
        v18 = MEMORY[0x1E69E7CC0];
      }

      type metadata accessor for EPSK(0);
      *&v64 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v19 = lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E00]);
      v49 = v19;
      static HKDF.extract<A>(inputKeyMaterial:salt:)();

      v20 = 0;
      v48 = (v61 + 8);
      ++v47;
      v46 = (v63 + 16);
      v45 = (v63 + 8);
      v21 = (v62 + 40);
      v22 = MEMORY[0x1E69E7CC0];
      v23 = v69;
      v52 = v10;
      v51 = v12;
      v50 = v5;
      while (!__OFADD__(v20, 1))
      {
        v63 = v20 + 1;
        v25 = v21 + 2;
        v24 = *v21;
        _s15SwiftTLSLibrary4EPSKV24generateImportedIdentity3forAA0eF0VAA16TLSKDFIdentifierV_tAA8TLSErrorOYKF(*(v21 - 4), &v66, v67);
        if (v23)
        {
          v42 = v66;
          (*(v43 + 8))(v60, v44);

          return v42;
        }

        v61 = v20;
        v26 = ImportedIdentity.serialize()();
        v28 = v27;
        v29 = v56;
        v62 = v22;
        v30 = v59;
        dispatch thunk of HashFunction.init()();
        outlined copy of Data._Representation(v26, v28);
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v26, v28, v29);
        v69 = 0;
        outlined consume of Data._Representation(v26, v28);
        v31 = v54;
        dispatch thunk of HashFunction.finalize()();
        v32 = v28;
        v33 = v50;
        v34 = v51;
        outlined consume of Data._Representation(v26, v32);
        v35 = v29;
        v36 = v52;
        v37 = v30;
        v22 = v62;
        (*v48)(v35, v37);
        _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA256V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x2064657669726564, 0xEB000000006B7370, v24, v34);
        (*v47)(v31, v55);
        (*v46)(v33 + *(v58 + 20), v34, v36);
        v38 = v67[1];
        *v33 = v67[0];
        *(v33 + 16) = v38;
        *(v33 + 32) = v67[2];
        *(v33 + 48) = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
        }

        v39 = v63;
        v41 = v22[2];
        v40 = v22[3];
        v23 = v69;
        if (v41 >= v40 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v22);
        }

        (*v45)(v34, v36);
        v22[2] = v41 + 1;
        result = outlined init with take of RawEPSK(v33, v22 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v41, type metadata accessor for ImportedPSK);
        v20 = v61 + 1;
        v21 = v25;
        if (v39 == v53)
        {
          (*(v43 + 8))(v60, v44);
          return v22;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v64 = xmmword_1B26C76B0;
    v65 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 21;
  }

  return result;
}

uint64_t GeneralEPSK.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  outlined init with take of RawEPSK(a1, a4, a2);
  type metadata accessor for PSK(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t EPSK.context.getter()
{
  v1 = v0 + *(type metadata accessor for EPSK(0) + 24);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t _s15SwiftTLSLibrary4EPSKV16externalIdentity4epsk7contextAcA10ByteBufferV_9CryptoKit12SymmetricKeyVAHSgtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  if (SymmetricKey.bitCount.getter() >= 128)
  {
    *a9 = a1;
    *(a9 + 1) = a2;
    *(a9 + 2) = a3;
    v19 = type metadata accessor for EPSK(0);
    v20 = *(v19 + 20);
    v21 = type metadata accessor for SymmetricKey();
    result = (*(*(v21 - 8) + 32))(&a9[v20], a4, v21);
    v22 = &a9[*(v19 + 24)];
    *v22 = a5;
    *(v22 + 1) = a6;
    *(v22 + 2) = a7;
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(a5, a6);
    outlined consume of Data._Representation(a1, a2);
    v17 = type metadata accessor for SymmetricKey();
    result = (*(*(v17 - 8) + 8))(a4, v17);
    *a8 = xmmword_1B26C5EE0;
    *(a8 + 16) = 2;
  }

  return result;
}

void _s15SwiftTLSLibrary4EPSKV24generateImportedIdentity3forAA0eF0VAA16TLSKDFIdentifierV_tAA8TLSErrorOYKF(__int16 a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v9 = (v3 + *(type metadata accessor for EPSK(0) + 24));
  v11 = *v9;
  v10 = v9[1];
  v23 = v9[2];
  v12 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2)
    {
      goto LABEL_8;
    }

    v13 = *(v7 + 24);
  }

  else
  {
    if (!v12)
    {
      v13 = BYTE6(v6);
      goto LABEL_8;
    }

    v13 = v7 >> 32;
  }

  outlined copy of Data._Representation(v7, v6);
LABEL_8:
  v14 = __OFSUB__(v13, v8);
  v15 = v13 - v8;
  if (v14)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v10 >> 60 == 15)
  {
    v16 = 0;
    goto LABEL_21;
  }

  v17 = v10 >> 62;
  v18 = a2;
  if ((v10 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v19 = 0;
      goto LABEL_19;
    }

    v19 = *(v11 + 24);
    goto LABEL_17;
  }

  if (v17)
  {
    v19 = v11 >> 32;
LABEL_17:
    outlined copy of Data._Representation(v11, v10);
    goto LABEL_19;
  }

  v19 = BYTE6(v10);
LABEL_19:
  v16 = v19 - v23;
  if (__OFSUB__(v19, v23))
  {
LABEL_29:
    __break(1u);
    return;
  }

  a2 = v18;
LABEL_21:
  v14 = __OFADD__(v15, v16);
  v20 = v15 + v16;
  if (v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = __OFADD__(v20, 8);
  v21 = v20 + 8;
  if (v14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v21 < 0x10000)
  {
    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = v8;
    *(a3 + 24) = v11;
    *(a3 + 32) = v10;
    *(a3 + 40) = v23;
    *(a3 + 48) = 772;
    *(a3 + 50) = a1;
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v7, v6);
    outlined consume of ByteBuffer?(v11, v10);
    *a2 = xmmword_1B26C76C0;
    *(a2 + 16) = 2;
  }
}

void _s15SwiftTLSLibrary16ImportedIdentityV08externalD07context14targetProtocol0G3KDFAcA10ByteBufferV_AISgs6UInt16VALtAA8TLSErrorOYKcfC(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, __int16 a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(result + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = result >> 32;
  }

  else
  {
    v16 = BYTE6(a2);
  }

  v17 = v16 - a3;
  if (__OFSUB__(v16, a3))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v19 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v23 = *(a4 + 24);
      }

      else
      {
        v31 = a3;
        v24 = a8;
        v25 = a7;
        v26 = a9;
        outlined consume of ByteBuffer?(a4, a5);
        a3 = v31;
        a9 = v26;
        a7 = v25;
        a8 = v24;
        v23 = 0;
      }
    }

    else if (v19)
    {
      v23 = a4 >> 32;
    }

    else
    {
      v30 = a3;
      v20 = a8;
      v21 = a7;
      v22 = a9;
      outlined consume of ByteBuffer?(a4, a5);
      a3 = v30;
      a9 = v22;
      a7 = v21;
      a8 = v20;
      v23 = BYTE6(a5);
    }

    v27 = __OFSUB__(v23, a6);
    v18 = v23 - a6;
    if (v27)
    {
      goto LABEL_28;
    }
  }

  v27 = __OFADD__(v17, v18);
  v28 = v17 + v18;
  if (v27)
  {
    goto LABEL_26;
  }

  v27 = __OFADD__(v28, 8);
  v29 = v28 + 8;
  if (v27)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if (v29 < 0x10000)
  {
    *a9 = result;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 50) = a8;
  }

  else
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(result, a2);
    outlined consume of ByteBuffer?(a4, a5);
    *a10 = xmmword_1B26C76C0;
    *(a10 + 16) = 2;
  }
}

uint64_t ImportedIdentity.serialize()()
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = xmmword_1B26C6130;
  v17 = 0;
  ByteBuffer.writeUInt16LengthPrefixedImmutableBuffer(_:)(*v0, *(v0 + 8), *(v0 + 16));
  v1 = *(v0 + 32);
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  if (v1 >> 60 == 15)
  {
    v11 = 0;
    v14 = MEMORY[0x1E69E6290];
    v15 = MEMORY[0x1E6969DF8];
    v12 = &v11;
    v13 = &v12;
    __swift_project_boxed_opaque_existential_0(&v12, MEMORY[0x1E69E6290]);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 24);
    outlined copy of Data._Representation(v5, *(v0 + 32));
    ByteBuffer.writeUInt16LengthPrefixedImmutableBuffer(_:)(v5, v1, v4);
    outlined consume of ByteBuffer?(v5, v1);
  }

  v11 = bswap32(*(v0 + 48)) >> 16;
  v14 = v2;
  v15 = v3;
  v12 = &v11;
  v13 = &v12;
  __swift_project_boxed_opaque_existential_0(&v12, v2);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v11 = bswap32(*(v0 + 50)) >> 16;
  v14 = v2;
  v15 = v3;
  v12 = &v11;
  v13 = &v12;
  __swift_project_boxed_opaque_existential_0(&v12, v2);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v6 = v16;
  v7 = *(&v16 + 1) >> 62;
  if ((*(&v16 + 1) >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_12;
    }

    v8 = *(v16 + 24);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = v16 >> 32;
  }

  if (v8 < 0)
  {
    __break(1u);
  }

LABEL_12:
  v9 = Data._Representation.subscript.getter();
  outlined consume of Data._Representation(v6, *(&v6 + 1));
  return v9;
}

uint64_t ImportedPSK.init(importedIdentity:ipskx:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = *(a1 + 48);
  v6 = *(type metadata accessor for ImportedPSK(0) + 20);
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t _s15SwiftTLSLibrary16TLSKDFIdentifierV26cipherSuiteToKDFIdentifier0dE0AcA06CipherE0V_tAA8TLSErrorOYKFZ(__int16 a1)
{
  result = 2;
  if (a1 != 4866)
  {
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 26;
  }

  return result;
}

Swift::Int TLSKDFIdentifier.hashValue.getter(Swift::UInt16 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  MEMORY[0x1B274DB20](a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TLSKDFIdentifier()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  MEMORY[0x1B274DB20](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TLSKDFIdentifier()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  return MEMORY[0x1B274DB20](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TLSKDFIdentifier(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  MEMORY[0x1B274DB20](v2);
  return Hasher._finalize()();
}

uint64_t static ImportedPSK.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  if (specialized static ImportedIdentity.__derived_struct_equals(_:_:)(v5, v7))
  {
    type metadata accessor for ImportedPSK(0);

    JUMPOUT(0x1B274D200);
  }

  return 0;
}

uint64_t static RawEPSK.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (specialized static ByteBuffer.== infix(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]))
  {
    type metadata accessor for RawEPSK(0);

    JUMPOUT(0x1B274D200);
  }

  return 0;
}

uint64_t GeneralEPSK.identity.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RawEPSK(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PSK(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PSK(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of RawEPSK(v10, v4, type metadata accessor for RawEPSK);
    v11 = *v4;
    outlined copy of Data._Representation(*v4, *(v4 + 1));
    v12 = type metadata accessor for RawEPSK;
    v13 = v4;
  }

  else
  {
    outlined init with take of RawEPSK(v10, v7, type metadata accessor for ImportedPSK);
    v14 = *(v7 + 1);
    v16[0] = *v7;
    v16[1] = v14;
    v16[2] = *(v7 + 2);
    v17 = *(v7 + 12);
    v11 = ImportedIdentity.serialize()();
    v12 = type metadata accessor for ImportedPSK;
    v13 = v7;
  }

  outlined destroy of RawEPSK(v13, v12);
  return v11;
}

uint64_t GeneralEPSK.key.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawEPSK(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PSK(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PSK(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of RawEPSK(v12, v6, type metadata accessor for RawEPSK);
    v13 = *(v4 + 20);
    v14 = type metadata accessor for SymmetricKey();
    (*(*(v14 - 8) + 16))(a1, &v6[v13], v14);
    v15 = type metadata accessor for RawEPSK;
    v16 = v6;
  }

  else
  {
    outlined init with take of RawEPSK(v12, v9, type metadata accessor for ImportedPSK);
    v17 = *(v7 + 20);
    v18 = type metadata accessor for SymmetricKey();
    (*(*(v18 - 8) + 16))(a1, &v9[v17], v18);
    v15 = type metadata accessor for ImportedPSK;
    v16 = v9;
  }

  return outlined destroy of RawEPSK(v16, v15);
}

uint64_t EPSK.epsk.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for SymmetricKey();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL GeneralEPSK.isImported.getter()
{
  v1 = type metadata accessor for PSK(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PSK(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() != 1;
  outlined destroy of RawEPSK(v3, type metadata accessor for PSK);
  return v4;
}

uint64_t GeneralEPSK.targetKDF.getter()
{
  v1 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for PSK(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of PSK(v0, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    outlined destroy of RawEPSK(v6, type metadata accessor for PSK);
    v8 = 0;
  }

  else
  {
    outlined init with take of RawEPSK(v6, v3, type metadata accessor for ImportedPSK);
    v8 = *(v3 + 25);
    outlined destroy of RawEPSK(v3, type metadata accessor for ImportedPSK);
  }

  return v8 | ((EnumCaseMultiPayload == 1) << 16);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImportedPSK(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  if (specialized static ImportedIdentity.__derived_struct_equals(_:_:)(v5, v7))
  {

    JUMPOUT(0x1B274D200);
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RawEPSK(uint64_t *a1, uint64_t *a2)
{
  if (specialized static ByteBuffer.== infix(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]))
  {

    JUMPOUT(0x1B274D200);
  }

  return 0;
}

uint64_t protocol witness for PSKProtocol.key.getter in conformance ImportedPSK@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for SymmetricKey();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ImportedIdentity.context.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data?(v1, *(v0 + 32));
  return v1;
}

void ByteBuffer.writeUInt16LengthPrefixedImmutableBuffer(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = BYTE6(a2);
  v16[5] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(a1 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a2);
    if (v6)
    {
      v7 = a1 >> 32;
    }
  }

  v8 = __OFSUB__(v7, a3);
  v9 = v7 - a3;
  if (v8)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9 >> 16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = bswap32(v9) >> 16;
  v16[3] = MEMORY[0x1E69E6290];
  v16[4] = MEMORY[0x1E6969DF8];
  v16[0] = &v15;
  v16[1] = v16;
  __swift_project_boxed_opaque_existential_0(v16, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v16);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    if (v6)
    {
      v10 = a1 >> 32;
    }

    else
    {
      v10 = v4;
    }

    if (v6)
    {
      v11 = a1;
    }

    else
    {
      v11 = 0;
    }
  }

  if (v10 < a3 || v10 < v11)
  {
LABEL_27:
    __break(1u);
  }

  v12 = Data._Representation.subscript.getter();
  v14 = v13;
  Data.append(_:)();
  outlined consume of Data._Representation(v12, v14);
}

double _s15SwiftTLSLibrary16ImportedIdentityV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s15SwiftTLSLibrary16ImportedIdentityV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfCTf4nd_n(a1, a2, &v10, v12);
  if (v4)
  {
    v7 = v11;
    result = *&v10;
    *a3 = v10;
    *(a3 + 16) = v7;
  }

  else
  {
    v9 = v12[1];
    *a4 = v12[0];
    *(a4 + 16) = v9;
    result = *&v13;
    *(a4 + 32) = v13;
    *(a4 + 48) = v14;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV24readUInt16LengthPrefixedyxSgAeCzq_YKXEq_YKs5ErrorR_r0_lF@<X0>(void (*a1)(uint64_t *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23 = a5;
  v24 = a2;
  v28 = a1;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v16 & 0x10000) != 0)
  {
    return (*(*(a3 - 8) + 56))(a6, 1, 1, a3);
  }

  v17 = ByteBuffer.readSlice(length:)(v16);
  if (v18 >> 60 == 15)
  {
    return (*(*(a3 - 8) + 56))(a6, 1, 1, a3);
  }

  v25 = v17;
  v26 = v18;
  v27 = v19;
  v28(&v25, v12);
  outlined consume of Data._Representation(v25, v26);
  if (v6)
  {
    return (*(v10 + 32))(v23, v12, a4);
  }

  v21 = *(a3 - 8);
  if ((*(v21 + 48))(v15, 1, a3) == 1)
  {
    (*(v22 + 8))(v15, v13);
    return (*(v21 + 56))(a6, 1, 1, a3);
  }

  else
  {
    (*(v21 + 32))(a6, v15, a3);
    return (*(v21 + 56))(a6, 0, 1, a3);
  }
}

void static ImportedIdentity.getImportedIdentity(serialized:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined copy of Data._Representation(a1, a2);
  _s15SwiftTLSLibrary16ImportedIdentityV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfCTf4nd_n(a1, a2, &v9, v10);
  v6 = v10[1];
  v7 = v10[2];
  v8 = v11;
  *a3 = v10[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  *(a3 + 48) = v8;
}

void ImportedIdentity.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v2 >> 32;
  }

  else
  {
    v5 = BYTE6(v3);
  }

  if (v5 < *(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    v6 = Data._Representation.subscript.getter();
    v8 = v7;
    Data.hash(into:)();
    outlined consume of Data._Representation(v6, v8);
    v9 = *(v1 + 32);
    if (v9 >> 60 == 15)
    {
      Hasher._combine(_:)(0);
LABEL_20:
      Hasher._combine(_:)(*(v1 + 48));
      Hasher._combine(_:)(*(v1 + 50));
      return;
    }

    v10 = *(v1 + 24);
    v11 = *(v1 + 40);
    Hasher._combine(_:)(1u);
    v12 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v12 == 2)
      {
        v13 = *(v10 + 24);
      }

      else
      {
        v13 = 0;
      }
    }

    else if (v12)
    {
      v13 = v10 >> 32;
    }

    else
    {
      v13 = BYTE6(v9);
    }

    if (v13 >= v11)
    {
      v14 = Data._Representation.subscript.getter();
      v16 = v15;
      Data.hash(into:)();
      outlined consume of Data._Representation(v14, v16);
      goto LABEL_20;
    }
  }

  __break(1u);
}

Swift::Int ImportedIdentity.hashValue.getter()
{
  Hasher.init(_seed:)();
  ImportedIdentity.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImportedIdentity(uint64_t a1)
{
  Hasher.init(_seed:)();
  ImportedIdentity.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ImportedIdentity(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static ImportedIdentity.__derived_struct_equals(_:_:)(v5, v7);
}

uint64_t outlined init with take of RawEPSK(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL specialized static ImportedIdentity.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static ByteBuffer.== infix(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 24);
  v4 = *(a1 + 40);
  v14 = v4;
  v11 = *(a2 + 24);
  v5 = *(a2 + 40);
  v12 = v5;
  v6 = v13;
  v7 = v11;
  if (*(&v13 + 1) >> 60 != 15)
  {
    if (*(&v11 + 1) >> 60 != 15)
    {
      outlined init with copy of ByteBuffer?(&v13, v10);
      outlined init with copy of ByteBuffer?(&v11, v10);
      v8 = specialized static ByteBuffer.== infix(_:_:)(v6, *(&v6 + 1), v4, v7, *(&v7 + 1), v5);
      outlined consume of ByteBuffer?(v7, *(&v7 + 1));
      outlined consume of ByteBuffer?(v6, *(&v6 + 1));
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_6:
    outlined init with copy of ByteBuffer?(&v13, v10);
    outlined init with copy of ByteBuffer?(&v11, v10);
    outlined consume of ByteBuffer?(v6, *(&v6 + 1));
    outlined consume of ByteBuffer?(v7, *(&v7 + 1));
    return 0;
  }

  if (*(&v11 + 1) >> 60 != 15)
  {
    goto LABEL_6;
  }

  outlined init with copy of ByteBuffer?(&v13, v10);
  outlined init with copy of ByteBuffer?(&v11, v10);
  outlined consume of ByteBuffer?(v6, *(&v6 + 1));
LABEL_8:
  if (*(a1 + 48) == *(a2 + 48))
  {
    return *(a1 + 50) == *(a2 + 50);
  }

  return 0;
}

uint64_t specialized static PSK.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for RawEPSK(0);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PSK(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary3PSKO_ACtMd, &_s15SwiftTLSLibrary3PSKO_ACtMR);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  v19 = *(v16 + 56);
  outlined init with copy of PSK(a1, &v29 - v17);
  outlined init with copy of PSK(a2, &v18[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of PSK(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of RawEPSK(&v18[v19], v5, type metadata accessor for RawEPSK);
      if (specialized static ByteBuffer.== infix(_:_:)(*v12, *(v12 + 1), *(v12 + 2), *v5, *(v5 + 1), *(v5 + 2)) & 1) != 0 && (MEMORY[0x1B274D200](&v12[*(v30 + 20)], &v5[*(v30 + 20)]))
      {
        outlined destroy of RawEPSK(v5, type metadata accessor for RawEPSK);
        v20 = v12;
        v21 = type metadata accessor for RawEPSK;
LABEL_13:
        outlined destroy of RawEPSK(v20, v21);
        outlined destroy of RawEPSK(v18, type metadata accessor for PSK);
        return 1;
      }

      outlined destroy of RawEPSK(v5, type metadata accessor for RawEPSK);
      v27 = v12;
      v28 = type metadata accessor for RawEPSK;
LABEL_16:
      outlined destroy of RawEPSK(v27, v28);
      outlined destroy of RawEPSK(v18, type metadata accessor for PSK);
      return 0;
    }

    v22 = type metadata accessor for RawEPSK;
    v23 = v12;
  }

  else
  {
    outlined init with copy of PSK(v18, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of RawEPSK(&v18[v19], v8, type metadata accessor for ImportedPSK);
      v24 = *(v14 + 1);
      v31[0] = *v14;
      v31[1] = v24;
      v31[2] = *(v14 + 2);
      v32 = *(v14 + 12);
      v25 = *(v8 + 1);
      v33[0] = *v8;
      v33[1] = v25;
      v33[2] = *(v8 + 2);
      v34 = *(v8 + 12);
      if (specialized static ImportedIdentity.__derived_struct_equals(_:_:)(v31, v33) && (MEMORY[0x1B274D200](&v14[*(v6 + 20)], &v8[*(v6 + 20)]) & 1) != 0)
      {
        outlined destroy of RawEPSK(v8, type metadata accessor for ImportedPSK);
        v20 = v14;
        v21 = type metadata accessor for ImportedPSK;
        goto LABEL_13;
      }

      outlined destroy of RawEPSK(v8, type metadata accessor for ImportedPSK);
      v27 = v14;
      v28 = type metadata accessor for ImportedPSK;
      goto LABEL_16;
    }

    v22 = type metadata accessor for ImportedPSK;
    v23 = v14;
  }

  outlined destroy of RawEPSK(v23, v22);
  outlined destroy of (PSK, PSK)(v18);
  return 0;
}

uint64_t outlined init with copy of PSK(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PSK(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RawEPSK(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s15SwiftTLSLibrary16ImportedIdentityV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfCTf4nd_n(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
LABEL_5:
      outlined copy of Data._Representation(a1, a2);
    }
  }

  else if (v8)
  {
    goto LABEL_5;
  }

  v9 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v9 & 0x10000) != 0)
  {
    goto LABEL_19;
  }

  v10 = ByteBuffer.readSlice(length:)(v9);
  if (v11 >> 60 == 15)
  {
    goto LABEL_19;
  }

  v13 = v10;
  v14 = v11;
  v15 = v12;
  v16 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v16 & 0x10000) != 0 || (v17 = ByteBuffer.readSlice(length:)(v16), v18 >> 60 == 15))
  {
LABEL_18:
    outlined consume of ByteBuffer?(v13, v14);
LABEL_19:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(a1, a2);
    outlined consume of Data._Representation(a1, a2);
    *a3 = xmmword_1B26C76E0;
    *(a3 + 16) = 2;
    return;
  }

  v34 = v17;
  v36 = v18;
  v35 = v19;
  v33 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v33 & 0x10000) != 0 || (v20 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5(), (v20 & 0x10000) != 0))
  {
    outlined consume of ByteBuffer?(v34, v36);
    goto LABEL_18;
  }

  v21 = v20;
  outlined consume of Data._Representation(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  v22 = v36;
  v23 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    v29 = v23 == 2;
    v26 = v15;
    v27 = v14;
    v28 = v13;
    v24 = v34;
    if (v29)
    {
      v25 = *(v34 + 24);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v24 = v34;
    if (v23)
    {
      v25 = v34 >> 32;
    }

    else
    {
      v25 = BYTE6(v36);
    }

    v26 = v15;
    v27 = v14;
    v28 = v13;
  }

  v30 = v35;
  v31 = __OFSUB__(v25, v35);
  v32 = v25 - v35;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    if (v32 <= 0)
    {
      outlined consume of ByteBuffer?(v24, v36);
      v28 = v13;
      v27 = v14;
      v26 = v15;
      v24 = 0;
      v30 = 0;
      v22 = 0xF000000000000000;
    }

    *a4 = v28;
    *(a4 + 8) = v27;
    *(a4 + 16) = v26;
    *(a4 + 24) = v24;
    *(a4 + 32) = v22;
    *(a4 + 40) = v30;
    *(a4 + 48) = v33;
    *(a4 + 50) = v21;
  }
}

unint64_t lazy protocol witness table accessor for type TLSKDFIdentifier and conformance TLSKDFIdentifier()
{
  result = lazy protocol witness table cache variable for type TLSKDFIdentifier and conformance TLSKDFIdentifier;
  if (!lazy protocol witness table cache variable for type TLSKDFIdentifier and conformance TLSKDFIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TLSKDFIdentifier and conformance TLSKDFIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImportedIdentity and conformance ImportedIdentity()
{
  result = lazy protocol witness table cache variable for type ImportedIdentity and conformance ImportedIdentity;
  if (!lazy protocol witness table cache variable for type ImportedIdentity and conformance ImportedIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImportedIdentity and conformance ImportedIdentity);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TLSKDFIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TLSKDFIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for SymmetricKey();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for SymmetricKey();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImportedIdentity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 52))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ImportedIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t outlined init with copy of ByteBuffer?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary10ByteBufferVSgMd, &_s15SwiftTLSLibrary10ByteBufferVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (PSK, PSK)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary3PSKO_ACtMd, &_s15SwiftTLSLibrary3PSKO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Extension.ServerCertificateType.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(a2);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    v4 = *(a2 + 16);
    MEMORY[0x1B274DB20](v4);
    if (v4)
    {
      v5 = (a2 + 32);
      do
      {
        v6 = *v5++;
        Hasher._combine(_:)(v6);
        --v4;
      }

      while (v4);
    }
  }
}

Swift::Int Extension.ServerCertificateType.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x1B274DB20](1);
    Hasher._combine(_:)(a1);
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    v4 = *(a1 + 16);
    MEMORY[0x1B274DB20](v4);
    if (v4)
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        Hasher._combine(_:)(v6);
        --v4;
      }

      while (v4);
    }
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.ServerCertificateType(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  Extension.ServerCertificateType.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

BOOL specialized static Extension.ServerCertificateType.__derived_enum_equals(_:_:)(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0 && result == a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    v4 = *(result + 16);
    if (v4 != *(a3 + 16))
    {
      return 0;
    }

    else if (v4 && result != a3)
    {
      v5 = (result + 32);
      v6 = (a3 + 32);
      while (v4)
      {
        v8 = *v5++;
        v7 = v8;
        v9 = *v6++;
        result = v7 == v9;
        if (v7 != v9 || v4-- == 1)
        {
          return result;
        }
      }

      __break(1u);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.ServerCertificateType and conformance Extension.ServerCertificateType()
{
  result = lazy protocol witness table cache variable for type Extension.ServerCertificateType and conformance Extension.ServerCertificateType;
  if (!lazy protocol witness table cache variable for type Extension.ServerCertificateType and conformance Extension.ServerCertificateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.ServerCertificateType and conformance Extension.ServerCertificateType);
  }

  return result;
}

uint64_t ByteBuffer.writeCertificateType(_:)(char a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3[3] = MEMORY[0x1E69E6290];
  v3[4] = MEMORY[0x1E6969DF8];
  v3[0] = &v2;
  v3[1] = v3;
  __swift_project_boxed_opaque_existential_0(v3, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return 1;
}

uint64_t ByteBuffer.readCertificateType()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  v1 = v0;
  if ((v0 & 0x100) != 0)
  {
    v1 = 0;
  }

  return v0 & 0x100 | v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CertificateType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CertificateType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t CertificateType.description.getter(char a1)
{
  if (!a1)
  {
    return 0x393035782ELL;
  }

  if (a1 == 2)
  {
    return 0x6C6275507761722ELL;
  }

  _StringGuts.grow(_:)(29);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v2);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

unint64_t lazy protocol witness table accessor for type CertificateType and conformance CertificateType()
{
  result = lazy protocol witness table cache variable for type CertificateType and conformance CertificateType;
  if (!lazy protocol witness table cache variable for type CertificateType and conformance CertificateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CertificateType and conformance CertificateType);
  }

  return result;
}

double Nonce.array.getter(unint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v10 = HIBYTE(a1);
  v11 = a2 >> 8;
  v14 = HIBYTE(a2);
  v15 = HIWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v12 = swift_allocObject();
  *&result = 12;
  *(v12 + 16) = xmmword_1B26C7C90;
  *(v12 + 32) = v3;
  *(v12 + 33) = v4;
  *(v12 + 34) = v5;
  *(v12 + 35) = v6;
  *(v12 + 36) = v7;
  *(v12 + 37) = v8;
  *(v12 + 38) = v9;
  *(v12 + 39) = v10;
  *(v12 + 40) = v2;
  *(v12 + 41) = v11;
  *(v12 + 42) = v15;
  *(v12 + 43) = v14;
  return result;
}

unint64_t static Nonce.== infix(_:_:)(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  Nonce.array.getter(a1, a2);
  v7 = v6;
  Nonce.array.getter(a3, a4);
  LOBYTE(a3) = _sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(v7, v8);

  return a3 & 1;
}

uint64_t Nonce.hash(into:)(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = Nonce.array.getter(a2, a3);
  v5 = v4;
  v6 = *(v4 + 16);
  MEMORY[0x1B274DB20](v6, v3);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = *v7++;
      Hasher._combine(_:)(v8);
      --v6;
    }

    while (v6);
  }
}

Swift::Int Nonce.hashValue.getter(unint64_t a1, unsigned int a2)
{
  Hasher.init(_seed:)();
  v4 = Nonce.array.getter(a1, a2);
  v6 = v5;
  v7 = *(v5 + 16);
  MEMORY[0x1B274DB20](v7, v4);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Nonce(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  Nonce.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Nonce(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  Nonce.array.getter(*a1, *(a1 + 8));
  v5 = v4;
  Nonce.array.getter(v2, v3);
  LOBYTE(v3) = _sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(v5, v6);

  return v3 & 1;
}

uint64_t additionalData(ciphertextLength:)(unint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = xmmword_1B26C6130;
  v23 = 0;
  LOBYTE(v17) = 23;
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  v20 = MEMORY[0x1E69E6290];
  v21 = MEMORY[0x1E6969DF8];
  v18 = &v17;
  v19 = (&v17 + 1);
  __swift_project_boxed_opaque_existential_0(&v18, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v17 = 771;
  v20 = v2;
  v21 = v3;
  v18 = &v17;
  v19 = &v18;
  __swift_project_boxed_opaque_existential_0(&v18, v2);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v18);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(a1 >> 16))
  {
    v17 = bswap32(a1) >> 16;
    v20 = v2;
    v21 = v3;
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_0(&v18, v2);
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v18);
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_4:
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001B26CDA10, &v18);
    *(v7 + 12) = 2080;
    v9 = ProtocolVersion.description.getter(771);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2048;
    *(v7 + 24) = a1;
    _os_log_impl(&dword_1B25F5000, v5, v6, "additional data: content type = %s, protocol version = %s, length = %ld", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v8, -1, -1);
    MEMORY[0x1B274ECF0](v7, -1, -1);
  }

  v12 = v22;
  v13 = *(&v22 + 1) >> 62;
  if ((*(&v22 + 1) >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_14;
    }

    v14 = *(v22 + 24);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = v22 >> 32;
  }

  if (v14 < 0)
  {
    __break(1u);
  }

LABEL_14:
  v15 = Data._Representation.subscript.getter();
  outlined consume of Data._Representation(v12, *(&v12 + 1));
  return v15;
}

uint64_t _s15SwiftTLSLibrary23calculateTLSRecordNonce2iv5seqnoAA0E0VSays5UInt8VG_s6UInt64VtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2)
{
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 12;
  *(result + 32) = 0;
  v5 = (result + 32);
  *(result + 36) = HIBYTE(a2);
  *(result + 37) = BYTE6(a2);
  *(result + 38) = BYTE5(a2);
  *(result + 39) = BYTE4(a2);
  *(result + 40) = BYTE3(a2);
  *(result + 41) = BYTE2(a2);
  *(result + 42) = BYTE1(a2);
  *(result + 43) = a2;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _s15SwiftTLSLibrary5NonceVyACSays5UInt8VGAA8TLSErrorOYKcfCTf4nd_n(result);
  }

  if (v6 <= 0xC)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      *v5++ ^= v8;
      --v6;
    }

    while (v6);
    return _s15SwiftTLSLibrary5NonceVyACSays5UInt8VGAA8TLSErrorOYKcfCTf4nd_n(result);
  }

  __break(1u);
  return result;
}

unint64_t _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(type metadata accessor for TLSRecordProtector(0) + 40));
  if (v4[1])
  {
    v5 = 0xD00000000000002ELL;
LABEL_13:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v5;
  }

  v6 = *v4;
  v7 = SymmetricKey.bitCount.getter();
  if (v6 == 4866)
  {
    if (v7 != 256)
    {
      v16 = 0;
      _StringGuts.grow(_:)(82);
      MEMORY[0x1B274D610](0xD00000000000003FLL, 0x80000001B26CDAD0);
      SymmetricKey.bitCount.getter();
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B274D610](v8);

      v9 = "LS_AES_256_GCM_SHA384: key has ";
      v10 = 0xD000000000000011;
LABEL_11:
      v13 = v9 | 0x8000000000000000;
      goto LABEL_12;
    }
  }

  else if (v7 != 128 && SymmetricKey.bitCount.getter() != 256)
  {
    v16 = 0;
    _StringGuts.grow(_:)(70);
    MEMORY[0x1B274D610](0xD00000000000002CLL, 0x80000001B26CDA60);
    SymmetricKey.bitCount.getter();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v14);

    v9 = "c key size for AES. key has ";
    v10 = 0xD000000000000018;
    goto LABEL_11;
  }

  v5 = *(a2 + 16);
  if (v5 != 12)
  {
    _StringGuts.grow(_:)(48);

    v16 = 0xD00000000000001DLL;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v11);

    MEMORY[0x1B274D610](0x202C736574796220, 0xEE0020736465656ELL);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v12);

    v10 = 46;
    v13 = 0xE100000000000000;
LABEL_12:
    MEMORY[0x1B274D610](v10, v13);
    v5 = v16;
    goto LABEL_13;
  }

  return v5;
}

uint64_t TLSRecordProtector.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SymmetricKey();
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for TLSRecordProtector(0);
  v5 = v4[5];
  v6 = v4[6];
  v3(a1 + v6, 1, 1, v2);
  v7 = v4[7];
  *(a1 + v4[8]) = 0;
  *(a1 + v4[9]) = 0;
  v8 = a1 + v4[10];
  outlined destroy of SymmetricKey?(a1);
  v3(a1, 1, 1, v2);
  *(a1 + v5) = 0;
  outlined destroy of SymmetricKey?(a1 + v6);
  result = (v3)(a1 + v6, 1, 1, v2);
  *(a1 + v7) = 0;
  *v8 = 0;
  *(v8 + 2) = 1;
  return result;
}

uint64_t TLSRecordProtector.init(writeKey:writeIV:readKey:readIV:ciphersuite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v53 = a4;
  LODWORD(v54) = a5;
  v55 = a3;
  v51 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v46 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - v17;
  v19 = *(v14 + 56);
  v19(a6, 1, 1, v13);
  v20 = type metadata accessor for TLSRecordProtector(0);
  v48 = v20[5];
  *(a6 + v48) = 0;
  v49 = v20[6];
  v19(a6 + v49, 1, 1, v13);
  v47 = v20[7];
  *(a6 + v47) = 0;
  *(a6 + v20[8]) = 0;
  *(a6 + v20[9]) = 0;
  v21 = a6 + v20[10];
  *v21 = v54;
  *(v21 + 2) = 0;
  v54 = a1;
  outlined init with copy of SymmetricKey?(a1, v12);
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    v23 = v14;
    outlined destroy of SymmetricKey?(v12);
    v24 = v55;
    v25 = v51;
    v26 = v52;
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v25 = v51;
    if (v51)
    {
      v23 = v14;

      v27 = v52;
      v28 = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(v18, v25);
      v31 = v18;
      if (v27)
      {
        LODWORD(v50) = v30;
        v52 = v29;
        v32 = v14;
        v24 = v55;
        v33 = v28;
        v34 = v31;
        goto LABEL_14;
      }

      v26 = 0;
      (*(v14 + 8))(v18, v13);
    }

    else
    {
      v23 = v14;
      (*(v14 + 8))(v18, v13);
      v26 = v52;
    }

    v24 = v55;
  }

  v35 = v50;
  outlined init with copy of SymmetricKey?(v24, v50);
  if (v22(v35, 1, v13) != 1)
  {
    v37 = v35;
    v32 = v23;
    v34 = v46;
    (*(v23 + 32))(v46, v37, v13);
    v36 = v53;
    if (!v53)
    {
      (*(v23 + 8))(v34, v13);
      goto LABEL_17;
    }

    v38 = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(v34, v36);
    if (!v26)
    {
      (*(v23 + 8))(v34, v13);

      goto LABEL_17;
    }

    v33 = v38;
    LODWORD(v50) = v40;
    v52 = v39;
LABEL_14:
    swift_bridgeObjectRelease_n();

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_allocError();
    v41 = v52;
    *v42 = v33;
    *(v42 + 8) = v41;
    *(v42 + 16) = v50;
    outlined destroy of SymmetricKey?(v24);
    outlined destroy of SymmetricKey?(v54);
    (*(v32 + 8))(v34, v13);
    return outlined destroy of TLSRecordProtector(a6);
  }

  outlined destroy of SymmetricKey?(v35);
  v36 = v53;
LABEL_17:
  outlined assign with take of SymmetricKey?(v54, a6);
  v44 = v49;
  *(a6 + v48) = v25;
  result = outlined assign with take of SymmetricKey?(v24, a6 + v44);
  *(a6 + v47) = v36;
  return result;
}

unint64_t _s15SwiftTLSLibrary18TLSRecordProtectorV19updateWriteKeyAndIVyy9CryptoKit09SymmetricG0V_Says5UInt8VGtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2)
{
  result = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(a1, a2);
  if (!v3)
  {
    outlined destroy of SymmetricKey?(v2);
    v7 = type metadata accessor for SymmetricKey();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v2, a1, v7);
    (*(v8 + 56))(v2, 0, 1, v7);
    v9 = type metadata accessor for TLSRecordProtector(0);
    v10 = *(v9 + 20);

    *(v2 + v10) = a2;
    *(v2 + *(v9 + 32)) = 0;
  }

  return result;
}

unint64_t _s15SwiftTLSLibrary18TLSRecordProtectorV18updateReadKeyAndIVyy9CryptoKit09SymmetricG0V_Says5UInt8VGtAA8TLSErrorOYKF(uint64_t a1, uint64_t a2)
{
  result = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(a1, a2);
  if (!v3)
  {
    v7 = type metadata accessor for TLSRecordProtector(0);
    v8 = v7[6];
    outlined destroy of SymmetricKey?(v2 + v8);
    v9 = type metadata accessor for SymmetricKey();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v2 + v8, a1, v9);
    (*(v10 + 56))(v2 + v8, 0, 1, v9);
    v11 = v7[7];

    *(v2 + v11) = a2;
    *(v2 + v7[9]) = 0;
  }

  return result;
}

Swift::Void __swiftcall TLSRecordProtector.setCiphersuite(ciphersuite:)(Swift::UInt16 ciphersuite)
{
  v3 = v1 + *(type metadata accessor for TLSRecordProtector(0) + 40);
  *v3 = ciphersuite;
  *(v3 + 2) = 0;
}

unint64_t _s15SwiftTLSLibrary18TLSRecordProtectorV7protect9plaintext17actualContentType13paddingLengthAA13TLSCiphertextVSays5UInt8VG_AA0hI0VSitAA8TLSErrorOYKF(uint64_t a1, int a2, size_t a3)
{
  v52 = a3;
  LODWORD(v51) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for SymmetricKey();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v44 - v14;
  v15 = type metadata accessor for TLSRecordProtector(0);
  v16 = *(v3 + *(v15 + 20));
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = v15;
  outlined init with copy of SymmetricKey?(v3, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of SymmetricKey?(v8);
LABEL_4:
    v18 = 0xD00000000000002CLL;
    v53 = 0xD00000000000002CLL;
    v54 = 0x80000001B26CDB30;
    v55 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v18;
  }

  v50 = v13;
  v19 = v56;
  (*(v10 + 32))(v56, v8, v9);
  if (*(a1 + 16) > 0x4000uLL)
  {
    v18 = 0xD000000000000030;
    v53 = 0xD000000000000030;
    v54 = 0x80000001B26CDBE0;
    v55 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    (*(v10 + 8))(v19, v9);
    return v18;
  }

  v49 = *(a1 + 16);
  v20 = *(v17 + 32);
  v21 = *(v3 + v20);
  v18 = _s15SwiftTLSLibrary23calculateTLSRecordNonce2iv5seqnoAA0E0VSays5UInt8VG_s6UInt64VtAA8TLSErrorOYKF(v16, v21);
  v23 = v22;
  if (v4)
  {
LABEL_12:
    (*(v10 + 8))(v56, v9);
    return v18;
  }

  v48 = v21;
  v24 = v52;
  v25 = v49 + 1 + v52;
  if (__OFADD__(v49 + 1, v52))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (__OFADD__(v25, 16))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_15;
  }

  if ((v25 + 16) > 16640)
  {
    v18 = 0xD000000000000036;
    v53 = 0xD000000000000036;
    v54 = 0x80000001B26CDBA0;
    v55 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_12;
  }

  v46 = v25 + 16;
  v47 = 0;
  v44 = v3;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_28;
  }

LABEL_15:
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, logger);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v45 = a1;
  if (v30)
  {
    v31 = swift_slowAlloc();
    *v31 = 134218496;
    *(v31 + 4) = v52;
    *(v31 + 12) = 2048;
    *(v31 + 14) = v49;

    *(v31 + 22) = 2048;
    v32 = v46;
    *(v31 + 24) = v46;
    _os_log_impl(&dword_1B25F5000, v28, v29, "creating ciphertext record: paddingLength: %ld, pt len: %ld, ct len: %ld", v31, 0x20u);
    v33 = v31;
    v24 = v52;
    MEMORY[0x1B274ECF0](v33, -1, -1);
  }

  else
  {

    v32 = v46;
  }

  v34 = additionalData(ciphertextLength:)(v32);
  v36 = v35;
  v37 = v50;
  (*(v10 + 16))(v50, v56, v9);
  v38 = v47;
  v39 = _s15SwiftTLSLibrary17TLSInnerPlaintextV7protect8writeKey5nonce14additionalDataSays5UInt8VGSg9CryptoKit09SymmetricG0V_AA5NonceV10Foundation0J0VtAA8TLSErrorOYKF(v37, v18, v23, v34, v36, v45, v51, v24);
  v18 = v39;
  if (v38)
  {
    outlined consume of Data._Representation(v34, v36);
    v40 = *(v10 + 8);
    v40(v37, v9);
LABEL_20:
    v40(v56, v9);
    return v18;
  }

  v52 = v36;
  if (!v39)
  {
    v18 = 0xD000000000000018;
    v53 = 0xD000000000000018;
    v54 = 0x80000001B26CDB60;
    v55 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v34, v52);
    v40 = *(v10 + 8);
    v40(v50, v9);
    goto LABEL_20;
  }

  v51 = 0;
  v41 = *(v10 + 8);
  v41(v50, v9);
  v42 = v48;
  v43 = v56;
  if (v48 == -1)
  {

    v18 = 0xD00000000000001ELL;
    v53 = 0xD00000000000001ELL;
    v54 = 0x80000001B26CDB80;
    v55 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v34, v52);
    v41(v43, v9);
  }

  else
  {
    v41(v56, v9);
    outlined consume of Data._Representation(v34, v52);
    *(v44 + v20) = v42 + 1;
  }

  return v18;
}

unint64_t _s15SwiftTLSLibrary18TLSRecordProtectorV9deprotect10ciphertextAA17DeprotectedRecordVAA13TLSCiphertextV_tAA8TLSErrorOYKF(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TLSRecordProtector(0);
  v12 = *(v1 + *(v11 + 28));
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v11;
  outlined init with copy of SymmetricKey?(v1 + *(v11 + 24), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of SymmetricKey?(v6);
LABEL_4:
    v14 = 0xD00000000000002DLL;
    v34 = 0xD00000000000002DLL;
    v35 = 0x80000001B26CDC20;
    v36 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v14;
  }

  v37 = a1;
  (*(v8 + 32))(v10, v6, v7);
  v15 = *(v13 + 36);
  v16 = *(v1 + v15);
  v14 = _s15SwiftTLSLibrary23calculateTLSRecordNonce2iv5seqnoAA0E0VSays5UInt8VG_s6UInt64VtAA8TLSErrorOYKF(v12, v16);
  v18 = v17;
  if (v2)
  {
LABEL_9:
    (*(v8 + 8))(v10, v7);
    return v14;
  }

  v33 = v15;
  v19 = *(v37 + 16);
  if (v19 > 0x4100)
  {
    v14 = 0xD000000000000036;
    v34 = 0xD000000000000036;
    v35 = 0x80000001B26CDBA0;
    v36 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_9;
  }

  v31 = v1;
  v32 = 0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v30 = v19 - 17;
    v24 = swift_slowAlloc();
    v25 = v23;
    v26 = v24;
    *v24 = 134218240;
    *(v24 + 4) = v30;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v19;
    _os_log_impl(&dword_1B25F5000, v22, v25, "deprotecting ciphertext record: pt len: %ld, ct len: %ld", v24, 0x16u);
    MEMORY[0x1B274ECF0](v26, -1, -1);
  }

  v27 = v32;
  v14 = _s15SwiftTLSLibrary13TLSCiphertextV9deprotect12peerWriteKey5nonce19aeadExpansionLengthAA17DeprotectedRecordV9CryptoKit09SymmetricG0V_AA5NonceVSitAA8TLSErrorOYKF(v10, v14, v18, 16, v37);
  v28 = v31;
  if (v27)
  {
    goto LABEL_9;
  }

  if (v16 == -1)
  {

    v34 = 0xD00000000000001DLL;
    v35 = 0x80000001B26CDC50;
    v36 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    (*(v8 + 8))(v10, v7);
    return 0xD00000000000001DLL;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    *(v28 + v33) = v16 + 1;
  }

  return v14;
}

uint64_t _s15SwiftTLSLibrary5NonceVyACSays5UInt8VGAA8TLSErrorOYKcfCTf4nd_n(uint64_t a1)
{
  if (*(a1 + 16) == 12)
  {
    v2 = *(a1 + 32);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      v7 = *(a1 + 16);

      *(v6 + 4) = v7;

      _os_log_impl(&dword_1B25F5000, v4, v5, "tried to initialize a nonce with array length %ld, but expected 12", v6, 0xCu);
      MEMORY[0x1B274ECF0](v6, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 29;
  }

  return v2;
}

uint64_t type metadata accessor for TLSRecordProtector(uint64_t a1)
{
  result = type metadata singleton initialization cache for TLSRecordProtector;
  if (!type metadata singleton initialization cache for TLSRecordProtector)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of SymmetricKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of SymmetricKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of SymmetricKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TLSRecordProtector(uint64_t a1)
{
  v2 = type metadata accessor for TLSRecordProtector(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Nonce and conformance Nonce()
{
  result = lazy protocol witness table cache variable for type Nonce and conformance Nonce;
  if (!lazy protocol witness table cache variable for type Nonce and conformance Nonce)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Nonce and conformance Nonce);
  }

  return result;
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Nonce(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Nonce(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

void type metadata completion function for TLSRecordProtector(uint64_t a1)
{
  type metadata accessor for SymmetricKey?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [UInt8]?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt16?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [UInt8]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [UInt8]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [UInt8]?);
    }
  }
}

void type metadata accessor for UInt16?()
{
  if (!lazy cache variable for type metadata for UInt16?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UInt16?);
    }
  }
}

uint64_t ByteBuffer.writeHandshakeMessage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  LOBYTE(v16) = (*(a3 + 8))(a2, a3);
  v6 = MEMORY[0x1E69E6290];
  v7 = MEMORY[0x1E6969DF8];
  v19 = MEMORY[0x1E69E6290];
  v20 = MEMORY[0x1E6969DF8];
  v17 = &v16;
  v18 = (&v16 + 1);
  __swift_project_boxed_opaque_existential_0(&v17, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v8 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v10)
  {
    v11 = v8 >> 32;
  }

  else
  {
    v11 = BYTE6(v9);
  }

  LOBYTE(v16) = 0;
  v19 = v6;
  v20 = v7;
  v17 = &v16;
  v18 = (&v16 + 1);
  __swift_project_boxed_opaque_existential_0(&v17, v6);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  v16 = 0;
  v19 = v6;
  v20 = v7;
  v17 = &v16;
  v18 = &v17;
  __swift_project_boxed_opaque_existential_0(&v17, v6);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v17);
  v12 = (*(a3 + 16))(v3, a2, a3);
  if (v12 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v13 = v12;
  v14 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v12), v11);
  if (__OFADD__(v11, v14))
  {
    goto LABEL_12;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v13, v11 + v14);
  return v13 + 4;
}

double _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  _s15SwiftTLSLibrary16NewSessionTicketV5bytesAcA10ByteBufferVz_tAA8TLSErrorOYKcfCTf4nd_n(a1, &v10, v12);
  if (v3)
  {
    v6 = v11;
    result = *&v10;
    *a2 = v10;
    *(a2 + 16) = v6;
  }

  else
  {
    v8 = v12[1];
    *a3 = v12[0];
    a3[1] = v8;
    result = *&v13;
    v9 = v14;
    a3[2] = v13;
    a3[3] = v9;
  }

  return result;
}

uint64_t NewSessionTicket.ticketNonce.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t NewSessionTicket.ticket.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

void NewSessionTicket.ticket.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined consume of Data._Representation(v3[4], v3[5]);
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
}

uint64_t NewSessionTicket.extensions.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t NewSessionTicket.init(ticketLifetime:ticketAgeAdd:ticketNonce:ticket:extensions:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t static NewSessionTicket.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || (specialized static ByteBuffer.== infix(_:_:)(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a2 + 8), *(a2 + 16), *(a2 + 24)) & 1) == 0 || (specialized static ByteBuffer.== infix(_:_:)(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a2 + 32), *(a2 + 40), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = *(a2 + 56);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v4, v5);
}

uint64_t NewSessionTicket.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 4));
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  result = *(v1 + 24);
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v4 >> 32;
  }

  else
  {
    v8 = BYTE6(v5);
  }

  if (v8 < result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v9 = Data._Representation.subscript.getter();
  v11 = v10;
  Data.hash(into:)();
  outlined consume of Data._Representation(v9, v11);
  v12 = v2[4];
  v13 = v2[5];
  result = v2[6];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v12 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v12 >> 32;
  }

  else
  {
    v15 = BYTE6(v13);
  }

  if (v15 < result)
  {
    goto LABEL_22;
  }

  v16 = Data._Representation.subscript.getter();
  v18 = v17;
  Data.hash(into:)();
  outlined consume of Data._Representation(v16, v18);
  v19 = v2[7];
  v20 = *(v19 + 16);
  result = MEMORY[0x1B274DB20](v20);
  if (v20)
  {
    v21 = v19 + 32;
    do
    {
      v22 = *(v21 + 16);
      v27[0] = *v21;
      v27[1] = v22;
      v23 = *(v21 + 32);
      v24 = *(v21 + 48);
      v25 = *(v21 + 64);
      v28 = *(v21 + 80);
      v27[3] = v24;
      v27[4] = v25;
      v27[2] = v23;
      outlined init with copy of Extension(v27, v26);
      Extension.hash(into:)(a1);
      result = outlined destroy of Extension(v27);
      v21 += 88;
      --v20;
    }

    while (v20);
  }

  return result;
}

Swift::Int NewSessionTicket.hashValue.getter()
{
  Hasher.init(_seed:)();
  NewSessionTicket.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NewSessionTicket(uint64_t a1)
{
  Hasher.init(_seed:)();
  NewSessionTicket.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NewSessionTicket(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 32);
  v9 = *(a1 + 32);
  if ((specialized static ByteBuffer.== infix(_:_:)(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a2 + 8), *(a2 + 16), *(a2 + 24)) & 1) == 0 || (specialized static ByteBuffer.== infix(_:_:)(v9, v2, v3, v8, v5, v6) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO_Tt1g5(v4, v7);
}

unint64_t NewSessionTicket.write(into:)(uint64_t *a1)
{
  v2 = v1;
  v50 = *MEMORY[0x1E69E9840];
  v45 = bswap32(*v2);
  v4 = MEMORY[0x1E69E6290];
  v5 = MEMORY[0x1E6969DF8];
  v48 = MEMORY[0x1E69E6290];
  v49 = MEMORY[0x1E6969DF8];
  v46 = &v45;
  v47 = &v46;
  __swift_project_boxed_opaque_existential_0(&v46, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v46);
  v45 = bswap32(*(v2 + 4));
  v48 = v4;
  v49 = v5;
  v46 = &v45;
  v47 = &v46;
  __swift_project_boxed_opaque_existential_0(&v46, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v46);
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    if (v8 == 2)
    {
      v9 = *(v6 + 24);
    }
  }

  else if (v8)
  {
    v9 = v6 >> 32;
  }

  else
  {
    v9 = BYTE6(v7);
  }

  LOBYTE(v45) = 0;
  v48 = v4;
  v49 = v5;
  v46 = &v45;
  v47 = (&v45 + 1);
  __swift_project_boxed_opaque_existential_0(&v46, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v46);
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v10;
    v14 = v10 >> 32;
  }

  else
  {
    v13 = 0;
    v14 = BYTE6(v11);
  }

  if (v14 < *(v2 + 24) || v14 < v13)
  {
    __break(1u);
    goto LABEL_69;
  }

  v15 = Data._Representation.subscript.getter();
  v17 = v16;
  Data.append(_:)();
  v18 = v17;
  v19 = v17 >> 62;
  if ((v17 >> 62) <= 1)
  {
    if (!v19)
    {
      outlined consume of Data._Representation(v15, v17);
      v15 = BYTE6(v17);
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (v19 != 2)
  {
    goto LABEL_28;
  }

  v21 = *(v15 + 16);
  v20 = *(v15 + 24);
  outlined consume of Data._Representation(v15, v18);
  v15 = v20 - v21;
  if (__OFSUB__(v20, v21))
  {
    __break(1u);
LABEL_23:
    outlined consume of Data._Representation(v15, v18);
    if (__OFSUB__(HIDWORD(v15), v15))
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    v15 = HIDWORD(v15) - v15;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v15 <= 0xFF)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_28:
  outlined consume of Data._Representation(v15, v18);
  v15 = 0;
LABEL_29:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v15, v9);
  v22 = *a1;
  v23 = a1[1];
  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v24 == 2)
    {
      v25 = *(v22 + 24);
    }

    else
    {
      v25 = 0;
    }
  }

  else if (v24)
  {
    v25 = v22 >> 32;
  }

  else
  {
    v25 = BYTE6(v23);
  }

  LOWORD(v45) = 0;
  v48 = v4;
  v49 = v5;
  v46 = &v45;
  v47 = (&v45 + 2);
  __swift_project_boxed_opaque_existential_0(&v46, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v46);
  v26 = *(v2 + 32);
  v27 = *(v2 + 40);
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);
    }

    else
    {
      v30 = 0;
      v29 = 0;
    }
  }

  else if (v28)
  {
    v29 = v26;
    v30 = v26 >> 32;
  }

  else
  {
    v29 = 0;
    v30 = BYTE6(v27);
  }

  if (v30 < *(v2 + 48) || v30 < v29)
  {
    goto LABEL_70;
  }

  v31 = Data._Representation.subscript.getter();
  v33 = v32;
  Data.append(_:)();
  v34 = v33;
  v35 = v33 >> 62;
  if ((v33 >> 62) <= 1)
  {
    if (!v35)
    {
      outlined consume of Data._Representation(v31, v33);
      v31 = BYTE6(v33);
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  if (v35 != 2)
  {
    goto LABEL_57;
  }

  v37 = *(v31 + 16);
  v36 = *(v31 + 24);
  outlined consume of Data._Representation(v31, v34);
  v31 = v36 - v37;
  if (__OFSUB__(v36, v37))
  {
    __break(1u);
LABEL_52:
    outlined consume of Data._Representation(v31, v34);
    if (__OFSUB__(HIDWORD(v31), v31))
    {
      goto LABEL_75;
    }

    v31 = HIDWORD(v31) - v31;
  }

  if ((v31 & 0x8000000000000000) != 0)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (!(v31 >> 16))
  {
    goto LABEL_58;
  }

  __break(1u);
LABEL_57:
  outlined consume of Data._Representation(v31, v34);
  v31 = 0;
LABEL_58:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v31, v25);
  v38 = *a1;
  v39 = a1[1];
  v40 = v39 >> 62;
  if ((v39 >> 62) > 1)
  {
    if (v40 == 2)
    {
      v41 = *(v38 + 24);
    }

    else
    {
      v41 = 0;
    }
  }

  else if (v40)
  {
    v41 = v38 >> 32;
  }

  else
  {
    v41 = BYTE6(v39);
  }

  LOWORD(v45) = 0;
  v48 = v4;
  v49 = v5;
  v46 = &v45;
  v47 = (&v45 + 2);
  __swift_project_boxed_opaque_existential_0(&v46, v4);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v46);
  v42 = specialized Sequence.reduce<A>(into:_:)(0, *(v2 + 56));
  if ((v42 & 0x8000000000000000) != 0)
  {
    goto LABEL_72;
  }

  v43 = v42;
  if (v42 >> 16)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v42, v41);
  return v15 + v31 + v43 + 13;
}

unint64_t lazy protocol witness table accessor for type NewSessionTicket and conformance NewSessionTicket()
{
  result = lazy protocol witness table cache variable for type NewSessionTicket and conformance NewSessionTicket;
  if (!lazy protocol witness table cache variable for type NewSessionTicket and conformance NewSessionTicket)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NewSessionTicket and conformance NewSessionTicket);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NewSessionTicket(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NewSessionTicket(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ExtensionType.description.getter(unsigned __int16 a1)
{
  if (a1 > 0x29u)
  {
    if (a1 <= 0x32u)
    {
      switch(a1)
      {
        case '*':
          return 0x6144796C7261652ELL;
        case '+':
          return 0xD000000000000012;
        case '-':
          return 0xD000000000000015;
      }

      goto LABEL_32;
    }

    if (a1 > 0x39u)
    {
      if (a1 == 58)
      {
        return 0x5274656B6369742ELL;
      }

      if (a1 == 35387)
      {
        return 0x656B61702ELL;
      }

      goto LABEL_32;
    }

    if (a1 != 51)
    {
      if (a1 == 57)
      {
        return 0xD000000000000018;
      }

      goto LABEL_32;
    }

    v2 = 2036689710;
    return v2 | 0x7261685300000000;
  }

  if (a1 <= 0xFu)
  {
    switch(a1)
    {
      case 0u:
        return 0x4E7265767265732ELL;
      case 0xAu:
        return 0xD000000000000010;
      case 0xDu:
        return 0xD000000000000014;
    }

    goto LABEL_32;
  }

  switch(a1)
  {
    case 0x10u:
      return 0xD000000000000024;
    case 0x14u:
      return 0xD000000000000016;
    case 0x29u:
      v2 = 1701998638;
      return v2 | 0x7261685300000000;
  }

LABEL_32:
  _StringGuts.grow(_:)(27);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v3);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t lazy protocol witness table accessor for type ExtensionType and conformance ExtensionType()
{
  result = lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType;
  if (!lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType);
  }

  return result;
}

double _s15SwiftTLSLibrary8TLSErrorO19wrappingCryptoErroryxxyq_YKXEACYKs0F0R_r0_lFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v11);
  if (v6)
  {
    (*(v9 + 8))(v11, a4);
    v14[0] = xmmword_1B26C6420;
    v14[1] = xmmword_1B26C6420;
    v15 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = *v14;
    *a6 = v14[0];
    *(a6 + 16) = 2;
  }

  return result;
}

uint64_t specialized static TLSError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return a1 == a4 && WORD1(a1) == WORD1(a4);
    }

    return 0;
  }

  if (a3 == 1)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 1:
      if (a6 != 2 || a4 != 1 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 2:
      if (a6 != 2 || a4 != 2 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 3:
      if (a6 != 2 || a4 != 3 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 4:
      if (a6 != 2 || a4 != 4 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 5:
      if (a6 != 2 || a4 != 5 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 6:
      if (a6 != 2 || a4 != 6 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 7:
      if (a6 != 2 || a4 != 7 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 8:
      if (a6 != 2 || a4 != 8 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 9:
      if (a6 != 2 || a4 != 9 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 10:
      if (a6 != 2 || a4 != 10 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 11:
      if (a6 != 2 || a4 != 11 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 12:
      if (a6 != 2 || a4 != 12 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 13:
      if (a6 != 2 || a4 != 13 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 14:
      if (a6 != 2 || a4 != 14 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 15:
      if (a6 != 2 || a4 != 15 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 16:
      if (a6 != 2 || a4 != 16 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 17:
      if (a6 != 2 || a4 != 17 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 18:
      if (a6 != 2 || a4 != 18 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 19:
      if (a6 != 2 || a4 != 19 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 20:
      if (a6 != 2 || a4 != 20 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 21:
      if (a6 != 2 || a4 != 21 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 22:
      if (a6 != 2 || a4 != 22 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 23:
      if (a6 != 2 || a4 != 23 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 24:
      if (a6 != 2 || a4 != 24 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 25:
      if (a6 != 2 || a4 != 25 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 26:
      if (a6 != 2 || a4 != 26 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 27:
      if (a6 != 2 || a4 != 27 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 28:
      if (a6 != 2 || a4 != 28 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 29:
      if (a6 != 2 || a4 != 29 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 30:
      if (a6 != 2 || a4 != 30 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 31:
      if (a6 != 2 || a4 != 31 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 32:
      if (a6 != 2 || a4 != 32 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 33:
      if (a6 != 2 || a4 != 33 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 34:
      if (a6 != 2 || a4 != 34 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 35:
      if (a6 != 2 || a4 != 35 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 36:
      if (a6 != 2 || a4 != 36 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 37:
      if (a6 != 2 || a4 != 37 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    default:
      if (a6 != 2 || a5 | a4)
      {
        return 0;
      }

      result = 1;
      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SwiftTLSLibrary8TLSErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for TLSError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TLSError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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