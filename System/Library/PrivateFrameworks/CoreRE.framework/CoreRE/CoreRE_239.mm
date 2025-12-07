uint64_t re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, unint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 61);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v20 = *a5;
    *(&v20 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v15, &v20);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 336) == 1)
    {
      --*(a1 + 61);
      ++*(a1 + 124);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (*this == *(a1 + 272))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
        result = _os_crash("assertion failure: (!Unreachable code) Invalid PointerSharing type.");
        __break(1u);
        return result;
      }

      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
      _os_crash("assertion failure: (!Unreachable code) External references are not supported by the SerializerV1.");
      __break(1u);
      goto LABEL_9;
    }
  }

  return v7;
}

void re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    return 0;
  }
}

unsigned int *(*re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, uint64_t a7)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

unsigned int *re::serializeType<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, uint64_t a7)
{
  v9 = this;
  v245 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_18;
  }

  if (*this == *a6)
  {
    v14 = **(this + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_18;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_18;
  }

  if (*(v9 + 12) != *(a6 + 12))
  {
    goto LABEL_366;
  }

  v18 = re::DataArray<re::TextureAtlasTile>::tryGet(*v9 + 96, **(v9 + 16));
  if (v18)
  {
    v19 = *(v18 + 16);
  }

  else
  {
    v19 = -1;
  }

  v20 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
  if (v20)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = -1;
  }

  if (v19 != v21)
  {
    v32 = re::TypeInfo::name(v9);
    v33 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v32, v33))
    {
      v51 = re::TypeInfo::name(a6)[1];
      v52 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      if (v52)
      {
        v53 = *(v52 + 16);
      }

      else
      {
        v53 = 0xFFFFFFFFLL;
      }

      v66 = re::TypeInfo::name(v9)[1];
      v67 = re::DataArray<re::TextureAtlasTile>::tryGet(*v9 + 96, **(v9 + 16));
      if (v67)
      {
        v68 = *(v67 + 16);
      }

      else
      {
        v68 = 0xFFFFFFFFLL;
      }

      v221 = v66;
      v222 = v68;
      v219 = v51;
      v220 = v53;
      v23 = "Type name changed: Serialized type %s version %u, runtime type %s version %u.";
      goto LABEL_234;
    }

    v34 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v34)
    {
      v35 = *(v34 + 16);
    }

    else
    {
      v35 = -1;
    }

    re::TypeInfo::atVersion(&v225, v9, v35);
    if ((v225 & 1) == 0)
    {
      v63 = re::TypeInfo::name(a6)[1];
      v64 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      if (v64)
      {
        v65 = *(v64 + 16);
      }

      else
      {
        v65 = 0xFFFFFFFFLL;
      }

      v219 = v63;
      v220 = v65;
      v23 = "Unknown serialized type %s version %u. No matching runtime type found.";
      goto LABEL_234;
    }

    if (a7)
    {
      Instance = 0;
    }

    else
    {
      Instance = re::TypeInfo::createInstance(&v226, *(a1 + 48), *(a1 + 264));
    }

    if (*(a1 + 64) & 1) != 0 || ((*(*a1 + 72))(a1, a2, a3, Instance, &v226, a6, a7), (*(a1 + 64)))
    {
      if (!Instance)
      {
        goto LABEL_367;
      }

      v131 = *(a1 + 48);
      v132 = *(a1 + 264);
      v133 = &v226;
      v134 = Instance;
      goto LABEL_221;
    }

    if (a7 & 1) != 0 || (re::TypeInfo::TypeInfo(&Tag, &v226), re::internal::upgradeObject(Instance, &Tag, a4, v9, *(a1 + 48), *(a1 + 264), buf), (buf[0]))
    {
      LOBYTE(v9) = 1;
      return (v9 & 1);
    }

    if (v240)
    {
      v199 = v241;
    }

    else
    {
      v199 = &v240 + 1;
    }

    if ((buf[0] & 1) != 0 || !v239 || (v240 & 1) == 0)
    {
      goto LABEL_367;
    }

    v169 = *(*v239 + 40);
LABEL_349:
    v169();
    goto LABEL_367;
  }

LABEL_18:
  v22 = *(v9 + 12);
  if (v22 > 4)
  {
    if (*(v9 + 12) > 6u)
    {
      if (v22 == 7)
      {
        if (v9 != a6)
        {
          if (*v9 == *a6)
          {
            v114 = **(v9 + 16);
            v115 = **(a6 + 2);
            if (v114 != v115)
            {
              goto LABEL_366;
            }

            v17 = WORD1(v114) == WORD1(v115);
            v116 = (v115 ^ v114) & 0xFFFFFF00000000;
            if (!v17 || v116 != 0)
            {
              goto LABEL_366;
            }
          }

          else if (!re::areSameTranslatedVersion(v9, a6, a3))
          {
            goto LABEL_366;
          }
        }

        v40 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 16);
        if (a7)
        {
          if (v40)
          {
            v225 = 0;
            if (v225 < *(*(a6 + 2) + 96))
            {
              re::TypeInfo::unionMember(buf, a6, v225);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, "value", 0, 0, buf, buf, 1);
              }
            }

            goto LABEL_451;
          }
        }

        else if (v40)
        {
          re::TypeInfo::TypeInfo(buf, v9);
          Tag = re::UnionAccessor::readTag(buf, a4);
          v61 = Tag;
          re::UnionAccessor::reset(buf, a4, Tag, *(a1 + 48));
          if (v61 < *(*(v9 + 16) + 96))
          {
            re::TypeInfo::unionMember(&v225, v9, v61);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, "value", 0, a4, &v225, &v225, 0);
            }
          }

          goto LABEL_451;
        }

        goto LABEL_367;
      }

      if (v22 != 8)
      {
        if (v22 == 9)
        {
          v219 = re::TypeInfo::name(v9)[1];
          v23 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_234:
          v135 = a1;
          v136 = a2;
LABEL_265:
          goto LABEL_367;
        }

LABEL_89:
        v219 = *(v9 + 12);
        v23 = "Invalid type category. Value = %d";
        goto LABEL_234;
      }

      if (!a7)
      {
        goto LABEL_83;
      }

      if (*(*(v9 + 16) + 49))
      {
        v72 = *(a1 + 272);
        Tag = 0x2686EB529B3EE220;
        v236 = "DynamicString";
        re::TypeRegistry::typeInfo(buf, v72, &Tag);
        v73 = re::TypeInfo::TypeInfo(&v225, &buf[8]);
        if (Tag)
        {
          if (Tag)
          {
          }
        }

        v74 = &v225;
        v75 = &v225;
        v76 = a1;
        v77 = a2;
      }

      else
      {
        v42 = re::TypeInfo::name(v9);
        if ((*v42 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220 || (v44 = v42[1], v44 != "DynamicString") && strcmp(v44, "DynamicString"))
        {
LABEL_83:
          v45 = *(v9 + 16);
          v46 = *(v45 + 48);
          if ((v46 & 0x10) == 0 && *(v9 + 12) == 8)
          {
            v47 = *(v45 + 168);
            if (v47)
            {
              v48 = *v9;
              v49 = *a6;
              *buf = &unk_1F5D19000;
              *&buf[8] = a1;
              *&buf[16] = v48;
              v239 = v49;
              v240 = 0;
              v241 = 0;
              v242 = 1;
              v243 = 0;
              v244 = 0;
              v225 = a2;
              LODWORD(v226) = a3;
              v227 = 0;
              v228 = 0;
              v229 = 0;
              v47(buf, a4, v50);
              LOBYTE(v9) = *(a1 + 64) ^ 1;
              *buf = &unk_1F5D19000;
              if (v240)
              {
                if ((v242 & 1) == 0)
                {
                  (*(*v240 + 40))();
                }
              }

              return (v9 & 1);
            }
          }

          if ((v46 & 4) == 0)
          {
            if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
            {
              v54 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
              if (v54 && *(v54 + 22) == 3 && *v54 && (v55 = *(v54 + 8), (*(v55 + 46) & 0x40) != 0) && ((*(v55 + 22) & 0x1000) != 0 ? (v56 = *(v54 + 8)) : (v56 = *(v55 + 8)), !strcmp(v56, "@version")))
              {
                v57 = *(v55 + 24);
              }

              else
              {
                v57 = 1;
              }

              v58 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
              if (v58)
              {
                v60 = *(v58 + 16);
              }

              else
              {
                v60 = -1;
              }

              if (v57 == v60)
              {
                if (v9 != a6)
                {
                  if (*v9 == *a6)
                  {
                    v205 = **(v9 + 16);
                    v206 = **(a6 + 2);
                    if (v205 == v206 && WORD1(v205) == WORD1(v206) && ((v206 ^ v205) & 0xFFFFFF00000000) == 0)
                    {
                      goto LABEL_374;
                    }
                  }

                  else if (re::areSameTranslatedVersion(v9, a6, v59))
                  {
                    goto LABEL_374;
                  }

                  if (*(v9 + 12) == *(a6 + 12))
                  {
                    re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, v9, a6, a7);
                  }

                  else
                  {
                    v207 = re::TypeInfo::name(v9)[1];
                    v208 = re::TypeInfo::name(a6);
                  }

                  goto LABEL_451;
                }

LABEL_374:
                re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, v9, a7);
LABEL_451:
                if (*(a1 + 64))
                {
                  goto LABEL_367;
                }

                v209 = *(a1 + 152) + 48 * *(a1 + 136);
                ++*(v209 - 16);
                goto LABEL_453;
              }

              if (*v9 == *a6 && (v174 = **(v9 + 16), v175 = **(a6 + 2), v174 == v175) && WORD1(v174) == WORD1(v175) && ((v175 ^ v174) & 0xFFFFFF00000000) == 0)
              {
                re::TypeInfo::atVersion(&v225, v9, v57);
                if (v225)
                {
                  if (a7)
                  {
                    v215 = 0;
                  }

                  else
                  {
                    v215 = re::TypeInfo::createInstance(&v226, *(a1 + 48), *(a1 + 264));
                  }

                  re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, v215, &v226, a7);
                  v217 = *(a1 + 64);
                  if (v217 == 1)
                  {
                    if (v215)
                    {
                      re::TypeInfo::releaseInstance(&v226, v215, *(a1 + 48), *(a1 + 264));
                    }
                  }

                  else if ((a7 & 1) == 0)
                  {
                    re::TypeInfo::TypeInfo(&Tag, &v226);
                    re::internal::upgradeObject(v215, &Tag, a4, v9, *(a1 + 48), *(a1 + 264), buf);
                    if ((buf[0] & 1) == 0)
                    {
                      v218 = (v240 & 1) != 0 ? v241 : &v240 + 1;
                      if (buf[0] & 1) == 0 && v239 && (v240)
                      {
                        (*(*v239 + 40))();
                      }
                    }
                  }

                  LOBYTE(v9) = v217 ^ 1;
                  return (v9 & 1);
                }

                v219 = re::TypeInfo::name(v9)[1];
                v220 = v57;
                v23 = "Unknown serialized type %s version %u. No matching runtime type found.";
              }

              else
              {
                v176 = re::TypeInfo::name(a6)[1];
                v177 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
                if (v177)
                {
                  v178 = *(v177 + 16);
                }

                else
                {
                  v178 = 0xFFFFFFFFLL;
                }

                v220 = v178;
                v221 = v57;
                v219 = v176;
                v23 = "Type %s version %u expected in JSON. Actual version found in JSON: %u";
              }

LABEL_264:
              v135 = a1;
              v136 = 0;
              goto LABEL_265;
            }

LABEL_367:
            LOBYTE(v9) = 0;
            return (v9 & 1);
          }

          re::TypeMemberCollection::TypeMemberCollection(buf, *v9, v45);
          re::TypeMemberCollection::operator[](buf, 0, &Tag);
          v128 = *(v237 + 24);
          re::TypeRegistry::typeInfo(Tag, *v237, buf);
          re::TypeInfo::TypeInfo(v234, &buf[8]);
          if (v9 == a6)
          {
            goto LABEL_212;
          }

          if (*v9 == *a6)
          {
            v164 = **(v9 + 16);
            v165 = *(a6 + 2);
            v166 = *v165;
            if (v164 == *v165 && WORD1(v164) == WORD1(v166) && ((v166 ^ v164) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_212;
            }
          }

          else
          {
            if (re::areSameTranslatedVersion(v9, a6, v129))
            {
LABEL_212:
              if (*(a1 + 64))
              {
                goto LABEL_367;
              }

              v130 = (*(*a1 + 72))(a1, a2, a3, &a4[v128], v234, v234, a7);
LABEL_385:
              LOBYTE(v9) = v130;
              return (v9 & 1);
            }

            v165 = *(a6 + 2);
          }

          if (*(v165 + 96) == 1)
          {
            re::TypeMemberCollection::TypeMemberCollection(&v225, *a6, v165);
            re::TypeMemberCollection::operator[](&v225, 0, v230);
            re::TypeRegistry::typeInfo(v230[0], *v231, buf);
            re::TypeInfo::TypeInfo(v232, &buf[8]);
            if (*(a1 + 64))
            {
              goto LABEL_367;
            }

            v130 = (*(*a1 + 72))(a1, a2, a3, &a4[v128], v234, v232, a7);
            goto LABEL_385;
          }

LABEL_366:
          goto LABEL_367;
        }

        v76 = a1;
        v77 = a2;
        v74 = v9;
        v75 = v9;
      }

      re::serializeDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v76, v77, v43, 0, v74, v75, 1);
      goto LABEL_453;
    }

    if (v22 != 5)
    {
      if (v22 != 6)
      {
        goto LABEL_89;
      }

      re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v225, &buf[8]);
      v26 = re::TypeInfo::name(&v225);
      v27 = BYTE4(v226);
      if (BYTE4(v226) == 1)
      {
        if (re::TypeInfo::isInteger(&v225))
        {
          v28 = *v26 >> 1;
          if (v28 > 0x303EE8780EDLL)
          {
            if (v28 == 0x303EE8780EELL)
            {
              v171 = v26[1];
              v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (v171 == "uint32_t")
              {
                goto LABEL_384;
              }

              v172 = strcmp(v171, "uint32_t");
              v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (!v172)
              {
                goto LABEL_384;
              }

              goto LABEL_359;
            }

            if (v28 != 0x303EE88E58DLL)
            {
              goto LABEL_359;
            }

            v154 = v26[1];
            v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v154 == "uint64_t")
            {
              goto LABEL_384;
            }

            v155 = "uint64_t";
          }

          else
          {
            if (v28 != 3393056694)
            {
              if (v28 == 0x303EE86A734)
              {
                v29 = v26[1];
                v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (v29 == "uint16_t")
                {
                  goto LABEL_384;
                }

                v31 = strcmp(v29, "uint16_t");
                v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (!v31)
                {
                  goto LABEL_384;
                }
              }

              goto LABEL_359;
            }

            v154 = v26[1];
            v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v154 == "size_t")
            {
              goto LABEL_384;
            }

            v155 = "size_t";
          }

          v170 = strcmp(v154, v155);
          v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
          if (!v170)
          {
            goto LABEL_384;
          }

LABEL_359:
          *buf = 0x18E6A9A093;
          *&buf[8] = "uint8_t";
          v173 = re::StringID::operator==(v26, buf);
          v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
          if (v173)
          {
            goto LABEL_384;
          }

          *buf = 0x16749F63A2;
          *&buf[8] = "int64_t";
          if (re::StringID::operator==(v26, buf))
          {
            v130 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, v9, a6, a7);
            goto LABEL_385;
          }

          Tag = 3327612;
          v236 = "long";
          v179 = re::StringID::operator==(v26, &Tag);
          v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
          if (v179 || (*buf = 104431, *&buf[8] = "int", v180 = re::StringID::operator==(v26, buf), v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v180) || (*buf = 109413500, *&buf[8] = "short", v181 = re::StringID::operator==(v26, buf), v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v181))
          {
LABEL_384:
            v130 = v30(a1, a2, a3, a4, v9, a6, a7);
            goto LABEL_385;
          }

LABEL_237:
          if (v9 == a6)
          {
            goto LABEL_245;
          }

          if (*v9 == *a6)
          {
            v139 = **(v9 + 16);
            v140 = **(a6 + 2);
            if (v139 == v140 && WORD1(v139) == WORD1(v140) && ((v140 ^ v139) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_245;
            }
          }

          else if (re::areSameTranslatedVersion(v9, a6, v25))
          {
            goto LABEL_245;
          }

          if (*(v9 + 12) != *(a6 + 12))
          {
            goto LABEL_366;
          }

LABEL_245:
          if (a7)
          {
            v141 = *(a1 + 272);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
            re::TypeInfo::TypeInfo(&Tag, &buf[8]);
            re::internal::translateType(&v225, v141, &Tag);
            v142 = *(a1 + 272);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), buf);
            re::TypeInfo::TypeInfo(v234, &buf[8]);
            re::internal::translateType(&Tag, v142, v234);
            v143 = (*(*a1 + 80))(a1, &v225);
            if (v143)
            {
              v144 = v143;
              v9 = (*(*a1 + 80))(a1, &Tag);
              if (v9)
              {
                *buf = 0;
                if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, buf))
                {
                  goto LABEL_367;
                }

                for (i = *buf; i; --i)
                {
                  re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 1);
                  v144(a1, "key", 0, 0, &v225, &v225, 1);
                  (v9)(a1, "value", 0, 0, &Tag, &Tag, 1);
                }

LABEL_261:
                goto LABEL_453;
              }

              p_Tag = &Tag;
              goto LABEL_342;
            }

            goto LABEL_252;
          }

          re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
          re::TypeInfo::TypeInfo(&v225, &buf[8]);
          re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 88), buf);
          re::TypeInfo::TypeInfo(&Tag, &buf[8]);
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
          re::TypeInfo::TypeInfo(v234, &buf[8]);
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), buf);
          re::TypeInfo::TypeInfo(v232, &buf[8]);
          re::TypeInfo::TypeInfo(v230, v9);
          v9 = (*(*a1 + 80))(a1, &v225);
          if (!v9)
          {
            p_Tag = &v225;
LABEL_342:
            v163 = re::TypeInfo::name(p_Tag);
            return (v9 & 1);
          }

          v147 = (*(*a1 + 80))(a1, &Tag);
          if (v147)
          {
            v148 = v147;
            v223[0] = (*(v231 + 96))(a4);
            if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, v223))
            {
              goto LABEL_367;
            }

            v149 = *(a1 + 48);
            v150 = *(v231 + 104);
            re::TypeInfo::TypeInfo(buf, v230);
            v150(a4, buf, v149);
            v151 = v223[0];
            if (!v223[0])
            {
              goto LABEL_261;
            }

            v152 = re::TypeInfo::createInstance(&v225, *(a1 + 48), *(a1 + 264));
            while (1)
            {
              re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 0);
              (v9)(a1, "key", 0, v152, &v225, v234, 0);
              v131 = *(a1 + 48);
              if (*(a1 + 64) == 1)
              {
                break;
              }

              v153 = (*(v231 + 112))(a4, v230, v131, v152);
              v148(a1, "value", 0, v153, &Tag, v232, 0);
              if (!--v151)
              {
                re::TypeInfo::releaseInstance(&v225, v152, *(a1 + 48), *(a1 + 264));
                goto LABEL_261;
              }
            }

            v132 = *(a1 + 264);
            v133 = &v225;
            v134 = v152;
LABEL_221:
            re::TypeInfo::releaseInstance(v133, v134, v131, v132);
            goto LABEL_367;
          }

LABEL_262:
          v146 = &Tag;
          goto LABEL_263;
        }

        v27 = BYTE4(v226);
      }

      if (v27 == 8)
      {
        v69 = *v26 >> 1;
        if (v69 == 0x22C6ED80D0CLL)
        {
          v137 = v26[1];
          v30 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v137 == "StringID")
          {
            goto LABEL_384;
          }

          v138 = strcmp(v137, "StringID");
          v30 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v138)
          {
            goto LABEL_384;
          }
        }

        else if (v69 == 0x134375A94D9F7110)
        {
          v70 = v26[1];
          v30 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v70 == "DynamicString")
          {
            goto LABEL_384;
          }

          v71 = strcmp(v70, "DynamicString");
          v30 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v71)
          {
            goto LABEL_384;
          }
        }
      }

      goto LABEL_237;
    }

    if (v9 != a6)
    {
      if (*v9 == *a6)
      {
        v118 = **(v9 + 16);
        v119 = **(a6 + 2);
        if (v118 == v119 && WORD1(v118) == WORD1(v119) && ((v119 ^ v118) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_197;
        }

        v41 = 5;
      }

      else
      {
        if (re::areSameTranslatedVersion(v9, a6, a3))
        {
          goto LABEL_197;
        }

        v41 = *(v9 + 12);
      }

      if (v41 != *(a6 + 12))
      {
        goto LABEL_366;
      }
    }

LABEL_197:
    if (a7)
    {
      v120 = *(a1 + 272);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::internal::translateType(&v225, v120, &Tag);
      v121 = (*(*a1 + 80))(a1, &v225);
      if (v121)
      {
        v122 = v121;
        *buf = 0;
        LOBYTE(v9) = 0;
        if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, buf, 0))
        {
          for (j = *buf; j; --j)
          {
            v122(a1, 0, 0, 0, &v225, &v225, 1);
          }

          goto LABEL_443;
        }

        return (v9 & 1);
      }

LABEL_252:
      v146 = &v225;
LABEL_263:
      v219 = re::TypeInfo::name(v146)[1];
      v23 = "Failed to resolve serialize function for type %s";
      goto LABEL_264;
    }

    re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
    re::TypeInfo::TypeInfo(&Tag, &buf[8]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
    re::TypeInfo::TypeInfo(v234, &buf[8]);
    re::TypeInfo::TypeInfo(v232, v9);
    v124 = (*(*a1 + 80))(a1, &Tag);
    if (!v124)
    {
      goto LABEL_262;
    }

    v125 = v124;
    v126 = (*(v233 + 88))(a4);
    v230[0] = v126;
    LOBYTE(v9) = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, v230, 0))
    {
      return (v9 & 1);
    }

    v127 = v230[0];
    if (v126 != v230[0])
    {
      re::TypeRegistry::typeInfo(v232[0], *(v233 + 80), buf);
      re::TypeInfo::TypeInfo(&v225, &buf[8]);
      v103 = *(v227 + 8);
      if (!is_mul_ok(v103, v127))
      {
        v220 = v127;
        goto LABEL_208;
      }

      v182 = *(a1 + 48);
      v183 = *(v233 + 96);
      re::TypeInfo::TypeInfo(buf, v232);
      v183(a4, buf, v182, v127);
    }

    if (*(v233 + 104))
    {
      if (v127)
      {
        for (k = 0; k != v127; k = (k + 1))
        {
          v185 = (*(v233 + 104))(a4, k);
          v125(a1, 0, 0, v185, &Tag, v234, 0);
        }
      }
    }

    else
    {
      v186 = *(v233 + 112);
      if (!v186 || !*(v233 + 120) || !*(v233 + 128))
      {
        re::TypeInfo::TypeInfo(buf, v232);
        v219 = re::TypeInfo::name(buf)[1];
        v23 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_234;
      }

      v187 = v186(a4, *(a1 + 56));
      v188 = (*(v233 + 120))();
      if (v188)
      {
        v189 = v188;
        do
        {
          v125(a1, 0, 0, v189, &Tag, v234, 0);
          v189 = (*(v233 + 120))(v187);
        }

        while (v189);
      }

      (*(v233 + 128))(v187, *(a1 + 56));
    }

    goto LABEL_443;
  }

  if (*(v9 + 12) > 2u)
  {
    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_89;
      }

      if (v9 != a6)
      {
        if (*v9 == *a6)
        {
          v83 = **(v9 + 16);
          v84 = **(a6 + 2);
          if (v83 == v84)
          {
            v17 = WORD1(v83) == WORD1(v84);
            v85 = (v84 ^ v83) & 0xFFFFFF00000000;
            if (v17 && v85 == 0)
            {
              goto LABEL_153;
            }
          }
        }

        else if (re::areSameTranslatedVersion(v9, a6, a3))
        {
          goto LABEL_153;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_366;
        }

        v87 = *(v9 + 16);
        v88 = *(a6 + 2);
        v89 = *(v88 + 92) & 0xFFFFFF;
        if ((*(v87 + 92) & 0xFFFFFF) != 0)
        {
          if (!v89)
          {
            goto LABEL_366;
          }
        }

        else if (v89 || *(v87 + 96) != *(v88 + 96))
        {
          goto LABEL_366;
        }
      }

LABEL_153:
      if (a7)
      {
        v90 = *(a1 + 272);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(&Tag, &buf[8]);
        re::internal::translateType(&v225, v90, &Tag);
        v91 = (*(*a1 + 80))(a1, &v225);
        if (!v91)
        {
          goto LABEL_252;
        }

        v92 = v91;
        v93 = *(a6 + 2);
        v94 = *(v93 + 92) & 0xFFFFFF;
        if (v94)
        {
          v95 = 0;
          v96 = 8;
        }

        else
        {
          v95 = *(v93 + 96);
          v96 = 4;
        }

        *buf = v95;
        if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, buf, v96))
        {
          goto LABEL_367;
        }

        v160 = *buf;
        if (v94)
        {
          v161 = *buf == 0;
        }

        else
        {
          v161 = 1;
        }

        v162 = v161;
        if (v161)
        {
          if (!*buf)
          {
            goto LABEL_443;
          }
        }

        else
        {
          v230[0] = 0;
          v230[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v230);
        }

        do
        {
          v92(a1, 0, 0, 0, &v225, &v225, 1);
          --v160;
        }

        while (v160);
        if (v162)
        {
          goto LABEL_443;
        }
      }

      else
      {
        re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
        re::TypeInfo::TypeInfo(&Tag, &buf[8]);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(v234, &buf[8]);
        re::TypeInfo::TypeInfo(v232, v9);
        v97 = (*(*a1 + 80))(a1, &Tag);
        if (!v97)
        {
          goto LABEL_262;
        }

        v98 = v97;
        v99 = re::ArrayAccessor::size(v232, a4);
        v224 = v99;
        v100 = *(*(v9 + 16) + 92) & 0xFFFFFF;
        if (v100)
        {
          v101 = 8;
        }

        else
        {
          v101 = 4;
        }

        if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, &v224, v101))
        {
          goto LABEL_367;
        }

        v102 = v224;
        if (v99 != v224)
        {
          if ((*(v233 + 92) & 0xFFFFFF) == 0)
          {
            v219 = v99;
            v220 = v224;
            v23 = "Invalid array size. Expected size = %zu, actual size = %zu";
            goto LABEL_264;
          }

          re::TypeRegistry::typeInfo(v232[0], *(v233 + 80), buf);
          re::TypeInfo::TypeInfo(&v225, &buf[8]);
          v103 = *(v227 + 8);
          if (!is_mul_ok(v103, v102))
          {
            v220 = v102;
LABEL_208:
            v219 = v103;
            v23 = "Size overflow during deserialization. Element size = %zu, count = %zu";
            goto LABEL_264;
          }

          re::ArrayAccessor::reset(v232, a4, *(a1 + 48), v102);
          v99 = v102;
        }

        if (v100)
        {
          v200 = v99 == 0;
        }

        else
        {
          v200 = 1;
        }

        v201 = v200;
        if (!v200)
        {
          v202 = *a4;
          v223[0] = 0;
          v223[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v202, v223);
          v99 = v102;
        }

        if (v99)
        {
          v203 = 0;
          if (v102 <= 1)
          {
            v102 = 1;
          }

          do
          {
            v204 = re::ArrayAccessor::elementAt(v232, a4, v203);
            v98(a1, 0, 0, v204, &Tag, v234, 0);
            ++v203;
          }

          while (v102 != v203);
        }

        if (v201)
        {
          goto LABEL_443;
        }
      }

      (*(*a1 + 24))(a1);
LABEL_443:
      goto LABEL_453;
    }

    if (v9 != a6)
    {
      if (*v9 == *a6)
      {
        v108 = **(v9 + 16);
        v109 = **(a6 + 2);
        if (v108 == v109 && WORD1(v108) == WORD1(v109) && ((v109 ^ v108) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_178;
        }

        v39 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(v9, a6, a3))
        {
          goto LABEL_178;
        }

        v39 = *(v9 + 12);
      }

      if (v39 != *(a6 + 12))
      {
        goto LABEL_366;
      }
    }

LABEL_178:
    if (a7)
    {
      LOBYTE(Tag) = 0;
      re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(a1 + 24, a2, &Tag);
      if (Tag == 1)
      {
        v110 = *(a1 + 272);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(&v225, &buf[8]);
        re::internal::translateType(buf, v110, &v225);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, 0, buf, buf, 1);
        }
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v225, &buf[8]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::TypeInfo::TypeInfo(buf, v9);
      v234[0] = (*(*&buf[16] + 88))(a4) != 0;
      v111 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(a1 + 24, a2, v234);
      if (v234[0])
      {
        v112 = re::TypeInfo::createInstance(&v225, *(a1 + 48), *(a1 + 264));
        (*(*&buf[16] + 96))(a4, v112);
        re::TypeInfo::releaseInstance(&v225, v112, *(a1 + 48), *(a1 + 264));
        v113 = (*(*&buf[16] + 88))(a4);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, v113, &v225, &Tag, 0);
        }
      }

      else
      {
        (*(*&buf[16] + 96))(a4, 0, v111);
      }
    }

    goto LABEL_453;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      goto LABEL_89;
    }

    if (v9 == a6)
    {
      goto LABEL_274;
    }

    if (*v9 == *a6)
    {
      v78 = **(v9 + 16);
      v79 = **(a6 + 2);
      if (v78 == v79 && WORD1(v78) == WORD1(v79) && ((v79 ^ v78) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_143;
      }

      v24 = 2;
    }

    else
    {
      if (re::areSameTranslatedVersion(v9, a6, a3))
      {
        goto LABEL_143;
      }

      v24 = *(v9 + 12);
    }

    if (v24 != *(a6 + 12))
    {
      goto LABEL_366;
    }

    v80 = re::TypeInfo::name(v9);
    v81 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v80, v81))
    {
      goto LABEL_366;
    }

LABEL_143:
    if (*v9 != *a6)
    {
      v82 = re::areSameTranslatedVersion(v9, a6, a3);
      goto LABEL_275;
    }

    v156 = **(v9 + 16);
    v157 = **(a6 + 2);
    if (v156 != v157 || WORD1(v156) != WORD1(v157) || ((v157 ^ v156) & 0xFFFFFF00000000) != 0)
    {
      v82 = 0;
      goto LABEL_275;
    }

LABEL_274:
    v82 = 1;
LABEL_275:
    if (a7)
    {
      *buf = 0;
      if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, buf))
      {
        goto LABEL_367;
      }

      if (*buf)
      {
      }

LABEL_453:
      LOBYTE(v9) = *(a1 + 64) ^ 1;
      return (v9 & 1);
    }

    Tag = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &Tag))
    {
      goto LABEL_367;
    }

    v158 = Tag;
    if (!Tag)
    {
      v23 = "Failed to read enum constant. String is empty.";
      goto LABEL_264;
    }

    if (Tag >= 0x401)
    {
      v219 = Tag;
      v23 = "Failed to read enum constant. String is too long. Length: %zu";
      goto LABEL_264;
    }

    v167 = (*(**(a1 + 56) + 32))(*(a1 + 56), Tag + 1, 0);
    v167[v158] = 0;
    if (*(a1 + 64) == 1)
    {
      goto LABEL_348;
    }

    v190 = *v167;
    if (*v167)
    {
      v191 = v167[1];
      if (v191)
      {
        v192 = (v167 + 2);
        do
        {
          v190 = 31 * v190 + v191;
          v193 = *v192++;
          v191 = v193;
        }

        while (v193);
      }
    }

    *buf = 2 * v190;
    *&buf[8] = v167;
    EnumConstantIndex = re::internal::getEnumConstantIndex(a6, buf, v168);
    v195 = EnumConstantIndex;
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    if ((v195 & 0x80000000) != 0)
    {
      v210 = *re::foundationSerializationLogObjects(EnumConstantIndex);
      if (os_log_type_enabled(v210, OS_LOG_TYPE_INFO))
      {
        v211 = re::TypeInfo::name(a6)[1];
        *buf = 136315394;
        *&buf[4] = v167;
        *&buf[12] = 2080;
        *&buf[14] = v211;
        _os_log_impl(&dword_1E1C61000, v210, OS_LOG_TYPE_INFO, "String %s is not a valid enum constant of type %s - skipping.", buf, 0x16u);
      }

      v212 = 0;
    }

    else if (v82)
    {
      *buf = re::TypeInfo::enumConstants(v9);
      *&buf[8] = v196;
      v197 = v195 - v196;
      if (v195 >= v196)
      {
        v225 = re::TypeInfo::renamedEnumConstants(v9);
        v226 = v216;
        v198 = re::Slice<re::EnumConstant>::operator[](&v225, v197);
      }

      else
      {
        v198 = re::Slice<re::EnumConstant>::operator[](buf, v195);
      }

      v212 = v198;
    }

    else
    {
      v213 = *(*a6 + 856);
      if (!v213 || (v212 = re::internal::TypeTranslationTable::translateSerializedEnum(v213, a6, v195, v9)) == 0)
      {
        v214 = re::TypeInfo::name(v9);
LABEL_348:
        v169 = *(**(a1 + 56) + 40);
        goto LABEL_349;
      }
    }

    (*(**(a1 + 56) + 40))(*(a1 + 56), v167);
    if (v212)
    {
      memcpy(a4, v212, *(*(v9 + 16) + 8));
    }

    goto LABEL_453;
  }

  if (v9 != a6)
  {
    if (*v9 == *a6)
    {
      v104 = **(v9 + 16);
      v105 = **(a6 + 2);
      if (v104 != v105)
      {
        goto LABEL_366;
      }

      v17 = WORD1(v104) == WORD1(v105);
      v106 = (v105 ^ v104) & 0xFFFFFF00000000;
      if (!v17 || v106 != 0)
      {
        goto LABEL_366;
      }
    }

    else if (!re::areSameTranslatedVersion(v9, a6, a3))
    {
      goto LABEL_366;
    }
  }

  v36 = re::TypeInfo::name(v9);
  v37 = *v36 >> 1;
  if (v37 > 0x16749DFF02)
  {
    if (*v36 >> 1 > 0x303EE88E58CLL)
    {
      if (*v36 >> 1 > 0x2A8CEB1C43F60843)
      {
        if (v37 == 0x2A8CEB1C43F60844)
        {
LABEL_332:
        }

        if (v37 != 0x3AFE951B1F1F3391)
        {
          if (v37 != 0x412A40E9CB79BA35)
          {
            goto LABEL_405;
          }

          goto LABEL_326;
        }

LABEL_329:
      }

      if (v37 == 0x303EE88E58DLL)
      {
        goto LABEL_326;
      }

      if (v37 != 0x2710786C3AC82DA1)
      {
        goto LABEL_405;
      }
    }

    else
    {
      if (*v36 >> 1 <= 0x18E6A9A092)
      {
        if (v37 != 0x16749DFF03)
        {
          if (v37 != 0x16749F63A2)
          {
            goto LABEL_405;
          }

LABEL_313:
        }

        goto LABEL_335;
      }

      if (v37 != 0x18E6A9A093)
      {
        if (v37 != 0x303EE86A734)
        {
          if (v37 != 0x303EE8780EELL)
          {
            goto LABEL_405;
          }

          goto LABEL_332;
        }

        goto LABEL_329;
      }
    }
  }

  if (*v36 >> 1 > 0x685847B)
  {
    if (*v36 >> 1 <= 0xB9708BDD)
    {
      if (v37 != 109413500)
      {
        if (v37 != 2969009105)
        {
          goto LABEL_405;
        }

        return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a4, a7);
      }

LABEL_338:
    }

    if (v37 == 3111160798)
    {
    }

    if (v37 != 3393056694)
    {
      if (v37 != 0x16749D2549)
      {
        goto LABEL_405;
      }

      goto LABEL_338;
    }

LABEL_326:
  }

  if (*v36 >> 1 <= 0x2E9355)
  {
    if (v37 != 104431)
    {
      if (v37 != 3029738)
      {
        goto LABEL_405;
      }
    }

LABEL_335:
  }

  if (v37 != 3052374)
  {
    if (v37 != 3327612)
    {
      if (v37 == 97526364)
      {

        return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a4, a7);
      }

LABEL_405:
      v219 = re::TypeInfo::name(v9)[1];
      v23 = "Unsupported basic type %s.";
      goto LABEL_234;
    }

    goto LABEL_313;
  }
}

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, char *a2, float *a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v10 = *(result + 11);
  if ((v10 & 0x400) != 0)
  {
    if ((*(result + 11) & 0x1000) != 0)
    {
      v12 = result;
    }

    else
    {
      v12 = *(result + 1);
    }

    if ((*(result + 11) & 0x1000) != 0)
    {
      v13 = 21 - *(result + 21);
    }

    else
    {
      v13 = *result;
    }

    if (v13 == 9)
    {
      if (!strcasecmp(v12, "-Infinity"))
      {
        *&v14 = -INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 8)
    {
      if (!strcasecmp(v12, "Infinity"))
      {
        *&v14 = INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 3 && !strcasecmp(v12, "NaN"))
    {
      *&v14 = NAN;
LABEL_34:
      Double = *&v14;
      goto LABEL_35;
    }

    if (*(a1 + 232) == 1)
    {
      *v20 = 0;
      v16 = strtof(v12, v20);
      v17 = *v20 != &v12[v13] || v16 == INFINITY;
      Double = v17 ? INFINITY : v16;
      if (Double != INFINITY)
      {
        v18 = *re::foundationSerializationLogObjects(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 136315138;
          *&v20[4] = v12;
          _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", v20, 0xCu);
        }

        goto LABEL_35;
      }
    }

    goto LABEL_30;
  }

  if ((v10 & 0x10) == 0)
  {
LABEL_30:
    return 0;
  }

  Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v9);
LABEL_35:
  if ((a4 & 1) == 0)
  {
    *a3 = Double;
  }

  v19 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v19 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, char *a2, double *a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v10 = *(result + 11);
  if ((v10 & 0x400) != 0)
  {
    if ((*(result + 11) & 0x1000) != 0)
    {
      v12 = result;
    }

    else
    {
      v12 = *(result + 1);
    }

    if ((*(result + 11) & 0x1000) != 0)
    {
      v13 = 21 - *(result + 21);
    }

    else
    {
      v13 = *result;
    }

    if (v13 == 9)
    {
      if (!strcasecmp(v12, "-Infinity"))
      {
        *&v14 = -INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 8)
    {
      if (!strcasecmp(v12, "Infinity"))
      {
        *&v14 = INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 3 && !strcasecmp(v12, "NaN"))
    {
      *&v14 = NAN;
LABEL_34:
      Double = *&v14;
      goto LABEL_35;
    }

    if (*(a1 + 232) == 1)
    {
      *v20 = 0;
      v16 = strtod(v12, v20);
      v17 = *v20 != &v12[v13] || v16 == INFINITY;
      Double = v17 ? INFINITY : v16;
      if (Double != INFINITY)
      {
        v18 = *re::foundationSerializationLogObjects(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 136315138;
          *&v20[4] = v12;
          _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", v20, 0xCu);
        }

        goto LABEL_35;
      }
    }

    goto LABEL_30;
  }

  if ((v10 & 0x10) == 0)
  {
LABEL_30:
    return 0;
  }

  Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v9);
LABEL_35:
  if ((a4 & 1) == 0)
  {
    *a3 = Double;
  }

  v19 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v19 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(_BYTE *a1, char *a2, uint64_t *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1[40])
  {
    return 0;
  }

  if (result)
  {
    v8 = result;
    v9 = *(result + 11);
    if ((v9 & 0x400) != 0)
    {
      if ((*(result + 11) & 0x1000) != 0)
      {
        LODWORD(v12) = 21 - *(result + 21);
      }

      else
      {
        LODWORD(v12) = *result;
      }

      v12 = v12;
    }

    else if ((v9 & 0x10) != 0 && (a1[232] & 1) != 0 && (Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v7), (v11 = snprintf(__str, 0x40uLL, "%g", Double)) != 0))
    {
      v12 = v11;
    }

    else
    {
      if (a1[233] != 1 || (v13 = *(v8 + 11), (v13 & 8) == 0))
      {
        return 0;
      }

      v14 = v13 == 10;
      v12 = 4;
      if (!v14)
      {
        v12 = 5;
      }
    }

    *a3 = v12;
    __str[0] = 8;
    v16 = 0;
    v17 = a2;
    v18 = 0;
    v19 = v12;
    v20 = 0;
    v21 = v8;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, __str);
    return 1;
  }

  return result;
}

double re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(uint64_t result, char *a2, _BYTE *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    if (JSONValue)
    {
      v7 = *(JSONValue + 11) != 0;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    v9[0] = 3;
    v10 = 0;
    v11 = a2;
    v12 = 0;
    v13 = v7;
    v14 = 0;
    v15 = JSONValue;
    return re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(result, v9);
  }

  return v8;
}

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(uint64_t a1, char *a2, void *a3, int a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v19 = v4;
  v20 = v5;
  if (result)
  {
    if (*(result + 11) == 4)
    {
      v11 = *result;
      *a3 = v11;
      v12[0] = 5;
      v13 = a4;
      v14 = a2;
      v15 = 0;
      v16 = v11;
      v17 = 0;
      v18 = result;
      re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v12);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v40), re::TypeInfo::TypeInfo(v38, v41), v38[12] != 1) || !re::TypeInfo::isInteger(v38))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v32 = *(a1 + 64) ^ 1;
    return v32 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v38, v41);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v37, v41);
  re::TypeInfo::TypeInfo(v35, this);
  v18 = (*(*a1 + 80))(a1, v38);
  if (!v18)
  {
    re::TypeInfo::name(v38);
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v36 + 104);
  re::TypeInfo::TypeInfo(&v40, v35);
  v20(a4, &v40, v17);
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
  {
    goto LABEL_48;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v31 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v31 - 16);
    goto LABEL_45;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 8);
    }

    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v24 = 21 - *(v22 + 21);
    }

    else
    {
      v24 = *v22;
    }

    v34 = 0;
    v25 = v23;
    if (v24)
    {
      v26 = v24;
      v25 = v23;
      while (*v25 == 48)
      {
        ++v25;
        if (!--v26)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = &v23[v24];
    if (v25 == v27)
    {
      goto LABEL_42;
    }

    if (*v25 - 48 > 9)
    {
      break;
    }

    v25 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v25, v27, &v40, &v39);
    if (v25 != v27)
    {
      if (*v25 - 48 > 9)
      {
        v29 = v39;
        v28 = v40;
        if (!__CFADD__(v40, v39))
        {
LABEL_40:
          v34 = v28 + v29;
          break;
        }
      }

      while (*v25 - 48 <= 9)
      {
        if (++v25 == v27)
        {
          v25 = v27;
          goto LABEL_41;
        }
      }

      break;
    }

    v29 = v39;
    v28 = v40;
    if (!__CFADD__(v40, v39))
    {
      goto LABEL_40;
    }

LABEL_42:
    v30 = (*(v36 + 112))(a4, v35, *(a1 + 48), &v34);
    v19(a1, v23, 0, v30, v38, v37, 0);
    v22 += 48;
    if (v22 == *(v21 + 1) + 48 * *v21)
    {
      goto LABEL_43;
    }
  }

LABEL_41:
  if (v27 == v25)
  {
    goto LABEL_42;
  }

LABEL_48:
  v32 = 0;
  return v32 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v40), re::TypeInfo::TypeInfo(v38, v41), v38[12] != 1) || !re::TypeInfo::isInteger(v38))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v32 = *(a1 + 64) ^ 1;
    return v32 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v38, v41);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v37, v41);
  re::TypeInfo::TypeInfo(v35, this);
  v18 = (*(*a1 + 80))(a1, v38);
  if (!v18)
  {
    re::TypeInfo::name(v38);
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v36 + 104);
  re::TypeInfo::TypeInfo(&v40, v35);
  v20(a4, &v40, v17);
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
  {
    goto LABEL_48;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v31 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v31 - 16);
    goto LABEL_45;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 8);
    }

    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v24 = 21 - *(v22 + 21);
    }

    else
    {
      v24 = *v22;
    }

    v34 = 0;
    v25 = v23;
    if (v24)
    {
      v26 = v24;
      v25 = v23;
      while (*v25 == 48)
      {
        ++v25;
        if (!--v26)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = &v23[v24];
    if (v25 == v27)
    {
      goto LABEL_42;
    }

    if (*v25 - 48 > 9)
    {
      break;
    }

    v25 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v25, v27, &v40, &v39);
    if (v25 != v27)
    {
      if (*v25 - 48 > 9)
      {
        v29 = v39;
        v28 = v40;
        if (!__CFADD__(v40, v39))
        {
LABEL_40:
          v34 = v28 + v29;
          break;
        }
      }

      while (*v25 - 48 <= 9)
      {
        if (++v25 == v27)
        {
          v25 = v27;
          goto LABEL_41;
        }
      }

      break;
    }

    v29 = v39;
    v28 = v40;
    if (!__CFADD__(v40, v39))
    {
      goto LABEL_40;
    }

LABEL_42:
    v30 = (*(v36 + 112))(a4, v35, *(a1 + 48), &v34);
    v19(a1, v23, 0, v30, v38, v37, 0);
    v22 += 48;
    if (v22 == *(v21 + 1) + 48 * *v21)
    {
      goto LABEL_43;
    }
  }

LABEL_41:
  if (v27 == v25)
  {
    goto LABEL_42;
  }

LABEL_48:
  v32 = 0;
  return v32 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v38), re::TypeInfo::TypeInfo(v36, v39), v36[12] != 1) || !re::TypeInfo::isInteger(v36))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v30 = *(a1 + 64) ^ 1;
    return v30 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v38);
  re::TypeInfo::TypeInfo(v36, v39);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v38);
  re::TypeInfo::TypeInfo(v35, v39);
  re::TypeInfo::TypeInfo(v33, this);
  v18 = (*(*a1 + 80))(a1, v36);
  if (!v18)
  {
    re::TypeInfo::name(v36);
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v34 + 104);
  re::TypeInfo::TypeInfo(&v38, v33);
  v20(a4, &v38, v17);
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
  {
    goto LABEL_48;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v29 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v29 - 16);
    goto LABEL_45;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 8);
    }

    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v24 = 21 - *(v22 + 21);
    }

    else
    {
      v24 = *v22;
    }

    v32 = 0;
    v25 = v23;
    if (v24)
    {
      v26 = v24;
      v25 = v23;
      while (*v25 == 48)
      {
        ++v25;
        if (!--v26)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = &v23[v24];
    if (v25 == v27)
    {
      goto LABEL_42;
    }

    if (*v25 - 48 <= 9)
    {
      v25 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v25, v27, &v38, &v37);
      if (v25 == v27 || *v25 - 48 > 9)
      {
        if (HIWORD(v38) || 0xFFFF - v38 < v37)
        {
          if (v25 != v27)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        v32 = v37 + v38;
      }

      else
      {
LABEL_37:
        while (*v25 - 48 <= 9)
        {
          if (++v25 == v27)
          {
            v25 = v27;
            break;
          }
        }
      }
    }

    if (v27 != v25)
    {
      break;
    }

LABEL_42:
    v28 = (*(v34 + 112))(a4, v33, *(a1 + 48), &v32);
    v19(a1, v23, 0, v28, v36, v35, 0);
    v22 += 48;
    if (v22 == *(v21 + 1) + 48 * *v21)
    {
      goto LABEL_43;
    }
  }

LABEL_48:
  v30 = 0;
  return v30 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v38), re::TypeInfo::TypeInfo(v36, v39), v36[12] != 1) || !re::TypeInfo::isInteger(v36))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v30 = *(a1 + 64) ^ 1;
    return v30 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v38);
  re::TypeInfo::TypeInfo(v36, v39);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v38);
  re::TypeInfo::TypeInfo(v35, v39);
  re::TypeInfo::TypeInfo(v33, this);
  v18 = (*(*a1 + 80))(a1, v36);
  if (!v18)
  {
    re::TypeInfo::name(v36);
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v34 + 104);
  re::TypeInfo::TypeInfo(&v38, v33);
  v20(a4, &v38, v17);
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
  {
    goto LABEL_48;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v29 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v29 - 16);
    goto LABEL_45;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 8);
    }

    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v24 = 21 - *(v22 + 21);
    }

    else
    {
      v24 = *v22;
    }

    v32 = 0;
    v25 = v23;
    if (v24)
    {
      v26 = v24;
      v25 = v23;
      while (*v25 == 48)
      {
        ++v25;
        if (!--v26)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = &v23[v24];
    if (v25 == v27)
    {
      goto LABEL_42;
    }

    if (*v25 - 48 <= 9)
    {
      v25 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v25, v27, &v38, &v37);
      if (v25 == v27 || *v25 - 48 > 9)
      {
        if (v38 > 0xFF || 255 - v38 < v37)
        {
          if (v25 != v27)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        v32 = v37 + v38;
      }

      else
      {
LABEL_37:
        while (*v25 - 48 <= 9)
        {
          if (++v25 == v27)
          {
            v25 = v27;
            break;
          }
        }
      }
    }

    if (v27 != v25)
    {
      break;
    }

LABEL_42:
    v28 = (*(v34 + 112))(a4, v33, *(a1 + 48), &v32);
    v19(a1, v23, 0, v28, v36, v35, 0);
    v22 += 48;
    if (v22 == *(v21 + 1) + 48 * *v21)
    {
      goto LABEL_43;
    }
  }

LABEL_48:
  v30 = 0;
  return v30 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v45), re::TypeInfo::TypeInfo(v43, v46), v43[12] != 1) || !re::TypeInfo::isInteger(v43))
  {
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_64:
    v36 = *(a1 + 64) ^ 1;
    return v36 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v43, v46);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v42, v46);
  re::TypeInfo::TypeInfo(v40, this);
  v18 = (*(*a1 + 80))(a1, v43);
  if (!v18)
  {
    re::TypeInfo::name(v43);
    goto LABEL_61;
  }

  v19 = v18;
  v20 = *(v41 + 104);
  re::TypeInfo::TypeInfo(&v45, v40);
  v20(a4, &v45, v17);
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
  {
    goto LABEL_61;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_62:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    v37 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v37 - 16);
    goto LABEL_64;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 1);
    }

    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v24 = 21 - v22[21];
    }

    else
    {
      v24 = *v22;
    }

    v39 = 0;
    if (v24)
    {
      v25 = *v23 == 45;
    }

    else
    {
      v25 = 0;
    }

    v26 = v24;
    v27 = &v23[v24];
    v28 = v25;
    v29 = &v23[v25];
    if (v26 == v25)
    {
      v30 = &v23[v25];
    }

    else
    {
      v33 = v26 - v25;
      v30 = v29;
      while (*v30 == 48)
      {
        ++v30;
        if (!--v33)
        {
          goto LABEL_42;
        }
      }
    }

    if (v30 == v27)
    {
LABEL_42:
      v30 = v27;
LABEL_43:
      if (v30 != v29)
      {
        v34 = 0;
        if (v28)
        {
LABEL_45:
          v34 = -v34;
        }

LABEL_46:
        v39 = v34;
        goto LABEL_51;
      }

      v30 = v23;
      goto LABEL_51;
    }

    if (*v30 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v30 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v30, v27, &v45, &v44);
    if (v30 == v27)
    {
      v32 = v44;
      v31 = v45;
      if (__CFADD__(v45, v44))
      {
LABEL_50:
        v30 = v27;
        goto LABEL_51;
      }
    }

    else if (*v30 - 48 <= 9 || (v32 = v44, v31 = v45, __CFADD__(v45, v44)))
    {
      while (*v30 - 48 <= 9)
      {
        if (++v30 == v27)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_51;
    }

    v34 = v31 + v32;
    if (v28)
    {
      if (v34 <= 0x8000000000000000)
      {
        goto LABEL_45;
      }
    }

    else if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_51:
    if (v27 != v30)
    {
      break;
    }

    v35 = (*(v41 + 112))(a4, v40, *(a1 + 48), &v39);
    v19(a1, v23, 0, v35, v43, v42, 0);
    v22 += 48;
    if (v22 == (*(v21 + 1) + 48 * *v21))
    {
      goto LABEL_62;
    }
  }

LABEL_61:
  v36 = 0;
  return v36 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v45), re::TypeInfo::TypeInfo(v43, v46), v43[12] != 1) || !re::TypeInfo::isInteger(v43))
  {
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_64:
    v36 = *(a1 + 64) ^ 1;
    return v36 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v43, v46);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v42, v46);
  re::TypeInfo::TypeInfo(v40, this);
  v18 = (*(*a1 + 80))(a1, v43);
  if (!v18)
  {
    re::TypeInfo::name(v43);
    goto LABEL_61;
  }

  v19 = v18;
  v20 = *(v41 + 104);
  re::TypeInfo::TypeInfo(&v45, v40);
  v20(a4, &v45, v17);
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
  {
    goto LABEL_61;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_62:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    v37 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v37 - 16);
    goto LABEL_64;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 1);
    }

    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v24 = 21 - v22[21];
    }

    else
    {
      v24 = *v22;
    }

    v39 = 0;
    if (v24)
    {
      v25 = *v23 == 45;
    }

    else
    {
      v25 = 0;
    }

    v26 = v24;
    v27 = &v23[v24];
    v28 = v25;
    v29 = &v23[v25];
    if (v26 == v25)
    {
      v30 = &v23[v25];
    }

    else
    {
      v33 = v26 - v25;
      v30 = v29;
      while (*v30 == 48)
      {
        ++v30;
        if (!--v33)
        {
          goto LABEL_42;
        }
      }
    }

    if (v30 == v27)
    {
LABEL_42:
      v30 = v27;
LABEL_43:
      if (v30 != v29)
      {
        v34 = 0;
        if (v28)
        {
LABEL_45:
          v34 = -v34;
        }

LABEL_46:
        v39 = v34;
        goto LABEL_51;
      }

      v30 = v23;
      goto LABEL_51;
    }

    if (*v30 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v30 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v30, v27, &v45, &v44);
    if (v30 == v27)
    {
      v32 = v44;
      v31 = v45;
      if (__CFADD__(v45, v44))
      {
LABEL_50:
        v30 = v27;
        goto LABEL_51;
      }
    }

    else if (*v30 - 48 <= 9 || (v32 = v44, v31 = v45, __CFADD__(v45, v44)))
    {
      while (*v30 - 48 <= 9)
      {
        if (++v30 == v27)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_51;
    }

    v34 = v31 + v32;
    if (v28)
    {
      if (v34 <= 0x80000000)
      {
        goto LABEL_45;
      }
    }

    else if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_51:
    if (v27 != v30)
    {
      break;
    }

    v35 = (*(v41 + 112))(a4, v40, *(a1 + 48), &v39);
    v19(a1, v23, 0, v35, v43, v42, 0);
    v22 += 48;
    if (v22 == (*(v21 + 1) + 48 * *v21))
    {
      goto LABEL_62;
    }
  }

LABEL_61:
  v36 = 0;
  return v36 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v44), re::TypeInfo::TypeInfo(v42, v45), v42[12] != 1) || !re::TypeInfo::isInteger(v42))
  {
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_58:
    v36 = *(a1 + 64) ^ 1;
    return v36 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v42, v45);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v41, v45);
  re::TypeInfo::TypeInfo(v39, this);
  v18 = (*(*a1 + 80))(a1, v42);
  if (!v18)
  {
    re::TypeInfo::name(v42);
    goto LABEL_61;
  }

  v19 = v18;
  v20 = *(v40 + 104);
  re::TypeInfo::TypeInfo(&v44, v39);
  v20(a4, &v44, v17);
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
  {
    goto LABEL_61;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_56:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    v35 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v35 - 16);
    goto LABEL_58;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 1);
    }

    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v24 = 21 - v22[21];
    }

    else
    {
      v24 = *v22;
    }

    v38 = 0;
    if (v24)
    {
      v25 = *v23 == 45;
    }

    else
    {
      v25 = 0;
    }

    v26 = v24;
    v27 = &v23[v24];
    v28 = v25;
    v29 = &v23[v25];
    if (v26 == v25)
    {
      v30 = &v23[v25];
    }

    else
    {
      v32 = v26 - v25;
      v30 = v29;
      while (*v30 == 48)
      {
        ++v30;
        if (!--v32)
        {
          goto LABEL_42;
        }
      }
    }

    if (v30 == v27)
    {
LABEL_42:
      v30 = v27;
LABEL_43:
      if (v30 == v29)
      {
        v30 = v23;
        goto LABEL_54;
      }

      v31 = 0;
      v33 = 0;
      if (v28)
      {
LABEL_45:
        v38 = -v31;
        goto LABEL_54;
      }

LABEL_49:
      v38 = v33;
      goto LABEL_54;
    }

    if (*v30 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v30 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v30, v27, &v44, &v43);
    if (v30 != v27 && *v30 - 48 <= 9)
    {
      goto LABEL_51;
    }

    if (HIWORD(v44) || 0xFFFF - v44 < v43)
    {
      while (1)
      {
        if (v30 == v27)
        {
          v30 = v27;
          goto LABEL_54;
        }

LABEL_51:
        if (*v30 - 48 > 9)
        {
          goto LABEL_54;
        }

        ++v30;
      }
    }

    v31 = v43 + v44;
    if ((v28 & 1) == 0)
    {
      if (((v43 + v44) & 0x8000) != 0)
      {
        goto LABEL_54;
      }

      v33 = v43 + v44;
      goto LABEL_49;
    }

    if ((v43 + v44) <= 0x8000u)
    {
      goto LABEL_45;
    }

LABEL_54:
    if (v27 != v30)
    {
      break;
    }

    v34 = (*(v40 + 112))(a4, v39, *(a1 + 48), &v38);
    v19(a1, v23, 0, v34, v42, v41, 0);
    v22 += 48;
    if (v22 == (*(v21 + 1) + 48 * *v21))
    {
      goto LABEL_56;
    }
  }

LABEL_61:
  v36 = 0;
  return v36 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  v13 = *a6;
  if (*this == *a6)
  {
    v15 = **(this + 2);
    v14 = *(a6 + 2);
    v16 = *v14;
    if (v15 == *v14)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_14;
    }

    v13 = *a6;
    v14 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v13, v14[10], &v42);
  re::TypeInfo::TypeInfo(v41, v43);
  v19 = re::TypeInfo::name(v41);
  if (*v19 >> 1 != 0x22C6ED80D0CLL || (v20 = v19[1], v20 != "StringID") && strcmp(v20, "StringID"))
  {
LABEL_29:
    v26 = 0;
    return v26 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_27:
    v26 = *(a1 + 64) ^ 1;
    return v26 & 1;
  }

  v22 = *(a1 + 48);
  v21 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v42);
  re::TypeInfo::TypeInfo(v41, v43);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v42);
  re::TypeInfo::TypeInfo(v40, v43);
  re::TypeInfo::TypeInfo(v38, this);
  v23 = (*(*a1 + 80))(a1, v41);
  if (!v23)
  {
    v36 = re::TypeInfo::name(v41);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v26 = 0;
  if (v25)
  {
    v27 = *(v39 + 104);
    re::TypeInfo::TypeInfo(&v42, v38);
    v27(a4, &v42, v22);
    v28 = (*(*v21 + 32))(v21, 32, 8);
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *v28 = v22;
    *(v28 + 1) = 0;
    re::DynamicString::setCapacity(v28, 0);
    v29 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
    if (v29 && *v29)
    {
      v30 = *(v29 + 1);
      do
      {
        if ((*(v30 + 22) & 0x1000) != 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = *(v30 + 8);
        }

        v32 = strlen(v31);
        v42 = v31;
        v43[0] = v32;
        re::DynamicString::operator=(v28, &v42);
        v33 = (*(v39 + 112))(a4, v38, *(a1 + 48), v28);
        v24(a1, v31, 0, v33, v41, v40, 0);
        v30 += 48;
      }

      while (v30 != *(v29 + 1) + 48 * *v29);
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      v34 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v34 - 16);
    }

    v35 = re::DynamicString::deinit(v28);
    (*(*v21 + 40))(v21, v28, v35);
    goto LABEL_27;
  }

  return v26 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  v13 = *a6;
  if (*this == *a6)
  {
    v15 = **(this + 2);
    v14 = *(a6 + 2);
    v16 = *v14;
    if (v15 == *v14)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_14;
    }

    v13 = *a6;
    v14 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v13, v14[10], &v47);
  re::TypeInfo::TypeInfo(v46, v48);
  v19 = re::TypeInfo::name(v46);
  if (*v19 >> 1 != 0x134375A94D9F7110 || (v20 = v19[1], v20 != "DynamicString") && strcmp(v20, "DynamicString"))
  {
LABEL_35:
    v21 = 0;
    return v21 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_15:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v22 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v46, v48);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v45, v48);
  re::TypeInfo::TypeInfo(v43, this);
  v23 = (*(*a1 + 80))(a1, v46);
  if (!v23)
  {
    v39 = re::TypeInfo::name(v46);
    goto LABEL_35;
  }

  v24 = v23;
  v25 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v25)
  {
    v26 = *(v44 + 104);
    re::TypeInfo::TypeInfo(&v47, v43);
    v27 = v26(a4, &v47, v22);
    v47 = 0;
    v48[0] = &str_67;
    v28 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
    if (v28 && *v28)
    {
      v29 = *(v28 + 1);
      do
      {
        if ((*(v29 + 22) & 0x1000) != 0)
        {
          v30 = v29;
        }

        else
        {
          v30 = *(v29 + 8);
        }

        v41 = 0;
        v42 = &str_67;
        v32 = v41;
        v33 = v42;
        v41 = 0;
        v42 = &str_67;
        v34 = v47;
        v35 = v48[0];
        v47 = v32;
        v48[0] = v33;
        if (v34)
        {
          if (v41)
          {
            if (v41)
            {
            }
          }
        }

        v37 = (*(v44 + 112))(a4, v43, *(a1 + 48), &v47);
        v27 = v24(a1, v30, 0, v37, v46, v45, 0);
        v29 += 48;
      }

      while (v29 != *(v28 + 1) + 48 * *v28);
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      v38 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v38 - 16);
    }

    if (v47)
    {
      if (v47)
      {
      }
    }

    goto LABEL_15;
  }

  return v21 & 1;
}

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(uint64_t a1, char *a2, void *a3)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  if (result)
  {
    if (*(result + 11) == 4)
    {
      v9 = *result;
      *a3 = v9;
      v10[0] = 6;
      v11 = 0;
      v12 = a2;
      v13 = 0;
      v14 = v9;
      v15 = 0;
      v16 = result;
      re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v10);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(uint64_t result, int a2)
{
  if (*(result + 40))
  {
    return;
  }

  v3 = *(result + 128);
  v4 = *(result + 112);
  v5 = v3 + 48 * v4;
  v6 = *(v5 - 8);
  if (!v6)
  {
    v8 = 0;
LABEL_6:
    if (*(v8 + 22) == 3)
    {
      LOBYTE(v11) = 7;
      HIDWORD(v11) = a2;
      v12 = "entry";
      v13 = xmmword_1E3054780;
      v14 = 0;
      v15 = v8;
      re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(result, &v11);
    }

    else
    {
    }

    return;
  }

  v7 = *(v5 - 16);
  if (*v6 > v7)
  {
    v8 = *(v6 + 8) + 24 * v7;
    goto LABEL_6;
  }

  if (v17)
  {
    v10 = *&v18[7];
  }

  else
  {
    v10 = v18;
  }

  re::DynamicString::format(&v11, "Failed to deserialize %s. Index out of range.", v9, v10);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  if (v16 && (v17 & 1) != 0)
  {
    (*(*v16 + 40))();
  }
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_14;
  }

  v17 = re::TypeInfo::name(a6);
  if (*v17 >> 1 != 0x22C6ED80D0CLL || (v18 = v17[1], v18 != "StringID") && strcmp(v18, "StringID"))
  {
    goto LABEL_24;
  }

LABEL_14:
  if (a7)
  {
    v28 = 0;
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v28))
    {
      if (!v28)
      {
LABEL_33:
        v26 = *(a1 + 64) ^ 1;
        return v26 & 1;
      }

      v19 = a1 + 24;
      v20 = 0;
      v21 = 1;
LABEL_32:
      goto LABEL_33;
    }
  }

  else
  {
    v22 = a4[1];
    if (v22)
    {
      v23 = v22 >> 1;
    }

    else
    {
      v23 = v22 >> 1;
    }

    v28 = v23;
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v28))
    {
      v24 = v28;
      if (v24 <= (*(**(a1 + 24) + 64))(*(a1 + 24)))
      {
        if (!*a4)
        {
          *a4 = *(a1 + 48);
          re::DynamicString::setCapacity(a4, v24 + 1);
        }

        re::DynamicString::resize(a4, v24, 0);
        if (!v24)
        {
          goto LABEL_33;
        }

        if (a4[1])
        {
          v20 = a4[2];
        }

        else
        {
          v20 = a4 + 9;
        }

        v19 = a1 + 24;
        v21 = 0;
        goto LABEL_32;
      }

      v25 = (*(**(a1 + 24) + 64))(*(a1 + 24));
    }
  }

LABEL_24:
  v26 = 0;
  return v26 & 1;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5D19000;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5D19000;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(_anonymous_namespace_ *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if ((*(*(result + 1) + 64) & 1) == 0)
  {
    v9 = result;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    re::DynamicString::setCapacity(&v15, 0);
    va_copy(v14, va);
    re::DynamicString::vappendf(&v15, a2, va);
    v10 = *(v9 + 1);
    *&v11 = 400;
    *(&v11 + 1) = re::FoundationErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v12, &v15);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v10 + 24, &v11);
    if (v12 && (v13 & 1) != 0)
    {
      (*(*v12 + 40))();
    }

    result = v15;
    if (v15)
    {
      if (v16)
      {
        return (*(*v15 + 40))(v15, v17);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  *(v3 + 40 * v4 - 32) = a2;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  *(v5 + 40 * v4 - 40) = a3;
  return 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = v2 + 40 * *(a1 + 40);
  v4 = *(v3 - 40);
  if (!*(v3 - 32) && *v4 == 64 || (v5 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(*(a1 + 8) + 24, v4, 0), result = 0, v5))
  {
    v7 = "";
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    return 1;
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
{
  v1 = *(result + 12);
  v2 = *(result + 5) - 1;
  *(result + 5) = v2;
  *(result + 12) = v1 + 2;
  if (v1)
  {
    v3 = result + 56;
  }

  else
  {
    v3 = *(result + 8);
  }

  v4 = &v3[40 * v2];
  v5 = *(result + 1);
  if ((*(v4 - 8) || **(v4 - 5) != 64) && (*(v5 + 64) & 1) == 0)
  {
    v6 = *(v5 + 152) + 48 * *(v5 + 136);
    ++*(v6 - 16);
  }

  return result;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  v7 = v6 + 40 * *(a1 + 40) - 40;
  if (*(a1 + 48))
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = v8 + 40 * *(a1 + 40);
  v10 = *v7;
  v11 = *(v7 + 16);
  *(v9 + 32) = *(v7 + 32);
  *v9 = v10;
  *(v9 + 16) = v11;
  v12 = *(a1 + 40) + 1;
  *(a1 + 40) = v12;
  v13 = *(a1 + 48);
  *(a1 + 48) = v13 + 2;
  if (v13)
  {
    v14 = a1 + 56;
  }

  else
  {
    v14 = *(a1 + 64);
  }

  v15 = v14 + 40 * v12;
  v16 = *(a1 + 8);
  v17 = *(v15 - 40);
  if (a3)
  {
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(v16 + 24, v17, 0))
    {
      v18 = *(*(v16 + 152) + 48 * *(v16 + 136) - 8);
      v19 = *(v18 + 1);
      *(v15 - 24) = v19;
      *(v15 - 16) = v19 + 48 * *v18;
      *(v15 - 8) = 1;
      *a2 = *v18;
    }
  }

  else
  {
    re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(v16 + 24, v17, a2);
  }

  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 40 * *(result + 40);
  if (*(v2 - 8) == 1)
  {
    *(v2 - 32) = -1;
    v3 = *(v2 - 24);
    if ((v3[23] & 0x10) == 0)
    {
      v3 = *(v3 + 1);
    }
  }

  else
  {
    re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(*(result + 8) + 24, 0);
    *(v2 - 32) = 0;
    v3 = "key";
  }

  *(v2 - 40) = v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 40 * *(result + 40);
  if (*(v2 - 8) == 1)
  {
    v3 = 0;
    *(v2 - 24) += 48;
  }

  else
  {
    *(v2 - 40) = "value";
    v3 = 1;
  }

  *(v2 - 32) = v3;
  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 8);
  }

  if ((v1[40 * *(result + 5) - 8] & 1) == 0)
  {
  }

  return result;
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    if (*(a1 + 48))
    {
      v4 = a1 + 56;
    }

    else
    {
      v4 = *(a1 + 64);
    }

    v5 = *(a1 + 8);
    if (*(v4 + 40 * *(a1 + 40) - 8) == 1)
    {
      if ((*(v5 + 64) & 1) == 0)
      {
        v6 = *(v5 + 152) + 48 * *(v5 + 136);
        ++*(v6 - 16);
      }
    }

    else
    {
    }

    v7 = *(a1 + 48);
    --*(a1 + 40);
    *(a1 + 48) = v7 + 2;
  }

  return v2 == 0;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginData(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  if (*(v3 + 64))
  {
    return 0;
  }

  v6 = *(v4 + 40 * *(a1 + 40) - 40);
  if (result)
  {
    v7 = result;
    if ((*(result + 11) & 0x400) != 0)
    {
      if ((*(result + 11) & 0x1000) != 0)
      {
        v8 = result;
      }

      else
      {
        v8 = *(result + 1);
      }

      *(v3 + 232) = 0;
      ++*(v3 + 240);
      v9 = strlen(v8);
      if ((re::EncoderHelper::decodeBase64(v8, v9, v3 + 216) & 1) == 0)
      {
        if (v20)
        {
          v12 = *&v21[7];
        }

        else
        {
          v12 = v21;
        }

        re::DynamicString::format(&v13, "Failed to deserialize %s. Failed to decode data from Base64-encoded string.", v11, v12);
        if (v13 && (v14 & 1) != 0)
        {
          (*(*v13 + 40))();
        }

        if (v19)
        {
          if (v20)
          {
            (*(*v19 + 40))();
          }
        }

        return 0;
      }

      v10 = *(v3 + 232);
    }

    else
    {
      if (*(result + 11))
      {
        return 0;
      }

      v10 = 0;
    }

    *a2 = v10;
    LOBYTE(v13) = 4;
    HIDWORD(v13) = 0;
    v14 = v6;
    v15 = 0;
    v16 = v10;
    v17 = 0;
    v18 = v7;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(v3 + 24, &v13);
    return 1;
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(*(a1 + 8) + 24, *(v1 + 40 * *(a1 + 40) - 40), &v3);
  return v3;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginString(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = v3 + 40 * *(a1 + 40);
  v5 = *(v4 - 40);
  if (*(v4 - 8) == 1 && (*(v4 - 32) & 0x80000000) != 0)
  {
    *a2 = strlen(v5);
    return 1;
  }

  else
  {
    v7 = (*(a1 + 8) + 24);

    return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(v7, v5, a2);
  }
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, BOOL *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_31;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](result, v19, &v27, &v26);
        if (result != v19 && *result - 48 <= 9 || v27 > 0xFF || 255 - v27 < v26)
        {
        }

        v23 = v26 + v27;
        if (v21)
        {
          if ((v26 + v27) > 0x80u)
          {
          }

          goto LABEL_33;
        }

        if ((v23 & 0x80) == 0)
        {
          LOBYTE(v25) = v26 + v27;
          goto LABEL_34;
        }
      }

      v19 = result;
    }

LABEL_31:
    if (v19 != v22)
    {
      v23 = 0;
      LOBYTE(v25) = 0;
      if ((v21 & 1) == 0)
      {
LABEL_34:
        *a2 = v25;
        return result;
      }

LABEL_33:
      v25 = -v23;
      goto LABEL_34;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = v12;
      result = *(v6 - 40);
      while (*result == 48)
      {
        ++result;
        if (!--v20)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      result = *(v6 - 40);
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](result, v19, &v22, &v21);
        if ((result == v19 || *result - 48 > 9) && v22 <= 0xFF && 255 - v22 >= v21)
        {
          *a2 = v21 + v22;
          return result;
        }
      }

      v19 = result;
    }

LABEL_26:
    if (v19 != v11)
    {
      *a2 = 0;
      return result;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _WORD *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_31;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](result, v19, &v27, &v26);
        if (result != v19 && *result - 48 <= 9 || HIWORD(v27) || 0xFFFF - v27 < v26)
        {
        }

        v23 = v26 + v27;
        if (v21)
        {
          if ((v26 + v27) > 0x8000u)
          {
          }

          goto LABEL_33;
        }

        if ((v23 & 0x8000) == 0)
        {
          LOWORD(v25) = v26 + v27;
          goto LABEL_34;
        }
      }

      v19 = result;
    }

LABEL_31:
    if (v19 != v22)
    {
      v23 = 0;
      LOWORD(v25) = 0;
      if ((v21 & 1) == 0)
      {
LABEL_34:
        *a2 = v25;
        return result;
      }

LABEL_33:
      v25 = -v23;
      goto LABEL_34;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = v12;
      result = *(v6 - 40);
      while (*result == 48)
      {
        ++result;
        if (!--v20)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      result = *(v6 - 40);
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](result, v19, &v22, &v21);
        if ((result == v19 || *result - 48 > 9) && !HIWORD(v22) && 0xFFFF - v22 >= v21)
        {
          *a2 = v21 + v22;
          return result;
        }
      }

      v19 = result;
    }

LABEL_26:
    if (v19 != v11)
    {
      *a2 = 0;
      return result;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_30;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](result, v19, &v26, &v25);
        if (result != v19 && *result - 48 <= 9 || __CFADD__(v26, v25))
        {
        }

        v23 = v26 + v25;
        if (v21)
        {
          if (v23 > 0x80000000)
          {
          }

          goto LABEL_32;
        }

        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }
      }

      v19 = result;
    }

LABEL_30:
    if (v19 != v22)
    {
      v23 = 0;
      if ((v21 & 1) == 0)
      {
LABEL_33:
        *a2 = v23;
        return result;
      }

LABEL_32:
      v23 = -v23;
      goto LABEL_33;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = v12;
      result = *(v6 - 40);
      while (*result == 48)
      {
        ++result;
        if (!--v20)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      result = *(v6 - 40);
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](result, v19, &v22, &v21);
        if ((result == v19 || *result - 48 > 9) && !__CFADD__(v22, v21))
        {
          *a2 = v22 + v21;
          return result;
        }
      }

      v19 = result;
    }

LABEL_25:
    if (v19 != v11)
    {
      *a2 = 0;
      return result;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  if ((result & 1) == 0)
  {
    if (*(a1 + 48))
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  *a2 = v7;
  return result;
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_30;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](result, v19, &v26, &v25);
        if (result != v19 && *result - 48 <= 9 || __CFADD__(v26, v25))
        {
        }

        v23 = v26 + v25;
        if (v21)
        {
          if (v23 > 0x8000000000000000)
          {
          }

          goto LABEL_32;
        }

        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }
      }

      v19 = result;
    }

LABEL_30:
    if (v19 != v22)
    {
      v23 = 0;
      if ((v21 & 1) == 0)
      {
LABEL_33:
        *a2 = v23;
        return result;
      }

LABEL_32:
      v23 = -v23;
      goto LABEL_33;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);
    if (*(a1 + 48))
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }

    v8 = *(v7 + 40 * *(a1 + 40) - 40);
  }

  return result;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, float *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, double *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeString(uint64_t a1, void *__dst, size_t __n)
{
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  v7 = v6 + 40 * *(a1 + 40);
  if (*(v7 - 8) == 1 && (*(v7 - 32) & 0x80000000) != 0)
  {
    result = memcpy(__dst, *(v7 - 40), __n);
    *(__dst + __n) = 0;
  }

  else
  {
    if (__n)
    {
    }

    v8 = (*(a1 + 8) + 24);
  }

  return result;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeData(void *result, void *__dst)
{
  v2 = result[1];
  if ((*(v2 + 64) & 1) == 0)
  {
    v3 = result;
    v4 = *(*(v2 + 152) + 48 * *(v2 + 136) - 24);
    result = memcpy(__dst, *(v2 + 248), *(v2 + 232));
    v5 = *(v2 + 152) + 48 * *(v2 + 136);
    *(v5 - 16) += v4;
    v6 = v3[1];
    if ((*(v6 + 64) & 1) == 0)
    {
      v7 = *(v6 + 152);
      v8 = *(v6 + 136);
      if (*(v7 + 48 * v8 - 16) == *(v7 + 48 * v8 - 24))
      {
        *(v6 + 232) = 0;
        ++*(v6 + 240);
        v9 = *(v6 + 152) + 48 * *(v6 + 136);
        ++*(v9 - 16);
      }

      else
      {
        if (v14)
        {
          v11 = *&v15[7];
        }

        else
        {
          v11 = v15;
        }

        v12 = *(v6 + 152) + 48 * *(v6 + 136);
        re::DynamicString::format(&v16, "Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", v10, v11, *(v12 - 24), *(v12 - 16));
        if (v16 && (v17 & 1) != 0)
        {
          (*(*v16 + 40))();
        }

        result = v13;
        if (v13)
        {
          if (v14)
          {
            return (*(*v13 + 40))();
          }
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(*(a1 + 8) + 24, *(v6 + 40 * *(a1 + 40) - 40), &v8);
  v9 = v8 != 0;
  (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v9);
}

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::read(uint64_t a1, uint64_t a2, re **this)
{
  v17[0] = 0;
  v5 = *(a1 + 16);
  if (this[4] == v5)
  {
    re::TypeRegistry::typeInfo(v5, this + 4, &v15);
    re::Optional<re::TypeInfo>::operator=(v17, &v15);
  }

  else
  {
    re::getPrettyTypeName(&v13, this);
    re::TypeRegistry::typeInfo(&v15, *(a1 + 16), &v13);
    re::Optional<re::TypeInfo>::operator=(v17, &v15);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }
  }

  if (v17[0])
  {
    v6 = *(a1 + 16);
    v7 = re::TypeInfo::name(v18);
    re::TypeRegistry::typeInfo(&v15, v6, v7);
    if (v15)
    {
      result = *(a1 + 8);
      if (*(a1 + 48))
      {
        v9 = a1 + 56;
      }

      else
      {
        v9 = *(a1 + 64);
      }

      if ((result[64] & 1) == 0)
      {
        return (*(*result + 72))(result, *(v9 + 40 * *(a1 + 40) - 40), *(v9 + 40 * *(a1 + 40) - 32), a2, v18, &v16, 0);
      }
    }

    else
    {
      v11 = re::TypeInfo::name(v18)[1];
      if (*(a1 + 48))
      {
        v12 = a1 + 56;
      }

      else
      {
        v12 = *(a1 + 64);
      }

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', reading field '%s'(%d)", v11, *(v12 + 40 * *(a1 + 40) - 40), *(v12 + 40 * *(a1 + 40) - 32));
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v10 = a1 + 56;
    }

    else
    {
      v10 = *(a1 + 64);
    }

    return (*(*a1 + 56))(a1, "No typeinfo while writing field '%s'(%d)", *(v10 + 40 * *(a1 + 40) - 40), *(v10 + 40 * *(a1 + 40) - 32));
  }

  return result;
}

unsigned int *re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(uint64_t a1, char *a2, int *a3)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v19 = v3;
  v20 = v4;
  if (result)
  {
    v9 = result;
    v10 = *(result + 11);
    if (*(result + 11))
    {
      if (v10 != 3 || (*(result + 1) + 48 * *result) == rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::FindMember(result, "@ref"))
      {
        v10 = 2;
        v11 = 1;
      }

      else
      {
        v11 = 1;
        v10 = 1;
      }
    }

    else
    {
      v11 = *(result + 11);
    }

    *a3 = v10;
    v12[0] = 9;
    v13 = 0;
    v14 = a2;
    v15 = 0;
    v16 = v11;
    v17 = 0;
    v18 = v9;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v12);
    return 1;
  }

  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v21);
  if (v21[0] == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), v23), v23[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v18, a4);
    }
  }

  result = re::TypeMemberCollection::TypeMemberCollection(v18, *a3, a3[2]);
  if (v20)
  {
    for (i = 0; i < v20; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v18, i, &v16);
      if (*(v17 + 28) == 1)
      {
        v10 = *(v17 + 16);
        if (strlen(v10) >= 3 && *v10 == 109)
        {
          v10 += 2 * (*(v10 + 1) == 95);
        }

        v11 = *(v17 + 32);
        v12 = *(v17 + 24);
        re::TypeRegistry::typeInfo(v16, *v17, v23);
        re::TypeInfo::TypeInfo(v15, &v24);
        if ((a1[64] & 1) != 0 || (result = (*(*a1 + 72))(a1, v10, v11, a2 + v12, v15, v15, a4), (result & 1) == 0))
        {
          result = re::TypeInfo::renamedObjectMembers(a3);
          if (v13)
          {
            v14 = (result + 16);
            while (i != *v14)
            {
              v14 += 6;
              if (!--v13)
              {
                goto LABEL_21;
              }
            }

            if ((a1[64] & 1) == 0)
            {
              result = (*(*a1 + 72))(a1, *(v14 - 1), v11, a2 + v12, v15, v15, a4);
            }
          }
        }
      }

LABEL_21:
      ;
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, re::TypeInfo *a3, uint64_t *a4, uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), v44);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v40);
  if (v40[0] == 1)
  {
    if ((v44[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v41)[1];
      v12 = re::TypeInfo::name(a3);
    }

    if (v45 == v41)
    {
      v14 = *v47;
      v15 = *v43;
      if (*v47 == *v43)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_5;
        }
      }
    }

    else if (re::areSameTranslatedVersion(&v45, &v41, v10))
    {
LABEL_5:
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v45, a5);
      goto LABEL_15;
    }

    if (v46 == v42)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v45, &v41, a5);
    }

    else
    {
      v18 = re::TypeInfo::name(&v45)[1];
      v19 = re::TypeInfo::name(&v41);
    }
  }

LABEL_15:
  re::TypeMemberCollection::TypeMemberCollection(v39, *a3, *(a3 + 2));
  result = re::TypeMemberCollection::TypeMemberCollection(v37, *a4, a4[2]);
  if (v38)
  {
    for (i = 0; i < v38; ++i)
    {
      if (*(a1 + 64))
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v37, i, v35);
      if (*(v36 + 28) == 1)
      {
        v21 = *(v36 + 16);
        if (strlen(v21) >= 3 && *v21 == 109)
        {
          v21 += 2 * (*(v21 + 1) == 95);
        }

        v22 = *(v36 + 32);
        v23 = *(*a4 + 856);
        if (!v23 || (v23 = re::internal::TypeTranslationTable::translateMember(v23, v35), v23 == -1))
        {
          v27 = *re::foundationSerializationLogObjects(v23);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v49 = v28;
            v50 = 2080;
            v51 = v21;
            _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v29 = *(a1 + 272);
          re::TypeRegistry::typeInfo(v35[0], *v36, buf);
          re::TypeInfo::TypeInfo(v33, &v49 + 4);
          result = re::internal::translateType(buf, v29, v33);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v21, v22, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v39, v23, v33);
          v24 = *(v34 + 24);
          re::TypeRegistry::typeInfo(v33[0], *v34, buf);
          re::TypeInfo::TypeInfo(v32, &v49 + 4);
          re::TypeRegistry::typeInfo(v35[0], *v36, buf);
          re::TypeInfo::TypeInfo(v31, &v49 + 4);
          if (*(a1 + 64) == 1 || (result = (*(*a1 + 72))(a1, v21, v22, a2 + v24, v32, v31, a5), (result & 1) == 0))
          {
            result = re::TypeInfo::renamedObjectMembers(a4);
            if (v25)
            {
              v26 = (result + 16);
              while (i != *v26)
              {
                v26 += 6;
                if (!--v25)
                {
                  goto LABEL_35;
                }
              }

              v30 = *(v26 - 1);
              re::TypeRegistry::typeInfo(v33[0], *v34, buf);
              re::TypeInfo::TypeInfo(v32, &v49 + 4);
              re::TypeRegistry::typeInfo(v35[0], *v36, buf);
              result = re::TypeInfo::TypeInfo(v31, &v49 + 4);
              if ((*(a1 + 64) & 1) == 0)
              {
                result = (*(*a1 + 72))(a1, v30, v22, a2 + v24, v32, v31, a5);
              }
            }
          }
        }
      }

LABEL_35:
      ;
    }
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, BOOL *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
}

uint64_t re::serializeChar<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
}

uint64_t re::serializeI8<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
}

uint64_t re::serializeI16<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
}

uint64_t re::serializeI32<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
}

uint64_t re::serializeI64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
}

uint64_t re::serializeU8<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
}

uint64_t re::serializeU16<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
}

uint64_t re::serializeU32<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _DWORD *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
}

uint64_t re::serializeU64<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
}

unsigned int *re::serializeFloat<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a4, a7);
}

unsigned int *re::serializeDouble<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this == *a6)
    {
      v14 = **(this + 2);
      v15 = **(a6 + 2);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a4, a7);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char **a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_23:
      goto LABEL_24;
    }

    v15 = **(this + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_23;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_23;
    }
  }

LABEL_4:
  if (!a7)
  {
    v24 = 2 * (*a4 != 0);
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v24))
    {
LABEL_24:
      v14 = 0;
      return v14 & 1;
    }

    if (!v24)
    {
      if (*a4)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      goto LABEL_44;
    }

    if (v24 != 2)
    {
      if (v24 == 1)
      {
LABEL_17:
        goto LABEL_24;
      }

LABEL_44:
      if (*a4 && *(a1 + 64) == 1)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      goto LABEL_47;
    }

    if (*a4)
    {
      v19 = strlen(*a4);
    }

    else
    {
      v19 = 0;
    }

    v23 = v19;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v23))
    {
      goto LABEL_44;
    }

    v20 = *a4;
    v21 = v23;
    if (*a4 && v23 == v19)
    {
      if (v19)
      {
LABEL_34:
        v20 = *a4;
LABEL_43:
        v20[v21] = 0;
        goto LABEL_44;
      }
    }

    else
    {
      if (v20)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      if (v21 > (*(**(a1 + 24) + 64))(*(a1 + 24)))
      {
        (*(**(a1 + 24) + 64))(*(a1 + 24));
        goto LABEL_24;
      }

      if (((v21 == -1) << 63) >> 63 != (v21 == -1))
      {
        goto LABEL_24;
      }

      v20 = (*(**(a1 + 48) + 32))(*(a1 + 48), v21 + 1, 0);
      *a4 = v20;
      if (v21)
      {
        goto LABEL_34;
      }
    }

    v21 = 0;
    goto LABEL_43;
  }

  v24 = 0;
  v13 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v24);
  v14 = 0;
  if (v13)
  {
    if (!v24)
    {
LABEL_12:
LABEL_47:
      v14 = *(a1 + 64) ^ 1;
      return v14 & 1;
    }

    if (v24 != 1)
    {
      v23 = 0;
      if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v23))
      {
        if (v23)
        {
        }
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  return v14 & 1;
}

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_14;
  }

  v17 = re::TypeInfo::name(a6);
  if (*v17 >> 1 != 0x134375A94D9F7110 || (v18 = v17[1], v18 != "DynamicString") && strcmp(v18, "DynamicString"))
  {
    goto LABEL_26;
  }

LABEL_14:
  if (!a7)
  {
    v29 = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v29))
    {
      goto LABEL_26;
    }

    v19 = v29;
    if (v29)
    {
      if (v19 > (*(**(a1 + 24) + 64))(*(a1 + 24)))
      {
        (*(**(a1 + 24) + 64))(*(a1 + 24));
        goto LABEL_26;
      }

      if (((v19 == -1) << 63) >> 63 != (v19 == -1))
      {
        goto LABEL_26;
      }

      v23 = (*(**(a1 + 56) + 32))(*(a1 + 56), v19 + 1, 0);
      v23[v19] = 0;
      v27 = 0;
      v28 = &str_67;
      v25 = re::StringID::operator=(a4, &v27);
      if (v27)
      {
        if (v27)
        {
        }
      }

      v21 = *(**(a1 + 56) + 40);
    }

    else
    {
      v27 = 0;
      v28 = &str_67;
      v20 = re::StringID::operator=(a4, &v27);
      if ((v27 & 1) == 0)
      {
LABEL_32:
        v22 = *(a1 + 64) ^ 1;
        return v22 & 1;
      }
    }

    v21();
    goto LABEL_32;
  }

  v27 = 0;
  if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v27))
  {
    if (v27)
    {
    }

    goto LABEL_32;
  }

LABEL_26:
  v22 = 0;
  return v22 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v40 = *MEMORY[0x1E69E9840];
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_17:
      goto LABEL_41;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_17;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if (!a7)
  {
    v13 = *this;
    v14 = **(this + 2);
    v36[0] = 0x258C98EAAF29A10ALL;
    v36[1] = "CallbackSerializerAttribute";
    v15 = re::TypeRegistry::typeID(buf, v13, v36);
    if (*buf && (v32 = *&buf[8], v33 = v14, LODWORD(v34) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v13 + 768, &v32)) != 0))
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    if (v36[0])
    {
      if (v36[0])
      {
      }
    }

    v21 = *v16;
    v22 = *(a1 + 264);
    v36[0] = 0;
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, v36))
    {
      v23 = *(a1 + 56);
      v34 = 0;
      v35 = 0;
      v32 = v23;
      v33 = 0;
      re::DynamicString::setCapacity(&v32, 0);
      if (v36[0])
      {
        re::DynamicString::resize(&v32, v36[0], 0);
        if (v33)
        {
          v24 = v34;
        }

        else
        {
          v24 = &v33 + 1;
        }
      }

      if (v33)
      {
        v25 = v34;
      }

      else
      {
        v25 = &v33 + 1;
      }

      v26 = (*(v21 + 80))(*(a1 + 48), v22, v21, a4, v25);
      if ((v26 & 1) == 0)
      {
        v27 = *re::foundationSerializationLogObjects(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          if (v33)
          {
            v28 = v34;
          }

          else
          {
            v28 = &v33 + 1;
          }

          v29 = re::TypeInfo::name(this)[1];
          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v28;
          v38 = 2080;
          v39 = v29;
          _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_INFO, "Failed to parse %s: %s (type %s) using deserialization callback - skipping.", buf, 0x20u);
        }
      }

      if (v32 && (v33 & 1) != 0)
      {
        (*(*v32 + 40))();
      }

      goto LABEL_40;
    }

LABEL_41:
    v30 = 0;
    return v30 & 1;
  }

  v32 = 0;
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v32))
  {
    goto LABEL_41;
  }

  if (v32)
  {
  }

LABEL_40:
  v30 = *(a1 + 64) ^ 1;
  return v30 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(uint64_t a1, char *a2, const re::TypeInfo *a3, char **a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_15:
      goto LABEL_16;
    }

    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 != v14)
    {
      goto LABEL_15;
    }

    v16 = WORD1(v13) == WORD1(v14);
    v15 = (v14 ^ v13) & 0xFFFFFF00000000;
    v16 = v16 && v15 == 0;
    if (!v16)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  v33 = 0;
  if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v33))
  {
    if (v33 == 1)
    {
      v32 = 0;
      re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(a1 + 24, &v32);
      if ((*(a1 + 64) & 1) == 0)
      {
        v19 = v32;
        if (*(a1 + 408) <= v32)
        {
        }

        else
        {
          re::internal::SharedObjectGraph::typeID(&v28, (a1 + 336), v32);
          if (v28 == *this)
          {
            v20 = **(this + 2);
            if (v29 == v20 && v30 == WORD1(v20) && ((v31 ^ HIDWORD(v20)) & 0xFFFFFF) == 0)
            {
              if ((a7 & 1) == 0)
              {
                if (*a4)
                {
                  v26 = *a4;
                  if (v26 != re::internal::SharedObjectGraph::object((a1 + 336), v19))
                  {
                    (*(**(a1 + 48) + 40))(*(a1 + 48), *a4);
                    *a4 = 0;
                  }
                }

                *a4 = re::internal::SharedObjectGraph::object((a1 + 336), v19);
                if (*(a1 + 336) == 1 && *(a1 + 337) == 1)
                {
                  re::internal::SharedObjectGraph::addChild((a1 + 336), *(*(a1 + 504) + 4 * *(a1 + 488) - 4), v19);
                }
              }

              goto LABEL_38;
            }
          }

          v21 = *(a1 + 272);
          re::internal::SharedObjectGraph::typeID(&v28, (a1 + 336), v19);
          re::TypeRegistry::typeName(v21, &v28);
        }
      }
    }

    else
    {
      if (!v33)
      {
        if ((a7 & 1) == 0 && *a4)
        {
          (*(**(a1 + 48) + 40))(*(a1 + 48));
          *a4 = 0;
        }

LABEL_38:
        v17 = *(a1 + 64) ^ 1;
        return v17 & 1;
      }

      if ((a7 & 1) == 0 && *a4)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      v28 = 0;
      if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v28))
      {
        v22 = v28;
        if (((v28 == -1) << 63) >> 63 == (v28 == -1))
        {
          v23 = (*(**(a1 + 48) + 32))(*(a1 + 48), v28 + 1, 0);
          v24 = v23;
          if ((a7 & 1) == 0)
          {
            *a4 = v23;
          }

          if (v22)
          {
          }

          *(v24 + v22) = 0;
          v25 = **(this + 2);
          *&v27 = *this;
          *(&v27 + 1) = v25;
          re::internal::SharedObjectGraph::addObject(a1 + 336, v24, &v27);
          goto LABEL_38;
        }
      }
    }
  }

LABEL_16:
  v17 = 0;
  return v17 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, char *a2, int a3, void **a4, re::TypeInfo *this, const re::TypeInfo *a6, int a7)
{
  v88 = *MEMORY[0x1E69E9840];
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v20 = **(this + 2);
    v21 = **(a6 + 2);
    if (v20 == v21)
    {
      v23 = WORD1(v20) == WORD1(v21);
      v22 = (v21 ^ v20) & 0xFFFFFF00000000;
      v23 = v23 && v22 == 0;
      if (v23)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, v13))
  {
LABEL_4:
    v15 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v24 = re::TypeInfo::name(this), v25 = re::TypeInfo::name(a6), !re::StringID::operator==(v24, v25))))
  {
    goto LABEL_28;
  }

  v15 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v80, &buf + 8);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v78, &buf + 8);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v19 = *v81;
    v77[0] = v80[0];
    v77[1] = v19;
    if (!v80[0])
    {
      goto LABEL_8;
    }

LABEL_11:
    re::TypeRegistry::typeInfo(*this, v77, &buf);
    re::TypeInfo::TypeInfo(v75, &buf + 8);
    v74 = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v74))
    {
      goto LABEL_28;
    }

    if (v74 != 1)
    {
      if (!v74)
      {
        if ((a7 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(v75, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }

        goto LABEL_115;
      }

      if (isPointerToPolymorphicType)
      {
        if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
        {
          v33 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
          if (*v33)
          {
            v34 = *(v33 + 8);
            if ((*(v34 + 11) & 0x1000) != 0)
            {
              v35 = v34;
            }

            else
            {
              v35 = *(v34 + 1);
            }

            if (v35)
            {
              v36 = *v35;
              if (*v35)
              {
                v37 = v35[1];
                if (v37)
                {
                  v38 = (v35 + 2);
                  do
                  {
                    v36 = 31 * v36 + v37;
                    v39 = *v38++;
                    v37 = v39;
                  }

                  while (v39);
                }
              }
            }

            else
            {
              v36 = 0;
            }

            v47 = 2 * v36;
            v48 = *(v79 + 22);
            v49 = (v48 - 1);
            if (v48 == 1)
            {
              goto LABEL_80;
            }

            v50 = 0;
            while (1)
            {
              re::TypeInfo::derivedClass(&buf, v78, v50);
              v51 = re::TypeInfo::polymorphicObjectName(&buf);
              if ((*v51 ^ v47) <= 1)
              {
                v52 = v51[1];
                if (v52 == v35 || !strcmp(v52, v35))
                {
                  break;
                }
              }

              if (v49 == ++v50)
              {
                goto LABEL_80;
              }
            }

            v53 = *v87;
            v84 = buf;
            v85 = v53;
            if (!buf)
            {
LABEL_80:
              v54 = re::TypeInfo::polymorphicObjectName(v78);
              if ((*v54 ^ v47) > 1 || (v54 = v54[1], v54 != v35) && (v54 = strcmp(v54, v35), v54) || (v55 = *v79, v84 = v78[0], v85 = v55, !v78[0]))
              {
                v58 = *re::foundationSerializationLogObjects(v54);
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf) = 136315138;
                  *(&buf + 4) = v35;
                  _os_log_error_impl(&dword_1E1C61000, v58, OS_LOG_TYPE_ERROR, "Skipping unknown polymorphic type. Type name = %s", &buf, 0xCu);
                  if (a7)
                  {
LABEL_113:
                    if ((*(a1 + 64) & 1) == 0)
                    {
                      v68 = *(a1 + 152) + 48 * *(a1 + 136);
                      ++*(v68 - 16);
                    }

                    goto LABEL_115;
                  }
                }

                else if (a7)
                {
                  goto LABEL_113;
                }

                if (*a4)
                {
                  re::TypeInfo::releaseInstance(v75, *a4, *(a1 + 48), *(a1 + 264));
                  *a4 = 0;
                }

                goto LABEL_113;
              }
            }

            if ((a7 & 1) == 0 && *a4)
            {
              re::TypeInfo::releaseInstance(v75, *a4, *(a1 + 48), *(a1 + 264));
              *a4 = 0;
            }

            re::TypeRegistry::typeInfo(v78[0], &v84, &buf);
            v56 = re::TypeInfo::TypeInfo(v83, &buf + 8);
            if (v15)
            {
              v57 = *(a1 + 272);
            }

            else
            {
              v57 = *(a1 + 272);
              if (*this == v57)
              {
                re::TypeInfo::operator=(v75, v83);
                v62 = v84;
                v63 = v85;
                goto LABEL_108;
              }
            }

            v60 = re::TypeInfo::name(v56);
            v61 = re::TypeRegistry::typeInfo(&buf, v57, v60);
            if (buf != 1)
            {
              v64 = *re::foundationSerializationLogObjects(v61);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                v65 = re::TypeInfo::name(v83)[1];
                LODWORD(buf) = 136315138;
                *(&buf + 4) = v65;
                _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "No matching runtime type found for serialized polymorphic type %s. Skipping unknown type.", &buf, 0xCu);
              }

              *&buf = 0;
              *(&buf + 1) = 0xFFFFFFFFLL;
              (*(*a1 + 16))(a1, 0, &buf);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, v35, 0, 0, v83, v83, 1);
              }

              goto LABEL_112;
            }

            re::TypeInfo::operator=(v75, &buf + 8);
            v62 = v75[0];
            v63 = *v76;
LABEL_108:
            Instance = re::TypeInfo::createInstance(v75, *(a1 + 48), *(a1 + 264));
            v67 = Instance;
            if ((a7 & 1) == 0)
            {
              *a4 = Instance;
              *&buf = v62;
              *(&buf + 1) = v63;
              re::internal::setActualType(a4, this, &buf);
            }

            v82[0] = v62;
            v82[1] = v63;
            (*(*a1 + 16))(a1, v67, v82);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, v35, 0, v67, v75, v83, v67 == 0);
            }

LABEL_112:
            (*(*a1 + 24))(a1);
            goto LABEL_113;
          }
        }

LABEL_115:
        v26 = *(a1 + 64) ^ 1;
        return v26 & 1;
      }

      if (!a7)
      {
        v42 = *a4;
        if (!*a4)
        {
          v42 = re::TypeInfo::createInstance(v80, *(a1 + 48), 0);
        }

        v43 = 0;
        *a4 = v42;
        goto LABEL_67;
      }

      v40 = *(a1 + 272);
      if (v80[0] != v40)
      {
        v41 = re::TypeInfo::name(v80);
        re::TypeRegistry::typeInfo(&buf, v40, v41);
        if ((buf & 1) == 0)
        {
          v42 = 0;
          v43 = 1;
          goto LABEL_67;
        }

        re::TypeInfo::operator=(v80, &buf + 8);
      }

      v42 = re::TypeInfo::createInstance(v80, *(a1 + 48), 0);
      v43 = 0;
LABEL_67:
      v46 = *v81;
      *&v71 = v80[0];
      *(&v71 + 1) = v46;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), v42, &v71);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v42, v80, v78, v43);
      }

      if (*(a1 + 336) == 1)
      {
        --*(a1 + 488);
        ++*(a1 + 496);
      }

      goto LABEL_115;
    }

    LODWORD(v84) = 0;
    re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(a1 + 24, &v84);
    if (*(a1 + 64))
    {
      goto LABEL_28;
    }

    v28 = v84;
    if (*(a1 + 408) > v84)
    {
      re::internal::SharedObjectGraph::typeID(v73, (a1 + 336), v84);
      if (!re::internal::areCompatible(this, v73))
      {
        v44 = re::TypeInfo::name(v80)[1];
        v45 = *(a1 + 272);
        re::internal::SharedObjectGraph::typeID(&buf, (a1 + 336), v28);
        v69 = v44;
        v70 = *(re::TypeRegistry::typeName(v45, &buf) + 1);
        v16 = "Invalid reference. Objects are not compatible. Expected type %s. Actual type %s.";
        goto LABEL_64;
      }

      if (a7)
      {
        goto LABEL_115;
      }

      if (*a4)
      {
        v29 = *a4;
        if (v29 != re::internal::SharedObjectGraph::object((a1 + 336), v28))
        {
          re::TypeInfo::releaseInstance(v75, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }
      }

      v30 = re::internal::SharedObjectGraph::object((a1 + 336), v28);
      v31 = v30;
      *a4 = v30;
      if ((*(v76 + 49) & 2) != 0)
      {
        v59 = v76[4];
        if (v59)
        {
          v59(v30);
        }

        if (*(a1 + 336) == 1 && *(a1 + 337) == 1)
        {
          re::internal::SharedObjectGraph::addChild((a1 + 336), *(*(a1 + 504) + 4 * *(a1 + 488) - 4), v28);
        }
      }

      else
      {
        re::internal::SharedObjectGraph::typeID(v83, (a1 + 336), v28);
        if (!v83[0])
        {
          v69 = v28;
          v16 = "TypeID for shared object at index %d is invalid.";
          goto LABEL_64;
        }

        re::TypeRegistry::typeInfo(v83[0], v83, &buf);
        if ((buf & 1) == 0)
        {
          v69 = v28;
          v16 = "No TypeInfo found for shared object at index %d.";
          goto LABEL_64;
        }

        v32 = re::TypeInfo::createInstance((&buf + 8), *(a1 + 48), *(a1 + 264));
        *a4 = v32;
        if ((re::TypeInfo::copy((&buf + 8), v32, v31, *(a1 + 48), *(a1 + 264)) & 1) == 0)
        {
          v69 = re::TypeInfo::name((&buf + 8))[1];
          v16 = "Failed to copy non-shareable object of type '%s'.";
LABEL_64:
          v17 = a1;
          v18 = 0;
          goto LABEL_9;
        }
      }

      re::internal::SharedObjectGraph::typeID(v72, (a1 + 336), v28);
      re::TypeInfo::setActualTypeForPointer(this, a4, v72);
      goto LABEL_115;
    }

    v69 = v84;
    v16 = "Invalid reference ID for shared object: %u";
    goto LABEL_64;
  }

  re::internal::actualType(v77, a4, this);
  if (v77[0])
  {
    goto LABEL_11;
  }

LABEL_8:
  v69 = re::TypeInfo::name(this)[1];
  v16 = "Failed to get actual type of polymorphic object. Type %s.";
  v17 = a1;
  v18 = a2;
LABEL_9:
LABEL_28:
  v26 = 0;
  return v26 & 1;
}

uint64_t re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(uint64_t result, _DWORD *a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = result;
    result = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(result, 0, 0);
    if (result)
    {
      if ((*(v3 + 40) & 1) == 0)
      {
        v4 = *(v3 + 128) + 48 * *(v3 + 112);
        ++*(v4 - 16);
      }
    }
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D191C8;
  re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D19160;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 1;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::internal::SharedObjectGraph::markAndSweep((a1 + 336), *(a1 + 48), *(a1 + 264));
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v19 = *(a1 + 272);
  v27 = 0x258C98EAAF29A10ALL;
  v28 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(&v31, v19, &v27);
  if (v27)
  {
    if (v27)
    {
    }
  }

  if (v31)
  {
    v21 = *(a1 + 272);
    v26 = v31;
    re::TypeRegistry::attributesByAttributeType(v21, &v26, &v27);
    if (v29)
    {
      v22 = 48 * v29;
      v23 = (v30 + 16);
      do
      {
        v24 = *v23;
        v23 += 3;
        v25 = v24;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
        v22 -= 48;
      }

      while (v22);
    }

    if (v27)
    {
      if (v30)
      {
        (*(*v27 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, unint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 61);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v20 = *a5;
    *(&v20 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v15, &v20);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 336) == 1)
    {
      --*(a1 + 61);
      ++*(a1 + 124);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (*this == *(a1 + 272))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
        result = _os_crash("assertion failure: (!Unreachable code) Invalid PointerSharing type.");
        __break(1u);
        return result;
      }

      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
      _os_crash("assertion failure: (!Unreachable code) External references are not supported by the SerializerV1.");
      __break(1u);
      goto LABEL_9;
    }
  }

  return v7;
}

void re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    return 0;
  }
}

unsigned int *(*re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, uint64_t a7)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

unsigned int *re::serializeType<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, uint64_t a7)
{
  v9 = this;
  v245 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_18;
  }

  if (*this == *a6)
  {
    v14 = **(this + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_18;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_18;
  }

  if (*(v9 + 12) != *(a6 + 12))
  {
    goto LABEL_366;
  }

  v18 = re::DataArray<re::TextureAtlasTile>::tryGet(*v9 + 96, **(v9 + 16));
  if (v18)
  {
    v19 = *(v18 + 16);
  }

  else
  {
    v19 = -1;
  }

  v20 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
  if (v20)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = -1;
  }

  if (v19 != v21)
  {
    v32 = re::TypeInfo::name(v9);
    v33 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v32, v33))
    {
      v51 = re::TypeInfo::name(a6)[1];
      v52 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      if (v52)
      {
        v53 = *(v52 + 16);
      }

      else
      {
        v53 = 0xFFFFFFFFLL;
      }

      v66 = re::TypeInfo::name(v9)[1];
      v67 = re::DataArray<re::TextureAtlasTile>::tryGet(*v9 + 96, **(v9 + 16));
      if (v67)
      {
        v68 = *(v67 + 16);
      }

      else
      {
        v68 = 0xFFFFFFFFLL;
      }

      v221 = v66;
      v222 = v68;
      v219 = v51;
      v220 = v53;
      v23 = "Type name changed: Serialized type %s version %u, runtime type %s version %u.";
      goto LABEL_234;
    }

    v34 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v34)
    {
      v35 = *(v34 + 16);
    }

    else
    {
      v35 = -1;
    }

    re::TypeInfo::atVersion(&v225, v9, v35);
    if ((v225 & 1) == 0)
    {
      v63 = re::TypeInfo::name(a6)[1];
      v64 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
      if (v64)
      {
        v65 = *(v64 + 16);
      }

      else
      {
        v65 = 0xFFFFFFFFLL;
      }

      v219 = v63;
      v220 = v65;
      v23 = "Unknown serialized type %s version %u. No matching runtime type found.";
      goto LABEL_234;
    }

    if (a7)
    {
      Instance = 0;
    }

    else
    {
      Instance = re::TypeInfo::createInstance(&v226, *(a1 + 48), *(a1 + 264));
    }

    if (*(a1 + 64) & 1) != 0 || ((*(*a1 + 72))(a1, a2, a3, Instance, &v226, a6, a7), (*(a1 + 64)))
    {
      if (!Instance)
      {
        goto LABEL_367;
      }

      v131 = *(a1 + 48);
      v132 = *(a1 + 264);
      v133 = &v226;
      v134 = Instance;
      goto LABEL_221;
    }

    if (a7 & 1) != 0 || (re::TypeInfo::TypeInfo(&Tag, &v226), re::internal::upgradeObject(Instance, &Tag, a4, v9, *(a1 + 48), *(a1 + 264), buf), (buf[0]))
    {
      LOBYTE(v9) = 1;
      return (v9 & 1);
    }

    if (v240)
    {
      v199 = v241;
    }

    else
    {
      v199 = &v240 + 1;
    }

    if ((buf[0] & 1) != 0 || !v239 || (v240 & 1) == 0)
    {
      goto LABEL_367;
    }

    v169 = *(*v239 + 40);
LABEL_349:
    v169();
    goto LABEL_367;
  }

LABEL_18:
  v22 = *(v9 + 12);
  if (v22 > 4)
  {
    if (*(v9 + 12) > 6u)
    {
      if (v22 == 7)
      {
        if (v9 != a6)
        {
          if (*v9 == *a6)
          {
            v114 = **(v9 + 16);
            v115 = **(a6 + 2);
            if (v114 != v115)
            {
              goto LABEL_366;
            }

            v17 = WORD1(v114) == WORD1(v115);
            v116 = (v115 ^ v114) & 0xFFFFFF00000000;
            if (!v17 || v116 != 0)
            {
              goto LABEL_366;
            }
          }

          else if (!re::areSameTranslatedVersion(v9, a6, a3))
          {
            goto LABEL_366;
          }
        }

        v40 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 16);
        if (a7)
        {
          if (v40)
          {
            v225 = 0;
            if (v225 < *(*(a6 + 2) + 96))
            {
              re::TypeInfo::unionMember(buf, a6, v225);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, "value", 0, 0, buf, buf, 1);
              }
            }

            goto LABEL_451;
          }
        }

        else if (v40)
        {
          re::TypeInfo::TypeInfo(buf, v9);
          Tag = re::UnionAccessor::readTag(buf, a4);
          v61 = Tag;
          re::UnionAccessor::reset(buf, a4, Tag, *(a1 + 48));
          if (v61 < *(*(v9 + 16) + 96))
          {
            re::TypeInfo::unionMember(&v225, v9, v61);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, "value", 0, a4, &v225, &v225, 0);
            }
          }

          goto LABEL_451;
        }

        goto LABEL_367;
      }

      if (v22 != 8)
      {
        if (v22 == 9)
        {
          v219 = re::TypeInfo::name(v9)[1];
          v23 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_234:
          v135 = a1;
          v136 = a2;
LABEL_265:
          goto LABEL_367;
        }

LABEL_89:
        v219 = *(v9 + 12);
        v23 = "Invalid type category. Value = %d";
        goto LABEL_234;
      }

      if (!a7)
      {
        goto LABEL_83;
      }

      if (*(*(v9 + 16) + 49))
      {
        v72 = *(a1 + 272);
        Tag = 0x2686EB529B3EE220;
        v236 = "DynamicString";
        re::TypeRegistry::typeInfo(buf, v72, &Tag);
        v73 = re::TypeInfo::TypeInfo(&v225, &buf[8]);
        if (Tag)
        {
          if (Tag)
          {
          }
        }

        v74 = &v225;
        v75 = &v225;
        v76 = a1;
        v77 = a2;
      }

      else
      {
        v42 = re::TypeInfo::name(v9);
        if ((*v42 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220 || (v44 = v42[1], v44 != "DynamicString") && strcmp(v44, "DynamicString"))
        {
LABEL_83:
          v45 = *(v9 + 16);
          v46 = *(v45 + 48);
          if ((v46 & 0x10) == 0 && *(v9 + 12) == 8)
          {
            v47 = *(v45 + 168);
            if (v47)
            {
              v48 = *v9;
              v49 = *a6;
              *buf = &unk_1F5D19230;
              *&buf[8] = a1;
              *&buf[16] = v48;
              v239 = v49;
              v240 = 0;
              v241 = 0;
              v242 = 1;
              v243 = 0;
              v244 = 0;
              v225 = a2;
              LODWORD(v226) = a3;
              v227 = 0;
              v228 = 0;
              v229 = 0;
              v47(buf, a4, v50);
              LOBYTE(v9) = *(a1 + 64) ^ 1;
              *buf = &unk_1F5D19230;
              if (v240)
              {
                if ((v242 & 1) == 0)
                {
                  (*(*v240 + 40))();
                }
              }

              return (v9 & 1);
            }
          }

          if ((v46 & 4) == 0)
          {
            if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
            {
              v54 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
              if (v54 && *(v54 + 22) == 3 && *v54 && (v55 = *(v54 + 8), (*(v55 + 46) & 0x40) != 0) && ((*(v55 + 22) & 0x1000) != 0 ? (v56 = *(v54 + 8)) : (v56 = *(v55 + 8)), !strcmp(v56, "@version")))
              {
                v57 = *(v55 + 24);
              }

              else
              {
                v57 = 1;
              }

              v58 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
              if (v58)
              {
                v60 = *(v58 + 16);
              }

              else
              {
                v60 = -1;
              }

              if (v57 == v60)
              {
                if (v9 != a6)
                {
                  if (*v9 == *a6)
                  {
                    v205 = **(v9 + 16);
                    v206 = **(a6 + 2);
                    if (v205 == v206 && WORD1(v205) == WORD1(v206) && ((v206 ^ v205) & 0xFFFFFF00000000) == 0)
                    {
                      goto LABEL_374;
                    }
                  }

                  else if (re::areSameTranslatedVersion(v9, a6, v59))
                  {
                    goto LABEL_374;
                  }

                  if (*(v9 + 12) == *(a6 + 12))
                  {
                    re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, v9, a6, a7);
                  }

                  else
                  {
                    v207 = re::TypeInfo::name(v9)[1];
                    v208 = re::TypeInfo::name(a6);
                  }

                  goto LABEL_451;
                }

LABEL_374:
                re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, v9, a7);
LABEL_451:
                if (*(a1 + 64))
                {
                  goto LABEL_367;
                }

                v209 = *(a1 + 152) + 48 * *(a1 + 136);
                ++*(v209 - 16);
                goto LABEL_453;
              }

              if (*v9 == *a6 && (v174 = **(v9 + 16), v175 = **(a6 + 2), v174 == v175) && WORD1(v174) == WORD1(v175) && ((v175 ^ v174) & 0xFFFFFF00000000) == 0)
              {
                re::TypeInfo::atVersion(&v225, v9, v57);
                if (v225)
                {
                  if (a7)
                  {
                    v215 = 0;
                  }

                  else
                  {
                    v215 = re::TypeInfo::createInstance(&v226, *(a1 + 48), *(a1 + 264));
                  }

                  re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, v215, &v226, a7);
                  v217 = *(a1 + 64);
                  if (v217 == 1)
                  {
                    if (v215)
                    {
                      re::TypeInfo::releaseInstance(&v226, v215, *(a1 + 48), *(a1 + 264));
                    }
                  }

                  else if ((a7 & 1) == 0)
                  {
                    re::TypeInfo::TypeInfo(&Tag, &v226);
                    re::internal::upgradeObject(v215, &Tag, a4, v9, *(a1 + 48), *(a1 + 264), buf);
                    if ((buf[0] & 1) == 0)
                    {
                      v218 = (v240 & 1) != 0 ? v241 : &v240 + 1;
                      if (buf[0] & 1) == 0 && v239 && (v240)
                      {
                        (*(*v239 + 40))();
                      }
                    }
                  }

                  LOBYTE(v9) = v217 ^ 1;
                  return (v9 & 1);
                }

                v219 = re::TypeInfo::name(v9)[1];
                v220 = v57;
                v23 = "Unknown serialized type %s version %u. No matching runtime type found.";
              }

              else
              {
                v176 = re::TypeInfo::name(a6)[1];
                v177 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
                if (v177)
                {
                  v178 = *(v177 + 16);
                }

                else
                {
                  v178 = 0xFFFFFFFFLL;
                }

                v220 = v178;
                v221 = v57;
                v219 = v176;
                v23 = "Type %s version %u expected in JSON. Actual version found in JSON: %u";
              }

LABEL_264:
              v135 = a1;
              v136 = 0;
              goto LABEL_265;
            }

LABEL_367:
            LOBYTE(v9) = 0;
            return (v9 & 1);
          }

          re::TypeMemberCollection::TypeMemberCollection(buf, *v9, v45);
          re::TypeMemberCollection::operator[](buf, 0, &Tag);
          v128 = *(v237 + 24);
          re::TypeRegistry::typeInfo(Tag, *v237, buf);
          re::TypeInfo::TypeInfo(v234, &buf[8]);
          if (v9 == a6)
          {
            goto LABEL_212;
          }

          if (*v9 == *a6)
          {
            v164 = **(v9 + 16);
            v165 = *(a6 + 2);
            v166 = *v165;
            if (v164 == *v165 && WORD1(v164) == WORD1(v166) && ((v166 ^ v164) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_212;
            }
          }

          else
          {
            if (re::areSameTranslatedVersion(v9, a6, v129))
            {
LABEL_212:
              if (*(a1 + 64))
              {
                goto LABEL_367;
              }

              v130 = (*(*a1 + 72))(a1, a2, a3, &a4[v128], v234, v234, a7);
LABEL_385:
              LOBYTE(v9) = v130;
              return (v9 & 1);
            }

            v165 = *(a6 + 2);
          }

          if (*(v165 + 96) == 1)
          {
            re::TypeMemberCollection::TypeMemberCollection(&v225, *a6, v165);
            re::TypeMemberCollection::operator[](&v225, 0, v230);
            re::TypeRegistry::typeInfo(v230[0], *v231, buf);
            re::TypeInfo::TypeInfo(v232, &buf[8]);
            if (*(a1 + 64))
            {
              goto LABEL_367;
            }

            v130 = (*(*a1 + 72))(a1, a2, a3, &a4[v128], v234, v232, a7);
            goto LABEL_385;
          }

LABEL_366:
          goto LABEL_367;
        }

        v76 = a1;
        v77 = a2;
        v74 = v9;
        v75 = v9;
      }

      re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v76, v77, v43, 0, v74, v75, 1);
      goto LABEL_453;
    }

    if (v22 != 5)
    {
      if (v22 != 6)
      {
        goto LABEL_89;
      }

      re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v225, &buf[8]);
      v26 = re::TypeInfo::name(&v225);
      v27 = BYTE4(v226);
      if (BYTE4(v226) == 1)
      {
        if (re::TypeInfo::isInteger(&v225))
        {
          v28 = *v26 >> 1;
          if (v28 > 0x303EE8780EDLL)
          {
            if (v28 == 0x303EE8780EELL)
            {
              v171 = v26[1];
              v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (v171 == "uint32_t")
              {
                goto LABEL_384;
              }

              v172 = strcmp(v171, "uint32_t");
              v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (!v172)
              {
                goto LABEL_384;
              }

              goto LABEL_359;
            }

            if (v28 != 0x303EE88E58DLL)
            {
              goto LABEL_359;
            }

            v154 = v26[1];
            v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v154 == "uint64_t")
            {
              goto LABEL_384;
            }

            v155 = "uint64_t";
          }

          else
          {
            if (v28 != 3393056694)
            {
              if (v28 == 0x303EE86A734)
              {
                v29 = v26[1];
                v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (v29 == "uint16_t")
                {
                  goto LABEL_384;
                }

                v31 = strcmp(v29, "uint16_t");
                v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (!v31)
                {
                  goto LABEL_384;
                }
              }

              goto LABEL_359;
            }

            v154 = v26[1];
            v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v154 == "size_t")
            {
              goto LABEL_384;
            }

            v155 = "size_t";
          }

          v170 = strcmp(v154, v155);
          v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
          if (!v170)
          {
            goto LABEL_384;
          }

LABEL_359:
          *buf = 0x18E6A9A093;
          *&buf[8] = "uint8_t";
          v173 = re::StringID::operator==(v26, buf);
          v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
          if (v173)
          {
            goto LABEL_384;
          }

          *buf = 0x16749F63A2;
          *&buf[8] = "int64_t";
          if (re::StringID::operator==(v26, buf))
          {
            v130 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, v9, a6, a7);
            goto LABEL_385;
          }

          Tag = 3327612;
          v236 = "long";
          v179 = re::StringID::operator==(v26, &Tag);
          v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
          if (v179 || (*buf = 104431, *&buf[8] = "int", v180 = re::StringID::operator==(v26, buf), v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v180) || (*buf = 109413500, *&buf[8] = "short", v181 = re::StringID::operator==(v26, buf), v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v181))
          {
LABEL_384:
            v130 = v30(a1, a2, a3, a4, v9, a6, a7);
            goto LABEL_385;
          }

LABEL_237:
          if (v9 == a6)
          {
            goto LABEL_245;
          }

          if (*v9 == *a6)
          {
            v139 = **(v9 + 16);
            v140 = **(a6 + 2);
            if (v139 == v140 && WORD1(v139) == WORD1(v140) && ((v140 ^ v139) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_245;
            }
          }

          else if (re::areSameTranslatedVersion(v9, a6, v25))
          {
            goto LABEL_245;
          }

          if (*(v9 + 12) != *(a6 + 12))
          {
            goto LABEL_366;
          }

LABEL_245:
          if (a7)
          {
            v141 = *(a1 + 272);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
            re::TypeInfo::TypeInfo(&Tag, &buf[8]);
            re::internal::translateType(&v225, v141, &Tag);
            v142 = *(a1 + 272);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), buf);
            re::TypeInfo::TypeInfo(v234, &buf[8]);
            re::internal::translateType(&Tag, v142, v234);
            v143 = (*(*a1 + 80))(a1, &v225);
            if (v143)
            {
              v144 = v143;
              v9 = (*(*a1 + 80))(a1, &Tag);
              if (v9)
              {
                *buf = 0;
                if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, buf))
                {
                  goto LABEL_367;
                }

                for (i = *buf; i; --i)
                {
                  re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 1);
                  v144(a1, "key", 0, 0, &v225, &v225, 1);
                  (v9)(a1, "value", 0, 0, &Tag, &Tag, 1);
                }

LABEL_261:
                goto LABEL_453;
              }

              p_Tag = &Tag;
              goto LABEL_342;
            }

            goto LABEL_252;
          }

          re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
          re::TypeInfo::TypeInfo(&v225, &buf[8]);
          re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 88), buf);
          re::TypeInfo::TypeInfo(&Tag, &buf[8]);
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
          re::TypeInfo::TypeInfo(v234, &buf[8]);
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), buf);
          re::TypeInfo::TypeInfo(v232, &buf[8]);
          re::TypeInfo::TypeInfo(v230, v9);
          v9 = (*(*a1 + 80))(a1, &v225);
          if (!v9)
          {
            p_Tag = &v225;
LABEL_342:
            v163 = re::TypeInfo::name(p_Tag);
            return (v9 & 1);
          }

          v147 = (*(*a1 + 80))(a1, &Tag);
          if (v147)
          {
            v148 = v147;
            v223[0] = (*(v231 + 96))(a4);
            if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, v223))
            {
              goto LABEL_367;
            }

            v149 = *(a1 + 48);
            v150 = *(v231 + 104);
            re::TypeInfo::TypeInfo(buf, v230);
            v150(a4, buf, v149);
            v151 = v223[0];
            if (!v223[0])
            {
              goto LABEL_261;
            }

            v152 = re::TypeInfo::createInstance(&v225, *(a1 + 48), *(a1 + 264));
            while (1)
            {
              re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 0);
              (v9)(a1, "key", 0, v152, &v225, v234, 0);
              v131 = *(a1 + 48);
              if (*(a1 + 64) == 1)
              {
                break;
              }

              v153 = (*(v231 + 112))(a4, v230, v131, v152);
              v148(a1, "value", 0, v153, &Tag, v232, 0);
              if (!--v151)
              {
                re::TypeInfo::releaseInstance(&v225, v152, *(a1 + 48), *(a1 + 264));
                goto LABEL_261;
              }
            }

            v132 = *(a1 + 264);
            v133 = &v225;
            v134 = v152;
LABEL_221:
            re::TypeInfo::releaseInstance(v133, v134, v131, v132);
            goto LABEL_367;
          }

LABEL_262:
          v146 = &Tag;
          goto LABEL_263;
        }

        v27 = BYTE4(v226);
      }

      if (v27 == 8)
      {
        v69 = *v26 >> 1;
        if (v69 == 0x22C6ED80D0CLL)
        {
          v137 = v26[1];
          v30 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v137 == "StringID")
          {
            goto LABEL_384;
          }

          v138 = strcmp(v137, "StringID");
          v30 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v138)
          {
            goto LABEL_384;
          }
        }

        else if (v69 == 0x134375A94D9F7110)
        {
          v70 = v26[1];
          v30 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v70 == "DynamicString")
          {
            goto LABEL_384;
          }

          v71 = strcmp(v70, "DynamicString");
          v30 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v71)
          {
            goto LABEL_384;
          }
        }
      }

      goto LABEL_237;
    }

    if (v9 != a6)
    {
      if (*v9 == *a6)
      {
        v118 = **(v9 + 16);
        v119 = **(a6 + 2);
        if (v118 == v119 && WORD1(v118) == WORD1(v119) && ((v119 ^ v118) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_197;
        }

        v41 = 5;
      }

      else
      {
        if (re::areSameTranslatedVersion(v9, a6, a3))
        {
          goto LABEL_197;
        }

        v41 = *(v9 + 12);
      }

      if (v41 != *(a6 + 12))
      {
        goto LABEL_366;
      }
    }

LABEL_197:
    if (a7)
    {
      v120 = *(a1 + 272);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::internal::translateType(&v225, v120, &Tag);
      v121 = (*(*a1 + 80))(a1, &v225);
      if (v121)
      {
        v122 = v121;
        *buf = 0;
        LOBYTE(v9) = 0;
        if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, buf, 0))
        {
          for (j = *buf; j; --j)
          {
            v122(a1, 0, 0, 0, &v225, &v225, 1);
          }

          goto LABEL_443;
        }

        return (v9 & 1);
      }

LABEL_252:
      v146 = &v225;
LABEL_263:
      v219 = re::TypeInfo::name(v146)[1];
      v23 = "Failed to resolve serialize function for type %s";
      goto LABEL_264;
    }

    re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
    re::TypeInfo::TypeInfo(&Tag, &buf[8]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
    re::TypeInfo::TypeInfo(v234, &buf[8]);
    re::TypeInfo::TypeInfo(v232, v9);
    v124 = (*(*a1 + 80))(a1, &Tag);
    if (!v124)
    {
      goto LABEL_262;
    }

    v125 = v124;
    v126 = (*(v233 + 88))(a4);
    v230[0] = v126;
    LOBYTE(v9) = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, v230, 0))
    {
      return (v9 & 1);
    }

    v127 = v230[0];
    if (v126 != v230[0])
    {
      re::TypeRegistry::typeInfo(v232[0], *(v233 + 80), buf);
      re::TypeInfo::TypeInfo(&v225, &buf[8]);
      v103 = *(v227 + 8);
      if (!is_mul_ok(v103, v127))
      {
        v220 = v127;
        goto LABEL_208;
      }

      v182 = *(a1 + 48);
      v183 = *(v233 + 96);
      re::TypeInfo::TypeInfo(buf, v232);
      v183(a4, buf, v182, v127);
    }

    if (*(v233 + 104))
    {
      if (v127)
      {
        for (k = 0; k != v127; k = (k + 1))
        {
          v185 = (*(v233 + 104))(a4, k);
          v125(a1, 0, 0, v185, &Tag, v234, 0);
        }
      }
    }

    else
    {
      v186 = *(v233 + 112);
      if (!v186 || !*(v233 + 120) || !*(v233 + 128))
      {
        re::TypeInfo::TypeInfo(buf, v232);
        v219 = re::TypeInfo::name(buf)[1];
        v23 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_234;
      }

      v187 = v186(a4, *(a1 + 56));
      v188 = (*(v233 + 120))();
      if (v188)
      {
        v189 = v188;
        do
        {
          v125(a1, 0, 0, v189, &Tag, v234, 0);
          v189 = (*(v233 + 120))(v187);
        }

        while (v189);
      }

      (*(v233 + 128))(v187, *(a1 + 56));
    }

    goto LABEL_443;
  }

  if (*(v9 + 12) > 2u)
  {
    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_89;
      }

      if (v9 != a6)
      {
        if (*v9 == *a6)
        {
          v83 = **(v9 + 16);
          v84 = **(a6 + 2);
          if (v83 == v84)
          {
            v17 = WORD1(v83) == WORD1(v84);
            v85 = (v84 ^ v83) & 0xFFFFFF00000000;
            if (v17 && v85 == 0)
            {
              goto LABEL_153;
            }
          }
        }

        else if (re::areSameTranslatedVersion(v9, a6, a3))
        {
          goto LABEL_153;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_366;
        }

        v87 = *(v9 + 16);
        v88 = *(a6 + 2);
        v89 = *(v88 + 92) & 0xFFFFFF;
        if ((*(v87 + 92) & 0xFFFFFF) != 0)
        {
          if (!v89)
          {
            goto LABEL_366;
          }
        }

        else if (v89 || *(v87 + 96) != *(v88 + 96))
        {
          goto LABEL_366;
        }
      }

LABEL_153:
      if (a7)
      {
        v90 = *(a1 + 272);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(&Tag, &buf[8]);
        re::internal::translateType(&v225, v90, &Tag);
        v91 = (*(*a1 + 80))(a1, &v225);
        if (!v91)
        {
          goto LABEL_252;
        }

        v92 = v91;
        v93 = *(a6 + 2);
        v94 = *(v93 + 92) & 0xFFFFFF;
        if (v94)
        {
          v95 = 0;
          v96 = 8;
        }

        else
        {
          v95 = *(v93 + 96);
          v96 = 4;
        }

        *buf = v95;
        if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, buf, v96))
        {
          goto LABEL_367;
        }

        v160 = *buf;
        if (v94)
        {
          v161 = *buf == 0;
        }

        else
        {
          v161 = 1;
        }

        v162 = v161;
        if (v161)
        {
          if (!*buf)
          {
            goto LABEL_443;
          }
        }

        else
        {
          v230[0] = 0;
          v230[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v230);
        }

        do
        {
          v92(a1, 0, 0, 0, &v225, &v225, 1);
          --v160;
        }

        while (v160);
        if (v162)
        {
          goto LABEL_443;
        }
      }

      else
      {
        re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
        re::TypeInfo::TypeInfo(&Tag, &buf[8]);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(v234, &buf[8]);
        re::TypeInfo::TypeInfo(v232, v9);
        v97 = (*(*a1 + 80))(a1, &Tag);
        if (!v97)
        {
          goto LABEL_262;
        }

        v98 = v97;
        v99 = re::ArrayAccessor::size(v232, a4);
        v224 = v99;
        v100 = *(*(v9 + 16) + 92) & 0xFFFFFF;
        if (v100)
        {
          v101 = 8;
        }

        else
        {
          v101 = 4;
        }

        if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, &v224, v101))
        {
          goto LABEL_367;
        }

        v102 = v224;
        if (v99 != v224)
        {
          if ((*(v233 + 92) & 0xFFFFFF) == 0)
          {
            v219 = v99;
            v220 = v224;
            v23 = "Invalid array size. Expected size = %zu, actual size = %zu";
            goto LABEL_264;
          }

          re::TypeRegistry::typeInfo(v232[0], *(v233 + 80), buf);
          re::TypeInfo::TypeInfo(&v225, &buf[8]);
          v103 = *(v227 + 8);
          if (!is_mul_ok(v103, v102))
          {
            v220 = v102;
LABEL_208:
            v219 = v103;
            v23 = "Size overflow during deserialization. Element size = %zu, count = %zu";
            goto LABEL_264;
          }

          re::ArrayAccessor::reset(v232, a4, *(a1 + 48), v102);
          v99 = v102;
        }

        if (v100)
        {
          v200 = v99 == 0;
        }

        else
        {
          v200 = 1;
        }

        v201 = v200;
        if (!v200)
        {
          v202 = *a4;
          v223[0] = 0;
          v223[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v202, v223);
          v99 = v102;
        }

        if (v99)
        {
          v203 = 0;
          if (v102 <= 1)
          {
            v102 = 1;
          }

          do
          {
            v204 = re::ArrayAccessor::elementAt(v232, a4, v203);
            v98(a1, 0, 0, v204, &Tag, v234, 0);
            ++v203;
          }

          while (v102 != v203);
        }

        if (v201)
        {
          goto LABEL_443;
        }
      }

      (*(*a1 + 24))(a1);
LABEL_443:
      goto LABEL_453;
    }

    if (v9 != a6)
    {
      if (*v9 == *a6)
      {
        v108 = **(v9 + 16);
        v109 = **(a6 + 2);
        if (v108 == v109 && WORD1(v108) == WORD1(v109) && ((v109 ^ v108) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_178;
        }

        v39 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(v9, a6, a3))
        {
          goto LABEL_178;
        }

        v39 = *(v9 + 12);
      }

      if (v39 != *(a6 + 12))
      {
        goto LABEL_366;
      }
    }

LABEL_178:
    if (a7)
    {
      LOBYTE(Tag) = 0;
      re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(a1 + 24, a2, &Tag);
      if (Tag == 1)
      {
        v110 = *(a1 + 272);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
        re::TypeInfo::TypeInfo(&v225, &buf[8]);
        re::internal::translateType(buf, v110, &v225);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, 0, buf, buf, 1);
        }
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(*v9, *(*(v9 + 16) + 80), buf);
      re::TypeInfo::TypeInfo(&v225, &buf[8]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), buf);
      re::TypeInfo::TypeInfo(&Tag, &buf[8]);
      re::TypeInfo::TypeInfo(buf, v9);
      v234[0] = (*(*&buf[16] + 88))(a4) != 0;
      v111 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(a1 + 24, a2, v234);
      if (v234[0])
      {
        v112 = re::TypeInfo::createInstance(&v225, *(a1 + 48), *(a1 + 264));
        (*(*&buf[16] + 96))(a4, v112);
        re::TypeInfo::releaseInstance(&v225, v112, *(a1 + 48), *(a1 + 264));
        v113 = (*(*&buf[16] + 88))(a4);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, v113, &v225, &Tag, 0);
        }
      }

      else
      {
        (*(*&buf[16] + 96))(a4, 0, v111);
      }
    }

    goto LABEL_453;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
      goto LABEL_89;
    }

    if (v9 == a6)
    {
      goto LABEL_274;
    }

    if (*v9 == *a6)
    {
      v78 = **(v9 + 16);
      v79 = **(a6 + 2);
      if (v78 == v79 && WORD1(v78) == WORD1(v79) && ((v79 ^ v78) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_143;
      }

      v24 = 2;
    }

    else
    {
      if (re::areSameTranslatedVersion(v9, a6, a3))
      {
        goto LABEL_143;
      }

      v24 = *(v9 + 12);
    }

    if (v24 != *(a6 + 12))
    {
      goto LABEL_366;
    }

    v80 = re::TypeInfo::name(v9);
    v81 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v80, v81))
    {
      goto LABEL_366;
    }

LABEL_143:
    if (*v9 != *a6)
    {
      v82 = re::areSameTranslatedVersion(v9, a6, a3);
      goto LABEL_275;
    }

    v156 = **(v9 + 16);
    v157 = **(a6 + 2);
    if (v156 != v157 || WORD1(v156) != WORD1(v157) || ((v157 ^ v156) & 0xFFFFFF00000000) != 0)
    {
      v82 = 0;
      goto LABEL_275;
    }

LABEL_274:
    v82 = 1;
LABEL_275:
    if (a7)
    {
      *buf = 0;
      if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, buf))
      {
        goto LABEL_367;
      }

      if (*buf)
      {
      }

LABEL_453:
      LOBYTE(v9) = *(a1 + 64) ^ 1;
      return (v9 & 1);
    }

    Tag = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &Tag))
    {
      goto LABEL_367;
    }

    v158 = Tag;
    if (!Tag)
    {
      v23 = "Failed to read enum constant. String is empty.";
      goto LABEL_264;
    }

    if (Tag >= 0x401)
    {
      v219 = Tag;
      v23 = "Failed to read enum constant. String is too long. Length: %zu";
      goto LABEL_264;
    }

    v167 = (*(**(a1 + 56) + 32))(*(a1 + 56), Tag + 1, 0);
    v167[v158] = 0;
    if (*(a1 + 64) == 1)
    {
      goto LABEL_348;
    }

    v190 = *v167;
    if (*v167)
    {
      v191 = v167[1];
      if (v191)
      {
        v192 = (v167 + 2);
        do
        {
          v190 = 31 * v190 + v191;
          v193 = *v192++;
          v191 = v193;
        }

        while (v193);
      }
    }

    *buf = 2 * v190;
    *&buf[8] = v167;
    EnumConstantIndex = re::internal::getEnumConstantIndex(a6, buf, v168);
    v195 = EnumConstantIndex;
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    if ((v195 & 0x80000000) != 0)
    {
      v210 = *re::foundationSerializationLogObjects(EnumConstantIndex);
      if (os_log_type_enabled(v210, OS_LOG_TYPE_INFO))
      {
        v211 = re::TypeInfo::name(a6)[1];
        *buf = 136315394;
        *&buf[4] = v167;
        *&buf[12] = 2080;
        *&buf[14] = v211;
        _os_log_impl(&dword_1E1C61000, v210, OS_LOG_TYPE_INFO, "String %s is not a valid enum constant of type %s - skipping.", buf, 0x16u);
      }

      v212 = 0;
    }

    else if (v82)
    {
      *buf = re::TypeInfo::enumConstants(v9);
      *&buf[8] = v196;
      v197 = v195 - v196;
      if (v195 >= v196)
      {
        v225 = re::TypeInfo::renamedEnumConstants(v9);
        v226 = v216;
        v198 = re::Slice<re::EnumConstant>::operator[](&v225, v197);
      }

      else
      {
        v198 = re::Slice<re::EnumConstant>::operator[](buf, v195);
      }

      v212 = v198;
    }

    else
    {
      v213 = *(*a6 + 856);
      if (!v213 || (v212 = re::internal::TypeTranslationTable::translateSerializedEnum(v213, a6, v195, v9)) == 0)
      {
        v214 = re::TypeInfo::name(v9);
LABEL_348:
        v169 = *(**(a1 + 56) + 40);
        goto LABEL_349;
      }
    }

    (*(**(a1 + 56) + 40))(*(a1 + 56), v167);
    if (v212)
    {
      memcpy(a4, v212, *(*(v9 + 16) + 8));
    }

    goto LABEL_453;
  }

  if (v9 != a6)
  {
    if (*v9 == *a6)
    {
      v104 = **(v9 + 16);
      v105 = **(a6 + 2);
      if (v104 != v105)
      {
        goto LABEL_366;
      }

      v17 = WORD1(v104) == WORD1(v105);
      v106 = (v105 ^ v104) & 0xFFFFFF00000000;
      if (!v17 || v106 != 0)
      {
        goto LABEL_366;
      }
    }

    else if (!re::areSameTranslatedVersion(v9, a6, a3))
    {
      goto LABEL_366;
    }
  }

  v36 = re::TypeInfo::name(v9);
  v37 = *v36 >> 1;
  if (v37 > 0x16749DFF02)
  {
    if (*v36 >> 1 > 0x303EE88E58CLL)
    {
      if (*v36 >> 1 > 0x2A8CEB1C43F60843)
      {
        if (v37 == 0x2A8CEB1C43F60844)
        {
LABEL_332:
        }

        if (v37 != 0x3AFE951B1F1F3391)
        {
          if (v37 != 0x412A40E9CB79BA35)
          {
            goto LABEL_405;
          }

          goto LABEL_326;
        }

LABEL_329:
      }

      if (v37 == 0x303EE88E58DLL)
      {
        goto LABEL_326;
      }

      if (v37 != 0x2710786C3AC82DA1)
      {
        goto LABEL_405;
      }
    }

    else
    {
      if (*v36 >> 1 <= 0x18E6A9A092)
      {
        if (v37 != 0x16749DFF03)
        {
          if (v37 != 0x16749F63A2)
          {
            goto LABEL_405;
          }

LABEL_313:
        }

        goto LABEL_335;
      }

      if (v37 != 0x18E6A9A093)
      {
        if (v37 != 0x303EE86A734)
        {
          if (v37 != 0x303EE8780EELL)
          {
            goto LABEL_405;
          }

          goto LABEL_332;
        }

        goto LABEL_329;
      }
    }
  }

  if (*v36 >> 1 > 0x685847B)
  {
    if (*v36 >> 1 <= 0xB9708BDD)
    {
      if (v37 != 109413500)
      {
        if (v37 != 2969009105)
        {
          goto LABEL_405;
        }

        return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a4, a7);
      }

LABEL_338:
    }

    if (v37 == 3111160798)
    {
    }

    if (v37 != 3393056694)
    {
      if (v37 != 0x16749D2549)
      {
        goto LABEL_405;
      }

      goto LABEL_338;
    }

LABEL_326:
  }

  if (*v36 >> 1 <= 0x2E9355)
  {
    if (v37 != 104431)
    {
      if (v37 != 3029738)
      {
        goto LABEL_405;
      }
    }

LABEL_335:
  }

  if (v37 != 3052374)
  {
    if (v37 != 3327612)
    {
      if (v37 == 97526364)
      {

        return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a4, a7);
      }

LABEL_405:
      v219 = re::TypeInfo::name(v9)[1];
      v23 = "Unsupported basic type %s.";
      goto LABEL_234;
    }

    goto LABEL_313;
  }
}

unsigned int *re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, char *a2, float *a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v10 = *(result + 11);
  if ((v10 & 0x400) != 0)
  {
    if ((*(result + 11) & 0x1000) != 0)
    {
      v12 = result;
    }

    else
    {
      v12 = *(result + 1);
    }

    if ((*(result + 11) & 0x1000) != 0)
    {
      v13 = 21 - *(result + 21);
    }

    else
    {
      v13 = *result;
    }

    if (v13 == 9)
    {
      if (!strcasecmp(v12, "-Infinity"))
      {
        *&v14 = -INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 8)
    {
      if (!strcasecmp(v12, "Infinity"))
      {
        *&v14 = INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 3 && !strcasecmp(v12, "NaN"))
    {
      *&v14 = NAN;
LABEL_34:
      Double = *&v14;
      goto LABEL_35;
    }

    if (*(a1 + 232) == 1)
    {
      *v20 = 0;
      v16 = strtof(v12, v20);
      v17 = *v20 != &v12[v13] || v16 == INFINITY;
      Double = v17 ? INFINITY : v16;
      if (Double != INFINITY)
      {
        v18 = *re::foundationSerializationLogObjects(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 136315138;
          *&v20[4] = v12;
          _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", v20, 0xCu);
        }

        goto LABEL_35;
      }
    }

    goto LABEL_30;
  }

  if ((v10 & 0x10) == 0)
  {
LABEL_30:
    return 0;
  }

  Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v9);
LABEL_35:
  if ((a4 & 1) == 0)
  {
    *a3 = Double;
  }

  v19 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v19 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, char *a2, double *a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v10 = *(result + 11);
  if ((v10 & 0x400) != 0)
  {
    if ((*(result + 11) & 0x1000) != 0)
    {
      v12 = result;
    }

    else
    {
      v12 = *(result + 1);
    }

    if ((*(result + 11) & 0x1000) != 0)
    {
      v13 = 21 - *(result + 21);
    }

    else
    {
      v13 = *result;
    }

    if (v13 == 9)
    {
      if (!strcasecmp(v12, "-Infinity"))
      {
        *&v14 = -INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 8)
    {
      if (!strcasecmp(v12, "Infinity"))
      {
        *&v14 = INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 3 && !strcasecmp(v12, "NaN"))
    {
      *&v14 = NAN;
LABEL_34:
      Double = *&v14;
      goto LABEL_35;
    }

    if (*(a1 + 232) == 1)
    {
      *v20 = 0;
      v16 = strtod(v12, v20);
      v17 = *v20 != &v12[v13] || v16 == INFINITY;
      Double = v17 ? INFINITY : v16;
      if (Double != INFINITY)
      {
        v18 = *re::foundationSerializationLogObjects(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 136315138;
          *&v20[4] = v12;
          _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", v20, 0xCu);
        }

        goto LABEL_35;
      }
    }

    goto LABEL_30;
  }

  if ((v10 & 0x10) == 0)
  {
LABEL_30:
    return 0;
  }

  Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v9);
LABEL_35:
  if ((a4 & 1) == 0)
  {
    *a3 = Double;
  }

  v19 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v19 - 16);
  return 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v40), re::TypeInfo::TypeInfo(v38, v41), v38[12] != 1) || !re::TypeInfo::isInteger(v38))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v32 = *(a1 + 64) ^ 1;
    return v32 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v38, v41);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v37, v41);
  re::TypeInfo::TypeInfo(v35, this);
  v18 = (*(*a1 + 80))(a1, v38);
  if (!v18)
  {
    re::TypeInfo::name(v38);
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v36 + 104);
  re::TypeInfo::TypeInfo(&v40, v35);
  v20(a4, &v40, v17);
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
  {
    goto LABEL_48;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v31 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v31 - 16);
    goto LABEL_45;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 8);
    }

    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v24 = 21 - *(v22 + 21);
    }

    else
    {
      v24 = *v22;
    }

    v34 = 0;
    v25 = v23;
    if (v24)
    {
      v26 = v24;
      v25 = v23;
      while (*v25 == 48)
      {
        ++v25;
        if (!--v26)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = &v23[v24];
    if (v25 == v27)
    {
      goto LABEL_42;
    }

    if (*v25 - 48 > 9)
    {
      break;
    }

    v25 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v25, v27, &v40, &v39);
    if (v25 != v27)
    {
      if (*v25 - 48 > 9)
      {
        v29 = v39;
        v28 = v40;
        if (!__CFADD__(v40, v39))
        {
LABEL_40:
          v34 = v28 + v29;
          break;
        }
      }

      while (*v25 - 48 <= 9)
      {
        if (++v25 == v27)
        {
          v25 = v27;
          goto LABEL_41;
        }
      }

      break;
    }

    v29 = v39;
    v28 = v40;
    if (!__CFADD__(v40, v39))
    {
      goto LABEL_40;
    }

LABEL_42:
    v30 = (*(v36 + 112))(a4, v35, *(a1 + 48), &v34);
    v19(a1, v23, 0, v30, v38, v37, 0);
    v22 += 48;
    if (v22 == *(v21 + 1) + 48 * *v21)
    {
      goto LABEL_43;
    }
  }

LABEL_41:
  if (v27 == v25)
  {
    goto LABEL_42;
  }

LABEL_48:
  v32 = 0;
  return v32 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v40), re::TypeInfo::TypeInfo(v38, v41), v38[12] != 1) || !re::TypeInfo::isInteger(v38))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v32 = *(a1 + 64) ^ 1;
    return v32 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v38, v41);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v37, v41);
  re::TypeInfo::TypeInfo(v35, this);
  v18 = (*(*a1 + 80))(a1, v38);
  if (!v18)
  {
    re::TypeInfo::name(v38);
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v36 + 104);
  re::TypeInfo::TypeInfo(&v40, v35);
  v20(a4, &v40, v17);
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
  {
    goto LABEL_48;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v31 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v31 - 16);
    goto LABEL_45;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 8);
    }

    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v24 = 21 - *(v22 + 21);
    }

    else
    {
      v24 = *v22;
    }

    v34 = 0;
    v25 = v23;
    if (v24)
    {
      v26 = v24;
      v25 = v23;
      while (*v25 == 48)
      {
        ++v25;
        if (!--v26)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = &v23[v24];
    if (v25 == v27)
    {
      goto LABEL_42;
    }

    if (*v25 - 48 > 9)
    {
      break;
    }

    v25 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v25, v27, &v40, &v39);
    if (v25 != v27)
    {
      if (*v25 - 48 > 9)
      {
        v29 = v39;
        v28 = v40;
        if (!__CFADD__(v40, v39))
        {
LABEL_40:
          v34 = v28 + v29;
          break;
        }
      }

      while (*v25 - 48 <= 9)
      {
        if (++v25 == v27)
        {
          v25 = v27;
          goto LABEL_41;
        }
      }

      break;
    }

    v29 = v39;
    v28 = v40;
    if (!__CFADD__(v40, v39))
    {
      goto LABEL_40;
    }

LABEL_42:
    v30 = (*(v36 + 112))(a4, v35, *(a1 + 48), &v34);
    v19(a1, v23, 0, v30, v38, v37, 0);
    v22 += 48;
    if (v22 == *(v21 + 1) + 48 * *v21)
    {
      goto LABEL_43;
    }
  }

LABEL_41:
  if (v27 == v25)
  {
    goto LABEL_42;
  }

LABEL_48:
  v32 = 0;
  return v32 & 1;
}