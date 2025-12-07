uint64_t one-time initialization function for $commonSecondaryCapabilities()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCyShy9MomentsUI11CloudDeviceV10CapabilityOGSgGMd, &_ss9TaskLocalCyShy9MomentsUI11CloudDeviceV10CapabilityOGSgGMR);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static CloudDevicesDB.$commonSecondaryCapabilities = result;
  return result;
}

uint64_t static CloudDevicesDB.$commonSecondaryCapabilities.getter()
{
  if (one-time initialization token for $commonSecondaryCapabilities != -1)
  {
    swift_once();
  }
}

uint64_t CloudDevicesDB.hasCapability(_:_:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v60 - v8;
  v10 = type metadata accessor for CloudDevice(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - v14;
  v16 = *a1;
  outlined init with copy of DateInterval?(a2, v9, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) != 1)
  {
    outlined init with take of CloudDevice(v9, v15, type metadata accessor for CloudDevice);
    v19 = *&v15[*(v10 + 52)];
    if (!v19)
    {
      v18 = 0;
LABEL_137:
      v58 = v15;
      goto LABEL_140;
    }

    v20 = *(v19 + 16);
    v21 = (v19 + 32);
    while (1)
    {
      v23 = v20-- != 0;
      v18 = v23;
      if (!v23)
      {
        goto LABEL_137;
      }

      v24 = *v21;
      if (v24 > 3)
      {
        if (*v21 > 5u)
        {
          if (v24 == 6)
          {
            v29 = 0x756F527465737361;
            v30 = 0xEE00626F6C426574;
            if (v16 > 3)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v29 = 0x6174536775626564;
            v30 = 0xEA0000000000656CLL;
            if (v16 > 3)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          if (v24 == 4)
          {
            v29 = 1280328553;
          }

          else
          {
            v29 = 0x68746C616548;
          }

          if (v24 == 4)
          {
            v30 = 0xE400000000000000;
          }

          else
          {
            v30 = 0xE600000000000000;
          }

          if (v16 > 3)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v25 = 0x64756F6C43776F6CLL;
        if (v24 != 2)
        {
          v25 = 0x6469766F72506F6ELL;
        }

        v26 = 0xEB00000000737265;
        if (v24 == 2)
        {
          v26 = 0xEF656761726F7453;
        }

        v27 = 0x6C61636F4C776F6CLL;
        if (!*v21)
        {
          v27 = 0x626E4F726576656ELL;
        }

        v28 = 0xEE0064656472616FLL;
        if (*v21)
        {
          v28 = 0xEF656761726F7453;
        }

        if (*v21 <= 1u)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        if (*v21 <= 1u)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        if (v16 > 3)
        {
LABEL_40:
          v33 = 0x756F527465737361;
          if (v16 != 6)
          {
            v33 = 0x6174536775626564;
          }

          v34 = 0xEE00626F6C426574;
          if (v16 != 6)
          {
            v34 = 0xEA0000000000656CLL;
          }

          v35 = 0x68746C616548;
          if (v16 == 4)
          {
            v35 = 1280328553;
          }

          v36 = 0xE400000000000000;
          if (v16 != 4)
          {
            v36 = 0xE600000000000000;
          }

          if (v16 <= 5)
          {
            v31 = v35;
          }

          else
          {
            v31 = v33;
          }

          if (v16 <= 5)
          {
            v32 = v36;
          }

          else
          {
            v32 = v34;
          }

LABEL_54:
          if (v29 != v31)
          {
            goto LABEL_6;
          }

          goto LABEL_55;
        }
      }

      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v37 = 0x64756F6C43776F6CLL;
        }

        else
        {
          v37 = 0x6469766F72506F6ELL;
        }

        if (v16 == 2)
        {
          v32 = 0xEF656761726F7453;
        }

        else
        {
          v32 = 0xEB00000000737265;
        }

        if (v29 != v37)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v31 = 0x626E4F726576656ELL;
        v32 = 0xEE0064656472616FLL;
        if (!v16)
        {
          goto LABEL_54;
        }

        v32 = 0xEF656761726F7453;
        if (v29 != 0x6C61636F4C776F6CLL)
        {
          goto LABEL_6;
        }
      }

LABEL_55:
      if (v30 == v32)
      {

        v18 = 1;
        goto LABEL_137;
      }

LABEL_6:
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v21;
      if (v22)
      {
        goto LABEL_137;
      }
    }
  }

  outlined destroy of UTType?(v9, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  CloudDevicesDB.currentDevice.getter(v7);
  if (v17(v7, 1, v10) != 1)
  {
    v38 = v61;
    outlined init with take of CloudDevice(v7, v61, type metadata accessor for CloudDevice);
    v39 = *(v38 + *(v10 + 52));
    if (v39)
    {
      v40 = *(v39 + 16);
      v41 = (v39 + 32);
      while (1)
      {
        v43 = v40-- != 0;
        v18 = v43;
        if (!v43)
        {
          goto LABEL_139;
        }

        v44 = *v41;
        if (v44 > 3)
        {
          if (*v41 > 5u)
          {
            if (v44 == 6)
            {
              v49 = 0x756F527465737361;
              v50 = 0xEE00626F6C426574;
              if (v16 > 3)
              {
                goto LABEL_106;
              }
            }

            else
            {
              v49 = 0x6174536775626564;
              v50 = 0xEA0000000000656CLL;
              if (v16 > 3)
              {
                goto LABEL_106;
              }
            }
          }

          else
          {
            if (v44 == 4)
            {
              v49 = 1280328553;
            }

            else
            {
              v49 = 0x68746C616548;
            }

            if (v44 == 4)
            {
              v50 = 0xE400000000000000;
            }

            else
            {
              v50 = 0xE600000000000000;
            }

            if (v16 > 3)
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          v45 = 0x64756F6C43776F6CLL;
          if (v44 != 2)
          {
            v45 = 0x6469766F72506F6ELL;
          }

          v46 = 0xEB00000000737265;
          if (v44 == 2)
          {
            v46 = 0xEF656761726F7453;
          }

          v47 = 0x6C61636F4C776F6CLL;
          if (!*v41)
          {
            v47 = 0x626E4F726576656ELL;
          }

          v48 = 0xEE0064656472616FLL;
          if (*v41)
          {
            v48 = 0xEF656761726F7453;
          }

          if (*v41 <= 1u)
          {
            v49 = v47;
          }

          else
          {
            v49 = v45;
          }

          if (*v41 <= 1u)
          {
            v50 = v48;
          }

          else
          {
            v50 = v46;
          }

          if (v16 > 3)
          {
LABEL_106:
            v53 = 0x756F527465737361;
            if (v16 != 6)
            {
              v53 = 0x6174536775626564;
            }

            v54 = 0xEE00626F6C426574;
            if (v16 != 6)
            {
              v54 = 0xEA0000000000656CLL;
            }

            v55 = 0x68746C616548;
            if (v16 == 4)
            {
              v55 = 1280328553;
            }

            v56 = 0xE400000000000000;
            if (v16 != 4)
            {
              v56 = 0xE600000000000000;
            }

            if (v16 <= 5)
            {
              v51 = v55;
            }

            else
            {
              v51 = v53;
            }

            if (v16 <= 5)
            {
              v52 = v56;
            }

            else
            {
              v52 = v54;
            }

LABEL_120:
            if (v49 != v51)
            {
              goto LABEL_72;
            }

            goto LABEL_121;
          }
        }

        if (v16 > 1)
        {
          if (v16 == 2)
          {
            v57 = 0x64756F6C43776F6CLL;
          }

          else
          {
            v57 = 0x6469766F72506F6ELL;
          }

          if (v16 == 2)
          {
            v52 = 0xEF656761726F7453;
          }

          else
          {
            v52 = 0xEB00000000737265;
          }

          if (v49 != v57)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v51 = 0x626E4F726576656ELL;
          v52 = 0xEE0064656472616FLL;
          if (!v16)
          {
            goto LABEL_120;
          }

          v52 = 0xEF656761726F7453;
          if (v49 != 0x6C61636F4C776F6CLL)
          {
            goto LABEL_72;
          }
        }

LABEL_121:
        if (v50 == v52)
        {

          v18 = 1;
          goto LABEL_139;
        }

LABEL_72:
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v41;
        if (v42)
        {
          goto LABEL_139;
        }
      }
    }

    v18 = 0;
LABEL_139:
    v58 = v38;
LABEL_140:
    outlined destroy of CloudDevice(v58, type metadata accessor for CloudDevice);
    return v18;
  }

  outlined destroy of UTType?(v7, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  return 0;
}

uint64_t CloudDevicesDB.commonSecondaryCapabilities()()
{
  v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of static CloudDevice.Capability.allCases.getter);

  specialized Sequence.forEach(_:)(v1, v0, &v12);

  v2 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
  if (v2 != 2 && (v2 & 1) == 0)
  {
    return v12;
  }

  v3 = v12;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(v3 + 48) + v6);
      if (v8 > 3 && *(*(v3 + 48) + v6) > 5u && v8 != 7)
      {
        break;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        return v3;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeSet.insertNew(_:at:isUnique:)(6u, v6, isUniquelyReferenced_nonNull_native);
  }

  return v3;
}

uint64_t CloudDevicesDB.getCapabilities(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = type metadata accessor for CloudDevice(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  outlined init with copy of DateInterval?(a1, v7, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) != 1)
  {
    outlined init with take of CloudDevice(v7, v14, type metadata accessor for CloudDevice);
    if (*&v14[*(v8 + 52)])
    {
      v16 = *&v14[*(v8 + 52)];
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v17 = v14;
    goto LABEL_12;
  }

  outlined destroy of UTType?(v7, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  CloudDevicesDB.currentDevice.getter(v5);
  if (v15(v5, 1, v8) != 1)
  {
    outlined init with take of CloudDevice(v5, v12, type metadata accessor for CloudDevice);
    if (*&v12[*(v8 + 52)])
    {
      v16 = *&v12[*(v8 + 52)];
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v17 = v12;
LABEL_12:
    outlined destroy of CloudDevice(v17, type metadata accessor for CloudDevice);
    return v16;
  }

  outlined destroy of UTType?(v5, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  return MEMORY[0x277D84F90];
}

Swift::Void __swiftcall CloudDevicesDB.addCapability(_:)(MomentsUI::CloudDevice::Capability a1)
{
  v2 = v1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for CloudDevice(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v25 - v12);
  v14 = *v3;
  CloudDevicesDB.currentDevice.getter(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of UTType?(v6, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    return;
  }

  outlined init with take of CloudDevice(v6, v13, type metadata accessor for CloudDevice);
  v15 = *(v7 + 52);
  v16 = *(v13 + v15);
  if (v16)
  {
    v17 = *(v16 + 16);
  }

  else
  {
    v17 = 0;
  }

  LOBYTE(v26) = v14;
  CloudDevice.addCapability(_:)(&v26);
  v18 = *(v13 + v15);
  if (v18)
  {
    if (v17 == *(v18 + 16))
    {
      goto LABEL_12;
    }

LABEL_10:
    v19 = *v13;
    v20 = v13[1];
    v21 = v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
    v22 = *(v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8);
    outlined init with copy of CloudDevice(v13, v11, type metadata accessor for CloudDevice);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v22;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v19, v20, isUniquelyReferenced_nonNull_native);
    *(v21 + 8) = v26;

    CloudDevicesDB.persistLocalData()();
    if (v24)
    {
    }

    goto LABEL_12;
  }

  if (v17)
  {
    goto LABEL_10;
  }

LABEL_12:
  outlined destroy of CloudDevice(v13, type metadata accessor for CloudDevice);
}

void CloudDevicesDB.removeCapability(_:_:)(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v64 - v4;
  v6 = type metadata accessor for CloudDevice(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v64 - v11);
  v13 = *a1;
  CloudDevicesDB.currentDevice.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of UTType?(v5, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    return;
  }

  v65 = v1;
  outlined init with take of CloudDevice(v5, v12, type metadata accessor for CloudDevice);
  v68 = *(v6 + 52);
  v69 = v12;
  v14 = *(v12 + v68);
  v64 = v10;
  if (v14)
  {
    v66 = *(v14 + 16);
    v15 = v14;
  }

  else
  {
    v66 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  v17 = (v15 + 16);
  v16 = *(v15 + 2);
  v67 = v14;

  if (!v16)
  {
LABEL_66:
    v35 = *v17;
    v18 = *v17;
    goto LABEL_133;
  }

  v18 = 0;
  while (1)
  {
    v19 = v15[v18 + 32];
    if (v19 > 3)
    {
      if (v15[v18 + 32] > 5u)
      {
        if (v19 == 6)
        {
          v24 = 0x756F527465737361;
          v25 = 0xEE00626F6C426574;
          if (v13 > 3)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v24 = 0x6174536775626564;
          v25 = 0xEA0000000000656CLL;
          if (v13 > 3)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        if (v19 == 4)
        {
          v24 = 1280328553;
        }

        else
        {
          v24 = 0x68746C616548;
        }

        if (v19 == 4)
        {
          v25 = 0xE400000000000000;
        }

        else
        {
          v25 = 0xE600000000000000;
        }

        if (v13 > 3)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v20 = 0x64756F6C43776F6CLL;
      if (v19 != 2)
      {
        v20 = 0x6469766F72506F6ELL;
      }

      v21 = 0xEF656761726F7453;
      v22 = 0xEB00000000737265;
      if (v19 == 2)
      {
        v22 = 0xEF656761726F7453;
      }

      v23 = 0x6C61636F4C776F6CLL;
      if (!v15[v18 + 32])
      {
        v23 = 0x626E4F726576656ELL;
        v21 = 0xEE0064656472616FLL;
      }

      if (v15[v18 + 32] <= 1u)
      {
        v24 = v23;
      }

      else
      {
        v24 = v20;
      }

      if (v15[v18 + 32] <= 1u)
      {
        v25 = v21;
      }

      else
      {
        v25 = v22;
      }

      if (v13 > 3)
      {
LABEL_35:
        v28 = 0x756F527465737361;
        if (v13 != 6)
        {
          v28 = 0x6174536775626564;
        }

        v29 = 0xEE00626F6C426574;
        if (v13 != 6)
        {
          v29 = 0xEA0000000000656CLL;
        }

        v30 = 0x68746C616548;
        if (v13 == 4)
        {
          v30 = 1280328553;
          v31 = 0xE400000000000000;
        }

        else
        {
          v31 = 0xE600000000000000;
        }

        if (v13 <= 5)
        {
          v32 = v30;
        }

        else
        {
          v32 = v28;
        }

        if (v13 <= 5)
        {
          v27 = v31;
        }

        else
        {
          v27 = v29;
        }

        if (v24 != v32)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v33 = 0x64756F6C43776F6CLL;
      }

      else
      {
        v33 = 0x6469766F72506F6ELL;
      }

      if (v13 == 2)
      {
        v27 = 0xEF656761726F7453;
      }

      else
      {
        v27 = 0xEB00000000737265;
      }

      if (v24 != v33)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v26 = 0x626E4F726576656ELL;
      v27 = 0xEE0064656472616FLL;
      if (v13)
      {
        v26 = 0x6C61636F4C776F6CLL;
        v27 = 0xEF656761726F7453;
      }

      if (v24 != v26)
      {
        goto LABEL_58;
      }
    }

LABEL_57:
    if (v25 == v27)
    {
      break;
    }

LABEL_58:
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_68;
    }

    if (v16 == ++v18)
    {
      goto LABEL_66;
    }
  }

LABEL_68:
  v35 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    goto LABEL_151;
  }

  v36 = *v17;
  if (v35 != *v17)
  {
    v37 = (v18 + 33);
    while (1)
    {
      v40 = v37 - 32;
      if ((v37 - 32) >= v36)
      {
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
        goto LABEL_150;
      }

      v41 = v37[v15];
      if (v41 > 3)
      {
        v44 = 0x756F527465737361;
        if (v41 != 6)
        {
          v44 = 0x6174536775626564;
        }

        v45 = 0xEE00626F6C426574;
        if (v41 != 6)
        {
          v45 = 0xEA0000000000656CLL;
        }

        v46 = 0x68746C616548;
        if (v41 == 4)
        {
          v46 = 1280328553;
        }

        v47 = 0xE600000000000000;
        if (v41 == 4)
        {
          v47 = 0xE400000000000000;
        }

        if (v37[v15] <= 5u)
        {
          v42 = v46;
        }

        else
        {
          v42 = v44;
        }

        if (v37[v15] <= 5u)
        {
          v43 = v47;
        }

        else
        {
          v43 = v45;
        }
      }

      else if (v37[v15] > 1u)
      {
        if (v41 == 2)
        {
          v42 = 0x64756F6C43776F6CLL;
          v43 = 0xEF656761726F7453;
        }

        else
        {
          v42 = 0x6469766F72506F6ELL;
          v43 = 0xEB00000000737265;
        }
      }

      else
      {
        if (v37[v15])
        {
          v42 = 0x6C61636F4C776F6CLL;
        }

        else
        {
          v42 = 0x626E4F726576656ELL;
        }

        if (v37[v15])
        {
          v43 = 0xEF656761726F7453;
        }

        else
        {
          v43 = 0xEE0064656472616FLL;
        }
      }

      if (v13 > 3)
      {
        if (v13 > 5)
        {
          if (v13 == 6)
          {
            v49 = 0xEE00626F6C426574;
            if (v42 != 0x756F527465737361)
            {
              goto LABEL_119;
            }
          }

          else
          {
            v49 = 0xEA0000000000656CLL;
            if (v42 != 0x6174536775626564)
            {
LABEL_119:
              v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v51 & 1) == 0)
              {
                if (v40 != v18)
                {
                  if (v18 < 0)
                  {
                    goto LABEL_146;
                  }

                  if (v18 >= *v17)
                  {
                    goto LABEL_147;
                  }

                  if (v40 >= *v17)
                  {
                    goto LABEL_148;
                  }

                  v52 = v15[v18 + 32];
                  v53 = v37[v15];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                  }

                  v15[v18 + 32] = v53;
                  v37[v15] = v52;
                }

                ++v18;
              }

              goto LABEL_72;
            }
          }
        }

        else if (v13 == 4)
        {
          v49 = 0xE400000000000000;
          if (v42 != 1280328553)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v49 = 0xE600000000000000;
          if (v42 != 0x68746C616548)
          {
            goto LABEL_119;
          }
        }
      }

      else
      {
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v50 = 0x64756F6C43776F6CLL;
LABEL_108:
            v49 = 0xEF656761726F7453;
            if (v42 != v50)
            {
              goto LABEL_119;
            }

            goto LABEL_118;
          }

          v48 = 0x6469766F72506F6ELL;
          v49 = 0xEB00000000737265;
        }

        else
        {
          v48 = 0x626E4F726576656ELL;
          v49 = 0xEE0064656472616FLL;
          if (v13)
          {
            v50 = 0x6C61636F4C776F6CLL;
            goto LABEL_108;
          }
        }

        if (v42 != v48)
        {
          goto LABEL_119;
        }
      }

LABEL_118:
      if (v43 != v49)
      {
        goto LABEL_119;
      }

LABEL_72:
      v17 = (v15 + 16);
      v36 = *(v15 + 2);
      v38 = v37 + 1;
      v39 = v37 - 31;
      ++v37;
      if (v39 == v36)
      {
        v35 = (v38 - 32);
        break;
      }
    }
  }

  if (v35 < v18)
  {
    goto LABEL_149;
  }

  if (v18 < 0)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    return;
  }

LABEL_133:
  if (__OFADD__(v35, v18 - v35))
  {
    goto LABEL_145;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = v15;
  if (!isUniquelyReferenced_nonNull_native || v18 > *(v15 + 3) >> 1)
  {
    if (v35 <= v18)
    {
      v55 = v18;
    }

    else
    {
      v55 = v35;
    }

    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v55, 1, v15);
    v70 = v15;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v18, v35, 0);

  v56 = v69;
  *(v69 + v68) = v15;
  if (v66 != *(v15 + 2))
  {
    v57 = *v56;
    v58 = v56[1];
    v59 = v64;
    v60 = v65 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
    v61 = *(v65 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8);
    outlined init with copy of CloudDevice(v56, v64, type metadata accessor for CloudDevice);

    v62 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, v57, v58, v62);
    *(v60 + 8) = v70;

    CloudDevicesDB.persistLocalData()();
    if (v63)
    {
    }
  }

  outlined destroy of CloudDevice(v56, type metadata accessor for CloudDevice);
}

Swift::Void __swiftcall CloudDevicesDB.updateOnboarding()()
{
  v1 = v0;
  v2 = *v0;
  v92 = type metadata accessor for Logger();
  v90 = *(v92 - 8);
  v3 = MEMORY[0x28223BE20](v92);
  v89 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v87 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v81 - v10;
  v91 = type metadata accessor for Date();
  v93 = *(v91 - 8);
  v12 = MEMORY[0x28223BE20](v91);
  v85 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v86 = &v81 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v81 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v81 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v81 - v22;
  v24 = type metadata accessor for CloudDevice(0);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v88 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v81 - v28;
  v94 = v2;
  static CloudLog.LogBeginInfo(_:_:)(0, "updateOnboarding()", 18, 2, v2, &protocol witness table for CloudDevicesDB);
  CloudDevicesDB.currentDevice.getter(v23);
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    outlined init with take of CloudDevice(v23, v29, type metadata accessor for CloudDevice);
    v30 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
    swift_beginAccess();
    if (*(v1 + v30) == 2)
    {
      v31 = v29;
LABEL_30:
      outlined destroy of CloudDevice(v31, type metadata accessor for CloudDevice);
      goto LABEL_31;
    }

    v32 = v1;
    v83 = *(v1 + v30);
    v33 = *(v24 + 80);
    v84 = v29;
    outlined init with copy of DateInterval?(&v29[v33], v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v34 = v93;
    v35 = v91;
    if ((*(v93 + 48))(v11, 1, v91) == 1)
    {
      outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v83 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      (*(v34 + 32))(v20, v11, v35);
      static Date.distantPast.getter();
      v36 = static Date.> infix(_:_:)();
      v37 = *(v34 + 8);
      v37(v18, v35);
      v37(v20, v35);
      if (((v36 ^ v83) & 1) == 0)
      {
LABEL_29:
        v31 = v84;
        goto LABEL_30;
      }

      if ((v83 & 1) == 0)
      {
        static Date.distantPast.getter();
        (*(v93 + 56))(v9, 0, 1, v35);
        outlined assign with take of Date?(v9, v84 + v33);
        v44 = v85;
        static Date.distantPast.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          swift_once();
        }

        v45 = static DefaultsManager.momentsUI;
        if (static DefaultsManager.momentsUI)
        {
          isa = Date._bridgeToObjectiveC()().super.isa;
          v47 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
          [v45 setValue:isa forKey:v47];
        }

        v37(v44, v35);
        v41 = v87;
        goto LABEL_20;
      }
    }

    v38 = v86;
    static Date.now.getter();
    Date.init()();
    v39 = v93;
    (*(v93 + 56))(v9, 0, 1, v35);
    outlined assign with take of Date?(v9, v84 + v33);
    if (one-time initialization token for momentsUI != -1)
    {
      swift_once();
    }

    v40 = static DefaultsManager.momentsUI;
    v41 = v87;
    if (static DefaultsManager.momentsUI)
    {
      v42 = Date._bridgeToObjectiveC()().super.isa;
      v43 = MEMORY[0x21CE91FC0](0x696472616F626E4FLL, 0xEE0065746144676ELL);
      [v40 setValue:v42 forKey:v43];

      v39 = v93;
    }

    (*(v39 + 8))(v38, v35);
LABEL_20:
    v48 = v92;
    v49 = v90;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v48, static CloudDevicesDB.Log);
    swift_beginAccess();
    v93 = *(v49 + 16);
    (v93)(v41, v50, v48);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    v53 = os_log_type_enabled(v51, v52);
    v82 = v32;
    if (v53)
    {
      v54 = v41;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v95[0] = v56;
      *v55 = 136446722;
      swift_beginAccess();
      v57 = StaticString.description.getter();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v95);
      v60 = v90;

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216583D60, v95);
      *(v55 + 22) = 1024;
      *(v55 + 24) = v83 & 1;
      _os_log_impl(&dword_21607C000, v51, v52, "%{public}s.%{public}s Updating onboarding state to %{BOOL}d", v55, 0x1Cu);
      swift_arrayDestroy();
      v61 = v56;
      v48 = v92;
      MEMORY[0x21CE94770](v61, -1, -1);
      MEMORY[0x21CE94770](v55, -1, -1);

      v62 = *(v60 + 8);
      v62(v54, v48);
    }

    else
    {

      v62 = *(v49 + 8);
      v62(v41, v48);
    }

    v63 = CloudDevice.description()();
    v64 = v89;
    (v93)();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v96 = v68;
      *v67 = 136446722;
      swift_beginAccess();
      v69 = StaticString.description.getter();
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v96);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2082;
      *(v67 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216583D60, &v96);
      *(v67 + 22) = 2080;
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63._countAndFlagsBits, v63._object, &v96);

      *(v67 + 24) = v72;
      _os_log_impl(&dword_21607C000, v65, v66, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v67, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v68, -1, -1);
      MEMORY[0x21CE94770](v67, -1, -1);

      v73 = v89;
      v74 = v92;
    }

    else
    {

      v73 = v64;
      v74 = v48;
    }

    v62(v73, v74);
    v75 = *v84;
    v76 = v84[1];
    v77 = v88;
    outlined init with copy of CloudDevice(v84, v88, type metadata accessor for CloudDevice);
    v78 = v82 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
    v79 = *(v82 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v79;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, v75, v76, isUniquelyReferenced_nonNull_native);
    *(v78 + 8) = v96;

    goto LABEL_29;
  }

  outlined destroy of UTType?(v23, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
LABEL_31:
  static CloudLog.LogEndInfo(_:)("updateOnboarding()", 18, 2, v94, &protocol witness table for CloudDevicesDB);
}

uint64_t CloudDevicesDB.isEligibleForSyncOnboarding.getter()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for CloudDevice(0);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.isEligibleForSyncOnboarding.getter, v0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  CloudDevicesDB.currentDevice.getter(v3);
  v4 = *(v2 + 48);
  v0[14] = v4;
  v0[15] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    outlined destroy of UTType?(v0[9], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (one-time initialization token for onboarding != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static CommonLogger.onboarding);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21607C000, v6, v7, "[Sync Onboarding] Device is not eligible for Sync Onboarding - information about the current device is not available", v8, 2u);
      MEMORY[0x21CE94770](v8, -1, -1);
    }

LABEL_19:

    v22 = v0[1];

    return v22(0);
  }

  v9 = v0[13];
  v10 = v0[10];
  outlined init with take of CloudDevice(v0[9], v9, type metadata accessor for CloudDevice);
  v11 = v9 + *(v10 + 40);
  if (*(v11 + 8))
  {
    v12 = -1;
  }

  else
  {
    v12 = *v11;
  }

  CloudDevice.Idiom.init(rawValue:)(v12);
  if (v23 != 2)
  {
    if (one-time initialization token for onboarding != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static CommonLogger.onboarding);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[13];
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_21607C000, v17, v18, "[Sync Onboarding] Device is not eligible for Sync Onboarding - not an iPad", v21, 2u);
      MEMORY[0x21CE94770](v21, -1, -1);
    }

    outlined destroy of CloudDevice(v20, type metadata accessor for CloudDevice);
    goto LABEL_19;
  }

  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = CloudDevicesDB.isEligibleForSyncOnboarding.getter;
  v14 = v0[8];

  return CloudDevicesDB.bestNomineeDevice.getter(v14);
}

{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](CloudDevicesDB.isEligibleForSyncOnboarding.getter, v1, 0);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  if ((*(v0 + 112))(v2, 1, v1) == 1)
  {
    v3 = &_s9MomentsUI11CloudDeviceVSgMd;
    v4 = &_s9MomentsUI11CloudDeviceVSgMR;
LABEL_5:
    outlined destroy of UTType?(v2, v3, v4);
    goto LABEL_6;
  }

  v5 = *(v0 + 96);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  outlined init with take of CloudDevice(v2, v5, type metadata accessor for CloudDevice);
  outlined init with copy of DateInterval?(v5 + *(v1 + 80), v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = (*(v7 + 48))(v8, 1, v6);
  v10 = *(v0 + 96);
  if (v9 == 1)
  {
    v2 = *(v0 + 24);
    outlined destroy of CloudDevice(*(v0 + 96), type metadata accessor for CloudDevice);
    v3 = &_s10Foundation4DateVSgMd;
    v4 = &_s10Foundation4DateVSgMR;
    goto LABEL_5;
  }

  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  v22 = *(v0 + 32);
  v23 = *(v0 + 40);
  (*(v23 + 32))(v20, *(v0 + 24), v22);
  static Date.distantPast.getter();
  v24 = static Date.> infix(_:_:)();
  v25 = *(v23 + 8);
  v25(v21, v22);
  v25(v20, v22);
  outlined destroy of CloudDevice(v10, type metadata accessor for CloudDevice);
  if (v24)
  {
    v15 = *(v0 + 104);
    v17 = 1;
    goto LABEL_11;
  }

LABEL_6:
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static CommonLogger.onboarding);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 104);
  if (v14)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21607C000, v12, v13, "[Sync Onboarding] Device is not eligible for Sync Onboarding - iPhone was not onboarded", v16, 2u);
    MEMORY[0x21CE94770](v16, -1, -1);
  }

  v17 = 0;
LABEL_11:
  outlined destroy of CloudDevice(v15, type metadata accessor for CloudDevice);

  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t CloudDevicesDB.SnapshotEventAggregation.description.getter()
{
  v1 = v0[3];
  v27 = v0[2];
  v28 = v1;
  v29 = v0[4];
  v2 = v0[1];
  v26[0] = *v0;
  v26[1] = v2;
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(325);
  MEMORY[0x21CE92100](0xD00000000000003FLL, 0x8000000216583D80);
  if (v29)
  {
    v23 = *(v29 + 16);
  }

  else
  {
    v23 = -1;
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v3);

  MEMORY[0x21CE92100](8236, 0xE200000000000000);
  Double.write<A>(to:)();
  MEMORY[0x21CE92100](0xD000000000000033, 0x8000000216583DC0);
  if (*(&v27 + 1))
  {
    v23 = *(*(&v27 + 1) + 16);
  }

  else
  {
    v23 = -1;
  }

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v4);

  MEMORY[0x21CE92100](8236, 0xE200000000000000);
  Double.write<A>(to:)();
  MEMORY[0x21CE92100](0xD000000000000034, 0x8000000216583E00);
  if (v28)
  {
    v23 = *(v28 + 16);
  }

  else
  {
    v23 = -1;
  }

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v5);

  MEMORY[0x21CE92100](8236, 0xE200000000000000);
  Double.write<A>(to:)();
  MEMORY[0x21CE92100](0xD000000000000022, 0x8000000216583E40);
  if (*(&v28 + 1))
  {
    v23 = *(*(&v28 + 1) + 16);
  }

  else
  {
    v23 = -1;
  }

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v6);

  MEMORY[0x21CE92100](8236, 0xE200000000000000);
  Double.write<A>(to:)();
  MEMORY[0x21CE92100](0xD00000000000001ELL, 0x8000000216583E70);
  if (*&v26[0])
  {
    v23 = *(*&v26[0] + 16);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v7);

    MEMORY[0x21CE92100](8236, 0xE200000000000000);
    v8 = *(*&v26[0] + 16);
    if (v8)
    {
      v9 = *(*&v26[0] + 8 * v8 + 24);
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = -1;
    v23 = -1;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v10);

    MEMORY[0x21CE92100](8236, 0xE200000000000000);
  }

  v23 = v9;
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v11);

  MEMORY[0x21CE92100](0xD000000000000012, 0x8000000216583E90);
  if (v27)
  {
    v23 = *(v27 + 16);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v12);

    MEMORY[0x21CE92100](8236, 0xE200000000000000);
    v13 = *(v27 + 16);
    if (v13)
    {
      v14 = *(v27 + 8 * v13 + 24);
    }

    else
    {
      v14 = -1;
    }
  }

  else
  {
    v14 = -1;
    v23 = -1;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v15);

    MEMORY[0x21CE92100](8236, 0xE200000000000000);
  }

  v23 = v14;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v16);

  MEMORY[0x21CE92100](0x7245636E79730A29, 0xEF28203D20726F72);
  if (*(&v29 + 1))
  {
    v23 = *(*(&v29 + 1) + 16);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v17);

    MEMORY[0x21CE92100](32, 0xE100000000000000);
    v18 = *(*(&v29 + 1) + 16);
    if (v18)
    {
      v19 = *(*(&v29 + 1) + 8 * v18 + 24);
    }

    else
    {
      v19 = -1;
    }
  }

  else
  {
    v19 = -1;
    v23 = -1;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v20);

    MEMORY[0x21CE92100](32, 0xE100000000000000);
  }

  v23 = v19;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v21);

  MEMORY[0x21CE92100](0xD000000000000015, 0x8000000216583EB0);
  LOBYTE(v23) = byte_2828D7300;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D7301;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D7302;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D7303;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D7304;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D7305;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D7306;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D7307;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D7308;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D7309;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D730A;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D730B;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D730C;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D730D;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  LOBYTE(v23) = byte_2828D730E;
  closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(&v23, v26);
  return v24;
}

double closure #1 in CloudDevicesDB.SnapshotEventAggregation.description.getter(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = DBAssetModelEnum.rawValue.getter(*a1);
    if (*(v3 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
      v7 = v6;

      if (v7)
      {
      }
    }

    else
    {
    }
  }

  _StringGuts.grow(_:)(34);

  v8 = DBAssetModelEnum.rawValue.getter(v2);
  MEMORY[0x21CE92100](v8);

  MEMORY[0x21CE92100](673201440, 0xE400000000000000);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v9);

  MEMORY[0x21CE92100](8236, 0xE200000000000000);

  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v10);

  MEMORY[0x21CE92100](41, 0xE100000000000000);
  MEMORY[0x21CE92100](0xD000000000000015, 0x8000000216584570);

  return result;
}

uint64_t CloudDevicesDB.SnapshotEventAggregation.descriptionVerbose.getter()
{
  v1 = *v0;
  v50 = v0[1];
  v2 = v0[5];
  v48 = v0[4];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[8];
  v49 = v0[9];

  _StringGuts.grow(_:)(360);
  MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216583ED0);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = MEMORY[0x277D839F8];
  v9 = MEMORY[0x21CE922B0](v7, MEMORY[0x277D839F8]);
  v11 = v10;

  MEMORY[0x21CE92100](v9, v11);

  MEMORY[0x21CE92100](0xD00000000000002FLL, 0x8000000216583EF0);
  if (v2)
  {
    v12 = v2;
  }

  else
  {
    v12 = v6;
  }

  v13 = MEMORY[0x21CE922B0](v12, v8);
  v15 = v14;

  MEMORY[0x21CE92100](v13, v15);

  MEMORY[0x21CE92100](0xD000000000000030, 0x8000000216583F20);
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v16 = v6;
  }

  v17 = MEMORY[0x21CE922B0](v16, v8);
  v19 = v18;

  MEMORY[0x21CE92100](v17, v19);

  MEMORY[0x21CE92100](0xD00000000000001ELL, 0x8000000216583F60);
  if (v3)
  {
    v20 = v3;
  }

  else
  {
    v20 = v6;
  }

  v21 = MEMORY[0x21CE922B0](v20, v8);
  v23 = v22;

  MEMORY[0x21CE92100](v21, v23);

  MEMORY[0x21CE92100](0xD00000000000001ALL, 0x8000000216583F80);
  if (v1)
  {
    v24 = v1;
  }

  else
  {
    v24 = v6;
  }

  v25 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x21CE922B0](v24, MEMORY[0x277D83B88]);
  v28 = v27;

  MEMORY[0x21CE92100](v26, v28);

  MEMORY[0x21CE92100](0xD000000000000021, 0x8000000216583FA0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v29 = Dictionary.description.getter();
  v31 = v30;

  MEMORY[0x21CE92100](v29, v31);

  MEMORY[0x21CE92100](0x6F687370616E730ALL, 0xEE003D657A695374);
  if (v48)
  {
    v32 = v48;
  }

  else
  {
    v32 = v6;
  }

  v33 = MEMORY[0x21CE922B0](v32, v25);
  v35 = v34;

  MEMORY[0x21CE92100](v33, v35);

  MEMORY[0x21CE92100](0xD000000000000031, 0x8000000216583FD0);
  if (v49)
  {
    v36 = v49;
  }

  else
  {
    v36 = v6;
  }

  v37 = MEMORY[0x21CE922B0](v36, v25);
  v39 = v38;

  MEMORY[0x21CE92100](v37, v39);

  MEMORY[0x21CE92100](0xD000000000000021, 0x8000000216584010);
  if (v50)
  {
    v40 = v50;
  }

  else
  {
    v40 = v6;
  }

  v41 = MEMORY[0x21CE922B0](v40, v25);
  v43 = v42;

  MEMORY[0x21CE92100](v41, v43);

  MEMORY[0x21CE92100](0xD000000000000021, 0x8000000216583FA0);

  v44 = Dictionary.description.getter();
  v46 = v45;

  MEMORY[0x21CE92100](v44, v46);

  return 0;
}

unint64_t CloudDevicesDB.SnapshotEventAggregation.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0xD00000000000002BLL;
  if (a1 > 4u)
  {
    v5 = 0xD000000000000028;
    v6 = 0xD000000000000026;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000003ALL;
    if (a1 == 5)
    {
      v7 = 0xD000000000000039;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000032;
    v3 = 0xD000000000000018;
    if (a1 == 3)
    {
      v3 = 0xD00000000000002BLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000024;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CloudDevicesDB.SnapshotEventAggregation.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudDevicesDB.SnapshotEventAggregation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationV10CodingKeys33_0B14A9883B1C6DCF348E1E6C3F17C2B4LLOGMd, &_ss22KeyedEncodingContainerVy9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationV10CodingKeys33_0B14A9883B1C6DCF348E1E6C3F17C2B4LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v27 = v1[2];
  v28 = v8;
  v11 = v1[5];
  v25 = v1[4];
  v26 = v10;
  v12 = v1[7];
  v23 = v1[6];
  v24 = v11;
  v13 = v1[9];
  v21 = v1[8];
  v22 = v12;
  v20 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys();

  v14 = v4;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v30 = v9;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v15 = v27;

    v30 = v28;
    v29 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = v15;
    v29 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySiGGMd, &_sSDySSSaySiGGMR);
    lazy protocol witness table accessor for type [String : [Int]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [Int]] and conformance <> [A : B], lazy protocol witness table accessor for type [Int] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    v27 = v14;
    v28 = v7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = v5;
    v30 = v26;
    v29 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = v25;
    v29 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = v24;
    v29 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    lazy protocol witness table accessor for type [Double] and conformance <A> [A]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = v23;
    v29 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = v22;
    v29 = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = v21;
    v29 = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = v20;
    v29 = 9;
    v18 = v27;
    v19 = v28;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    return (*(v17 + 8))(v19, v18);
  }
}

uint64_t CloudDevicesDB.SnapshotEventAggregation.init(aggregation_numSuggestionsInSnapshot:aggregation_numSuggestionsDroppedInSnapshot:aggregation_numAssetsDroppedInSnapshotPerAssetType:aggregation_numAssetsInSnapshotPerAssetType:aggregation_snapshotSize:aggregation_timeBetweenSnapshotCreationAndMomentsUILaunch:aggregation_timeBetweenSnapshotCreationAndDownloadComplete:aggregation_timeBetweenSnapshotDownloads:aggregation_timeBetweenSnapshotUploads:aggregation_syncError:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t CloudDevicesDB.SnapshotEventAggregation.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationV10CodingKeys33_0B14A9883B1C6DCF348E1E6C3F17C2B4LLOGMd, &_ss22KeyedDecodingContainerVy9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationV10CodingKeys33_0B14A9883B1C6DCF348E1E6C3F17C2B4LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - v7;
  v9 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v40 = v2;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    LOBYTE(v41) = 0;
    v11 = lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = v47;
    LOBYTE(v41) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySiGGMd, &_sSDySSSaySiGGMR);
    LOBYTE(v41) = 2;
    v40 = lazy protocol witness table accessor for type [String : [Int]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [Int]] and conformance <> [A : B], lazy protocol witness table accessor for type [Int] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83528]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v36 = v47;
    LOBYTE(v41) = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = a2;
    v13 = v47;
    LOBYTE(v41) = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = v13;
    v14 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    LOBYTE(v41) = 5;
    v33 = lazy protocol witness table accessor for type [Double] and conformance <A> [A]();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v15 = v47;
    LOBYTE(v41) = 6;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v11;
    v16 = v47;
    LOBYTE(v41) = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = 0;
    v28[1] = v10;
    v29 = v15;
    v30 = v14;
    v31 = v6;
    v17 = v47;
    LOBYTE(v41) = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = 0;
    v18 = v47;
    v46 = 9;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = 0;
    (*(v31 + 8))(v8, v5);
    v33 = v57;
    v19 = v38;
    v20 = v37;
    *&v41 = v38;
    *(&v41 + 1) = v37;
    v21 = v36;
    v22 = v34;
    *&v42 = v36;
    *(&v42 + 1) = v34;
    v23 = v30;
    v24 = v29;
    *&v43 = v30;
    *(&v43 + 1) = v29;
    *&v44 = v16;
    *(&v44 + 1) = v17;
    *&v45 = v18;
    *(&v45 + 1) = v57;
    v25 = v44;
    v26 = v35;
    v35[2] = v43;
    v26[3] = v25;
    v27 = v42;
    *v26 = v41;
    v26[1] = v27;
    v26[4] = v45;
    outlined init with copy of CloudDevicesDB.SnapshotEventAggregation(&v41, &v47);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v47 = v19;
    v48 = v20;
    v49 = v21;
    v50 = v22;
    v51 = v23;
    v52 = v24;
    v53 = v16;
    v54 = v17;
    v55 = v18;
    v56 = v33;
  }

  return outlined destroy of CloudDevicesDB.SnapshotEventAggregation(&v47);
}

uint64_t CloudDevicesDB.userHasAtLeastOneiPad.getter(int a1)
{

  specialized static CloudDevice.userHasAtLeastOneiPad(in:hasToBeOnboarded:)(v2, a1);
  LOBYTE(a1) = v3;

  return a1 & 1;
}

void key path getter for CloudDevicesDB._isRefreshing : CloudDevicesDB(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t key path setter for CloudDevicesDB._isRefreshing : CloudDevicesDB(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SaySiGTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_14:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
      {
LABEL_26:

        return;
      }

      if (v21)
      {
        v22 = v20 == v16;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = 32;
        while (v21)
        {
          if (*(v20 + v23) != *(v16 + v23))
          {
            goto LABEL_26;
          }

          v23 += 8;
          if (!--v21)
          {
            goto LABEL_6;
          }
        }

        goto LABEL_29;
      }

LABEL_6:
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySay10Foundation4UUIDVGSgGMd, &_ss11_SetStorageCySay10Foundation4UUIDVGSgGMR);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v2;
    v37 = v4;
    v10 = 0;
    v11 = *(v7 + 56);
    v38 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v39 = v4 + 16;
    v40 = v15;
    v42 = v8;
    v43 = v7;
    v41 = v8 + 56;
    while (v14)
    {
      v44 = (v14 - 1) & v14;
      v45 = v10;
      v17 = __clz(__rbit64(v14)) | (v10 << 6);
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * v17);
      Hasher.init(_seed:)();
      v46 = v21;
      if (v21)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x21CE937C0](*(v21 + 16));
        v22 = *(v21 + 16);
        if (v22)
        {
          v23 = v46 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
          v24 = *(v37 + 72);
          v25 = *(v37 + 16);
          do
          {
            v25(v6, v23, v3);
            lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
            dispatch thunk of Hashable.hash(into:)();
            (*(v4 + 8))(v6, v3);
            v23 += v24;
            --v22;
          }

          while (v22);
        }
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v26 = Hasher._finalize()();
      v9 = v42;
      v27 = -1 << *(v42 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v41 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v7 = v43;
        v10 = v45;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v41 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v41 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v7 = v43;
      v10 = v45;
LABEL_7:
      *(v41 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v46;
      ++*(v9 + 16);
      v15 = v40;
      v14 = v44;
    }

    v18 = v10;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v15)
      {
        break;
      }

      v20 = v38[v19];
      ++v18;
      if (v20)
      {
        v44 = (v20 - 1) & v20;
        v45 = v19;
        v17 = __clz(__rbit64(v20)) | (v19 << 6);
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v7 + 32);
    if (v34 >= 64)
    {
      bzero(v38, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v34;
    }

    v2 = v36;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
}

{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI12DBAssetModelC5StyleOGMd, &_ss11_SetStorageCy9MomentsUI12DBAssetModelC5StyleOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x21CE937C0](v17);
      v18 = Hasher._finalize()();
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
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd, &_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();

      v13 = Hasher._finalize()();
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

{
  specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo14CKRecordZoneIDCGMd, &_ss11_SetStorageCySo14CKRecordZoneIDCGMR);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI11DBAssetDataCGMd, &_ss11_SetStorageCy9MomentsUI11DBAssetDataCGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      (*(*v17 + 616))(v27);
      v18 = Hasher._finalize()();
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI18HashableCoordinateVGMd, &_ss11_SetStorageCy9MomentsUI18HashableCoordinateVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = (*(v3 + 48) + 16 * (v11 | (v5 << 6)));
      specialized _NativeSet._unsafeInsertNew(_:)(v4, *v14, v14[1]);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v3 + 32);
    if (v15 >= 64)
    {
      bzero((v3 + 56), ((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v15;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI18ProtectedAppSourceVGMd, &_ss11_SetStorageCy9MomentsUI18ProtectedAppSourceVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI12DBSuggestionCGMd, &_ss11_SetStorageCy9MomentsUI12DBSuggestionCGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      specialized _NativeSet._unsafeInsertNew(_:)(*(*(v3 + 48) + 8 * (v11 | (v5 << 6))), v4);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v14 = 1 << *(v3 + 32);
    if (v14 >= 64)
    {
      bzero((v3 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v14;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

{
  specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo10CKRecordIDCGMd, &_ss11_SetStorageCySo10CKRecordIDCGMR);
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    v28 = v4;
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = MEMORY[0x21CE937A0](*(v7 + 40), v19);
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    if (v10 >= 64)
    {
      bzero((v5 + 56), 8 * v13);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v4 = v28;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v41 = a1;
  v6 = type metadata accessor for UUID();
  v39 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v36 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()();
LABEL_24:
      v29 = *v36;
      *(v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v29 + 48) + 8 * a2) = v41;
      v30 = *(v29 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_28;
      }

      *(v29 + 16) = v32;
      return;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v3;
  Hasher.init(_seed:)();
  specialized Optional<A>.hash(into:)(v42, v41);
  v15 = Hasher._finalize()();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_24;
  }

  v18 = ~v17;
  v19 = (v39 + 8);
  v34 = v14 + 56;
  v35 = v14;
  v33 = ~v17;
  while (1)
  {
    v20 = *(*(v14 + 48) + 8 * a2);
    if (!v20)
    {
      if (!v41)
      {
        goto LABEL_30;
      }

      goto LABEL_11;
    }

    if (v41)
    {
      v21 = *(v41 + 16);
      v40 = *(v20 + 16);
      if (v40 == v21)
      {
        break;
      }
    }

LABEL_11:
    a2 = (a2 + 1) & v18;
    if (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (v40 && v20 != v41)
  {
    v22 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v37 = a2;
    v38 = v20 + v22;
    v23 = v41 + v22;

    v24 = 0;
    while (v24 < *(v20 + 16))
    {
      v25 = *(v39 + 72) * v24;
      v26 = *(v39 + 16);
      v26(v11, v38 + v25, v6);
      if (v24 >= *(v41 + 16))
      {
        goto LABEL_27;
      }

      v26(v9, v23 + v25, v6);
      lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *v19;
      (*v19)(v9, v6);
      v28(v11, v6);
      if ((v27 & 1) == 0)
      {

        a2 = v37;
        v16 = v34;
        v14 = v35;
        v18 = v33;
        goto LABEL_11;
      }

      if (v40 == ++v24)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
  }

LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGSgMd, &_sSay10Foundation4UUIDVGSgMR);
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo14CKRecordZoneIDCGMd, &_ss11_SetStorageCySo14CKRecordZoneIDCGMR);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo14CKRecordZoneIDCGMd, &_ss11_SetStorageCySo14CKRecordZoneIDCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  (*(*a1 + 616))(v18);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for DBAssetData(0);
    do
    {

      v13 = specialized static DBAssetData.== infix(_:_:)(v12, a1);

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo10CKRecordIDCGMd, &_ss11_SetStorageCySo10CKRecordIDCGMR);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo10CKRecordIDCGMd, &_ss11_SetStorageCySo10CKRecordIDCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID, 0x277CBC5D0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      specialized _NativeSet.copy()();
      goto LABEL_72;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  v8 = specialized RawRepresentable<>._rawHashValue(seed:)(*(*v3 + 40), a1);
  v37 = v7;
  v38 = v7 + 56;
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v36 = ~v9;
    v10 = 0xEF656761726F7453;
    v11 = 0xEE0064656472616FLL;
    do
    {
      v12 = *(*(v37 + 48) + a2);
      if (v12 > 3)
      {
        if (*(*(v37 + 48) + a2) > 5u)
        {
          if (v12 == 6)
          {
            v17 = 0x756F527465737361;
            v18 = 0xEE00626F6C426574;
          }

          else
          {
            v17 = 0x6174536775626564;
            v18 = 0xEA0000000000656CLL;
          }
        }

        else
        {
          if (v12 == 4)
          {
            v17 = 1280328553;
          }

          else
          {
            v17 = 0x68746C616548;
          }

          if (v12 == 4)
          {
            v18 = 0xE400000000000000;
          }

          else
          {
            v18 = 0xE600000000000000;
          }
        }
      }

      else
      {
        if (v12 == 2)
        {
          v13 = 0x64756F6C43776F6CLL;
        }

        else
        {
          v13 = 0x6469766F72506F6ELL;
        }

        if (v12 == 2)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0xEB00000000737265;
        }

        if (*(*(v37 + 48) + a2))
        {
          v15 = 0x6C61636F4C776F6CLL;
        }

        else
        {
          v15 = 0x626E4F726576656ELL;
        }

        if (*(*(v37 + 48) + a2))
        {
          v16 = v10;
        }

        else
        {
          v16 = v11;
        }

        if (*(*(v37 + 48) + a2) <= 1u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }

        if (*(*(v37 + 48) + a2) <= 1u)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }
      }

      v19 = 0x756F527465737361;
      if (a1 != 6)
      {
        v19 = 0x6174536775626564;
      }

      v20 = 0xEE00626F6C426574;
      if (a1 != 6)
      {
        v20 = 0xEA0000000000656CLL;
      }

      v21 = 0x68746C616548;
      if (a1 == 4)
      {
        v21 = 1280328553;
      }

      v22 = 0xE400000000000000;
      if (a1 != 4)
      {
        v22 = 0xE600000000000000;
      }

      if (a1 <= 5u)
      {
        v19 = v21;
        v20 = v22;
      }

      if (a1 == 2)
      {
        v23 = 0x64756F6C43776F6CLL;
      }

      else
      {
        v23 = 0x6469766F72506F6ELL;
      }

      if (a1 == 2)
      {
        v24 = v10;
      }

      else
      {
        v24 = 0xEB00000000737265;
      }

      if (a1)
      {
        v25 = 0x6C61636F4C776F6CLL;
      }

      else
      {
        v25 = 0x626E4F726576656ELL;
      }

      v26 = v11;
      v27 = v10;
      if (a1)
      {
        v11 = v10;
      }

      if (a1 <= 1u)
      {
        v23 = v25;
        v24 = v11;
      }

      v28 = a1 <= 3u ? v23 : v19;
      v29 = a1 <= 3u ? v24 : v20;
      if (v17 == v28 && v18 == v29)
      {
        goto LABEL_75;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_76;
      }

      a2 = (a2 + 1) & v36;
      v11 = v26;
      v10 = v27;
    }

    while (((*(v38 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_72:
  v31 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v31 + 48) + a2) = a1;
  v32 = *(v31 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v31 + 16) = v34;
    return;
  }

  __break(1u);
LABEL_75:

LABEL_76:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  return specialized _NativeSet.insertNew(_:at:isUnique:)(a1, a2, a3, &_ss11_SetStorageCys5Int64VGMd, &_ss11_SetStorageCys5Int64VGMR, MEMORY[0x277D84A28], specialized _NativeSet.copy());
}

{
  return specialized _NativeSet.insertNew(_:at:isUnique:)(a1, a2, a3, &_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR, MEMORY[0x277D83B88], specialized _NativeSet.copy());
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6, uint64_t (*a7)(void))
{
  v8 = result;
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a2;
      result = a7();
      a2 = v11;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1, a4, a5);
  }

  v12 = *v7;
  result = MEMORY[0x21CE937A0](*(*v7 + 40), v8);
  v13 = -1 << *(v12 + 32);
  a2 = result & ~v13;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v12 + 48) + 8 * a2) != v8)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v8;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, char a2, double a3, double a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a2 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a2)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = result;
      specialized _NativeSet.copy()();
      result = v9;
      goto LABEL_21;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a3 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = a3;
  }

  MEMORY[0x21CE937F0](*&v11);
  if (a4 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = a4;
  }

  MEMORY[0x21CE937F0](*&v12);
  v13 = Hasher._finalize()();
  v14 = -1 << *(v10 + 32);
  result = v13 & ~v14;
  if ((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v10 + 48) + 16 * result);
      if (*v16 == a3 && v16[1] == a4)
      {
        goto LABEL_24;
      }

      result = (result + 1) & v15;
    }

    while (((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_21:
  v18 = *v4;
  *(*v4 + 8 * (result >> 6) + 56) |= 1 << result;
  v19 = (*(v18 + 48) + 16 * result);
  *v19 = a3;
  v19[1] = a4;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_24:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = *(*v4 + 16);
  v19 = *(*v4 + 24);
  if (v19 > v18 && (v5 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    specialized _NativeSet.resize(capacity:)(v18 + 1);
  }

  else
  {
    if (v19 > v18)
    {
      specialized _NativeSet.copy()();
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v18 + 1);
  }

  v20 = *v4;
  v21 = Hasher.init(_seed:)();
  (*(*a1 + 344))(v21);
  outlined init with copy of DateInterval?(v17, v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v9 + 32))(v11, v15, v8);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v9 + 8))(v11, v8);
  }

  outlined destroy of UTType?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = Hasher._finalize()();
  v23 = -1 << *(v20 + 32);
  a2 = v22 & ~v23;
  if ((*(v20 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v24 = ~v23;
    type metadata accessor for DBSuggestion(0);
    do
    {

      v26 = specialized static DBSuggestion.== infix(_:_:)(v25, a1);

      if (v26)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v24;
    }

    while (((*(v20 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v27 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + 8 * a2) = a1;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return;
  }

  __break(1u);
LABEL_18:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
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

{
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySay10Foundation4UUIDVGSgGMd, &_ss11_SetStorageCySay10Foundation4UUIDVGSgGMR);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = *(v7 + 56);
    v39 = v4;
    v40 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v38 = v4 + 16;
    v36 = v2;
    v37 = (v4 + 8);
    v43 = v8;
    v44 = v7;
    v41 = v15;
    v42 = v8 + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v45 = (v14 - 1) & v14;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      Hasher.init(_seed:)();
      v46 = v21;
      if (v21)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x21CE937C0](*(v21 + 16));
        v22 = *(v21 + 16);
        if (v22)
        {
          v23 = v21 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
          v24 = *(v39 + 72);
          v25 = *(v39 + 16);

          v26 = v37;
          do
          {
            v25(v6, v23, v3);
            lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
            dispatch thunk of Hashable.hash(into:)();
            (*v26)(v6, v3);
            v23 += v24;
            --v22;
          }

          while (v22);
        }

        else
        {
        }
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v27 = Hasher._finalize()();
      v9 = v43;
      v28 = -1 << *(v43 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v42 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v7 = v44;
        v17 = v46;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v42 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_35;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v42 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v7 = v44;
      v17 = v46;
LABEL_7:
      *(v42 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v17;
      ++*(v9 + 16);
      v15 = v41;
      v14 = v45;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v36;
        goto LABEL_33;
      }

      v20 = *(v40 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

LABEL_33:
    *v2 = v9;
  }
}

{
  v2 = v1;
  v34 = type metadata accessor for UUID();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI12DBAssetModelC5StyleOGMd, &_ss11_SetStorageCy9MomentsUI12DBAssetModelC5StyleOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x21CE937C0](v16);
      v17 = Hasher._finalize()();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd, &_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();

      v12 = Hasher._finalize()();
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI11DBAssetDataCGMd, &_ss11_SetStorageCy9MomentsUI11DBAssetDataCGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
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
      Hasher.init(_seed:)();
      v18 = *(*v17 + 616);

      v18(v28);
      v19 = Hasher._finalize()();
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
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
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

        v2 = v1;
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI18HashableCoordinateVGMd, &_ss11_SetStorageCy9MomentsUI18HashableCoordinateVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
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
      v13 = (*(v3 + 48) + 16 * (v10 | (v5 << 6)));
      specialized _NativeSet._unsafeInsertNew(_:)(v4, *v13, v13[1]);
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI18ProtectedAppSourceVGMd, &_ss11_SetStorageCy9MomentsUI18ProtectedAppSourceVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI12DBSuggestionCGMd, &_ss11_SetStorageCy9MomentsUI12DBSuggestionCGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
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
      v8 &= v8 - 1;
LABEL_11:

      specialized _NativeSet._unsafeInsertNew(_:)(v12, v4);
    }

    v10 = v5;
    while (1)
    {
      v5 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_13;
      }

      v11 = *(v3 + 56 + 8 * v5);
      ++v10;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
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

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
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
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = MEMORY[0x21CE937A0](*(v7 + 40), v18);
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

        goto LABEL_26;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v4 = v7;
  }
}

{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v3;
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
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(v18);
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
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

        v4 = v28;
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

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a2;
  v4 = type metadata accessor for CloudDevice(0);
  v38 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9MomentsUI11CloudDeviceVGMd, &_ss18_DictionaryStorageCySS9MomentsUI11CloudDeviceVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v11 = v9;
  v12 = result;
  v13 = 0;
  v41 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v35 = v15;
  v36 = result + 64;
  v37 = result;
  if (v19)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v42 = (v19 - 1) & v19;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = (*(v41 + 48) + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v38 + 72) * v24;
      outlined init with copy of CloudDevice(*(v41 + 56) + v28, v11, type metadata accessor for CloudDevice);

      v29 = v43;
      (v39)(v11);
      v43 = v29;
      if (v29)
      {
        break;
      }

      outlined destroy of CloudDevice(v11, type metadata accessor for CloudDevice);
      *(v36 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v30 = v37;
      v31 = (*(v37 + 48) + 16 * v24);
      *v31 = v27;
      v31[1] = v26;
      v12 = v30;
      result = outlined init with take of CloudDevice(v7, *(v30 + 56) + v28, type metadata accessor for CloudDevice);
      v32 = *(v12 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_17;
      }

      *(v12 + 16) = v34;
      v19 = v42;
      if (!v42)
      {
        goto LABEL_5;
      }
    }

    v12 = v37;

    outlined destroy of CloudDevice(v11, type metadata accessor for CloudDevice);
    return v12;
  }

  else
  {
LABEL_5:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v20)
      {
        return v12;
      }

      v23 = *(v35 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v42 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.State.CodingKeys and conformance CloudDevicesDB.State.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CloudManagerAccountState and conformance CloudManagerAccountState()
{
  result = lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState;
  if (!lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState;
  if (!lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState;
  if (!lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState;
  if (!lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudManagerAccountState and conformance CloudManagerAccountState);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized _NativeSet.genericIntersection<A>(_:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x21CE94770](v15, -1, -1);
  }

  return v11;
}

void specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *(a3 + 16);
  if (!v34)
  {
    v31 = 0;
LABEL_70:

    specialized _NativeSet.extractSubset(using:count:)(a1, a2, v31, a4);
    return;
  }

  v31 = 0;
  v5 = 0;
  v36 = a4 + 56;
  v33 = a3 + 32;
  while (2)
  {
    v6 = *(v33 + v5++);
    Hasher.init(_seed:)();
    String.hash(into:)();

    v7 = Hasher._finalize()();
    v8 = -1 << *(a4 + 32);
    v9 = v7 & ~v8;
    v10 = v9 >> 6;
    v11 = 1 << v9;
    if (((1 << v9) & *(v36 + 8 * (v9 >> 6))) == 0)
    {
      goto LABEL_3;
    }

    v35 = v5;
    v12 = ~v8;
    while (1)
    {
      v13 = *(*(a4 + 48) + v9);
      if (v13 <= 3)
      {
        break;
      }

      if (*(*(a4 + 48) + v9) > 5u)
      {
        if (v13 == 6)
        {
          v18 = 0x756F527465737361;
          v19 = 0xEE00626F6C426574;
          if (v6 > 3)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v18 = 0x6174536775626564;
          v19 = 0xEA0000000000656CLL;
          if (v6 > 3)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        if (v13 == 4)
        {
          v18 = 1280328553;
        }

        else
        {
          v18 = 0x68746C616548;
        }

        if (v13 == 4)
        {
          v19 = 0xE400000000000000;
        }

        else
        {
          v19 = 0xE600000000000000;
        }

        if (v6 > 3)
        {
          goto LABEL_32;
        }
      }

LABEL_49:
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v28 = 0x64756F6C43776F6CLL;
        }

        else
        {
          v28 = 0x6469766F72506F6ELL;
        }

        if (v6 == 2)
        {
          v25 = 0xEF656761726F7453;
        }

        else
        {
          v25 = 0xEB00000000737265;
        }

        if (v18 == v28)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v26 = 0x626E4F726576656ELL;
        v25 = 0xEE0064656472616FLL;
        if (v6)
        {
          v26 = 0x6C61636F4C776F6CLL;
          v25 = 0xEF656761726F7453;
        }

        if (v18 == v26)
        {
          goto LABEL_53;
        }
      }

LABEL_54:
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_66;
      }

      v9 = (v9 + 1) & v12;
      v10 = v9 >> 6;
      v11 = 1 << v9;
      if ((*(v36 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        v5 = v35;
        goto LABEL_3;
      }
    }

    v14 = 0x64756F6C43776F6CLL;
    if (v13 != 2)
    {
      v14 = 0x6469766F72506F6ELL;
    }

    v15 = 0xEF656761726F7453;
    v16 = 0xEB00000000737265;
    if (v13 == 2)
    {
      v16 = 0xEF656761726F7453;
    }

    v17 = 0x6C61636F4C776F6CLL;
    if (!*(*(a4 + 48) + v9))
    {
      v17 = 0x626E4F726576656ELL;
      v15 = 0xEE0064656472616FLL;
    }

    if (*(*(a4 + 48) + v9) <= 1u)
    {
      v18 = v17;
    }

    else
    {
      v18 = v14;
    }

    if (*(*(a4 + 48) + v9) <= 1u)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }

    if (v6 <= 3)
    {
      goto LABEL_49;
    }

LABEL_32:
    v20 = 0x756F527465737361;
    if (v6 != 6)
    {
      v20 = 0x6174536775626564;
    }

    v21 = 0xEE00626F6C426574;
    if (v6 != 6)
    {
      v21 = 0xEA0000000000656CLL;
    }

    v22 = 0x68746C616548;
    if (v6 == 4)
    {
      v22 = 1280328553;
    }

    v23 = 0xE400000000000000;
    if (v6 != 4)
    {
      v23 = 0xE600000000000000;
    }

    if (v6 <= 5)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    if (v6 <= 5)
    {
      v25 = v23;
    }

    else
    {
      v25 = v21;
    }

    if (v18 != v24)
    {
      goto LABEL_54;
    }

LABEL_53:
    if (v19 != v25)
    {
      goto LABEL_54;
    }

LABEL_66:
    v29 = a1[v10];
    a1[v10] = v29 | v11;
    v5 = v35;
    if ((v29 & v11) != 0)
    {
LABEL_3:
      if (v5 == v34)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  if (!__OFADD__(v31, 1))
  {
    ++v31;
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t specialized static CloudDevicesDB.SnapshotEventAggregation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v14 = a2[3];
  v13 = a2[4];
  v15 = a2[5];
  *&v21 = a2[6];
  *(&v21 + 1) = a1[6];
  if (v4)
  {
    if (!v10 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v10) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v5)
  {
    if (!v11 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v5, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v6)
  {
    if (!v12)
    {
      return 0;
    }

    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SaySiGTt1g5(v6, v12);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v8)
  {
    if (!v14)
    {
      return 0;
    }

    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SaySiGTt1g5(v8, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v7, v13) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (!v9)
  {
    if (!v15)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (!v15 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(v9, v15) & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  result = v21 == 0;
  if (*(&v21 + 1) && v21)
  {

    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(*(&v21 + 1), v21);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CloudDevicesDB.State and conformance CloudDevicesDB.State()
{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.State and conformance CloudDevicesDB.State;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.State and conformance CloudDevicesDB.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.State and conformance CloudDevicesDB.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.State and conformance CloudDevicesDB.State;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.State and conformance CloudDevicesDB.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.State and conformance CloudDevicesDB.State);
  }

  return result;
}

double partial apply for closure #9 in CloudDevicesDB.initialized()()
{

  return specialized BTask.init(name:operation:)(0xD00000000000001CLL, 0x80000002165847C0, &async function pointer to partial apply for closure #1 in closure #9 in CloudDevicesDB.initialized(), v0);
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for CloudDevicesDB(uint64_t a1)
{
  result = type metadata singleton initialization cache for CloudDevicesDB;
  if (!type metadata singleton initialization cache for CloudDevicesDB)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevice.CodingKeys and conformance CloudDevice.CodingKeys);
  }

  return result;
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v37 = a3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v32 = a1;
  v34 = v7;
  while (v11)
  {
LABEL_12:
    v17 = (*(a1 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
    v19 = *v17;
    v18 = v17[1];
    v20 = v35;
    swift_beginAccess();
    v21 = *(*v20 + 16);

    if (v21 && (specialized __RawDictionaryStorage.find<A>(_:)(v19, v18), (v22 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v23 = *(v37 + 8);

      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
      if (v25)
      {
        v26 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
          v23 = v36;
        }

        v28 = *(v23 + 56);
        v33 = type metadata accessor for CloudDevice(0);
        v29 = *(v33 - 8);
        v30 = v28 + *(v29 + 72) * v26;
        v15 = v34;
        outlined init with take of CloudDevice(v30, v34, type metadata accessor for CloudDevice);
        specialized _NativeDictionary._delete(at:)(v26, v23);
        (*(v29 + 56))(v15, 0, 1, v33);
        a1 = v32;
      }

      else
      {
        v14 = type metadata accessor for CloudDevice(0);
        v15 = v34;
        (*(*(v14 - 8) + 56))(v34, 1, 1, v14);
      }

      outlined destroy of UTType?(v15, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      *(v37 + 8) = v23;
    }

    v11 &= v11 - 1;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v74 = a3;
  v84 = a2;
  v72 = type metadata accessor for Date();
  v4 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v65 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x28223BE20](v71);
  v73 = &v65 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd, &_s9MomentsUI11CloudDeviceVSg_ADtMR);
  MEMORY[0x28223BE20](v83);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v89 = &v65 - v16;
  v17 = type metadata accessor for CloudDevice(0);
  v18 = MEMORY[0x28223BE20](v17);
  v76 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = &v65 - v21;
  v23 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 64);
  v27 = (v24 + 63) >> 6;
  v82 = v20;
  v77 = v20 + 48;
  v78 = v20 + 56;
  v70 = (v4 + 48);
  v65 = (v4 + 32);
  v66 = (v4 + 8);
  v86 = a1;

  v28 = 0;
  v87 = v17;
  v79 = v27;
  v80 = a1 + 64;
  v75 = v10;
  v81 = v22;
  while (v26)
  {
LABEL_10:
    v30 = v82;
    outlined init with copy of CloudDevice(*(v86 + 56) + *(v82 + 72) * (__clz(__rbit64(v26)) | (v28 << 6)), v22, type metadata accessor for CloudDevice);
    v31 = v89;
    CloudDevicesDB.primaryDevice.getter(v89);
    v32 = v88;
    outlined init with copy of CloudDevice(v22, v88, type metadata accessor for CloudDevice);
    (*(v30 + 56))(v32, 0, 1, v17);
    v33 = *(v83 + 48);
    outlined init with copy of DateInterval?(v31, v10, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined init with copy of DateInterval?(v32, &v10[v33], &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v34 = *(v30 + 48);
    if (v34(v10, 1, v17) == 1)
    {
      outlined destroy of UTType?(v88, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      outlined destroy of UTType?(v89, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      v35 = v34(&v10[v33], 1, v17);
      v27 = v79;
      v23 = v80;
      if (v35 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    outlined init with copy of DateInterval?(v10, v85, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    if (v34(&v10[v33], 1, v17) == 1)
    {
      outlined destroy of UTType?(v88, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      outlined destroy of UTType?(v89, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
      outlined destroy of CloudDevice(v85, type metadata accessor for CloudDevice);
      v10 = v75;
      v27 = v79;
      v23 = v80;
LABEL_15:
      v36 = v10;
      v37 = &_s9MomentsUI11CloudDeviceVSg_ADtMd;
      v38 = &_s9MomentsUI11CloudDeviceVSg_ADtMR;
      goto LABEL_27;
    }

    v39 = &v75[v33];
    v40 = v76;
    outlined init with take of CloudDevice(v39, v76, type metadata accessor for CloudDevice);
    v41 = v40[1];
    v42 = *v85 == *v40;
    v43 = v73;
    v44 = v85;
    v27 = v79;
    v23 = v80;
    if ((!v42 || v85[1] != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_26;
    }

    v45 = *(v87 + 28);
    v46 = *(v71 + 48);
    outlined init with copy of DateInterval?(v44 + v45, v43, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v69 = v46;
    v47 = v43 + v46;
    v48 = v70;
    outlined init with copy of DateInterval?(v76 + v45, v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v49 = *v48;
    v50 = v43;
    v51 = v43;
    v52 = v72;
    if ((*v48)(v50, 1, v72) == 1)
    {
      v53 = v49(v51 + v69, 1, v52);
      v44 = v85;
      if (v53 != 1)
      {
        goto LABEL_25;
      }

      outlined destroy of UTType?(v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v54 = v67;
      outlined init with copy of DateInterval?(v51, v67, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v49(v51 + v69, 1, v52) == 1)
      {
        (*v66)(v54, v52);
        v44 = v85;
LABEL_25:
        outlined destroy of UTType?(v51, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
LABEL_26:
        outlined destroy of CloudDevice(v76, type metadata accessor for CloudDevice);
        outlined destroy of UTType?(v88, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        outlined destroy of UTType?(v89, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        outlined destroy of CloudDevice(v44, type metadata accessor for CloudDevice);
        v10 = v75;
        v36 = v75;
        v37 = &_s9MomentsUI11CloudDeviceVSgMd;
        v38 = &_s9MomentsUI11CloudDeviceVSgMR;
LABEL_27:
        outlined destroy of UTType?(v36, v37, v38);
        v17 = v87;
        v22 = v81;
        goto LABEL_28;
      }

      (*v65)(v68, v51 + v69, v52);
      lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      LODWORD(v69) = dispatch thunk of static Equatable.== infix(_:_:)();
      v58 = *v66;
      (*v66)(v68, v52);
      v58(v54, v52);
      outlined destroy of UTType?(v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v44 = v85;
      if ((v69 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v59 = *(v87 + 32);
    v60 = (v44 + v59);
    v61 = *(v44 + v59 + 8);
    v62 = (v76 + v59);
    v63 = v62[1];
    v64 = v63 == 0;
    if (v61)
    {
      if (!v63)
      {
        goto LABEL_26;
      }

      if (*v60 == *v62 && v61 == v63)
      {
        outlined destroy of CloudDevice(v76, type metadata accessor for CloudDevice);
        outlined destroy of UTType?(v88, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        outlined destroy of UTType?(v89, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        outlined destroy of CloudDevice(v44, type metadata accessor for CloudDevice);
        v10 = v75;
LABEL_12:
        outlined destroy of UTType?(v10, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
        v17 = v87;
        v22 = v81;
LABEL_30:
        v56 = *&v22[*(v17 + 52)];
        if (v56)
        {
          v57 = v74;
          *v57 = specialized _NativeSet.genericIntersection<A>(_:)(v56, *v74);
        }

        goto LABEL_4;
      }

      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v75;
    outlined destroy of CloudDevice(v76, type metadata accessor for CloudDevice);
    outlined destroy of UTType?(v88, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of UTType?(v89, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    outlined destroy of CloudDevice(v85, type metadata accessor for CloudDevice);
    outlined destroy of UTType?(v10, &_s9MomentsUI11CloudDeviceVSgMd, &_s9MomentsUI11CloudDeviceVSgMR);
    v17 = v87;
    v22 = v81;
    if (v64)
    {
      goto LABEL_30;
    }

LABEL_28:
    v55 = &v22[*(v17 + 40)];
    if ((v55[8] & 1) != 0 || *v55)
    {
      goto LABEL_30;
    }

LABEL_4:
    v26 &= v26 - 1;
    outlined destroy of CloudDevice(v22, type metadata accessor for CloudDevice);
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      return;
    }

    v26 = *(v23 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v4 = type metadata accessor for CloudDevice(0);
  v57 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v52 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMR);
  v8 = MEMORY[0x28223BE20](v60);
  v55 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v52 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = (&v52 - v12);
  v56 = MEMORY[0x277D84F98];
  v63 = MEMORY[0x277D84F98];
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v61 = a1;

  v19 = 0;
  while (1)
  {
    v20 = v19;
    if (!v17)
    {
      break;
    }

LABEL_9:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v19 << 6);
    v23 = v60;
    v24 = (*(v61 + 48) + 16 * v22);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(v57 + 72);
    outlined init with copy of CloudDevice(*(v61 + 56) + v27 * v22, v13 + *(v60 + 48), type metadata accessor for CloudDevice);
    *v13 = v25;
    v13[1] = v26;
    v28 = v62;
    outlined init with take of URL?(v13, v62, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMR);
    v29 = (v28 + *(v23 + 48));
    v30 = *v29 == v58 && v29[1] == v59;
    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v31 = v29;
      v32 = v53;
      outlined init with copy of CloudDevice(v31, v53, type metadata accessor for CloudDevice);
      outlined init with take of URL?(v62, v55, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMR);
      outlined init with take of CloudDevice(v32, v54, type metadata accessor for CloudDevice);
      v33 = v56[2];
      if (v56[3] <= v33)
      {

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33 + 1, 1);
        v34 = v63;
      }

      else
      {

        v34 = v56;
      }

      v36 = *v55;
      v35 = v55[1];
      v37 = v34;
      Hasher.init(_seed:)();
      v52 = v35;
      String.hash(into:)();
      v38 = Hasher._finalize()();
      v39 = v37 + 8;
      v56 = v37;
      v40 = -1 << *(v37 + 32);
      v41 = v38 & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~v37[(v41 >> 6) + 8]) == 0)
      {
        v44 = 0;
        v45 = (63 - v40) >> 6;
        while (++v42 != v45 || (v44 & 1) == 0)
        {
          v46 = v42 == v45;
          if (v42 == v45)
          {
            v42 = 0;
          }

          v44 |= v46;
          v47 = v39[v42];
          if (v47 != -1)
          {
            v43 = __clz(__rbit64(~v47)) + (v42 << 6);
            goto LABEL_28;
          }
        }

        goto LABEL_31;
      }

      v43 = __clz(__rbit64((-1 << v41) & ~v37[(v41 >> 6) + 8])) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
      v48 = *(v60 + 48);
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v49 = v56;
      v50 = (v56[6] + 16 * v43);
      v51 = v52;
      *v50 = v36;
      v50[1] = v51;
      outlined init with take of CloudDevice(v54, v49[7] + v43 * v27, type metadata accessor for CloudDevice);
      ++v49[2];
      outlined destroy of CloudDevice(v55 + v48, type metadata accessor for CloudDevice);
    }

    else
    {

      outlined destroy of UTType?(v62, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMR);
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v19);
    ++v20;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

double specialized CloudDevicesDB.modifyOrCreateCKRecord(_:force:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CloudMetaDevice(0);
  v93 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v93 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v97 = v10;
  v98 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v94 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v95 = &v93 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v93 - v16;
  v18 = type metadata accessor for CloudDevice(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v96 = &v93 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v93 - v25;
  v27 = [a1 recordID];
  v28 = [v27 recordName];

  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v29;

  v31 = CKRecord.recordType.getter();
  v32 = v30;
  if (v31 == 0x656369766544 && v30 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v33 = v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
    v34 = *(v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8);
    v35 = v100;
    if (*(v34 + 16))
    {

      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v35);
      if (v37)
      {
        v93 = v33;
        outlined init with copy of CloudDevice(*(v34 + 56) + *(v19 + 72) * v36, v26, type metadata accessor for CloudDevice);

        v38 = type metadata accessor for URL();
        (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
        v39 = v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager;
        swift_beginAccess();
        v41 = *v39;
        v40 = *(v39 + 8);
        swift_unknownObjectRetain();
        specialized CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(a1, v17, v41, v40);
        swift_unknownObjectRelease();
        outlined destroy of UTType?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v42 = CloudDevice.description()();
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v43 = v97;
        v44 = __swift_project_value_buffer(v97, static CloudDevicesDB.Log);
        swift_beginAccess();
        v45 = v98;
        v46 = v95;
        (*(v98 + 16))(v95, v44, v43);

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v102 = v50;
          *v49 = 136446722;
          swift_beginAccess();
          v51 = StaticString.description.getter();
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v102);

          *(v49 + 4) = v53;
          *(v49 + 12) = 2082;
          *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000002165845B0, &v102);
          *(v49 + 22) = 2080;
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42._countAndFlagsBits, v42._object, &v102);

          *(v49 + 24) = v54;
          _os_log_impl(&dword_21607C000, v47, v48, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v49, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v50, -1, -1);
          v55 = v49;
          v35 = v100;
          MEMORY[0x21CE94770](v55, -1, -1);

          (*(v98 + 8))(v95, v43);
        }

        else
        {

          (*(v45 + 8))(v46, v43);
        }

        v80 = v99;
        v81 = v96;
        outlined init with copy of CloudDevice(v26, v96, type metadata accessor for CloudDevice);
        v82 = v93;
        v83 = *(v93 + 8);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = v83;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, v80, v35, isUniquelyReferenced_nonNull_native);

        outlined destroy of CloudDevice(v26, type metadata accessor for CloudDevice);
        v85 = v102;
LABEL_26:
        *(v82 + 8) = v85;
        goto LABEL_29;
      }
    }

    CloudDevice.init(_:)(a1, v22);
    v93 = v33;
    v57 = CloudDevice.description()();
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v58 = v97;
    v59 = __swift_project_value_buffer(v97, static CloudDevicesDB.Log);
    swift_beginAccess();
    v60 = v98;
    v61 = v94;
    (*(v98 + 16))(v94, v59, v58);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v101[0] = v65;
      *v64 = 136446722;
      swift_beginAccess();
      v66 = StaticString.description.getter();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v101);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2082;
      *(v64 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000002165845B0, v101);
      *(v64 + 22) = 2080;
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57._countAndFlagsBits, v57._object, v101);

      *(v64 + 24) = v69;
      _os_log_impl(&dword_21607C000, v62, v63, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v65, -1, -1);
      v70 = v64;
      v35 = v100;
      MEMORY[0x21CE94770](v70, -1, -1);

      (*(v98 + 8))(v94, v58);
    }

    else
    {

      (*(v60 + 8))(v61, v58);
    }

    v86 = v99;
    v87 = v96;
    outlined init with copy of CloudDevice(v22, v96, type metadata accessor for CloudDevice);
    v82 = v93;
    v88 = *(v93 + 8);

    v89 = swift_isUniquelyReferenced_nonNull_native();
    v101[0] = v88;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v87, v86, v35, v89);

    outlined destroy of CloudDevice(v22, type metadata accessor for CloudDevice);
    v85 = v101[0];
    goto LABEL_26;
  }

  if (v31 == 0xD000000000000014 && 0x8000000216583C40 == v32)
  {

    v56 = v99;
    goto LABEL_19;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v56 = v99;
  if (v71)
  {
LABEL_19:
    v72 = v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
    v73 = *(v72 + 16);
    if (*(v73 + 16))
    {

      v74 = v100;
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v100);
      if (v76)
      {
        outlined init with copy of CloudDevice(*(v73 + 56) + *(v93 + 72) * v75, v9, type metadata accessor for CloudMetaDevice);

        v77 = type metadata accessor for URL();
        (*(*(v77 - 8) + 56))(v17, 1, 1, v77);
        specialized CloudMetaDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(a1);
        outlined destroy of UTType?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined init with copy of CloudDevice(v9, v7, type metadata accessor for CloudMetaDevice);
        v78 = *(v72 + 16);

        v79 = swift_isUniquelyReferenced_nonNull_native();
        v103 = v78;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v56, v74, v79);

        outlined destroy of CloudDevice(v9, type metadata accessor for CloudMetaDevice);
LABEL_32:
        *(v72 + 16) = v103;
        goto LABEL_29;
      }
    }

    CloudMetaDevice.init(_:)(a1, v7);
    v91 = *(v72 + 16);

    v92 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v91;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v56, v100, v92);

    goto LABEL_32;
  }

LABEL_29:

  return result;
}

uint64_t partial apply for closure #1 in CloudDevicesDB.didFetchChanges()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in CloudDevicesDB.didFetchChanges()(a1, v4, v5, v6);
}

double outlined consume of CloudDevicesDB.SnapshotEventAggregation?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t specialized CloudDevicesDB.State.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E756F636361 && a2 == 0xEC00000065746174;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000216584360 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697665446174656DLL && a2 == 0xEB00000000736563)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

id specialized CloudDevicesDB.dumpRecord(_:)(void *a1)
{
  v3 = CKRecord.recordType.getter();
  v4 = v2;
  if (v3 == 0x656369766544 && v2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return specialized static CloudDevice.dumpRecord(_:)(a1);
  }

  else
  {
    if (v3 == 0xD000000000000014 && 0x8000000216583C40 == v4)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        v7 = [a1 debugDescription];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v8;
      }
    }

    return specialized static CloudMetaDevice.dumpRecord(_:)(a1);
  }
}

unint64_t lazy protocol witness table accessor for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation.CodingKeys and conformance CloudDevicesDB.SnapshotEventAggregation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Double] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Double] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Double] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
  }

  return result;
}

uint64_t specialized CloudDevicesDB.SnapshotEventAggregation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000024 && 0x8000000216584380 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000002165843B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000032 && 0x80000002165843E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000216584420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000216584450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000039 && 0x8000000216584470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000003ALL && 0x80000002165844B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000028 && 0x80000002165844F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000026 && 0x8000000216584520 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000216584550 == a2)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t keypath_get_79Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v4 + v5, a3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

void type metadata completion function for CloudDevicesDB(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Bool>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date?(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of CloudDevicesDB.initialized()()
{
  v4 = (*(*v0 + 1096) + **(*v0 + 1096));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudDevicesDB.cancelSync()()
{
  v4 = (*(*v0 + 1104) + **(*v0 + 1104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterImage(imageSource:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudDevicesDB.refresh(force:)(uint64_t a1)
{
  v6 = (*(*v1 + 1112) + **(*v1 + 1112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v6(a1);
}

uint64_t dispatch thunk of CloudDevicesDB.willFetchChanges()()
{
  v4 = (*(*v0 + 1136) + **(*v0 + 1136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudDevicesDB.willCheckpointChanges()()
{
  v4 = (*(*v0 + 1144) + **(*v0 + 1144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudDevicesDB.didFetchChanges()()
{
  v4 = (*(*v0 + 1152) + **(*v0 + 1152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterImage(imageSource:outputURL:);

  return v4();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CloudDevicesDB.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CloudDevicesDB.State(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CloudDevicesDB.SnapshotEventAggregation(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for CloudDevicesDB.SnapshotEventAggregation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

uint64_t partial apply for closure #2 in closure #1 in CloudDevicesDB.refresh(force:)(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return closure #2 in closure #1 in CloudDevicesDB.refresh(force:)(a1, a2 & 1, v6, v7);
}

uint64_t partial apply for closure #3 in closure #1 in CloudDevicesDB.refresh(force:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #3 in closure #1 in CloudDevicesDB.refresh(force:)(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t partial apply for closure #1 in closure #8 in CloudDevicesDB.initialized()(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #8 in CloudDevicesDB.initialized()(a1, v7, v8, v1 + v6, v9);
}

uint64_t outlined destroy of CloudDevice(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in closure #7 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in closure #3 in CloudDevicesDB.initialized()(a1, a2, v8, v9, v2 + v7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #6 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in closure #3 in CloudDevicesDB.initialized()(a1, a2, v8, v9, v2 + v7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #5 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in closure #3 in CloudDevicesDB.initialized()(a1, a2, v8, v9, v2 + v7);
}

unint64_t lazy protocol witness table accessor for type CloudManager.FreeSpace? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CloudManager.FreeSpace? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CloudManager.FreeSpace? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MomentsUI12CloudManagerC9FreeSpaceOSgMd, &_s9MomentsUI12CloudManagerC9FreeSpaceOSgMR);
    lazy protocol witness table accessor for type CloudManager.FreeSpace and conformance CloudManager.FreeSpace();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudManager.FreeSpace? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CloudManager.FreeSpace and conformance CloudManager.FreeSpace()
{
  result = lazy protocol witness table cache variable for type CloudManager.FreeSpace and conformance CloudManager.FreeSpace;
  if (!lazy protocol witness table cache variable for type CloudManager.FreeSpace and conformance CloudManager.FreeSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudManager.FreeSpace and conformance CloudManager.FreeSpace);
  }

  return result;
}

double partial apply for closure #1 in closure #4 in CloudDevicesDB.initialized()(unsigned __int8 *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in closure #4 in CloudDevicesDB.initialized()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #4 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in closure #3 in CloudDevicesDB.initialized()(a1, a2, v8, v9, v2 + v7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #3 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in closure #3 in CloudDevicesDB.initialized()(a1, a2, v8, v9, v2 + v7);
}

uint64_t partial apply for closure #1 in closure #7 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in closure #2 in CloudDevicesDB.initialized()(a1, a2, v8, v9, v2 + v7);
}

uint64_t objectdestroy_210Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #3 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized()(a1, a2, v8, v9, v10, v2 + v7);
}

uint64_t partial apply for closure #1 in closure #9 in CloudDevicesDB.initialized()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #9 in CloudDevicesDB.initialized()();
}

BOOL CGRect.isReasonable.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v9 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v10)
  {
    if (Width <= 0.5)
    {
      return 0;
    }
  }

  else if (Width <= v9)
  {
    return 0;
  }

  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  Height = CGRectGetHeight(v15);
  v12 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v13)
  {
    return Height > 0.25;
  }

  return Height > v12;
}

BOOL _sSLsE2geoiySbx_xtFZ9MomentsUI15CloudMetaDeviceV_Tt1g5(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = *a1;
  v8 = a1[1];
  v13[2] = v7;
  v13[3] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  lazy protocol witness table accessor for type String and conformance String();

  v11 = StringProtocol.compare<A>(_:options:range:locale:)();
  outlined destroy of UTType?(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  return v11 != -1;
}

BOOL _sSLsE1goiySbx_xtFZ9MomentsUI15CloudMetaDeviceV_Tt1g5(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = a2[1];
  v13[2] = *a2;
  v13[3] = v7;
  v8 = *a1;
  v9 = a1[1];
  v13[0] = v8;
  v13[1] = v9;
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  lazy protocol witness table accessor for type String and conformance String();

  v11 = StringProtocol.compare<A>(_:options:range:locale:)();
  outlined destroy of UTType?(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  return v11 == -1;
}

id CloudMetaDevice.lastKnownCKRecord.getter()
{
  v1 = type metadata accessor for Logger();
  MEMORY[0x28223BE20](v1);
  v2 = type metadata accessor for CloudMetaDevice(0);
  result = 0;
  v4 = (v0 + *(v2 + 48));
  v5 = v4[1];
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    outlined copy of Data?(v6, v5);
    v8 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
    [v8 setRequiresSecureCoding_];
    v9 = [objc_allocWithZone(MEMORY[0x277CBC5A0]) initWithCoder_];

    outlined consume of Data?(v6, v5);
    return v9;
  }

  return result;
}

uint64_t type metadata accessor for CloudMetaDevice(uint64_t a1)
{
  result = type metadata singleton initialization cache for CloudMetaDevice;
  if (!type metadata singleton initialization cache for CloudMetaDevice)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void CloudMetaDevice.init(_:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = &v57 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v17 = type metadata accessor for CloudMetaDevice(0);
  v59 = v17[5];
  v60 = v5;
  v18 = *(v5 + 56);
  v18(&a2[v59], 1, 1, v4);
  v61 = v17[6];
  v18(&a2[v61], 1, 1, v4);
  v64 = v17;
  *&a2[v17[12]] = xmmword_21658E040;
  v19 = [a1 recordID];
  v20 = [v19 recordName];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *a2 = v21;
  *(a2 + 1) = v23;
  v65 = a2;
  v24 = a1;
  v25 = [a1 creationDate];
  if (v25)
  {
    v26 = v58;
    v27 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = v60;
    v29 = *(v60 + 32);
    v29(v14, v26, v4);
    v18(v14, 0, 1, v4);
    v29(v16, v14, v4);
    v30 = v28;
  }

  else
  {
    v18(v14, 1, 1, v4);
    static Date.distantPast.getter();
    v30 = v60;
    if ((*(v60 + 48))(v14, 1, v4) != 1)
    {
      outlined destroy of UTType?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v18(v16, 0, 1, v4);
  outlined assign with take of Date?(v16, v65 + v59);
  v31 = MEMORY[0x21CE92CC0](0x6465696669646F6DLL, 0xEA00000000007441);
  v32 = v63;
  if (v31)
  {
    v66 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v33 = v62;
    v34 = swift_dynamicCast();
    v18(v33, v34 ^ 1u, 1, v4);
    if ((*(v30 + 48))(v33, 1, v4) != 1)
    {
      (*(v30 + 32))(v32, v33, v4);
      goto LABEL_11;
    }
  }

  else
  {
    v33 = v62;
    v18(v62, 1, 1, v4);
  }

  static Date.distantPast.getter();
  if ((*(v30 + 48))(v33, 1, v4) != 1)
  {
    outlined destroy of UTType?(v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_11:
  v18(v32, 0, 1, v4);
  outlined assign with take of Date?(v32, v65 + v61);
  v35 = MEMORY[0x21CE92CC0](0x534F656369766544, 0xED0000646C697542);
  if (v35)
  {
    v68 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v36 = swift_dynamicCast();
    v37 = v64;
    if (v36)
    {
      v38 = v66;
      v39 = v67;
    }

    else
    {
      v38 = 0;
      v39 = 0xE000000000000000;
    }
  }

  else
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    v37 = v64;
  }

  v40 = (v65 + v37[7]);
  *v40 = v38;
  v40[1] = v39;
  v41 = MEMORY[0x21CE92CC0](0xD000000000000015, 0x80000002165847E0);
  if (v41 && (v68 = v41, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v42 = v66;
    v43 = v67;
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
  }

  v44 = (v65 + v37[8]);
  *v44 = v42;
  v44[1] = v43;
  v45 = MEMORY[0x21CE92CC0](0x534F656369766544, 0xEC00000065707954);
  if (v45 && (v68 = v45, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v46 = v66;
    v47 = v67;
  }

  else
  {
    v46 = 0;
    v47 = 0xE000000000000000;
  }

  v48 = (v65 + v37[9]);
  *v48 = v46;
  v48[1] = v47;
  v49 = MEMORY[0x21CE92CC0](0xD000000000000015, 0x8000000216584800);
  if (v49 && (v68 = v49, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v50 = v66;
    v51 = v67;
  }

  else
  {
    v50 = 0;
    v51 = 0xE000000000000000;
  }

  v52 = (v65 + v37[10]);
  *v52 = v50;
  v52[1] = v51;
  v53 = MEMORY[0x21CE92CC0](0xD000000000000016, 0x8000000216584820);
  if (v53 && (v68 = v53, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v54 = v66;
    v55 = v67;
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
  }

  v56 = (v65 + v37[11]);
  *v56 = v54;
  v56[1] = v55;
  CloudMetaDevice.lastKnownCKRecord.setter(v24);
}

void CloudMetaDevice.lastKnownCKRecord.setter(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v40 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  if (!a1)
  {
    v24 = v1 + *(type metadata accessor for CloudMetaDevice(0) + 48);
    outlined consume of Data?(*v24, *(v24 + 8));
    *v24 = xmmword_21658E040;
    return;
  }

  v16 = v1 + *(type metadata accessor for CloudMetaDevice(0) + 48);
  v17 = *(v16 + 8);
  if (v17 >> 60 == 15)
  {
    v18 = a1;
    goto LABEL_4;
  }

  v46 = v10;
  v47 = v3;
  v48 = v4;
  v25 = *v16;
  v26 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v27 = a1;
  outlined copy of Data?(v25, v17);
  v28 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
  v45 = v25;
  [v28 setRequiresSecureCoding_];
  v29 = [objc_allocWithZone(MEMORY[0x277CBC5A0]) initWithCoder_];
  v30 = v48;
  if (!v29)
  {
    outlined consume of Data?(v45, v17);
LABEL_14:

    goto LABEL_4;
  }

  v31 = v29;
  v32 = [v29 modificationDate];
  if (!v32)
  {
    outlined consume of Data?(v45, v17);

    goto LABEL_14;
  }

  v43 = v31;
  v44 = v28;
  v33 = v32;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v47;
  v42 = *(v30 + 32);
  v42(v15, v13, v47);
  v35 = [v27 modificationDate];
  if (!v35)
  {
    (*(v30 + 8))(v15, v34);
    outlined consume of Data?(v45, v17);

    goto LABEL_4;
  }

  v41 = v27;
  v36 = v35;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v46;
  v42(v46, v7, v34);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  LOBYTE(v36) = dispatch thunk of static Comparable.< infix(_:_:)();

  outlined consume of Data?(v45, v17);
  v38 = *(v30 + 8);
  v38(v37, v34);
  v38(v15, v34);
  if (v36)
  {
LABEL_4:
    v19 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [a1 encodeSystemFieldsWithCoder_];
    v20 = [v19 encodedData];
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    outlined consume of Data?(*v16, *(v16 + 8));
    *v16 = v21;
    *(v16 + 8) = v23;
    return;
  }

  v39 = v41;
}

uint64_t static CloudMetaDevice.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static CloudMetaDevice.Class = a1;
  unk_27CA927B8 = a2;
  byte_27CA927C0 = a3;
  return result;
}

uint64_t CloudMetaDevice.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static CloudMetaDevice.Log);
}

uint64_t static CloudMetaDevice.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudMetaDevice.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudMetaDevice.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudMetaDevice.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloudMetaDevice.Log.modify(uint64_t a1))()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CloudMetaDevice.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance CloudMetaDevice@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudMetaDevice.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t CloudMetaDevice.id.getter()
{
  v1 = *v0;

  return v1;
}

void CloudMetaDevice.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CloudMetaDevice.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CloudMetaDevice(0) + 20);

  return outlined init with copy of Date?(v3, a1);
}

uint64_t CloudMetaDevice.created.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudMetaDevice(0) + 20);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudMetaDevice.modified.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CloudMetaDevice(0) + 24);

  return outlined init with copy of Date?(v3, a1);
}

uint64_t CloudMetaDevice.modified.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudMetaDevice(0) + 24);

  return outlined assign with take of Date?(a1, v3);
}

uint64_t CloudMetaDevice.osBuild.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudMetaDevice(0) + 28));

  return v1;
}

void CloudMetaDevice.osBuild.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CloudMetaDevice(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t CloudMetaDevice.osVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudMetaDevice(0) + 32));

  return v1;
}

void CloudMetaDevice.osVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CloudMetaDevice(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t CloudMetaDevice.osType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudMetaDevice(0) + 36));

  return v1;
}

void CloudMetaDevice.osType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CloudMetaDevice(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t CloudMetaDevice.appVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudMetaDevice(0) + 40));

  return v1;
}

void CloudMetaDevice.appVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CloudMetaDevice(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t CloudMetaDevice.appBundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudMetaDevice(0) + 44));

  return v1;
}

void CloudMetaDevice.appBundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CloudMetaDevice(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t CloudMetaDevice.lastKnownCKRecordData.getter()
{
  v1 = v0 + *(type metadata accessor for CloudMetaDevice(0) + 48);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t CloudMetaDevice.lastKnownCKRecordData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudMetaDevice(0) + 48);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t CloudMetaDevice.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x6465696669646F6DLL;
    if (a1 != 2)
    {
      v6 = 0x646C697542736FLL;
    }

    if (a1)
    {
      v5 = 0x64657461657263;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6973726556707061;
    v2 = 0x6C646E7542707061;
    if (a1 != 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6F6973726556736FLL;
    if (a1 != 4)
    {
      v3 = 0x65707954736FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CloudMetaDevice.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CloudMetaDevice.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CloudMetaDevice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CloudMetaDevice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudMetaDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI15CloudMetaDeviceV10CodingKeys031_EE9AA43DA17A880D2AA5102F29A6C3S0LLOGMd, &_ss22KeyedEncodingContainerVy9MomentsUI15CloudMetaDeviceV10CodingKeys031_EE9AA43DA17A880D2AA5102F29A6C3S0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CloudMetaDevice(0);
    LOBYTE(v13) = 1;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = (v3 + *(v9 + 48));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 8;
    outlined copy of Data?(v13, v11);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CloudMetaDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v42 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI15CloudMetaDeviceV10CodingKeys031_EE9AA43DA17A880D2AA5102F29A6C3S0LLOGMd, &_ss22KeyedDecodingContainerVy9MomentsUI15CloudMetaDeviceV10CodingKeys031_EE9AA43DA17A880D2AA5102F29A6C3S0LLOGMR);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v8 = &v42 - v7;
  v9 = type metadata accessor for CloudMetaDevice(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 20);
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v53 = v13;
  v15(v12 + v13, 1, 1, v14);
  v52 = *(v9 + 24);
  v15(v12 + v52, 1, 1, v14);
  v51 = v12 + *(v9 + 48);
  *v51 = xmmword_21658E040;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type CloudMetaDevice.CodingKeys and conformance CloudMetaDevice.CodingKeys();
  v17 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
    outlined destroy of UTType?(v12 + v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v12 + v52, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

    return outlined consume of Data?(*v51, *(v51 + 1));
  }

  else
  {
    v50 = v9;
    v18 = v46;
    v19 = v47;
    v20 = v45;
    LOBYTE(v54) = 0;
    *v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[1] = v21;
    LOBYTE(v54) = 1;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v43 = v8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of Date?(v18, v12 + v53);
    LOBYTE(v54) = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of Date?(v19, v12 + v52);
    LOBYTE(v54) = 3;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = v50;
    v24 = (v12 + v50[7]);
    *v24 = v22;
    v24[1] = v25;
    v47 = v25;
    LOBYTE(v54) = 4;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v27 = (v12 + v23[8]);
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v54) = 5;
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = (v12 + v23[9]);
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v54) = 6;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = (v12 + v23[10]);
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v54) = 7;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = (v12 + v23[11]);
    *v36 = v35;
    v36[1] = v37;
    v56 = 8;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v20 + 8))(v43, v48);
    v38 = v54;
    v39 = v55;
    v40 = v51;
    outlined consume of Data?(*v51, *(v51 + 1));
    *v40 = v38;
    v40[1] = v39;
    outlined init with copy of CloudMetaDevice(v12, v44);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return outlined destroy of CloudMetaDevice(v12);
  }
}

uint64_t CloudMetaDevice.init(id:created:modified:osBuild:osVersion:osType:appVersion:appBundleId:lastKnownCKRecordData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *a9 = a1;
  a9[1] = a2;
  v22 = type metadata accessor for CloudMetaDevice(0);
  outlined init with take of Date?(a3, a9 + v22[5]);
  result = outlined init with take of Date?(a4, a9 + v22[6]);
  v24 = (a9 + v22[7]);
  *v24 = a5;
  v24[1] = a6;
  v25 = (a9 + v22[8]);
  *v25 = a7;
  v25[1] = a8;
  v26 = (a9 + v22[9]);
  *v26 = a10;
  v26[1] = a11;
  v27 = (a9 + v22[10]);
  *v27 = a12;
  v27[1] = a13;
  v28 = (a9 + v22[11]);
  *v28 = a14;
  v28[1] = a15;
  v29 = (a9 + v22[12]);
  *v29 = a16;
  v29[1] = a17;
  return result;
}

void CloudMetaDevice.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  String.hash(into:)();
  v13 = type metadata accessor for CloudMetaDevice(0);
  outlined init with copy of Date?(v2 + v13[5], v12);
  v14 = *(v4 + 48);
  if (v14(v12, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  outlined init with copy of Date?(v2 + v13[6], v10);
  if (v14(v10, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v2 + v13[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v13[8] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v13[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v13[10] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v13[11] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int CloudMetaDevice.hashValue.getter()
{
  Hasher.init(_seed:)();
  CloudMetaDevice.hash(into:)(v1);
  return Hasher._finalize()();
}

double protocol witness for static CloudRecord.productionSchema.getter in conformance CloudMetaDevice()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static CloudMetaDevice.productionSchema.getter()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t protocol witness for CloudRecord.id.getter in conformance CloudMetaDevice()
{
  v1 = *v0;

  return v1;
}

void (*protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudMetaDevice(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = CloudMetaDevice.lastKnownCKRecord.getter();
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudMetaDevice;
}

void protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudMetaDevice(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CloudMetaDevice.lastKnownCKRecord.setter(v2);
  }

  else
  {
    CloudMetaDevice.lastKnownCKRecord.setter(*a1);
  }
}

void (*CloudMetaDevice.lastKnownCKRecord.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = CloudMetaDevice.lastKnownCKRecord.getter();
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudMetaDevice;
}

double protocol witness for Identifiable.id.getter in conformance CloudMetaDevice@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CloudMetaDevice()
{
  Hasher.init(_seed:)();
  CloudMetaDevice.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CloudMetaDevice(uint64_t a1)
{
  Hasher.init(_seed:)();
  CloudMetaDevice.hash(into:)(v2);
  return Hasher._finalize()();
}

double static CloudMetaDevice.productionSchema.setter(uint64_t a1)
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudMetaDevice.productionSchema = a1;

  return result;
}

uint64_t (*static CloudMetaDevice.productionSchema.modify(uint64_t a1))()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

uint64_t specialized static CloudMetaDevice.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v65[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v65[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v65[-v17];
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v69 = v7;
  v70 = type metadata accessor for CloudMetaDevice(0);
  v71 = a1;
  v19 = *(v70 + 20);
  v20 = *(v13 + 48);
  outlined init with copy of Date?(a1 + v19, v18);
  outlined init with copy of Date?(a2 + v19, &v18[v20]);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v67 = v5;
      v68 = a2;
      outlined destroy of UTType?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_10;
    }

LABEL_8:
    v22 = v18;
LABEL_16:
    outlined destroy of UTType?(v22, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_17;
  }

  outlined init with copy of Date?(v18, v12);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_8;
  }

  v68 = a2;
  v23 = *(v5 + 32);
  v24 = v5;
  v25 = v69;
  v23(v69, &v18[v20], v4);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  v67 = v24;
  v26 = *(v24 + 8);
  v26(v25, v4);
  v26(v12, v4);
  outlined destroy of UTType?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v66 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v27 = v70;
  v28 = *(v70 + 24);
  v29 = *(v13 + 48);
  outlined init with copy of Date?(v71 + v28, v16);
  v30 = v68 + v28;
  v31 = v68;
  outlined init with copy of Date?(v30, &v16[v29]);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v29], 1, v4) == 1)
    {
      outlined destroy of UTType?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v32 = v72;
  outlined init with copy of Date?(v16, v72);
  if (v21(&v16[v29], 1, v4) == 1)
  {
    (*(v67 + 8))(v32, v4);
LABEL_15:
    v22 = v16;
    goto LABEL_16;
  }

  v35 = v67;
  v36 = v69;
  (*(v67 + 32))(v69, &v16[v29], v4);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v35 + 8);
  v38(v36, v4);
  v38(v32, v4);
  outlined destroy of UTType?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v37 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_20:
  v39 = v27[7];
  v40 = v71;
  v41 = (v71 + v39);
  v42 = *(v71 + v39 + 8);
  v43 = (v31 + v39);
  v44 = v43[1];
  if (v42)
  {
    if (!v44 || (*v41 != *v43 || v42 != v44) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v44)
  {
    goto LABEL_17;
  }

  v45 = v27[8];
  v46 = (v40 + v45);
  v47 = *(v40 + v45 + 8);
  v48 = (v31 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49 || (*v46 != *v48 || v47 != v49) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v49)
  {
    goto LABEL_17;
  }

  v50 = v27[9];
  v51 = (v40 + v50);
  v52 = *(v40 + v50 + 8);
  v53 = (v31 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54 || (*v51 != *v53 || v52 != v54) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v54)
  {
    goto LABEL_17;
  }

  v55 = v27[10];
  v56 = (v40 + v55);
  v57 = *(v40 + v55 + 8);
  v58 = (v31 + v55);
  v59 = v58[1];
  if (!v57)
  {
    if (!v59)
    {
      goto LABEL_48;
    }

LABEL_17:
    v33 = 0;
    return v33 & 1;
  }

  if (!v59 || (*v56 != *v58 || v57 != v59) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_48:
  v60 = v27[11];
  v61 = (v40 + v60);
  v62 = *(v40 + v60 + 8);
  v63 = (v31 + v60);
  v64 = v63[1];
  v33 = (v62 | v64) == 0;
  if (v62 && v64)
  {
    if (*v61 == *v63 && v62 == v64)
    {
      v33 = 1;
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v33 & 1;
}

BOOL specialized static CloudMetaDevice.< infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = *a1;
  v8 = a1[1];
  v13[2] = v7;
  v13[3] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  lazy protocol witness table accessor for type String and conformance String();

  v11 = StringProtocol.compare<A>(_:options:range:locale:)();
  outlined destroy of UTType?(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  return v11 == -1;
}

uint64_t specialized CloudMetaDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v67 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v67 - v15;
  v16 = MEMORY[0x21CE92CC0](0x614E64726F636572, 0xEA0000000000656DLL);
  if (!v16)
  {
    goto LABEL_31;
  }

  v82 = v1;
  v84 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v81 = v11;
  v17 = v86;
  v78 = v85;
  v18 = [a1 creationDate];
  if (v18)
  {
    v19 = v18;
    v79 = v17;
    v20 = a1;
    v21 = v10;
    v22 = v83;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = v20;
    v23 = MEMORY[0x21CE92CC0](0x6465696669646F6DLL, 0xEA00000000007441);
    if (!v23)
    {
      v29 = v81;
      (*(v81 + 8))(v22, v21);

      (*(v29 + 56))(v9, 1, 1, v21);
      goto LABEL_9;
    }

    v85 = v23;
    v24 = v21;
    v25 = swift_dynamicCast();
    v26 = v81;
    v27 = v81 + 56;
    v28 = *(v81 + 56);
    v28(v9, v25 ^ 1u, 1, v24);
    if ((*(v26 + 48))(v9, 1, v24) == 1)
    {
      (*(v26 + 8))(v83, v24);

LABEL_9:
      a1 = v80;
      outlined destroy of UTType?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_31;
    }

    v76 = v28;
    v77 = v27;
    (*(v26 + 32))(v14, v9, v24);
    a1 = v80;
    v30 = MEMORY[0x21CE92CC0](0x534F656369766544, 0xED0000646C697542);
    if (v30)
    {
      v84 = v30;
      if (swift_dynamicCast())
      {
        v31 = v85;
        v32 = v86;
        v33 = MEMORY[0x21CE92CC0](0xD000000000000015, 0x80000002165847E0);
        if (v33)
        {
          v75 = v32;
          v84 = v33;
          if (swift_dynamicCast())
          {
            v72 = v85;
            v73 = v31;
            v74 = v86;
            v34 = MEMORY[0x21CE92CC0](0x534F656369766544, 0xEC00000065707954);
            if (v34)
            {
              v84 = v34;
              v35 = swift_dynamicCast();
              v36 = v75;
              if (v35)
              {
                v37 = v86;
                v70 = v85;
                v38 = MEMORY[0x21CE92CC0](0xD000000000000015, 0x8000000216584800);
                if (v38)
                {
                  v71 = v37;
                  v84 = v38;
                  if (swift_dynamicCast())
                  {
                    v39 = v86;
                    v69 = v85;
                    v40 = MEMORY[0x21CE92CC0](0xD000000000000016, 0x8000000216584820);
                    if (v40)
                    {
                      v84 = v40;
                      if (swift_dynamicCast())
                      {
                        v67 = v86;
                        v68 = v85;
                        v41 = v82;

                        v42 = v79;
                        *v41 = v78;
                        *(v41 + 1) = v42;
                        v43 = type metadata accessor for CloudMetaDevice(0);
                        v44 = v43[5];
                        outlined destroy of UTType?(&v41[v44], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                        v78 = *(v81 + 16);
                        v78(&v41[v44], v83, v24);
                        v79 = v39;
                        v45 = v76;
                        v76(&v41[v44], 0, 1, v24);
                        v46 = v43[6];
                        outlined destroy of UTType?(&v41[v46], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                        v78(&v41[v46], v14, v24);
                        v45(&v41[v46], 0, 1, v24);
                        v47 = &v41[v43[7]];

                        *v47 = v73;
                        *(v47 + 1) = v36;
                        v48 = &v41[v43[8]];

                        v49 = v74;
                        *v48 = v72;
                        *(v48 + 1) = v49;
                        v50 = &v41[v43[9]];

                        v51 = v71;
                        *v50 = v70;
                        *(v50 + 1) = v51;
                        v52 = &v41[v43[10]];

                        v53 = v79;
                        *v52 = v69;
                        *(v52 + 1) = v53;
                        v54 = &v41[v43[11]];

                        v55 = v67;
                        *v54 = v68;
                        *(v54 + 1) = v55;
                        v56 = a1;
                        CloudMetaDevice.lastKnownCKRecord.setter(a1);
                        v57 = *(v81 + 8);
                        v57(v14, v24);
                        return (v57)(v83, v24);
                      }
                    }
                  }
                }
              }
            }

            else
            {
            }
          }
        }
      }

      v26 = v81;
    }

    else
    {
    }

    v59 = *(v26 + 8);
    v59(v14, v24);
    v59(v83, v24);
  }

  else
  {
  }

LABEL_31:
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v60 = __swift_project_value_buffer(v3, static CloudMetaDevice.Log);
  swift_beginAccess();
  (*(v4 + 16))(v6, v60, v3);
  v61 = a1;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v61;
    *v65 = v61;
    v66 = v61;
    _os_log_impl(&dword_21607C000, v62, v63, "Invalid CKRecord %@", v64, 0xCu);
    outlined destroy of UTType?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x21CE94770](v65, -1, -1);
    MEMORY[0x21CE94770](v64, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}