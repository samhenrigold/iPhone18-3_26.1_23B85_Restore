uint64_t re::SyncUnpacker::parseCommit(uint64_t **a1, re::BitReader *this, uint64_t a3, uint64_t a4)
{
  v201 = *MEMORY[0x277D85DE8];
  *buf = 0;
  re::BitReader::readUInt32Bits(this, 8u, buf);
  v7 = buf[0];
  *a3 = buf[0];
  if ((v7 & 2) != 0)
  {
    re::BitReader::readUInt64(this, (a3 + 16));
  }

  *(a3 + 8) = a1[2];
  *buf = 0;
  UInt32Bits = re::BitReader::readUInt32Bits(this, 0x20u, buf);
  if (*(this + 12))
  {
    v9 = *re::networkLogObjects(UInt32Bits);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Failed to parse commit header.";
      v11 = v9;
      v12 = 2;
      goto LABEL_212;
    }

    return 0;
  }

  v172 = *buf;
  if (!*buf)
  {
    return 2;
  }

  v13 = 0;
  LODWORD(v14) = 2;
  while (1)
  {
    *(this + 5) = 0;
    *(this + 3) = 0;
    *buf = 0;
    re::BitReader::readUInt32Bits(this, 8u, buf);
    v15 = *buf;
    *buf = 0;
    re::BitReader::readUInt32Bits(this, 0x10u, buf);
    v171 = *buf;
    *&v180 = 0;
    WORD4(v180) = 0;
    LOBYTE(v181[0]) = 0;
    v181[1] = 0;
    *v182 = 0x10000;
    re::SyncOwnershipInfo::read(&v180, this, (v15 >> 4) & 1, 1);
    v16 = v181[1];
    if (!v181[1])
    {
      v16 = a1[2];
      v181[1] = v16;
    }

    v17 = v16 == a1[3] || *(a1 + 120) == 1 && v16 == *(a4 + 8);
    v18 = v15;
    LOBYTE(v182[1]) = v17;
    v179 = 0;
    *buf = 0;
    re::BiasedVLQ::read(buf, this, &v179);
    v177 = -1;
    v178 = 0;
    if ((v15 & 5) != 0)
    {
      re::BitReader::readUInt64(this, &v178);
      re::BitReader::readUInt64(this, &v177);
      v19 = v178;
      v20 = v179;
      v21 = v177;
      v22 = **a1;
      if ((v18 & 4) != 0)
      {
        (*(v22 + 64))();
      }

      else
      {
        (*(v22 + 48))();
      }
    }

    else
    {
      v20 = v179;
      v19 = (*(**a1 + 56))(*a1, v179);
      v21 = v23;
      v177 = v23;
      v178 = v19;
    }

    v173 = v19;
    v24 = a1[1];
    *buf = v21;
    v25 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((v24 + 9), buf);
    if (!v25 || (v26 = *(*v25 + 16)) == 0)
    {
      v27 = *re::networkLogObjects(v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v21;
        _os_log_impl(&dword_26168F000, v27, OS_LOG_TYPE_DEFAULT, "Unknown object typeID=%llu. Assuming opaque type.", buf, 0xCu);
      }

      v28 = a1[1];
      re::SyncOpaqueTypeInfo::make(v21, buf);
      re::SyncObjectStore::addType(v28, buf);
      re::SyncObjectTypeInfo::~SyncObjectTypeInfo(buf);
      v29 = a1[1];
      *buf = v21;
      v30 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((v29 + 9), buf);
      if (v30)
      {
        v26 = *(*v30 + 16);
      }

      else
      {
        v26 = 0;
      }
    }

    v175 = 0;
    v176 = 0;
    if (v18)
    {
      re::BitReader::readUInt64(this, &v176);
      v31 = re::BitReader::readUInt64(this, &v175);
      v32 = 0;
    }

    else
    {
      *buf = 0;
      v31 = re::BitReader::readUInt32Bits(this, 0x10u, buf);
      v32 = *buf;
    }

    if (*(this + 12) == 1)
    {
      v33 = *re::networkLogObjects(v31);
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
      if (v34)
      {
        *buf = 0;
        _os_log_error_impl(&dword_26168F000, v33, OS_LOG_TYPE_ERROR, "Failed to parse object header.", buf, 2u);
      }

      v35 = 0;
      goto LABEL_146;
    }

    v36 = *(v26 + 136);
    if (v36)
    {
      v36 = (*(v36 + 16))(v36, a4);
      if ((v36 & 1) == 0)
      {
        v34 = re::SyncUnpacker::skipObjectState(this, v37, v38, v39, v40);
        v35 = 2;
        goto LABEL_146;
      }
    }

    if (v173)
    {
      Object = re::SyncObjectStore::findObject(&v174, a1[1], v21, v173);
      v42 = v174;
      if (v174)
      {
        if (v18)
        {
          v168 = 0;
          goto LABEL_51;
        }

        Baseline = re::SyncObject::findBaseline(v174, v32, a1[2]);
        if (Baseline)
        {
          v168 = Baseline;
LABEL_51:
          v57 = 1;
          v58 = v42;
          goto LABEL_52;
        }

        v166 = a3;
        v84 = v42;
        v85 = *re::networkLogObjects(0);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v26 + 48))
          {
            v86 = *(v26 + 56);
          }

          else
          {
            v86 = v26 + 49;
          }

          *buf = 134218498;
          *&buf[4] = v173;
          *&buf[12] = 2080;
          *&buf[14] = v86;
          *&buf[22] = 2048;
          *v196 = v21;
          _os_log_impl(&dword_26168F000, v85, OS_LOG_TYPE_DEFAULT, "Got object delta update but missing baseline for it.(guid=%llu, type=%s(%llu))", buf, 0x20u);
        }

        if ((v18 & 4) == 0)
        {
          *buf = v21;
          *&buf[8] = v173;
          re::DynamicArray<re::SyncHistoryResetRequest>::add((a1 + 10), buf);
        }

        v168 = 0;
        v57 = 0;
        v42 = v84;
        v58 = v84;
        a3 = v166;
LABEL_52:
        v169 = v58;
        shouldAcceptUpdate = re::SyncObject::shouldAcceptUpdate(v58, v181[1], v182[0]);
        if ((*(a1 + 121) & 1) != 0 || shouldAcceptUpdate)
        {
          if (shouldAcceptUpdate && (v60 = a1[3], v61 = *(v169 + 84), v62 = *v181, *(v169 + 136) = v180, *(v169 + 152) = v62, *(v169 + 42) = *v182, *(*(*(v169 + 11) + 16) + 73) == 1) && (v61 < v182[0] || (v180 == v60 ? (v63 = v180 == 0) : (v63 = 1), !v63)))
          {
            v167 = 4;
            if (!v57)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v167 = 0;
            if (!v57)
            {
              goto LABEL_75;
            }
          }

          if (re::SyncObject::isStateDataChanged(v169, v171, a1[2]))
          {
            DWORD2(v189) = 0;
            BYTE12(v189) = 0;
            v190 = 0uLL;
            v188 = &unk_2873F59F8;
            *&v189 = 0;
            v193 = 0;
            v192 = 0;
            memset(v191, 0, sizeof(v191));
            v64 = v169;
            v165 = a3;
            v160 = v42;
            if (*(v169 + 9) - *(v169 + 8) == *(v169 + 6) && (OldestState = re::SyncObject::getOldestState(v169), v64 = v169, OldestState == v168))
            {
              v128 = *re::networkLogObjects(OldestState);
              if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_26168F000, v128, OS_LOG_TYPE_INFO, "Baseline would be invalidated by new state! Will read into temp location.", buf, 2u);
              }

              v159 = &v188;
              v66 = v171;
              v67 = v169;
            }

            else
            {
              v66 = v171;
              v67 = v64;
              v159 = re::SyncObject::addState(v64, v171, a1[2]);
            }

            *(v67 + 88) = v66;
            log = *(this + 4);
            v68 = *(this + 5) != 0;
            v194 = 0;
            *buf = 0;
            re::BiasedVLQ::read(buf, this, &v194);
            v69 = *(this + 5);
            v70 = (8 - v69);
            v63 = v69 == 0;
            v71 = v69 != 0;
            v72 = v70 << 32;
            if (v63)
            {
              v72 = 0;
            }

            v157 = v194;
            v158 = v72;
            v73 = (*(this + 4) - v71);
            v74 = v73 + v194;
            v75 = re::BitReader::seekTo(this, (v73 + v194));
            if (*(this + 12) == 1)
            {
              v76 = *re::networkLogObjects(v75);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *&buf[4] = v157;
                _os_log_error_impl(&dword_26168F000, v76, OS_LOG_TYPE_ERROR, "Buffer overflowe trying to extract sync object state buffer (len=%u) from packet reader!", buf, 8u);
              }

              v183 = 0;
              v184 = 0;
              v185 = 0;
              v186 = 0;
              v187 = 0;
            }

            else
            {
              v105 = v73 + v68 - log;
              v106 = v105 != 0;
              v107 = v105 - 1;
              if (v107 != 0 && v106)
              {
                v108 = *this;
                loga = v107;
                v109 = (v73 - v107);
                v110 = (*this + v109);
                if (v158)
                {
                  v111 = v73 + 1;
                }

                else
                {
                  v111 = v73;
                }

                *buf = &unk_2873F59D0;
                *&buf[8] = v108;
                *&buf[16] = v111;
                *v196 = v109;
                *&v196[4] = HIDWORD(v158);
                *&v196[8] = 0;
                v156 = v109;
                if (v158)
                {
                  v112 = v109 + 1;
                }

                else
                {
                  v112 = v109;
                }

                buf[20] = v112 > v111;
                if (v158 && v112 <= v111)
                {
                  *&v196[8] = (0xFFuLL >> (8 - BYTE4(v158))) & *v110;
                }

                v113 = 0;
                v114 = 0;
                v161 = &v110[v157];
                v115 = loga;
                do
                {
                  if (v114)
                  {
                    v116 = 0;
                    v114 = 1;
                  }

                  else if (((loga - v113) & 0x1FFFFFFF) != 0)
                  {
                    v114 = 0;
                    v116 = v161[v113++];
                  }

                  else
                  {
                    v116 = 0;
                    v114 = 1;
                    v113 = loga;
                  }

                  re::BitWriter::writeUInt32Bits(buf, v116, 8u);
                  --v115;
                }

                while (v115);
                v73 = v156;
                v74 = v156 + v157;
              }

              v183 = *this;
              v184 = v74;
              v185 = 0;
              v186 = 0;
              v187 = 0;
              re::BitReader::seekTo(&v183, v73 | v158);
            }

            a3 = v165;
            v117 = v159;
            if (v168)
            {
              v118 = *(v26 + 104);
              if (v118)
              {
                v119 = *(v168 + 24);
                if (*(v168 + 28))
                {
                  ++v119;
                }

                *buf = *(v168 + 8);
                *&buf[8] = v119;
                buf[12] = 0;
                *&buf[16] = 0;
                *v196 = 0;
                v120 = (*(v118 + 16))(v118, &v183, buf, v159, a4);
                if ((v120 & 1) == 0)
                {
                  goto LABEL_167;
                }
              }

              else
              {
                v123 = *re::networkLogObjects(0);
                v120 = os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT);
                if (v120)
                {
                  v124 = *(v169 + 3);
                  v125 = *(v26 + 32);
                  if (*(v26 + 48))
                  {
                    v126 = *(v26 + 56);
                  }

                  else
                  {
                    v126 = v26 + 49;
                  }

                  *buf = 134218498;
                  *&buf[4] = v124;
                  *&buf[12] = 2048;
                  *&buf[14] = v125;
                  *&buf[22] = 2080;
                  *v196 = v126;
                  _os_log_impl(&dword_26168F000, v123, OS_LOG_TYPE_DEFAULT, "Cannot parse state for syncobject %llu of type %llu(%s), readDeltaCb not available.", buf, 0x20u);
                }

                if (v159 == &v188 || (v127 = *(v169 + 9), *(v169 + 8) == v127))
                {
                  v117 = 0;
                }

                else
                {
                  v117 = 0;
                  *(v169 + 9) = v127 - 1;
                }
              }
            }

            else
            {
              v121 = *(v26 + 96);
              if (!v121)
              {
                v129 = *re::networkLogObjects(0);
                v120 = os_log_type_enabled(v129, OS_LOG_TYPE_ERROR);
                if (v120)
                {
                  v150 = *(v169 + 3);
                  v151 = *(v26 + 32);
                  if (*(v26 + 48))
                  {
                    v152 = *(v26 + 56);
                  }

                  else
                  {
                    v152 = v26 + 49;
                  }

                  *buf = 134218498;
                  *&buf[4] = v150;
                  *&buf[12] = 2048;
                  *&buf[14] = v151;
                  *&buf[22] = 2080;
                  *v196 = v152;
                  _os_log_error_impl(&dword_26168F000, v129, OS_LOG_TYPE_ERROR, "Cannot parse state for syncobject %llu of type %llu(%s), readCb not available.", buf, 0x20u);
                }

                goto LABEL_167;
              }

              v120 = (*(v121 + 16))(v121, &v183, v159, a4);
              if (!v120)
              {
LABEL_167:
                if (v159 != &v188)
                {
                  v130 = *(v169 + 9);
                  if (*(v169 + 8) != v130)
                  {
                    *(v169 + 9) = v130 - 1;
                  }
                }

                v131 = *re::networkLogObjects(v120);
                if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                {
                  v147 = *(v169 + 3);
                  v148 = a1[2];
                  *buf = 134218240;
                  *&buf[4] = v147;
                  *&buf[12] = 2048;
                  *&buf[14] = v148;
                  _os_log_error_impl(&dword_26168F000, v131, OS_LOG_TYPE_ERROR, "Failed to parse object data.(guid=%llu, peerID=%llu)", buf, 0x16u);
                }

                v132 = 0;
LABEL_184:
                v136 = v191[0];
                if (v191[0] && v193)
                {
                  v136 = (*(*v191[0] + 40))();
                }

                if (!v132)
                {
                  v137 = *re::networkLogObjects(v136);
                  v34 = os_log_type_enabled(v137, OS_LOG_TYPE_ERROR);
                  if (v34)
                  {
                    if (*(v26 + 48))
                    {
                      v146 = *(v26 + 56);
                    }

                    else
                    {
                      v146 = v26 + 49;
                    }

                    v149 = a1[2];
                    *buf = 134218754;
                    *&buf[4] = v173;
                    *&buf[12] = 2048;
                    *&buf[14] = v21;
                    *&buf[22] = 2080;
                    *v196 = v146;
                    *&v196[8] = 2048;
                    *&v196[10] = v149;
                    _os_log_error_impl(&dword_26168F000, v137, OS_LOG_TYPE_ERROR, "Failed to parse object state.(guid=%llu, type=%llu(%s), peerID=%llu)", buf, 0x2Au);
                  }

                  if (!v160)
                  {
                    v138 = a1[1];
                    v139 = v174;
                    *buf = v174;
                    if (v174)
                    {
                      v140 = v174 + 8;
                      re::SyncObjectStore::removeObject(v138, buf);
                    }

                    else
                    {
                      re::SyncObjectStore::removeObject(v138, buf);
                    }
                  }

                  goto LABEL_200;
                }

                v77 = 8;
                v78 = v174;
                v42 = v160;
LABEL_76:
                if (v175 && !*(v78 + 10))
                {
                  *buf = v176;
                  *&buf[8] = v175;
                  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addOrReplace((a1 + 4), &v174, buf);
                  v78 = v174;
                }

                v79 = re::SyncObject::latestStateHandle(v78);
                if (v79 != -1)
                {
                  v80 = v79;
                  memset(buf, 0, 17);
                  re::SharedPtr<re::SyncObject>::reset(buf, v174);
                  *&buf[8] = v80;
                  v81 = v167 | v77 | (v42 == 0) | buf[16] & 0xF2;
                  buf[16] = v81;
                  if ((v18 & 4) != 0)
                  {
                    *(v174 + 128) |= 4u;
                    buf[16] = v81 | 2;
                  }

                  v34 = re::DynamicArray<re::internal::SyncSnapshotEntry>::add((a3 + 32), buf);
                  if (*buf)
                  {
                  }

                  goto LABEL_143;
                }

                v87 = *re::networkLogObjects(0xFFFFFFFFFFFFFFFFLL);
                v34 = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
                if (v34)
                {
                  v88 = *(v174 + 3);
                  v89 = *(*(v174 + 11) + 16);
                  v90 = v89[4];
                  v91 = v89[6];
                  v92 = v89[7];
                  v93 = v89 + 49;
                  if (v91)
                  {
                    v93 = v92;
                  }

                  *buf = 134218498;
                  *&buf[4] = v88;
                  *&buf[12] = 2048;
                  *&buf[14] = v90;
                  *&buf[22] = 2080;
                  *v196 = v93;
                  _os_log_error_impl(&dword_26168F000, v87, OS_LOG_TYPE_ERROR, "Sync object without snapshot while parsing object (id: %llu, type: %llu[%s]).", buf, 0x20u);
                }

LABEL_200:
                v35 = 0;
LABEL_144:
                if (v174)
                {
                }

                goto LABEL_146;
              }
            }

            if (v184 != v186)
            {
              logb = *re::networkLogObjects(v120);
              if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
              {
                v133 = "readDeltaCb";
                if (!v168)
                {
                  v133 = "readCb";
                }

                if (*(v26 + 48))
                {
                  v134 = *(v26 + 56);
                }

                else
                {
                  v134 = v26 + 49;
                }

                v135 = *(v26 + 32);
                *buf = 136315650;
                *&buf[4] = v133;
                *&buf[12] = 2080;
                *&buf[14] = v134;
                *&buf[22] = 2048;
                *v196 = v135;
                _os_log_impl(&dword_26168F000, logb, OS_LOG_TYPE_DEFAULT, "Read buffer is not fully consumed by %s of type %s: %llu", buf, 0x20u);
              }
            }

            if (v117 == &v188)
            {
              v141 = re::SyncObject::addState(v169, v171, a1[2]);
              v142 = *(v141 + 40);
              v141 += 40;
              v143 = *(v141 - 32);
              *v196 = *(v141 - 16);
              *&buf[8] = v143;
              *buf = &unk_2873F59F8;
              *&v196[16] = v142;
              *v141 = 0;
              v144 = *(v141 + 16);
              v197 = *(v141 + 8);
              *(v141 + 8) = 0;
              v198 = v144;
              *(v141 + 16) = 0;
              v200 = *(v141 + 32);
              *(v141 + 32) = 0;
              ++*(v141 + 24);
              v199 = 1;
              v145 = v190;
              *(v141 - 32) = v189;
              *(v141 - 16) = v145;
              re::DynamicArray<unsigned char>::operator=(v141, v191);
              v189 = *&buf[8];
              v190 = *v196;
              re::DynamicArray<unsigned char>::operator=(v191, &v196[16]);
              if (*&v196[16])
              {
                if (v200)
                {
                  (*(**&v196[16] + 40))();
                }
              }
            }

            v132 = 1;
            goto LABEL_184;
          }

LABEL_75:
          re::SyncUnpacker::skipObjectState(this, v52, v53, v54, v55);
          v77 = 0;
          v78 = v169;
          goto LABEL_76;
        }

LABEL_142:
        v34 = re::SyncUnpacker::skipObjectState(this, v52, v53, v54, v55);
LABEL_143:
        v35 = 2;
        goto LABEL_144;
      }

      if ((v18 & 4) != 0)
      {
        v82 = *re::networkLogObjects(Object);
        if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_142;
        }

        if (*(v26 + 48))
        {
          v83 = *(v26 + 56);
        }

        else
        {
          v83 = v26 + 49;
        }

        *buf = 134218498;
        *&buf[4] = v173;
        *&buf[12] = 2080;
        *&buf[14] = v83;
        *&buf[22] = 2048;
        *v196 = v21;
        v97 = v82;
        v98 = "Discarding incoming object already in destroyed state, guid=%llu, type=%s(%llu)";
      }

      else
      {
        v49 = a1[1];
        v50 = re::SyncObjectTombstoneInfo::contains((v49 + 15), &v178, &v177);
        if (!v50)
        {
          v94 = re::SyncObjectTombstoneInfo::contains((v49 + 15), &v175, &v176);
          if (!v94)
          {
            if ((v18 & 1) == 0)
            {
              v99 = *re::networkLogObjects(v94);
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                if (*(v26 + 48))
                {
                  v104 = *(v26 + 56);
                }

                else
                {
                  v104 = v26 + 49;
                }

                *buf = 134218498;
                *&buf[4] = v173;
                *&buf[12] = 2080;
                *&buf[14] = v104;
                *&buf[22] = 2048;
                *v196 = v21;
                _os_log_impl(&dword_26168F000, v99, OS_LOG_TYPE_DEFAULT, "Got object delta update but missing object for it.(guid=%llu, type=%s(%llu))", buf, 0x20u);
              }

              v34 = re::SyncUnpacker::skipObjectState(this, v100, v101, v102, v103);
              v35 = 1;
              goto LABEL_144;
            }

            re::SyncObjectStore::createIncomingObject(buf, v49, &v180, v21, v173);
            v168 = 0;
            v58 = *buf;
            v174 = *buf;
            v57 = 1;
            goto LABEL_52;
          }

          v95 = *re::networkLogObjects(v94);
          if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_142;
          }

          if (*(v26 + 48))
          {
            v96 = *(v26 + 56);
          }

          else
          {
            v96 = v26 + 49;
          }

          *buf = 134218754;
          *&buf[4] = v173;
          *&buf[12] = 2080;
          *&buf[14] = v96;
          *&buf[22] = 2048;
          *v196 = v21;
          *&v196[8] = 2048;
          *&v196[10] = v175;
          v97 = v95;
          v98 = "Discarding incoming object with parent already tombstoned, guid=%llu, type=%s(%llu), parentGuid=%llu";
          v122 = 42;
LABEL_141:
          _os_log_impl(&dword_26168F000, v97, OS_LOG_TYPE_DEFAULT, v98, buf, v122);
          goto LABEL_142;
        }

        v51 = *re::networkLogObjects(v50);
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_142;
        }

        if (*(v26 + 48))
        {
          v56 = *(v26 + 56);
        }

        else
        {
          v56 = v26 + 49;
        }

        *buf = 134218498;
        *&buf[4] = v173;
        *&buf[12] = 2080;
        *&buf[14] = v56;
        *&buf[22] = 2048;
        *v196 = v21;
        v97 = v51;
        v98 = "Discarding incoming object already tombstoned, guid=%llu, type=%s(%llu)";
      }

      v122 = 32;
      goto LABEL_141;
    }

    v44 = *re::networkLogObjects(v36);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v20;
      *&buf[8] = 1024;
      *&buf[10] = v18;
      _os_log_debug_impl(&dword_26168F000, v44, OS_LOG_TYPE_DEBUG, "Cannot find guid for object with id=%d, flags=0x%02X. Skipping update.", buf, 0xEu);
    }

    v34 = re::SyncUnpacker::skipObjectState(this, v45, v46, v47, v48);
    v35 = 1;
LABEL_146:
    v14 = v35 >= v14 ? v14 : v35;
    if (!v14)
    {
      break;
    }

    if (++v13 == v172)
    {
      return v14;
    }
  }

  v153 = *re::networkLogObjects(v34);
  if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
  {
    v154 = *(a3 + 16);
    *buf = 67109376;
    *&buf[4] = v13;
    *&buf[8] = 2048;
    *&buf[10] = v154;
    v10 = "Failed to parse object %u from commit %llu.";
    v11 = v153;
    v12 = 18;
LABEL_212:
    _os_log_error_impl(&dword_26168F000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
  }

  return 0;
}

BOOL re::snapshot::DecoderOPACK::field<1,unsigned char>(re::snapshot::DecoderOPACK *a1, _BYTE *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<2,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<2>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<2,unsigned short>(re::snapshot::DecoderOPACK *a1, _WORD *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<2>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<3,re::SyncOwnershipInfo>(re *a1, re::snapshot::DecoderOPACK *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<3>(a1);
  if (v4)
  {
    if (re::snapshot::DecoderOPACK::beginObject(a1, 0))
    {
      re::snapshotMapFields(a1, a2, v5);
      re::snapshot::DecoderOPACK::endObject(a1, 0);
    }

    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<6,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<6>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<8,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<8>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<9,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<9>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<11,re::Slice<unsigned char>>(uint64_t a1, uint64_t *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<11>(a1);
  if (v4)
  {
    v9 = 0;
    if (re::snapshot::DecoderOPACK::beginData(a1, &v9, 0))
    {
      v8 = *(a1 + 8);
      v5 = v9;
      *a2 = re::Slice<unsigned char>::range(&v8, *(a1 + 24) - v8, *(a1 + 24) - v8 + v9);
      a2[1] = v6;
      re::snapshot::BufferDecoder::skipData(a1, v5);
    }

    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

__n128 re::DynamicArray<re::SyncHistoryResetRequest>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = *a2;
  *(*(a1 + 32) + 16 * v5) = *a2;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

__n128 re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::Pair<unsigned long long,unsigned long long,true>>(a1, &v9, a2, a3);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + 40 * v7 + 16) = *a3;
  }

  return result;
}

uint64_t re::SyncUnpacker::skipObjectState(re::SyncUnpacker *this, const re::SyncObjectTypeInfo *a2, unint64_t a3, unsigned __int8 a4, re::BitReader *a5)
{
  v8 = 0;
  v9 = 0;
  re::BiasedVLQ::read(&v8, this, &v9);
  v6 = *(this + 4) + v9 - (*(this + 5) != 0);

  return re::BitReader::seekTo(this, v6);
}

BOOL re::snapshot::DecoderOPACK::beginField<1>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 0)
  {
    while (1)
    {
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        v4 = *v5;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v6 = *(a1 + 24);
      if (v6 >= *(a1 + 32))
      {
        break;
      }

      v3 = *v6;
      if (v3 == 3)
      {
        break;
      }

      if ((v3 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v6 + 1;
        Integer = v3 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 1)
      {
        return Integer == 1;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 1;
}

uint64_t re::snapshot::DecoderOPACK::endField(re::snapshot::DecoderOPACK *this)
{
  v2 = *(this + 3);
  if (v2 >= *(this + 4) || (v3 = *v2, v3 == 3))
  {
    result = 0x7FFFFFFFLL;
  }

  else if ((v3 - 7) > 0x28)
  {
    result = re::snapshot::DecoderOPACK::readInteger(this, 0x7FFFFFFFLL);
  }

  else
  {
    *(this + 3) = v2 + 1;
    result = (v3 - 8);
  }

  *(this + 10) = result;
  return result;
}

BOOL re::snapshot::DecoderOPACK::beginField<2>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 1)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 2)
      {
        return Integer == 2;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 2;
}

BOOL re::snapshot::DecoderOPACK::beginField<3>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 2)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 3)
      {
        return Integer == 3;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 3;
}

BOOL re::snapshot::DecoderOPACK::beginField<5>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 4)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 5)
      {
        return Integer == 5;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 5;
}

BOOL re::snapshot::DecoderOPACK::beginField<6>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 5)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 6)
      {
        return Integer == 6;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 6;
}

BOOL re::snapshot::DecoderOPACK::beginField<8>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 7)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 8)
      {
        return Integer == 8;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 8;
}

BOOL re::snapshot::DecoderOPACK::beginField<9>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 8)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 9)
      {
        return Integer == 9;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 9;
}

BOOL re::snapshot::DecoderOPACK::beginField<11>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 10)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 11)
      {
        return Integer == 11;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 11;
}

uint64_t re::Slice<unsigned char>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash("assertion failure: (fromInclusive <= size()) Index out of range. fromInclusive = %zu, size = %zu", v5, v7);
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash("assertion failure: (toExclusive <= size()) Index out of range. toExclusive = %zu, size = %zu", v6, v8);
  __break(1u);
  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::Pair<unsigned long long,unsigned long long,true>>(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v7 = re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 8) = *a3;
  if (v8)
  {
    v9 = (v8 + 8);
  }

  *(v7 + 16) = *a4;
  ++*(a1 + 40);
  return v7 + 16;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + 40 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 40 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 40 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 40 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = a1[2];
      a1[2] = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 3);
      *(a1 + 3) = v7;
      ++*&v9[40];
      re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::move(a1, v9);
      re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24), *(v7 + v5 + 32));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        *(v8 + 8) = 0;
        *(result + 16) = *(v8 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t *re::DynamicArray<unsigned char>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = result[1];
      v9 = a2[1];
      *result = v5;
      result[1] = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = result[2];
      result[2] = a2[2];
      a2[2] = v10;
      v11 = result[4];
      result[4] = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 6);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

uint64_t re::IP::makeFromString@<X0>(re::IP *this@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *(&v5 + 1) = 0;
  v6 = 0;
  result = inet_pton(2, this, &v5 + 8);
  if (result)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    result = inet_pton(30, this, &v5 + 8);
    if (!result)
    {
      *a2 = 0;
      return result;
    }

    LOBYTE(v5) = 1;
  }

  *a2 = 1;
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  return result;
}

re::DynamicString *re::IP::generateString@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::IP *this@<X0>)
{
  v8 = *MEMORY[0x277D85DE8];
  __s[0] = 0;
  v3 = this + 8;
  if (*this)
  {
    v4 = 30;
  }

  else
  {
    v4 = 2;
  }

  v5 = inet_ntop(v4, v3, __s, 0x31u);
}

uint64_t re::Address::getIPPortPair@<X0>(uint64_t *__return_ptr a1@<X8>, re::Address *this@<X0>)
{
  v23 = *MEMORY[0x277D85DE8];
  result = re::DynamicString::rfind(this, 58, v18);
  if (v18[0] != 1)
  {
    goto LABEL_12;
  }

  v5 = v19;
  if (!v19)
  {
    goto LABEL_12;
  }

  __endptr = 0;
  v6 = (*(this + 1) & 1) != 0 ? *(this + 2) : (this + 9);
  result = strtol(v6 + v19 + 1, &__endptr, 10);
  if (result >= 0x10000)
  {
    goto LABEL_12;
  }

  v7 = *(this + 1);
  v8 = *(this + 2);
  if ((v7 & 1) == 0)
  {
    v8 = this + 9;
  }

  v9 = v7 >> 1;
  v10 = v7 >> 1;
  if (*(this + 1))
  {
    v10 = v9;
  }

  if (__endptr == &v8[v10])
  {
    v11 = result;
    re::DynamicString::substr(this, 0, v5, &v14);
    if (v15)
    {
      v12 = *&v16[7];
    }

    else
    {
      v12 = v16;
    }

    re::IP::makeFromString(v12, v20);
    if (v20[0] == 1)
    {
      *(a1 + 1) = v21;
      a1[3] = v22;
      *(a1 + 16) = v11;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    *a1 = v13;
    result = v14;
    if (v14)
    {
      if (v15)
      {
        return (*(*v14 + 40))();
      }
    }
  }

  else
  {
LABEL_12:
    *a1 = 0;
  }

  return result;
}

size_t re::Address::hash(re::Address *this)
{
  v3[2] = *MEMORY[0x277D85DE8];
  if (*(this + 8))
  {
    v1 = *(this + 2);
  }

  else
  {
    v1 = this + 9;
  }

  result = strlen(v1);
  if (result)
  {
    MurmurHash3_x64_128(v1, result, 0, v3);
    return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
  }

  return result;
}

uint64_t re::Address::makeFromIPAndPort@<X0>(re::IP *a1@<X0>, re::DynamicString *a2@<X8>)
{
  re::IP::generateString(&v5, a1);
  re::DynamicString::appendf(&v5, ":%hu", *(a1 + 12));
  re::DynamicString::DynamicString(a2, &v5);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))();
    }
  }

  return result;
}

uint64_t *re::Address::makeFromIPAndPort@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::Address *this@<X0>, const char *a3@<X1>)
{
  v3 = a3;
  re::DynamicString::appendf(&v7, ":%hu", v3);
  re::DynamicString::DynamicString(a1, &v7);
  result = v7;
  if (v7)
  {
    if (v8)
    {
      return (*(*v7 + 40))();
    }
  }

  return result;
}

double RESyncCreateSyncObjectContext(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 48, 8);
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  *(v2 + 36) = 0x7FFFFFFF;
  return result;
}

re *RESyncDestroySyncObjectContext(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3.n128_f64[0] = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1);
    v4 = *(*v2 + 40);

    return v4(v2, v1, v3);
  }

  return result;
}

double RESyncCreateSyncObjectContextNoAlloc(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  return result;
}

BOOL RESyncAddSyncObjectContextEntry(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1, &v5, &v6);
  return *v3 == v6;
}

uint64_t re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

uint64_t RESyncGetSyncObjectContextEntry(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1, &v5);
  if (v2)
  {
    return *v2;
  }

  v4 = *re::networkLogObjects(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v7 = v5;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_INFO, "RESyncGetSyncObjectContextEntry: Couldn't find entry with id=%llu", buf, 0xCu);
  }

  return 0;
}

BOOL RESyncRemoveSyncObjectContextEntry(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1, &v6);
  v3 = v2;
  if (!v2)
  {
    v4 = *re::networkLogObjects(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "RESyncRemoveSyncObjectContextEntry: Couldn't find entry with id=%llu", buf, 0xCu);
    }
  }

  return v3;
}

uint64_t re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
        v8 = *(a2 + 16) + v5;
        v10 = *(v8 + 8);
        v9 = *(v8 + 16);
        *(result + 8) = v10;
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

BOOL re::snapshot::DecoderOPACK::field<1,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

re::snapshot::BufferEncoder *re::snapshotMapFields<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *this, uint64_t a2)
{
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 9;
  }

  re::snapshot::EncoderOPACK::writeInteger(this, *a2);
  v6 = *(this + 4);
  if (v6 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v7 = *(this + 1);
    *(this + 4) = v6 + 1;
    *(v7 + v6) = 10;
  }

  v8 = *(a2 + 8);

  return re::snapshot::EncoderOPACK::writeInteger(this, v8);
}

re::snapshot::BufferEncoder *re::snapshotMapFields(re *this, re::snapshot::EncoderOPACK *a2, const re::SyncOwnershipInfo *a3)
{
  v5 = *(this + 4);
  if (v5 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v6 = *(this + 1);
    *(this + 4) = v5 + 1;
    *(v6 + v5) = 9;
  }

  re::snapshot::EncoderOPACK::operator<<(this, *(a2 + 16));
  v7 = *(this + 4);
  if (v7 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v8 = *(this + 1);
    *(this + 4) = v7 + 1;
    *(v8 + v7) = 10;
  }

  re::snapshot::EncoderOPACK::operator<<(this, *(a2 + 35));
  v9 = *(this + 4);
  if (v9 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 3);
  }

  else
  {
    v10 = *(this + 1);
    *(this + 4) = v9 + 1;
    *(v10 + v9) = 11;
  }

  re::snapshot::EncoderOPACK::writeInteger(this, *(a2 + 16));
  v11 = *(this + 4);
  if (v11 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 4);
  }

  else
  {
    v12 = *(this + 1);
    *(this + 4) = v11 + 1;
    *(v12 + v11) = 12;
  }

  result = re::snapshot::EncoderOPACK::writeInteger(this, *(a2 + 3));
  if (!*(a2 + 3) && *a2)
  {
    v14 = *(this + 4);
    if (v14 >= *(this + 5))
    {
      re::snapshot::EncoderOPACK::writeInteger(this, 5);
    }

    else
    {
      v15 = *(this + 1);
      *(this + 4) = v14 + 1;
      *(v15 + v14) = 13;
    }

    re::snapshot::EncoderOPACK::beginObject(this);
    re::snapshotMapFields<re::snapshot::EncoderOPACK>(this, a2);

    return re::snapshot::EncoderOPACK::endObject(this);
  }

  return result;
}

BOOL re::snapshotMapFields(re *this, re::snapshot::DecoderOPACK *a2, re::SyncOwnershipInfo *a3)
{
  re::snapshot::DecoderOPACK::field<1,BOOL>(this, a2 + 16);
  re::snapshot::DecoderOPACK::field<2,BOOL>(this, a2 + 35);
  re::snapshot::DecoderOPACK::field<3,unsigned short>(this, a2 + 16);
  re::snapshot::DecoderOPACK::field<4,unsigned long long>(this, a2 + 3);

  return re::snapshot::DecoderOPACK::field<5,re::HandOffData>(this, a2);
}

BOOL re::snapshot::DecoderOPACK::field<1,BOOL>(re::snapshot::DecoderOPACK *a1, _BYTE *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<2,BOOL>(re::snapshot::DecoderOPACK *a1, _BYTE *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<2>(a1);
  if (v4)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<3,unsigned short>(re::snapshot::DecoderOPACK *a1, _WORD *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<3>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<4,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<4>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<5,re::HandOffData>(re::snapshot::DecoderOPACK *a1, uint64_t a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<5>(a1);
  if (v4)
  {
    if (re::snapshot::DecoderOPACK::beginObject(a1, 0))
    {
      re::snapshot::DecoderOPACK::field<1,unsigned long long>(a1, a2);
      re::snapshot::DecoderOPACK::field<2,unsigned short>(a1, (a2 + 8));
      re::snapshot::DecoderOPACK::endObject(a1, 0);
    }

    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::SyncOwnershipInfo::read(re::SyncOwnershipInfo *this, re::BitReader *a2, int a3, int a4)
{
  v9 = 0;
  re::BitReader::readUInt32Bits(a2, 1u, &v9);
  *(this + 16) = v9 != 0;
  v9 = 0;
  re::BitReader::readUInt32Bits(a2, 1u, &v9);
  *(this + 35) = v9 != 0;
  v9 = 0;
  re::BitReader::readUInt32Bits(a2, 0x10u, &v9);
  *(this + 16) = v9;
  if (a4)
  {
    re::BitReader::readUInt64(a2, this + 3);
  }

  if (a3)
  {
    re::BitReader::readUInt64(a2, this);
    v9 = 0;
    re::BitReader::readUInt32Bits(a2, 0x10u, &v9);
    *(this + 4) = v9;
  }

  return (*(a2 + 12) & 1) == 0;
}

BOOL re::SyncOwnershipInfo::write(re::SyncOwnershipInfo *this, re::BitWriter *a2, int a3)
{
  re::BitWriter::writeUInt32Bits(a2, *(this + 16), 1u);
  re::BitWriter::writeUInt32Bits(a2, *(this + 35), 1u);
  re::BitWriter::writeUInt32Bits(a2, *(this + 16), 0x10u);
  if (a3)
  {
    v6 = *(this + 7);
    re::BitWriter::writeUInt32Bits(a2, *(this + 6), 0x20u);
    re::BitWriter::writeUInt32Bits(a2, v6, 0x20u);
  }

  if (!*(this + 3))
  {
    v7 = *this;
    if (*this)
    {
      re::BitWriter::writeUInt32Bits(a2, *this, 0x20u);
      re::BitWriter::writeUInt32Bits(a2, HIDWORD(v7), 0x20u);
      re::BitWriter::writeUInt32Bits(a2, *(this + 4), 0x10u);
    }
  }

  return (*(a2 + 20) & 1) == 0;
}

BOOL re::snapshot::DecoderOPACK::beginField<4>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 3)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 4)
      {
        return Integer == 4;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 4;
}

uint64_t *re::networkLogObjects(re *this)
{
  {
    re::networkLogObjects(void)::logObjects = os_log_create("com.apple.re", "Network");
  }

  return &re::networkLogObjects(void)::logObjects;
}

double RESyncCreateSyncObjectWriteContext(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 88, 8);
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 80) = 0;
  *(v2 + 76) = 0x7FFFFFFF;
  return result;
}

re *RESyncDestroySyncObjectWriteContext(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3.n128_f64[0] = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1 + 5);
    v4 = *(*v2 + 40);

    return v4(v2, v1, v3);
  }

  return result;
}

uint64_t RESyncCreateSyncObjectWriteContextNoAlloc(uint64_t result, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    v2 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v3 = 136315394;
    v4 = "RESyncCreateSyncObjectWriteContextNoAlloc";
    v5 = 2080;
    v6 = "bytes != __null";
LABEL_10:
    _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
    return 0;
  }

  if (a2 <= 0x57)
  {
    v2 = *re::networkLogObjects(result);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v3 = 136315394;
    v4 = "RESyncCreateSyncObjectWriteContextNoAlloc";
    v5 = 2080;
    v6 = "size >= sizeof(re::SyncObjectWriteContext)";
    goto LABEL_10;
  }

  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 76) = 0x7FFFFFFF;
  return result;
}

void RESyncDestroySyncObjectWriteContextNoDealloc(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = (a1 + 40);

    re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1);
  }

  else
  {
    v2 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "RESyncDestroySyncObjectWriteContextNoDealloc";
      v5 = 2080;
      v6 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
    }
  }
}

BOOL RESyncAddSyncObjectWriteContextEntry(re *a1, uint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a2;
  if (!a1)
  {
    v9 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    v13 = "RESyncAddSyncObjectWriteContextEntry";
    v14 = 2080;
    v15 = "context != __null";
    v6 = "%s: Invalid parameter not satisfying %s.";
    goto LABEL_13;
  }

  if (!a2)
  {
    v9 = *re::networkLogObjects(a1);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    v13 = "RESyncAddSyncObjectWriteContextEntry";
    v14 = 2080;
    v15 = "entry != __null";
    v6 = "%s: Invalid parameter not satisfying %s.";
LABEL_13:
    v7 = v9;
    v8 = 22;
    goto LABEL_6;
  }

  v3 = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 40, &v10, &v11);
  if (*v3 == v11)
  {
    return 1;
  }

  v4 = *re::networkLogObjects(v3);
  result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 134217984;
    v13 = v10;
    v6 = "RESyncAddSyncObjectWriteContextEntry: Failed to add entry using id=%llu, possible duplicate!";
    v7 = v4;
    v8 = 12;
LABEL_6:
    _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
    return 0;
  }

  return result;
}

uint64_t RESyncGetSyncObjectWriteContextEntry(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (a1)
  {
    v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 40, &v6);
    if (v2)
    {
      return *v2;
    }

    v4 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_INFO, "RESyncGetSyncObjectWriteContextEntry: Couldn't find entry with id=%llu.", buf, 0xCu);
    }
  }

  else
  {
    v5 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "RESyncGetSyncObjectWriteContextEntry";
      v9 = 2080;
      v10 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    }
  }

  return 0;
}

BOOL RESyncRemoveSyncObjectWriteContextEntry(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (a1)
  {
    v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 40, &v6);
    if (v2)
    {
      return 1;
    }

    v4 = *re::networkLogObjects(v2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "RESyncRemoveSyncObjectWriteContextEntry: Couldn't find entry with id=%llu.", buf, 0xCu);
      return 0;
    }
  }

  else
  {
    v5 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136315394;
      v8 = "RESyncRemoveSyncObjectWriteContextEntry";
      v9 = 2080;
      v10 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
      return 0;
    }
  }

  return result;
}

uint64_t RESyncObjectWriteContextGetSession(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return *(a1 + 8);
  }

  v2 = *re::networkLogObjects(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "RESyncObjectWriteContextGetSession";
    v5 = 2080;
    v6 = "context != __null";
    _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
  }

  return 0;
}

uint64_t RESyncObjectWriteContextGetDestinationPeerID(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return *(a1 + 16);
  }

  v2 = *re::networkLogObjects(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "RESyncObjectWriteContextGetDestinationPeerID";
    v5 = 2080;
    v6 = "context != __null";
    _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
  }

  return 0;
}

BOOL RESyncObjectWriteContextSupportsProtocolLevel(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return (a2 & ~*(a1 + 32)) == 0;
  }

  v3 = *re::networkLogObjects(0);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v4 = 136315394;
    v5 = "RESyncObjectWriteContextSupportsProtocolLevel";
    v6 = 2080;
    v7 = "context != __null";
    _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    return 0;
  }

  return result;
}

uint64_t RESyncObjectWriteContextIsLocalSession(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    (*(**(a1 + 8) + 32))(v4);
    v1 = *(*v4 + 2219);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 136315394;
      *&v4[4] = "RESyncObjectWriteContextIsLocalSession";
      v5 = 2080;
      v6 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", v4, 0x16u);
    }

    v1 = 0;
  }

  return v1 & 1;
}

void re::DynamicArray<unsigned int>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<unsigned int>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 4 * v4), 4 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

re::SyncObjectShortIDManagerImpl *re::SyncObjectShortIDManagerImpl::SyncObjectShortIDManagerImpl(re::SyncObjectShortIDManagerImpl *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F5008;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 60) = 0x7FFFFFFFLL;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 108) = 0x7FFFFFFFLL;
  *(this + 16) = 0;
  *(v2 + 120) = 0;
  *(this + 34) = 1;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 42) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 1;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 56) = 0;
  *(this + 27) = 0;
  v3 = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::addUninitialized(v2 + 120);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  *(v3 + 44) = 127;
  re::DynamicArray<unsigned int>::resize(v3, 0x80uLL);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v4 + 0x3FFFFFFFFFFFFFFFLL;
    v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = (v6 & 0x3FFFFFFFFFFFFFFFLL) - (v6 & 3) + 4;
    v9 = vdupq_n_s64(v7);
    v10 = (*(v3 + 32) + 8);
    v11 = 127;
    do
    {
      v12 = vdupq_n_s64(v5);
      v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_261710400)));
      if (vuzp1_s16(v13, *v9.i8).u8[0])
      {
        *(v10 - 2) = v11;
      }

      if (vuzp1_s16(v13, *&v9).i8[2])
      {
        *(v10 - 1) = v11 - 1;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_261711070)))).i32[1])
      {
        *v10 = v11 - 2;
        v10[1] = v11 - 3;
      }

      v5 += 4;
      v11 -= 4;
      v10 += 4;
    }

    while (v8 != v5);
  }

  *re::BucketArray<unsigned long,4ul>::addUninitialized(this + 176) = 0;
  return this;
}

uint64_t re::SyncObjectShortIDManagerImpl::mapOutgoing(re::SyncObjectShortIDManagerImpl *this, unint64_t a2, unint64_t a3)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::findEntry<re::Pair<unsigned long long,unsigned long long,true>>(&v27, this + 24, a2, a3, ((v7 ^ (v7 >> 31)) + ((v6 ^ (v6 >> 31)) << 6) + ((v6 ^ (v6 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v6 ^ (v6 >> 31));
  if (HIDWORD(v28) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::allocEntry(this + 24, v28, v27);
    *(v8 + 24) = -1;
    v9 = (v8 + 24);
    *(v8 + 8) = a2;
    *(v8 + 16) = a3;
    ++*(this + 16);
  }

  else
  {
    v9 = (*(this + 5) + 40 * HIDWORD(v28) + 24);
  }

  result = *v9;
  if (result == -1)
  {
    v11 = *(this + 27);
    if (v11)
    {
      goto LABEL_16;
    }

    v12 = *(this + 20);
    v13 = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::addUninitialized(this + 120);
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0;
    *(v13 + 40) = v12 << 7;
    *(v13 + 44) = (v12 << 7) | 0x7F;
    re::DynamicArray<unsigned int>::resize(v13, 0x80uLL);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = v14 + 0x3FFFFFFFFFFFFFFFLL;
      v17 = vdupq_n_s64(v16 & 0x3FFFFFFFFFFFFFFFLL);
      v18 = (v16 & 0x3FFFFFFFFFFFFFFFLL) - (v16 & 3) + 4;
      v19 = (v12 << 7) + 124;
      v20 = (*(v13 + 32) + 8);
      do
      {
        v21 = vdupq_n_s64(v15);
        v22 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_261710400)));
        if (vuzp1_s16(v22, *v17.i8).u8[0])
        {
          *(v20 - 2) = v19 + 3;
        }

        if (vuzp1_s16(v22, *&v17).i8[2])
        {
          *(v20 - 1) = v19 + 2;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_261711070)))).i32[1])
        {
          *v20 = v19 + 1;
          v20[1] = v19;
        }

        v15 += 4;
        v19 -= 4;
        v20 += 4;
      }

      while (v18 != v15);
    }

    *re::BucketArray<unsigned long,4ul>::addUninitialized(this + 176) = v12;
    v11 = *(this + 27);
    if (v11)
    {
LABEL_16:
      v24 = re::BucketArray<unsigned long,4ul>::operator[](this + 176, v11 - 1);
      v25 = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::operator[](this + 120, *v24);
      v26 = *(v25 + 16);
      result = *(*(v25 + 32) + 4 * v26 - 4);
      ++*(v25 + 24);
      *v9 = result;
      *(v25 + 16) = v26 - 1;
      if (v26 == 1)
      {
        re::BucketArray<unsigned long,4ul>::operator[](this + 176, *(this + 27) - 1);
        --*(this + 27);
        ++*(this + 56);
        return *v9;
      }
    }

    else
    {
      re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      result = _os_crash("assertion failure: (m_size > 0) Array is empty");
      __break(1u);
    }
  }

  return result;
}

unint64_t re::BucketArray<re::SyncObjectShortIDBlock,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x277D86220];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_26168F000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 48 * (a2 & 3);
}

_anonymous_namespace_ *re::SyncObjectShortIDManagerImpl::unmapOutgoing(re::SyncObjectShortIDManagerImpl *this, unint64_t a2, unint64_t a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v9 = (v8 ^ (v8 >> 31)) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9;
  result = re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::findEntry<re::Pair<unsigned long long,unsigned long long,true>>(v30, this + 24, a2, a3, v9 ^ v7);
  if (v32 != 0x7FFFFFFF)
  {
    v11 = *(this + 5);
    v12 = v11 + 40 * v32;
    re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::findEntry<re::Pair<unsigned long long,unsigned long long,true>>(v30, this + 24, a2, a3, v9 ^ v7);
    v13 = v32;
    if (v32 != 0x7FFFFFFF)
    {
      v14 = (v11 + 40 * v32);
      v15 = *v14 & 0x7FFFFFFF;
      if (v33 == 0x7FFFFFFF)
      {
        *(*(this + 4) + 4 * v31) = v15;
      }

      else
      {
        *(v11 + 40 * v33) = *(v11 + 40 * v33) & 0x80000000 | v15;
      }

      *v14 = *(this + 15);
      --*(this + 13);
      v16 = *(this + 16) + 1;
      *(this + 15) = v13;
      *(this + 16) = v16;
    }

    v17 = *(v12 + 24) >> 7;
    result = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::operator[](this + 120, v17);
    v18 = result;
    v19 = *(v12 + 24);
    v20 = *(result + 1);
    v21 = *(result + 2);
    v22 = v21;
    if (v21 >= v20)
    {
      if (v20 < v21 + 1)
      {
        if (*result)
        {
          v23 = 2 * v20;
          v24 = v20 == 0;
          v25 = 8;
          if (!v24)
          {
            v25 = v23;
          }

          if (v25 <= v21 + 1)
          {
            v26 = v21 + 1;
          }

          else
          {
            v26 = v25;
          }

          result = re::DynamicArray<unsigned int>::setCapacity(result, v26);
        }

        else
        {
          result = re::DynamicArray<unsigned int>::setCapacity(v18, v21 + 1);
          ++*(v18 + 6);
        }
      }

      v22 = v18[2];
    }

    *(v18[4] + 4 * v22) = v19;
    v18[2] = v22 + 1;
    ++*(v18 + 6);
    if (!v21)
    {
      v27 = *(this + 27);
      result = re::BucketArray<unsigned long,4ul>::addUninitialized(this + 176);
      *result = v17;
      if (v27)
      {
        do
        {
          v28 = v27 - 1;
          result = re::BucketArray<unsigned long,4ul>::operator[](this + 176, v27 - 1);
          if (*result >= v17)
          {
            break;
          }

          v29 = *re::BucketArray<unsigned long,4ul>::operator[](this + 176, v27 - 1);
          *re::BucketArray<unsigned long,4ul>::operator[](this + 176, v27) = v29;
          result = re::BucketArray<unsigned long,4ul>::operator[](this + 176, v27 - 1);
          *result = v17;
          --v27;
        }

        while (v28);
      }
    }
  }

  return result;
}

unint64_t re::BucketArray<unsigned long,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x277D86220];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_26168F000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 8 * (a2 & 3);
}

void *re::SyncObjectShortIDManagerImpl::mapIncoming(re::SyncObjectShortIDManagerImpl *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v8 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v13, this + 72, a2, (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31));
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v9 = re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(this + 72, v14, v13);
    *(v9 + 8) = a3;
    result = (v9 + 8);
    *(result - 1) = v6;
    result[1] = a4;
    ++*(this + 28);
    goto LABEL_4;
  }

  v11 = *(this + 11) + 32 * HIDWORD(v14);
  v12 = *(v11 + 8);
  result = (v11 + 8);
  if (v12 == a3)
  {
LABEL_4:
    if (result[1] == a4)
    {
      return result;
    }
  }

  *result = a3;
  result[1] = a4;
  return result;
}

uint64_t re::SyncObjectShortIDManagerImpl::mapIncoming(re::SyncObjectShortIDManagerImpl *this, uint64_t a2)
{
  result = re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(this + 72, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v5, a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 8;
  }
}

void *re::SyncObjectShortIDManagerImpl::unmapIncoming(re::SyncObjectShortIDManagerImpl *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  result = re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(this + 72, a2);
  if (result)
  {
    if (*result == a3 && result[1] == a4)
    {
      v9 = 0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30));
      result = re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v15, this + 72, v6, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31));
      v10 = v17;
      if (v17 != 0x7FFFFFFF)
      {
        v11 = *(this + 11);
        v12 = (v11 + 32 * v17);
        v13 = *v12 & 0x7FFFFFFF;
        if (v18 == 0x7FFFFFFF)
        {
          *(*(this + 10) + 4 * v16) = v13;
        }

        else
        {
          *(v11 + 32 * v18) = *(v11 + 32 * v18) & 0x80000000 | v13;
        }

        v14 = *(this + 28);
        *v12 = *(this + 27);
        --*(this + 25);
        *(this + 27) = v10;
        *(this + 28) = v14 + 1;
      }
    }
  }

  return result;
}

void re::SyncObjectShortIDManagerImpl::~SyncObjectShortIDManagerImpl(re::SyncObjectShortIDManagerImpl *this)
{
  re::BucketArray<unsigned long,4ul>::deinit(this + 176);
  re::DynamicOverflowArray<unsigned long *,2ul>::deinit(this + 176);
  re::BucketArray<re::SyncObjectShortIDBlock,4ul>::deinit(this + 120);
  re::DynamicOverflowArray<unsigned long *,2ul>::deinit(this + 120);
  re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
  re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(this + 3);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::BucketArray<unsigned long,4ul>::deinit(this + 176);
  re::DynamicOverflowArray<unsigned long *,2ul>::deinit(this + 176);
  re::BucketArray<re::SyncObjectShortIDBlock,4ul>::deinit(this + 120);
  re::DynamicOverflowArray<unsigned long *,2ul>::deinit(this + 120);
  re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
  re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(this + 3);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

uint64_t re::BucketArray<unsigned long,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<unsigned long,4ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<unsigned long,4ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<unsigned long *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<unsigned long,4ul>::freeElementBucket(uint64_t *a1)
{
  v2 = *a1;
  if (a1[2])
  {
    v3 = a1 + 3;
  }

  else
  {
    v3 = a1[4];
  }

  result = (*(*v2 + 40))(v2, v3[a1[1] - 1]);
  v5 = *(a1 + 4);
  --a1[1];
  *(a1 + 4) = v5 + 2;
  return result;
}

uint64_t re::DynamicOverflowArray<unsigned long *,2ul>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 1) == 0)
    {
      result = (*(*result + 40))(result, *(a1 + 32));
      v3 = *(a1 + 16);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = (v3 | 1) + 2;
  }

  return result;
}

uint64_t re::BucketArray<re::SyncObjectShortIDBlock,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::operator[](a1, i);
      if (*v4)
      {
        if (v4[4])
        {
          (*(**v4 + 40))(*v4);
        }

        v4[4] = 0;
        v4[1] = 0;
        v4[2] = 0;
        *v4 = 0;
        ++*(v4 + 6);
      }
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<unsigned long,4ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<unsigned long *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

double re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 10;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void *re::DynamicArray<unsigned int>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 62)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 4, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 4 * a2;
          result = (*(*result + 32))(result, 4 * a2, 4);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 4 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<unsigned int>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::BucketArray<re::SyncObjectShortIDBlock,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::SyncObjectShortIDBlock,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x277D86220];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_26168F000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 48 * (v2 & 3);
}

_anonymous_namespace_ *re::BucketArray<re::SyncObjectShortIDBlock,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<unsigned long,4ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 192, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = (result + 24);
        v15 = *(v4 + 4);
        if (v7)
        {
          v16 = v4 + 24;
        }

        else
        {
          v16 = *(v4 + 4);
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (*(v4 + 16))
          {
            v13 = v4 + 24;
          }

          else
          {
            v13 = *(v4 + 4);
          }

          result = memcpy(v10, v13, 8 * *(v4 + 1));
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, *(v4 + 4));
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          *(v4 + 3) = a2;
          *(v4 + 4) = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
      __break(1u);
    }
  }

  return result;
}

uint64_t re::BucketArray<unsigned long,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<unsigned long,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x277D86220];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_26168F000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 3);
}

_anonymous_namespace_ *re::BucketArray<unsigned long,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<unsigned long,4ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 32, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<unsigned long,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::findEntry<re::Pair<unsigned long long,unsigned long long,true>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_16;
  }

  v5 = a5 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + 16);
  v9 = v8 + 40 * v7;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 == a3 && v10 == a4)
  {
    v6 = *(*(a2 + 8) + 4 * v5);
LABEL_16:
    v7 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v8 + 40 * v7) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v8 + 40 * v13;
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v17 == a3 && v16 == a4)
      {
        break;
      }

      v13 = *(v8 + 40 * v14) & 0x7FFFFFFF;
      v7 = v14;
      if (v13 == 0x7FFFFFFF)
      {
        v7 = v14;
        goto LABEL_17;
      }
    }

    v6 = v14;
  }

LABEL_17:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

unint64_t re::Hash<re::Pair<unsigned long long,unsigned long long,true>>::operator()(uint64_t a1, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  return (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
}

uint64_t re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 24;
            do
            {
              if ((*(v17 - 24) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24), *(v17 + 8));
                *(v18 + 8) = *(v17 - 16);
                *(v18 + 24) = *v17;
              }

              v17 += 40;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 40 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 40 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 40 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 32) = a3;
  ++*(a1 + 28);
  return v19 + 40 * v5;
}

uint64_t re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, int a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 32 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v24, v9, v8);
          v11 = *v24;
          *v24 = *a1;
          *a1 = v11;
          v12 = *&v24[16];
          v13 = *(a1 + 16);
          *&v24[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v24[24];
          *&v24[24] = *(a1 + 24);
          v14 = *&v24[32];
          *(a1 + 24) = v15;
          ++*&v24[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(v13 + 24) % *(a1 + 24), *(v13 + 24));
                *(v17 + 4) = *(v13 + 4);
                *(v17 + 8) = *(v13 + 8);
              }

              v13 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v24);
        }
      }

      else
      {
        if (v8)
        {
          v20 = 2 * v7;
        }

        else
        {
          v20 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v18 = *(a1 + 16);
    v19 = *(v18 + 32 * v5);
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *(v18 + 32 * v5);
    *(a1 + 36) = v19 & 0x7FFFFFFF;
  }

  v21 = v18 + 32 * v5;
  *v21 = v19 | 0x80000000;
  v22 = *(a1 + 8);
  *v21 = *(v22 + 4 * a2) | 0x80000000;
  *(v21 + 24) = a3;
  *(v22 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v18 + 32 * v5;
}

PacketUtils *PacketUtils::move(PacketUtils *this, re::PacketPool **a2, re::PacketPool **a3, re::Transport *a4)
{
  v4 = this;
  if (a2 != a3)
  {
    v6 = re::PacketPool::allocate(a3[48], (*(this + 6) + 3));
    re::Packet::offsetBy(v6, 3);
    v7 = *(v6 + 1);
    *(v7 + 2) = 0;
    *v7 = 0;
    v8 = *(v4 + 6);
    *(v6 + 6) = v8;
    memcpy(*(v6 + 2), *(v4 + 2), v8);
    re::PacketPool::free(a2[48], v4);
    return v6;
  }

  return v4;
}

void re::Session::~Session(re::Session *this)
{
  *this = &unk_2873F5090;
  *(this + 3) = &unk_2873F5128;
  if (*(this + 2272) == 1)
  {
    re::Session::deinit(this);
  }

  *(this + 941) = &unk_2873F57D8;
  v2 = (this + 7592);
  v3 = -96;
  do
  {
    v4.n128_f64[0] = re::Queue<re::Function<void ()(void)>>::deinit(v2);
    v2 -= 6;
    v3 += 48;
  }

  while (v3);
  v5 = *(this + 940);
  if (v5)
  {

    *(this + 940) = 0;
  }

  if (*(this + 929))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 7432);
  }

  v6 = *(this + 934);
  if (v6)
  {
    if (*(this + 938))
    {
      (*(*v6 + 40))(v6, v4);
    }

    *(this + 938) = 0;
    *(this + 935) = 0;
    *(this + 936) = 0;
    *(this + 934) = 0;
    ++*(this + 1874);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 7432);
  v7 = *(this + 928);
  if (v7)
  {

    *(this + 928) = 0;
  }

  v8 = *(this + 403);
  if (v8)
  {
    if (*(this + 407))
    {
      (*(*v8 + 40))(v8);
    }

    *(this + 407) = 0;
    *(this + 404) = 0;
    *(this + 405) = 0;
    *(this + 403) = 0;
    ++*(this + 812);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 3184);
  re::DynamicArray<re::Session::BacklogItem>::deinit(this + 3144);
  v9 = re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(this + 386);
  v10 = *(this + 381);
  if (v10)
  {
    if (*(this + 385))
    {
      (*(*v10 + 40))(v10, v9);
    }

    *(this + 385) = 0;
    *(this + 382) = 0;
    *(this + 383) = 0;
    *(this + 381) = 0;
    ++*(this + 768);
  }

  v11 = *(this + 380);
  if (v11)
  {

    *(this + 380) = 0;
  }

  re::Transport::~Transport((this + 2320));
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 2280);
  v12 = *(this + 282);
  if (v12)
  {

    *(this + 282) = 0;
  }

  v13 = *(this + 281);
  if (v13)
  {

    *(this + 281) = 0;
  }

  v14 = *(this + 276);
  if (v14)
  {

    *(this + 276) = 0;
  }

  v15 = *(this + 272);
  if (v15)
  {

    *(this + 272) = 0;
  }

  re::Event<re::Session>::~Event(this + 2056);
  re::Event<re::Session>::~Event(this + 1968);
  re::Event<re::Session>::~Event(this + 1880);
  re::Event<re::Session>::~Event(this + 1792);
  re::Event<re::Session>::~Event(this + 1704);
  re::Event<re::Session>::~Event(this + 1616);
  re::Event<re::Session>::~Event(this + 1528);
  if (*(this + 180))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1440);
  }

  v16 = *(this + 185);
  if (v16)
  {
    if (*(this + 189))
    {
      (*(*v16 + 40))(v16);
    }

    *(this + 189) = 0;
    *(this + 186) = 0;
    *(this + 187) = 0;
    *(this + 185) = 0;
    ++*(this + 376);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1440);
  v17 = 880;
  do
  {
    v18 = (this + v17);
    if (*(this + v17 + 472))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit((v18 + 59));
    }

    v19 = v18[64];
    if (v19)
    {
      v20 = this + v17;
      if (*(this + v17 + 544))
      {
        (*(*v19 + 40))(v19);
      }

      *(v20 + 68) = 0;
      v18[65] = 0;
      v18[66] = 0;
      v18[64] = 0;
      ++*(v20 + 134);
    }

    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit((v18 + 59));
    v17 -= 88;
  }

  while (v17);
  if (*(this + 59))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 472);
  }

  v21 = *(this + 64);
  if (v21)
  {
    if (*(this + 68))
    {
      (*(*v21 + 40))(v21);
    }

    *(this + 68) = 0;
    *(this + 65) = 0;
    *(this + 66) = 0;
    *(this + 64) = 0;
    ++*(this + 134);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 472);
  if (*(this + 48))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 384);
  }

  v22 = *(this + 53);
  if (v22)
  {
    if (*(this + 57))
    {
      (*(*v22 + 40))(v22);
    }

    *(this + 57) = 0;
    *(this + 54) = 0;
    *(this + 55) = 0;
    *(this + 53) = 0;
    ++*(this + 112);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 384);
  if (*(this + 37))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 296);
  }

  v23 = *(this + 42);
  if (v23)
  {
    if (*(this + 46))
    {
      (*(*v23 + 40))(v23);
    }

    *(this + 46) = 0;
    *(this + 43) = 0;
    *(this + 44) = 0;
    *(this + 42) = 0;
    ++*(this + 90);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 296);
  if (*(this + 26))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 208);
  }

  v24 = *(this + 31);
  if (v24)
  {
    if (*(this + 35))
    {
      (*(*v24 + 40))(v24);
    }

    *(this + 35) = 0;
    *(this + 32) = 0;
    *(this + 33) = 0;
    *(this + 31) = 0;
    ++*(this + 68);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 208);
  re::Event<re::Session>::~Event(this + 120);
  re::Event<re::Session>::~Event(this + 32);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::Session::~Session(this);

  JUMPOUT(0x266708EC0);
}

re *re::Session::init(uint64_t a1, __int128 *a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  *(a1 + 2160) = a2[1];
  *(a1 + 2144) = v4;
  v5 = *(a2 + 4);
  v6 = *(a1 + 2176);
  if (v6 != v5)
  {
    if (v5)
    {
      v7 = (v5 + 8);
      v6 = *(a1 + 2176);
    }

    if (v6)
    {
    }

    *(a1 + 2176) = v5;
  }

  v8 = *(a2 + 40);
  *(a1 + 2200) = *(a2 + 7);
  *(a1 + 2184) = v8;
  re::SharedPtr<re::SyncObject>::reset((a1 + 2208), *(a2 + 8));
  v9 = *(a2 + 72);
  *(a1 + 2228) = *(a2 + 84);
  *(a1 + 2216) = v9;
  re::SharedPtr<re::SyncObject>::reset((a1 + 2248), *(a2 + 13));
  v10 = (a1 + 2256);
  re::SharedPtr<re::SyncObject>::reset((a1 + 2256), *(a2 + 14));
  *(a1 + 2264) = *(a2 + 30);
  if (!*(a1 + 2256))
  {
    v12 = re::globalAllocators(v11);
    v13 = (*(*v12[2] + 32))(v12[2], 24, 8);
    *(v13 + 1) = 0;
    *(v13 + 2) = 0;
    *v13 = 0;
    ArcSharedObject::ArcSharedObject(v13, 0);
    *v13 = &unk_2873F4CA8;
    v14 = *v10;
    *v10 = v13;
    if (v14)
    {
    }
  }

  v15 = *(a1 + 2176);
  if (v15)
  {
    v16 = (v15 + 8);
    v17 = v15;
  }

  else
  {
    re::make::shared::object<re::LeaderElectionLowestPeerID>(v11, &v85);
    v17 = v85;
    v85 = 0;
  }

  v18 = *(a1 + 7424);
  *(a1 + 7424) = v17;
  if (v18)
  {
  }

  if (!v15 && v85)
  {
  }

  v19 = (*(**(a1 + 7424) + 104))(*(a1 + 7424), a1);
  *(a1 + 3032) = 1;
  v20 = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity((a1 + 2280), 0x80uLL);
  ++*(a1 + 2304);
  v21 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 32), 0);
  ++*(a1 + 56);
  v22 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 120), 0);
  ++*(a1 + 144);
  v23 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 208), 0);
  ++*(a1 + 232);
  v24 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 296), 0);
  ++*(a1 + 320);
  v25 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 384), 0);
  ++*(a1 + 408);
  v26 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1528), 0);
  ++*(a1 + 1552);
  v27 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 472), 0);
  ++*(a1 + 496);
  v28 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1440), 0);
  ++*(a1 + 1464);
  v29 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1704), 0);
  v30 = 0;
  ++*(a1 + 1728);
  do
  {
    v31 = a1 + v30;
    v29 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + v30 + 560), 0);
    ++*(v31 + 584);
    v30 += 88;
  }

  while (v30 != 880);
  v32 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1616), 0);
  ++*(a1 + 1640);
  v33 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1792), 0);
  ++*(a1 + 1816);
  v34 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1880), 0);
  ++*(a1 + 1904);
  v35 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1968), 0);
  ++*(a1 + 1992);
  v36 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 2056), 0);
  ++*(a1 + 2080);
  v37 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 7432), 0);
  ++*(a1 + 7456);
  v38 = *(a1 + 2256);
  if (v38)
  {
    v37 = (v38 + 8);
  }

  v39 = re::globalAllocators(v37);
  v40 = (*(*v39[2] + 32))(v39[2], 312, 8);
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0u;
  *(v40 + 48) = 0u;
  *(v40 + 64) = 0u;
  *(v40 + 80) = 0u;
  *(v40 + 96) = 0u;
  *(v40 + 112) = 0u;
  *(v40 + 128) = 0u;
  *(v40 + 144) = 0u;
  *(v40 + 160) = 0u;
  *(v40 + 176) = 0u;
  *(v40 + 192) = 0u;
  *(v40 + 208) = 0u;
  *(v40 + 224) = 0u;
  *(v40 + 240) = 0u;
  *(v40 + 256) = 0u;
  *(v40 + 272) = 0u;
  *(v40 + 288) = 0u;
  *(v40 + 304) = 0;
  ArcSharedObject::ArcSharedObject(v40, 0);
  *v40 = &unk_2873F69F8;
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 40) = 0;
  *(v40 + 48) = 100000000;
  *(v40 + 56) = 1000;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 80) = 100000000;
  *(v40 + 200) = 0;
  *(v40 + 208) = 0;
  *(v40 + 216) = 0;
  *(v40 + 88) = 0u;
  *(v40 + 104) = 0u;
  *(v40 + 232) = 0;
  *(v40 + 240) = 0;
  *(v40 + 224) = 0;
  *(v40 + 248) = 0;
  *(v40 + 296) = 0;
  *(v40 + 304) = 0;
  *(v40 + 256) = 0u;
  *(v40 + 272) = 0u;
  *(v40 + 288) = 0;
  v42 = *(a1 + 7520);
  *(a1 + 7520) = v40;
  if (v42)
  {
  }

  *&v82 = a1 + 7432;
  *(&v82 + 1) = 100000000;
  v83 = 1000;
  v84 = v38;
  re::Defaults::intValue(&v81, "network.session.maxTotalBandwidthBpsLocal", v41);
  if ((v81 & 1) != 0 && *(a1 + 2219) == 1)
  {
    *(&v82 + 1) = SHIDWORD(v81);
    v45 = *re::networkLogObjects(v43);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = *(&v82 + 1);
      _os_log_impl(&dword_26168F000, v45, OS_LOG_TYPE_DEFAULT, "Session: config override netMaxTotalBandwidthBpsLocal=%llu", buf, 0xCu);
    }
  }

  re::Defaults::intValue(&v80, "network.session.maxTotalBandwidthBpsRemote", v44);
  if (v80 == 1 && (*(a1 + 2219) & 1) == 0)
  {
    *(&v82 + 1) = SHIDWORD(v80);
    v47 = *re::networkLogObjects(v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = *(&v82 + 1);
      _os_log_impl(&dword_26168F000, v47, OS_LOG_TYPE_DEFAULT, "Session: config override netMaxTotalBandwidthBpsRemote=%llu", buf, 0xCu);
    }
  }

  re::PacketStatsFilter::init(*(a1 + 7520), &v82);
  *buf = 0;
  *&buf[8] = 0;
  buf[16] = 1;
  memset(v89, 0, sizeof(v89));
  v90 = 0u;
  v91 = 257;
  v92 = a1;
  (*(**(a2 + 8) + 88))(&v93);
  v48 = *buf;
  *buf = v93;
  *&v93 = v48;
  if (v48)
  {
  }

  *&buf[8] = *a2;
  buf[16] = *(a2 + 92);
  re::SharedPtr<re::SyncObject>::reset(v89, *(a2 + 13));
  re::SharedPtr<re::SyncObject>::reset(v89 + 1, v38);
  re::SharedPtr<re::SyncObject>::reset(&v90 + 1, *(a1 + 7520));
  LOBYTE(v91) = re::NetworkFeatureFlags::overrideTransportThrottling(*(a2 + 76));
  HIBYTE(v91) = re::NetworkFeatureFlags::overrideMessageFragmentation(*(a2 + 77));
  if (*(a2 + 79))
  {
    v49 = "NetworkReliable";
  }

  else
  {
    DWORD1(v89[1]) = *(a2 + 22);
    v49 = "NetworkUnreliable";
  }

  *(a1 + 3272) = os_log_create("com.apple.re", v49);
  v50 = (*(**(a2 + 8) + 32))(*(a2 + 8));
  *&v93 = a1;
  *(&v93 + 1) = re::Session::discoveryViewDidJoin;
  v94 = 0;
  v95 = re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::createSubscription<re::Session>(re::Session *,REEventHandlerResult (re::Session::*)(re::DiscoveryView*,re::SharedPtr<re::DiscoveryIdentity>))::{lambda(re::DiscoveryView*,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription const&,re::SharedPtr<re::DiscoveryIdentity>&&)#1}::__invoke;
  v51 = re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::addSubscription(v50, &v93);
  v52 = (*(**(a2 + 8) + 40))(*(a2 + 8), v51);
  *&v93 = a1;
  *(&v93 + 1) = re::Session::discoveryViewDidLeave;
  v94 = 0;
  v95 = re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::createSubscription<re::Session>(re::Session *,REEventHandlerResult (re::Session::*)(re::DiscoveryView*,re::SharedPtr<re::DiscoveryIdentity>))::{lambda(re::DiscoveryView*,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription const&,re::SharedPtr<re::DiscoveryIdentity>&&)#1}::__invoke;
  re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::addSubscription(v52, &v93);
  v53 = re::Transport::init(a1 + 2320, buf);
  v54 = v53;
  if (v53)
  {
    if (*(&v90 + 1))
    {

      *(&v90 + 1) = 0;
    }

    if (*(&v89[0] + 1))
    {

      *(&v89[0] + 1) = 0;
    }

    if (*&v89[0])
    {

      *&v89[0] = 0;
    }

    if (*buf)
    {
    }

    v55 = re::make::shared::object<re::RoutingTable>(v53, buf);
    v56 = *(a1 + 3040);
    *(a1 + 3040) = *buf;
    *buf = v56;
    if (v56)
    {
    }

    (*(**(a1 + 7424) + 48))(*(a1 + 7424));
    if (*(a2 + 72))
    {
      v57 = *(a1 + 3280) | 2;
    }

    else
    {
      v57 = *(a1 + 3280);
    }

    v58 = *(a2 + 30);
    if (!v58)
    {
      v58 = 56;
    }

    *(a1 + 3280) = v58 | v57;
    v59 = re::Session::peerID(a1);
    v60 = re::globalAllocators(v59);
    v61 = (*(*v60[2] + 32))(v60[2], 160, 8);
    *buf = re::SessionParticipant::SessionParticipant(v61, v59, *(a1 + 3280), *(a2 + 6), *(a2 + 7));
    re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::add((a1 + 2280), buf);
    if (*buf)
    {
    }

    if ((*(**(a2 + 8) + 48))(*(a2 + 8)))
    {
      v62 = 0;
      do
      {
        (*(**(a2 + 8) + 56))(&v79);
        re::Session::addIdentity(a1, &v79);
        if (v79)
        {

          v79 = 0;
        }

        ++v62;
      }

      while (v62 < (*(**(a2 + 8) + 48))(*(a2 + 8)));
    }

    re::Session::localParticipant(buf, a1);
    v63 = *(*buf + 152);

    if (!v63)
    {
      v65 = *re::networkLogObjects(v64);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26168F000, v65, OS_LOG_TYPE_DEFAULT, "No local identity set for session.", buf, 2u);
      }
    }

    v66 = *(a1 + 2172);
    if (v66)
    {
      v67 = *(a1 + 2240);
      if (v67 <= 1)
      {
        v67 = 1;
      }

      *(a1 + 3296) = v66 / v67;
    }

    re::Session::stateSet(a1, 1);
    *(a1 + 2272) = 1;
    v69 = *re::networkLogObjects(v68);
    v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);
    if (v70)
    {
      v71 = *(a2 + 75);
      v72 = *(a2 + 79);
      v73 = *(a2 + 20);
      v74 = *(a2 + 21);
      v75 = *(a2 + 22);
      *buf = 134219264;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = v71;
      v87 = 1024;
      v88 = v72;
      LOWORD(v89[0]) = 1024;
      *(v89 + 2) = v73;
      WORD3(v89[0]) = 1024;
      DWORD2(v89[0]) = v74;
      WORD6(v89[0]) = 1024;
      *(v89 + 14) = v75;
      _os_log_impl(&dword_26168F000, v69, OS_LOG_TYPE_DEFAULT, "Session: initialized (%p) {isLocal=%d, useReliableSync=%d, resendPeriodMs=%u, syncPacketSizeLimit=%u, syncInboundQueueLimit=%u}", buf, 0x2Au);
    }

    v76 = *re::networkLogObjects(v70);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = *(&v82 + 1);
      _os_log_impl(&dword_26168F000, v76, OS_LOG_TYPE_INFO, "Session: max bandwidth: %llu bps", buf, 0xCu);
    }
  }

  else
  {
    v77 = *re::networkLogObjects(v53);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v93) = 0;
      _os_log_error_impl(&dword_26168F000, v77, OS_LOG_TYPE_ERROR, "Cannot initialize transport.", &v93, 2u);
    }

    if (*(&v90 + 1))
    {

      *(&v90 + 1) = 0;
    }

    if (*(&v89[0] + 1))
    {

      *(&v89[0] + 1) = 0;
    }

    if (*&v89[0])
    {

      *&v89[0] = 0;
    }

    if (*buf)
    {
    }
  }

  if (v38)
  {
  }

  return v54;
}

uint64_t re::Session::discoveryViewDidJoin(re *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1;
  v7[5] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  if (*a3)
  {
    a1 = (v4 + 8);
  }

  v5 = re::globalAllocators(a1)[2];
  v7[2] = v4;
  v7[3] = v5;
  v7[0] = &unk_2873F5220;
  v7[1] = v3;
  v7[4] = v7;
  if ((*(v3 + 7648) & 1) == 0)
  {
    re::network::EventQueue<re::Function<void ()(void)>>::push(v3 + 1884, v7);
  }

  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v7);
  return 0;
}

uint64_t re::Session::discoveryViewDidLeave(re *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1;
  v7[5] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  if (*a3)
  {
    a1 = (v4 + 8);
  }

  v5 = re::globalAllocators(a1)[2];
  v7[2] = v4;
  v7[3] = v5;
  v7[0] = &unk_2873F5278;
  v7[1] = v3;
  v7[4] = v7;
  if ((*(v3 + 7648) & 1) == 0)
  {
    re::network::EventQueue<re::Function<void ()(void)>>::push(v3 + 1884, v7);
  }

  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v7);
  return 0;
}

void re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v4 >= v5)
  {
    v6 = v4 + 1;
    if (v5 < v4 + 1)
    {
      if (*result)
      {
        v7 = 2 * v5;
        if (!v5)
        {
          v7 = 8;
        }

        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(result, v8);
      }

      else
      {
        result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  *a2 = 0;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return result;
}

uint64_t re::Session::peerID(re::Session *this)
{
  v1 = *(this + 380);
  if (v1)
  {
    return *(v1 + 24);
  }

  v3 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_26168F000, v3, OS_LOG_TYPE_INFO, "Routing table is nil, returning kInvalidPeerID", v4, 2u);
  }

  return 0;
}

void re::Session::addIdentity(uint64_t a1, uint64_t *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if ((*(**a2 + 48))())
  {
    re::Session::localParticipant(buf, a1);
    v4 = *buf;
    v5 = *a2;
    if (*a2)
    {
      v6 = (v5 + 8);
      re::SharedPtr<re::SyncObject>::reset((v4 + 152), v5);

      if (!v4)
      {
        return;
      }
    }

    else
    {
      re::SharedPtr<re::SyncObject>::reset((*buf + 152), 0);
      if (!v4)
      {
        return;
      }
    }

    return;
  }

  v7 = (*(**a2 + 40))(&v29);
  v8 = *(a1 + 3160);
  if (!v8)
  {
LABEL_22:
    v17 = *re::networkLogObjects(v7);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      v19 = (*(**a2 + 32))();
      if (v30)
      {
        v20 = v32;
      }

      else
      {
        v20 = v31;
      }

      *buf = 136315394;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = v20;
      _os_log_impl(&dword_26168F000, v17, OS_LOG_TYPE_DEFAULT, "No pending connection for identity '%s (%s)'. Will initiate a new one.", buf, 0x16u);
    }

    *(&v45 + 1) = 0;
    memset(buf, 0, 28);
    v43 = 0u;
    v44 = 0u;
    LODWORD(v45) = 0;
    re::DynamicArray<unsigned char>::setCapacity(&v43 + 1, 0);
    LODWORD(v45) = v45 + 1;
    *buf = re::Transport::connect((a1 + 2320), &v29);
    *&v43 = (*(**(a1 + 2256) + 32))(*(a1 + 2256));
    re::SharedPtr<re::SyncObject>::reset(&buf[16], *a2);
    re::DynamicArray<re::Session::BacklogItem>::add(a1 + 3144, buf);
    if (*(&v43 + 1))
    {
      if (*(&v45 + 1))
      {
        (*(**(&v43 + 1) + 40))();
      }

      *(&v45 + 1) = 0;
      v44 = 0uLL;
      *(&v43 + 1) = 0;
      LODWORD(v45) = v45 + 1;
    }

    if (*&buf[16])
    {
    }

    goto LABEL_42;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(*(a1 + 3176) + v9);
    if (v11)
    {
      break;
    }

LABEL_21:
    ++v10;
    v9 += 80;
    if (v10 >= v8)
    {
      goto LABEL_22;
    }
  }

  re::Transport::connectionAddress(buf, (a1 + 2320), v11);
  if (v30)
  {
    v12 = v32;
  }

  else
  {
    v12 = v31;
  }

  v13 = buf[8] & 1;
  if (buf[8])
  {
    v14 = *&buf[16];
  }

  else
  {
    v14 = &buf[9];
  }

  v15 = strcmp(v12, v14);
  v7 = *buf;
  if (*buf)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v7 = (*(**buf + 40))();
  }

  if (v15)
  {
    v8 = *(a1 + 3160);
    goto LABEL_21;
  }

  v21 = *re::networkLogObjects(v7);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = (*(**a2 + 32))();
    if (v30)
    {
      v23 = v32;
    }

    else
    {
      v23 = v31;
    }

    *buf = 136315394;
    *&buf[4] = v22;
    *&buf[12] = 2080;
    *&buf[14] = v23;
    _os_log_impl(&dword_26168F000, v21, OS_LOG_TYPE_DEFAULT, "Found backlog item for identity: %s (%s).", buf, 0x16u);
  }

  v24 = *(a1 + 3160);
  if (v24 <= v10)
  {
    v33 = 0;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    memset(buf, 0, sizeof(buf));
    v25 = MEMORY[0x277D86220];
    v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = v10;
    v40 = 2048;
    v41 = v24;
    _os_log_send_and_compose_impl(v27, &v33, buf, 80, &dword_26168F000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v28, v29);
    _os_crash_msg();
    __break(1u);
  }

  re::SharedPtr<re::SyncObject>::reset((*(a1 + 3176) + v9 + 16), *a2);
  re::Session::stateEvent(a1, 3);
LABEL_42:
  if (v29)
  {
    if (v30)
    {
      (*(*v29 + 40))();
    }
  }
}

void *re::Session::localParticipant(void *this, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 2296))
  {
    v6 = 0;
    memset(v15, 0, sizeof(v15));
    v3 = MEMORY[0x277D86220];
    v7 = 136315906;
    v8 = "operator[]";
    v9 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v10 = 789;
    v11 = 2048;
    v12 = 0;
    v13 = 2048;
    v14 = 0;
    _os_log_send_and_compose_impl(v4, &v6, v15, 80, &dword_26168F000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v7, 38, v5);
    _os_crash_msg();
    __break(1u);
  }

  v2 = **(a2 + 2312);
  *this = v2;
  if (v2)
  {

    return (v2 + 8);
  }

  return this;
}

void re::Session::stateSet(re *a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = v5;
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Session: changing state %s->%s", &v7, 0x16u);
  }

  re::Session::stateEvent(a1, 1);
  *(a1 + 816) = a2;
  re::Session::stateEvent(a1, 0);
}

void re::Session::deinit(re::Session *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(this + 2272) == 1)
  {
    if (*(this + 816) != 3)
    {
      re::Session::stopSession(this, 1);
    }

    re::Event<re::Session>::raise(this + 32, this);
    *(this + 2272) = 0;
    re::Transport::deinit((this + 2320));
    re::DynamicArray<re::Session::BacklogItem>::deinit(this + 3144);
    re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 2280);
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 3184);
    re::PacketStatsFilter::deInit(*(this + 940));
    if (*(this + 929))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 7432);
    }

    (*(**(this + 928) + 32))(*(this + 928));
    if (*(this + 257))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 2056);
    }

    if (*(this + 246))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1968);
    }

    if (*(this + 202))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1616);
    }

    if (*(this + 224))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1792);
    }

    if (*(this + 235))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1880);
    }

    v2 = (this + 560);
    v3 = 880;
    do
    {
      if (*v2)
      {
        re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v2);
      }

      v2 += 11;
      v3 -= 88;
    }

    while (v3);
    if (*(this + 213))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1704);
    }

    if (*(this + 180))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1440);
    }

    if (*(this + 59))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 472);
    }

    if (*(this + 191))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1528);
    }

    if (*(this + 48))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 384);
    }

    if (*(this + 37))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 296);
    }

    if (*(this + 26))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 208);
    }

    v4 = (this + 120);
    if (*(this + 15))
    {
      v4 = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v4);
    }

    if (*(this + 4))
    {
      v4 = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 32);
    }

    v5 = *re::networkLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = this;
      _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "Session: deinitialized (%p).", &v6, 0xCu);
    }
  }
}

void re::Session::stopSession(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 3264) != 3)
  {
    *(a1 + 3032) = a2;
    re::Session::stateSet(a1, 3);
    v4 = *(a1 + 3160);
    *(a1 + 3160) = 0;
    if (v4)
    {
      v5 = 80 * v4;
      v6 = *(a1 + 3176) + 40;
      do
      {
        re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v6);
        v7 = *(v6 - 24);
        if (v7)
        {

          *(v6 - 24) = 0;
        }

        v6 += 80;
        v5 -= 80;
      }

      while (v5);
    }

    ++*(a1 + 3168);
    *(a1 + 3200) = 0;
    ++*(a1 + 3208);
    v8 = *(a1 + 3064);
    if (v8)
    {
      v9 = *(a1 + 3080);
      v10 = 40 * v8;
      do
      {
        v11 = *v9;
        v9 += 5;
        re::PacketPool::free(*(a1 + 2704), v11);
        v10 -= 40;
      }

      while (v10);
    }

    *(a1 + 3064) = 0;
    ++*(a1 + 3072);
    *(a1 + 7648) = 1;
    (*(*(a1 + 7528) + 24))();
    v12 = *(a1 + 2208);
    if (v12)
    {
      v13 = (*(*v12 + 40))(v12);
      re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::unsubscribe<re::Session>(v13, a1);
      v14 = (*(**(a1 + 2208) + 32))(*(a1 + 2208));
      re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::unsubscribe<re::Session>(v14, a1);
    }

    v15 = re::RoutingTable::removeRoutesForTransport(*(a1 + 3040), (a1 + 2320));
    v16 = *re::networkLogObjects(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = a1;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEFAULT, "Session: stopped (%p) with error: %d", &v17, 0x12u);
    }
  }
}

void re::Event<re::Session>::raise(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          v17 = 0;
          memset(v28, 0, sizeof(v28));
          v13 = MEMORY[0x277D86220];
          v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (v14)
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v23 = 789;
          v24 = 2048;
          v25 = i;
          v26 = 2048;
          v27 = v9;
          _os_log_send_and_compose_impl(v15, &v17, v28, 80, &dword_26168F000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v16);
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v18[0] = *v10;
        v18[1] = v12;
        v19 = v11;
        if (LOBYTE(v18[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v18 + 1, v28);
          if ((v28[0] & 1) == 0)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, v18 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v18 + 1, v28);
          if (LOBYTE(v28[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, *(&v28[0] + 1));
          }
        }

        v7 += 40;
      }
    }
  }
}

uint64_t re::DynamicArray<re::Session::BacklogItem>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 80 * v4;
        v6 = v3 + 40;
        do
        {
          re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v6);
          v7 = *(v6 - 24);
          if (v7)
          {

            *(v6 - 24) = 0;
          }

          v6 += 80;
          v5 -= 80;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::Session::setRoutingTable(re::Session *this, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 && (v5 = *(this + 380)) != 0)
  {
    v6 = v5[6];
    if (v6)
    {
      v7 = v5[8];
      v8 = &v7[5 * v6];
      v9 = v7;
      do
      {
        v10 = *v9;
        v9 += 5;
        re::RoutingTable::addRoute(v4, v10, (v7 + 1));
        v7 = v9;
      }

      while (v9 != v8);
      v4 = *a2;
      v5 = *(this + 380);
    }

    if (v5 == v4)
    {
      v4 = v5;
    }

    else
    {
      if (v4)
      {
        v11 = (v4 + 8);
        v5 = *(this + 380);
      }

      if (v5)
      {
      }

      *(this + 380) = v4;
    }

    v13 = *(v4 + 24);

    re::Session::assignLocalPeerID(this, v13);
  }

  else
  {
    v12 = *re::networkLogObjects(this);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(this + 2272);
      v15 = *a2;
      v16 = *(this + 380);
      v17[0] = 67109632;
      v17[1] = v14;
      v18 = 2048;
      v19 = v15;
      v20 = 2048;
      v21 = v16;
      _os_log_error_impl(&dword_26168F000, v12, OS_LOG_TYPE_ERROR, "Cannot set routing table {isInitialized: %d, routingTable parameter: %p, session routing table:%p}", v17, 0x1Cu);
    }
  }
}

uint64_t re::Session::assignLocalPeerID(re::Session *this, uint64_t a2)
{
  re::Session::localParticipant(&v7, this);
  v4 = v7;
  *(v7 + 24) = a2;

  v5 = *(**(this + 928) + 40);

  return v5();
}

void re::Session::processIncomingMessages(re::Session *this, uint64_t a2)
{
  v202 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return;
  }

  v4 = re::DataArray<re::Connection>::tryGet(this + 2440, a2);
  if (!v4)
  {
    return;
  }

  if (*v4 != 1)
  {
    return;
  }

  v5 = (this + 2320);
  v189 = 0;
  if (!re::Transport::receive(this + 2320, a2, 0, &v189))
  {
    return;
  }

  *&v6 = 134218242;
  v182 = v6;
  v183 = (this + 2320);
  while (2)
  {
    v7 = v189;
    v8 = *(v189 + 6);
    v184 = *(v189 + 2);
    v185 = v8;
    v186 = 0;
    v187 = 0;
    v188 = 0;
    if (!v8)
    {
LABEL_225:
      re::PacketPool::free(*(this + 338), v7);
      goto LABEL_299;
    }

    while (1)
    {
      if (v186)
      {
LABEL_224:
        v7 = v189;
        goto LABEL_225;
      }

      RoutingHeader = re::Session::readRoutingHeader(&v194, &v184);
      if (v194 & 1) == 0 || (v186)
      {
        v71 = 6;
        goto LABEL_259;
      }

      v11 = v187;
      v10 = HIDWORD(v187);
      if (HIDWORD(v187) + 8 * (v185 - v187) < 8)
      {
        v186 = 1;
        v71 = 6;
        v187 = v185;
        goto LABEL_259;
      }

      if (HIDWORD(v187) >= 8)
      {
        v12 = v188;
      }

      else
      {
        LODWORD(v187) = v187 + 1;
        v12 = (*(v184 + v11) << SBYTE4(v187)) | v188;
        v10 = HIDWORD(v187) | 8;
      }

      v188 = v12 >> 8;
      HIDWORD(v187) = v10 - 8;
      v14 = *&v195[4];
      v13 = *&v195[12];
      v15 = re::networkLogObjects(RoutingHeader);
      v16 = *v15;
      if (v12 <= 3u)
      {
        break;
      }

      switch(v12)
      {
        case 4u:
          v30 = os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG);
          if (v30)
          {
            *v198 = 0;
            _os_log_debug_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEBUG, "Received SessionMessages::kRouteRequest", v198, 2u);
          }

          if ((v186 & 1) == 0)
          {
            v32 = v187;
            v31 = HIDWORD(v187);
            if (HIDWORD(v187) + 8 * (v185 - v187) >= 0x20)
            {
              if (HIDWORD(v187) >= 0x20)
              {
                v44 = v188;
              }

              else
              {
                v44 = v188;
                do
                {
                  LODWORD(v187) = v32 + 1;
                  v44 |= *(v184 + v32) << v31;
                  v188 = v44;
                  v45 = v31 + 8;
                  HIDWORD(v187) = v31 + 8;
                  ++v32;
                  v38 = v31 >= 0x18;
                  v31 += 8;
                }

                while (!v38);
                LODWORD(v31) = v45;
              }

              v188 = HIDWORD(v44);
              HIDWORD(v187) = v31 - 32;
              *buf = v5;
              *&buf[8] = a2;
              *&buf[16] = v44;
              re::RoutingTable::addRoute(*(this + 380), v14, buf);
              re::RoutingTable::getRoute(*(this + 380), v13, v198);
              if ((v198[0] & 1) == 0)
              {
                if (v44 <= 1)
                {
                  re::Session::broadcastRouteRequest(this, a2, v14, v13, v44 + 1);
                }

                break;
              }

              v62 = *(this + 380);
              v63 = *&v198[24] + 1;
              v64 = v13;
              v65 = v14;
              goto LABEL_123;
            }

            v186 = 1;
            v187 = v185;
          }

          v20 = *re::networkLogObjects(v30);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            re::Transport::connectionAddress(v198, v5, a2);
            v21 = &v198[9];
            if (v198[8])
            {
              v21 = *&v198[16];
            }

            goto LABEL_53;
          }

          break;
        case 5u:
          v24 = os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG);
          if (v24)
          {
            *v198 = 0;
            _os_log_debug_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEBUG, "Received SessionMessages::kRouteResponse", v198, 2u);
          }

          if (v186)
          {
            goto LABEL_37;
          }

          v26 = v187;
          v25 = HIDWORD(v187);
          if (HIDWORD(v187) + 8 * (v185 - v187) < 0x20)
          {
            v186 = 1;
            v187 = v185;
LABEL_37:
            v20 = *re::networkLogObjects(v24);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              re::Transport::connectionAddress(v198, v5, a2);
              v21 = &v198[9];
              if (v198[8])
              {
                v21 = *&v198[16];
              }

              goto LABEL_53;
            }

            break;
          }

          if (HIDWORD(v187) >= 0x20)
          {
            v40 = v188;
          }

          else
          {
            v40 = v188;
            do
            {
              LODWORD(v187) = v26 + 1;
              v40 |= *(v184 + v26) << v25;
              v188 = v40;
              v41 = v25 + 8;
              HIDWORD(v187) = v25 + 8;
              ++v26;
              v38 = v25 >= 0x18;
              v25 += 8;
            }

            while (!v38);
            LODWORD(v25) = v41;
          }

          v188 = HIDWORD(v40);
          HIDWORD(v187) = v25 - 32;
          *buf = v5;
          *&buf[8] = a2;
          *&buf[16] = v40;
          re::RoutingTable::addRoute(*(this + 380), v14, buf);
          *v198 = v13;
          *&v198[8] = v14;
          re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::remove(this + 3088, v198);
          if (re::Session::peerID(this) == v13)
          {
            v48 = *(this + 383);
            if (v48)
            {
              v49 = 0;
              do
              {
                v50 = *(this + 385) + 40 * v49;
                if (*(v50 + 8) == v14)
                {
                  Route = re::RoutingTable::getRoute(*(this + 380), v14, v198);
                  v52 = *(*&v198[8] + 600);
                  if (v52)
                  {
                    v53 = *(v52 + 2296);
                    if (v53)
                    {
                      v54 = *(v52 + 2312);
                      v55 = 8 * v53;
                      while (1)
                      {
                        v56 = *v54;
                        if (*(*v54 + 32) == *&v198[16])
                        {
                          break;
                        }

                        ++v54;
                        v55 -= 8;
                        if (!v55)
                        {
                          goto LABEL_95;
                        }
                      }

                      v59 = (v56 + 8);
                      v61 = PacketUtils::move(*v50, v5, *&v198[8], v60);
                      re::Transport::send(*&v198[8], *&v198[16], v61, *(v50 + 16), 0, *(v50 + 32), *(v56 + 72));
                      re::DynamicArray<re::Session::PendingMessage>::removeStableAt(this + 381, v49);
                    }

                    else
                    {
LABEL_95:
                      v57 = *re::networkLogObjects(Route);
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                      {
                        *v192 = 0;
                        _os_log_error_impl(&dword_26168F000, v57, OS_LOG_TYPE_ERROR, "receiveRouteResponse: missing participant for connection!", v192, 2u);
                      }

                      re::PacketPool::free(*(this + 338), *v50);
                      re::DynamicArray<re::Session::PendingMessage>::removeStableAt(this + 381, v49);
                    }
                  }

                  else
                  {
                    v58 = *re::networkLogObjects(Route);
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                    {
                      *v192 = 0;
                      _os_log_error_impl(&dword_26168F000, v58, OS_LOG_TYPE_ERROR, "receiveRouteResponse: missing session for transport!", v192, 2u);
                    }
                  }

                  v48 = *(this + 383);
                }

                else
                {
                  ++v49;
                }
              }

              while (v49 < v48);
            }

            break;
          }

          if (v40 <= 2)
          {
            v62 = *(this + 380);
            v63 = v40 + 1;
            v64 = v14;
            v65 = v13;
LABEL_123:
            re::Session::sendRouteResponse(v62, v64, v65, v63);
          }

          break;
        case 6u:
          v17 = os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG);
          if (v17)
          {
            *v198 = 0;
            _os_log_debug_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEBUG, "Received SessionMessages::kRouteFail", v198, 2u);
          }

          if ((v186 & 1) == 0)
          {
            v19 = v187;
            v18 = HIDWORD(v187);
            if (HIDWORD(v187) + 8 * (v185 - v187) >= 0x20)
            {
              if (HIDWORD(v187) >= 0x20)
              {
                v42 = v188;
              }

              else
              {
                v42 = v188;
                do
                {
                  LODWORD(v187) = v19 + 1;
                  v42 |= *(v184 + v19) << v18;
                  v188 = v42;
                  v43 = v18 + 8;
                  HIDWORD(v187) = v18 + 8;
                  ++v19;
                  v38 = v18 >= 0x18;
                  v18 += 8;
                }

                while (!v38);
                LODWORD(v18) = v43;
              }

              v188 = HIDWORD(v42);
              HIDWORD(v187) = v18 - 32;
              *v198 = v14;
              *&v198[8] = v13;
              re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::remove(this + 3088, v198);
              v66 = re::Session::peerID(this);
              if (v66 == v13)
              {
                v67 = *re::networkLogObjects(v66);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  *v198 = 134217984;
                  *&v198[4] = v13;
                  _os_log_impl(&dword_26168F000, v67, OS_LOG_TYPE_DEFAULT, "Received route failure for PeerID. (%llu)", v198, 0xCu);
                }

                re::RoutingTable::removeRouteForPeerID(*(this + 380), v14);
                v68 = *(this + 383);
                if (v68)
                {
                  v69 = 0;
                  do
                  {
                    v70 = *(this + 385) + 40 * v69;
                    if (*(v70 + 8) == v14)
                    {
                      re::PacketPool::free(*(this + 338), *v70);
                      re::DynamicArray<re::Session::PendingMessage>::removeStableAt(this + 381, v69);
                      v68 = *(this + 383);
                    }

                    else
                    {
                      ++v69;
                    }
                  }

                  while (v69 < v68);
                }

                re::Event<re::Session,unsigned long long>::raise(this + 1528, this, v14);
              }

              else if (v42 <= 2)
              {
                re::Session::sendRouteFail(*(this + 380), v14, v13, v42 + 1);
              }

              break;
            }

            v186 = 1;
            v187 = v185;
          }

          v20 = *re::networkLogObjects(v17);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            re::Transport::connectionAddress(v198, v5, a2);
            v21 = &v198[9];
            if (v198[8])
            {
              v21 = *&v198[16];
            }

LABEL_53:
            *buf = 136315138;
            *&buf[4] = v21;
            _os_log_error_impl(&dword_26168F000, v20, OS_LOG_TYPE_ERROR, "No hop specified in route request from %s", buf, 0xCu);
            if (*v198)
            {
              if (v198[8])
              {
                (*(**v198 + 40))();
              }
            }

            break;
          }

          break;
        default:
          goto LABEL_231;
      }

LABEL_132:
      if (v185 == v187)
      {
        goto LABEL_224;
      }
    }

    if (v12 != 1)
    {
      if (v12 != 3)
      {
LABEL_231:
        v73 = os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR);
        if (v73)
        {
          *v198 = 67109120;
          *&v198[4] = v12;
          _os_log_error_impl(&dword_26168F000, v16, OS_LOG_TYPE_ERROR, "Received unrecognized message type: %d", v198, 8u);
        }

        v71 = 9;
        goto LABEL_257;
      }

      v22 = os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG);
      if (v22)
      {
        re::Transport::connectionAddress(v198, v5, a2);
        v118 = &v198[9];
        if (v198[8])
        {
          v118 = *&v198[16];
        }

        *buf = 136315138;
        *&buf[4] = v118;
        _os_log_debug_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEBUG, "Received SessionMessages::kSessionError from %s", buf, 0xCu);
        v22 = *v198;
        if (*v198 && (v198[8] & 1) != 0)
        {
          v22 = (*(**v198 + 40))();
        }
      }

      if (v186)
      {
        LODWORD(v23) = 0;
        goto LABEL_128;
      }

      v34 = v187;
      v33 = HIDWORD(v187);
      if (HIDWORD(v187) + 8 * (v185 - v187) < 0x20)
      {
        LODWORD(v23) = 0;
        v186 = 1;
        v187 = v185;
        goto LABEL_128;
      }

      if (HIDWORD(v187) >= 0x20)
      {
        v23 = v188;
      }

      else
      {
        v23 = v188;
        do
        {
          LODWORD(v187) = v34 + 1;
          v23 |= *(v184 + v34) << v33;
          v188 = v23;
          v46 = v33 + 8;
          HIDWORD(v187) = v33 + 8;
          ++v34;
          v38 = v33 >= 0x18;
          v33 += 8;
        }

        while (!v38);
        LODWORD(v33) = v46;
      }

      v188 = HIDWORD(v23);
      HIDWORD(v187) = v33 - 32;
      if (v23 > 0x10)
      {
        v71 = 6;
      }

      else
      {
LABEL_128:
        v71 = v23;
      }

      v72 = *re::networkLogObjects(v22);
      v73 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);
      if (v73)
      {
        *v198 = 134218240;
        *&v198[4] = a2;
        *&v198[12] = 1024;
        *&v198[14] = v23;
        _os_log_error_impl(&dword_26168F000, v72, OS_LOG_TYPE_ERROR, "Connection error received from ConnectionId(%llu) Error = 0x%X", v198, 0x12u);
      }

      if (v71 != 1)
      {
        goto LABEL_257;
      }

      goto LABEL_132;
    }

    v27 = os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG);
    if (v27)
    {
      re::Transport::connectionAddress(v198, v5, a2);
      v117 = &v198[9];
      if (v198[8])
      {
        v117 = *&v198[16];
      }

      *buf = 136315138;
      *&buf[4] = v117;
      _os_log_debug_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEBUG, "Received SessionMessages::kPeerHello from %s", buf, 0xCu);
      v27 = *v198;
      if (*v198 && (v198[8] & 1) != 0)
      {
        v27 = (*(**v198 + 40))();
      }
    }

    if (!v13)
    {
      v191 = 0;
      *v192 = 0;
      v28 = v186;
      if (v186)
      {
        LODWORD(v29) = 0;
      }

      else
      {
        v36 = v187;
        v35 = HIDWORD(v187);
        v37 = HIDWORD(v187) + 8 * (v185 - v187);
        v38 = v37 >= 0x20;
        v28 = v37 < 0x20;
        if (v38)
        {
          if (HIDWORD(v187) >= 0x20)
          {
            v29 = v188;
          }

          else
          {
            v29 = v188;
            do
            {
              LODWORD(v187) = v36 + 1;
              v29 |= *(v184 + v36) << v35;
              v188 = v29;
              v47 = v35 + 8;
              HIDWORD(v187) = v35 + 8;
              ++v36;
              v38 = v35 >= 0x18;
              v35 += 8;
            }

            while (!v38);
            LODWORD(v35) = v47;
          }

          v188 = HIDWORD(v29);
          v39 = v35 - 32;
        }

        else
        {
          LODWORD(v29) = 0;
          v39 = 0;
          v186 = 1;
          LODWORD(v187) = v185;
        }

        HIDWORD(v187) = v39;
      }

      if (*(this + 538) != v29)
      {
        v121 = *re::networkLogObjects(v27);
        v83 = os_log_type_enabled(v121, OS_LOG_TYPE_ERROR);
        if (v83)
        {
          v173 = *(this + 538);
          *v198 = 67109376;
          *&v198[4] = v29;
          *&v198[8] = 1024;
          *&v198[10] = v173;
          _os_log_error_impl(&dword_26168F000, v121, OS_LOG_TYPE_ERROR, "Mismatched AppId, received 0x%X expecting 0x%X", v198, 0xEu);
        }

        v71 = 3;
        goto LABEL_255;
      }

      if (v28)
      {
        LODWORD(v74) = 0;
      }

      else
      {
        v76 = v187;
        v75 = HIDWORD(v187);
        if (HIDWORD(v187) + 8 * (v185 - v187) >= 0x20)
        {
          if (HIDWORD(v187) >= 0x20)
          {
            v74 = v188;
          }

          else
          {
            v74 = v188;
            do
            {
              LODWORD(v187) = v76 + 1;
              v74 |= *(v184 + v76) << v75;
              v188 = v74;
              v78 = v75 + 8;
              HIDWORD(v187) = v75 + 8;
              ++v76;
              v38 = v75 >= 0x18;
              v75 += 8;
            }

            while (!v38);
            LODWORD(v75) = v78;
          }

          v188 = HIDWORD(v74);
          v77 = v75 - 32;
        }

        else
        {
          LODWORD(v74) = 0;
          v77 = 0;
          v186 = 1;
          LODWORD(v187) = v185;
        }

        HIDWORD(v187) = v77;
      }

      if (*(this + 539) != v74)
      {
        v122 = *re::networkLogObjects(v27);
        v83 = os_log_type_enabled(v122, OS_LOG_TYPE_ERROR);
        if (v83)
        {
          v123 = *(this + 539);
          *v198 = 67109376;
          *&v198[4] = v74;
          *&v198[8] = 1024;
          *&v198[10] = v123;
          v124 = v122;
          v125 = "Mismatched protocol, received 0x%X expecting 0x%X";
          v126 = 14;
          goto LABEL_326;
        }

LABEL_243:
        v71 = 4;
        goto LABEL_255;
      }

      v79 = re::BitReader::readUInt64(&v184, &v191);
      v80 = v191;
      if (*(this + 270) != v191)
      {
        v127 = *re::networkLogObjects(v79);
        v83 = os_log_type_enabled(v127, OS_LOG_TYPE_ERROR);
        if (v83)
        {
          v174 = *(this + 270);
          *v198 = 134218240;
          *&v198[4] = v80;
          *&v198[12] = 2048;
          *&v198[14] = v174;
          v124 = v127;
          v125 = "Mismatched component schema, received 0x%llX expecting 0x%llX";
          v126 = 22;
LABEL_326:
          _os_log_error_impl(&dword_26168F000, v124, OS_LOG_TYPE_ERROR, v125, v198, v126);
        }

        goto LABEL_243;
      }

      UInt64 = re::BitReader::readUInt64(&v184, v192);
      v82 = *re::networkLogObjects(UInt64);
      v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG);
      if (v83)
      {
        *v198 = 134217984;
        *&v198[4] = *v192;
      }

      if (v186)
      {
        goto LABEL_228;
      }

      v84 = v185;
      v86 = v187;
      v85 = HIDWORD(v187);
      if (HIDWORD(v187) + 8 * (v185 - v187) < 0x20)
      {
        goto LABEL_227;
      }

      if (HIDWORD(v187) >= 0x20)
      {
        v87 = v188;
      }

      else
      {
        v87 = v188;
        do
        {
          LODWORD(v187) = v86 + 1;
          v87 |= *(v184 + v86) << v85;
          v188 = v87;
          v88 = v85 + 8;
          HIDWORD(v187) = v85 + 8;
          ++v86;
          v38 = v85 >= 0x18;
          v85 += 8;
        }

        while (!v38);
        LODWORD(v85) = v88;
      }

      v188 = HIDWORD(v87);
      v89 = (v85 - 32);
      HIDWORD(v187) = v89;
      v84 = v185;
      v90 = v187;
      if (v89 + 8 * (v185 - v187) < 0x20)
      {
LABEL_227:
        v186 = 1;
        v187 = v84;
LABEL_228:
        v119 = *re::networkLogObjects(v83);
        v83 = os_log_type_enabled(v119, OS_LOG_TYPE_ERROR);
        if (!v83)
        {
LABEL_229:
          v71 = 6;
          goto LABEL_230;
        }

        v5 = (this + 2320);
        re::Transport::connectionAddress(v198, v183, a2);
        v165 = &v198[9];
        if (v198[8])
        {
          v165 = *&v198[16];
        }

        *buf = 136315138;
        *&buf[4] = v165;
        v166 = v119;
        v167 = "Cannot read discovery data. Hello message from %s is corrupt.";
LABEL_322:
        _os_log_error_impl(&dword_26168F000, v166, OS_LOG_TYPE_ERROR, v167, buf, 0xCu);
        v83 = *v198;
        if (*v198 && (v198[8] & 1) != 0)
        {
          v83 = (*(**v198 + 40))();
        }

LABEL_247:
        v71 = 6;
LABEL_255:
        v132 = *re::networkLogObjects(v83);
        v73 = os_log_type_enabled(v132, OS_LOG_TYPE_ERROR);
        if (v73)
        {
          *v198 = 0;
          _os_log_error_impl(&dword_26168F000, v132, OS_LOG_TYPE_ERROR, "Error receiving message of type kPeerHello", v198, 2u);
        }

        goto LABEL_257;
      }

      if (v89 >= 0x20)
      {
        v91 = v188;
      }

      else
      {
        v91 = v188;
        do
        {
          LODWORD(v187) = v90 + 1;
          v91 |= *(v184 + v90) << v89;
          v188 = v91;
          v92 = v89 + 8;
          HIDWORD(v187) = v89 + 8;
          ++v90;
          v38 = v89 >= 0x18;
          v89 += 8;
        }

        while (!v38);
        LODWORD(v89) = v92;
      }

      v188 = HIDWORD(v91);
      HIDWORD(v187) = v89 - 32;
      v93 = v187;
      if (v185 - v187 < v91)
      {
        goto LABEL_228;
      }

      v94 = v184;
      v188 = 0;
      v95 = v187 + v91;
      v187 = (v187 + v91);
      if (v185 < v93 + v91)
      {
        v186 = 1;
        goto LABEL_246;
      }

      if (((v185 - (v93 + v91)) & 0x1FFFFFFC) == 0)
      {
        v186 = 1;
        LODWORD(v187) = v185;
LABEL_246:
        v128 = *re::networkLogObjects(v83);
        v83 = os_log_type_enabled(v128, OS_LOG_TYPE_ERROR);
        v5 = (this + 2320);
        if (v83)
        {
          re::Transport::connectionAddress(v198, v183, a2);
          v172 = &v198[9];
          if (v198[8])
          {
            v172 = *&v198[16];
          }

          *buf = 136315138;
          *&buf[4] = v172;
          v166 = v128;
          v167 = "Hello message received from %s is corrupt.";
          goto LABEL_322;
        }

        goto LABEL_247;
      }

      v96 = 0;
      v97 = 0;
      v98 = v91;
      do
      {
        LODWORD(v187) = v95 + 1;
        v97 |= *(v184 + v95) << v96;
        v188 = v97;
        v99 = v96 + 8;
        HIDWORD(v187) = v96 + 8;
        ++v95;
        v38 = v96 >= 0x18;
        v96 += 8;
      }

      while (!v38);
      v188 = HIDWORD(v97);
      HIDWORD(v187) = v99 - 32;
      if (v97 > 0x400000)
      {
        v129 = *re::networkLogObjects(v83);
        v83 = os_log_type_enabled(v129, OS_LOG_TYPE_ERROR);
        if (v83)
        {
          *v198 = 67109376;
          *&v198[4] = v97;
          *&v198[8] = 2048;
          *&v198[10] = 0x400000;
          _os_log_error_impl(&dword_26168F000, v129, OS_LOG_TYPE_ERROR, "User context is bigger than maximum allowed (%u > %zu)", v198, 0x12u);
        }

        goto LABEL_229;
      }

      v100 = *(this + 395);
      if (v100)
      {
        v101 = *(this + 397) + 40;
        v102 = 80 * v100;
        while (*(v101 - 40) != a2)
        {
          v101 += 80;
          v102 -= 80;
          if (!v102)
          {
            goto LABEL_181;
          }
        }

        *(v101 - 32) = *v192;
        *(v101 - 16) = v87;
        if (v97)
        {
          re::DynamicArray<unsigned char>::resize(v101, v97 & 0x7FFFFF);
          if (v186)
          {
            goto LABEL_311;
          }

          if (v185 - v187 < v97)
          {
            v186 = 1;
            v187 = v185;
LABEL_311:
            v168 = *re::networkLogObjects(v83);
            v83 = os_log_type_enabled(v168, OS_LOG_TYPE_ERROR);
            if (!v83)
            {
              goto LABEL_229;
            }

            v5 = (this + 2320);
            re::Transport::connectionAddress(v198, v183, a2);
            v169 = &v198[9];
            if (v198[8])
            {
              v169 = *&v198[16];
            }

            *buf = 136315138;
            *&buf[4] = v169;
            v166 = v168;
            v167 = "User context data received from %s is corrupt.";
            goto LABEL_322;
          }

          v109 = *(v101 + 32);
          HIDWORD(v187) = 0;
          v188 = 0;
          v83 = memcpy(v109, (v184 + v187), v97 & 0x7FFFFF);
          LODWORD(v187) = v187 + v97;
          if (v186)
          {
            goto LABEL_311;
          }
        }

        if ((v87 & 2) != 0 && (*(this + 2219) != 1 || !*(v101 - 24)))
        {
          v71 = 15;
LABEL_230:
          v5 = (this + 2320);
          goto LABEL_255;
        }

        v110 = *(this + 276);
        if (v110)
        {
          if (!*(v101 - 24))
          {
            re::Transport::connectionAddress(v198, v183, *(v101 - 40));
            (*(*v110 + 72))(v110, v198, v94 + v93, v98);
            v83 = *v198;
            if (*v198)
            {
              if (v198[8])
              {
                v83 = (*(**v198 + 40))();
              }
            }
          }
        }

        v108 = 1;
        if (v87)
        {
          goto LABEL_197;
        }
      }

      else
      {
LABEL_181:
        v103 = *(this + 287);
        if (v103)
        {
          v104 = *v192;
          v105 = *(this + 289);
          v106 = 8 * v103;
          while (1)
          {
            v107 = *v105;
            if (*(*v105 + 24) == *v192)
            {
              break;
            }

            ++v105;
            v106 -= 8;
            if (!v106)
            {
              goto LABEL_185;
            }
          }

          v113 = (v107 + 8);

          v115 = *re::networkLogObjects(v114);
          v116 = os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG);
          if (v116)
          {
            *v198 = 134217984;
            *&v198[4] = v104;
          }

          v5 = (this + 2320);
          if (v97)
          {
            if (v186)
            {
              goto LABEL_315;
            }

            v188 = 0;
            v187 = (v187 + v97);
            if (v187 > v185)
            {
              v186 = 1;
LABEL_315:
              v170 = *re::networkLogObjects(v116);
              v83 = os_log_type_enabled(v170, OS_LOG_TYPE_ERROR);
              if (v83)
              {
                re::Transport::connectionAddress(v198, v183, a2);
                v171 = &v198[9];
                if (v198[8])
                {
                  v171 = *&v198[16];
                }

                *buf = 136315138;
                *&buf[4] = v171;
                v166 = v170;
                v167 = "User context data received from %s for existing participant is corrupt.";
                goto LABEL_322;
              }

              goto LABEL_247;
            }
          }

          goto LABEL_132;
        }

LABEL_185:
        v108 = 0;
        if (v87)
        {
LABEL_197:
          if (*(this + 392))
          {
            v131 = *re::networkLogObjects(v83);
            v83 = os_log_type_enabled(v131, OS_LOG_TYPE_ERROR);
            v5 = (this + 2320);
            if (v83)
            {
              v177 = *(this + 392);
              *v198 = 134218240;
              *&v198[4] = v177;
              *&v198[12] = 2048;
              *&v198[14] = *v192;
              _os_log_error_impl(&dword_26168F000, v131, OS_LOG_TYPE_ERROR, "Two nodes claim to be session leaders (%llu and %llu)", v198, 0x16u);
            }

            v71 = 5;
            goto LABEL_255;
          }

          v83 = (*(**(this + 928) + 56))(*(this + 928), *v192);
        }
      }

      if ((v108 & 1) == 0)
      {
        v130 = *re::networkLogObjects(v83);
        v83 = os_log_type_enabled(v130, OS_LOG_TYPE_ERROR);
        v5 = (this + 2320);
        if (v83)
        {
          v175 = *v192;
          re::Transport::connectionAddress(v198, v183, a2);
          v176 = &v198[9];
          if (v198[8])
          {
            v176 = *&v198[16];
          }

          *buf = v182;
          *&buf[4] = v175;
          *&buf[12] = 2080;
          *&buf[14] = v176;
          _os_log_error_impl(&dword_26168F000, v130, OS_LOG_TYPE_ERROR, "Cannot bind peerID %llu with connection for peer %s", buf, 0x16u);
          v83 = *v198;
          if (*v198 && (v198[8] & 1) != 0)
          {
            v83 = (*(**v198 + 40))();
          }
        }

        v71 = 7;
        goto LABEL_255;
      }

      v111 = *(this + 816);
      v5 = (this + 2320);
      if (v111 == 2)
      {
        re::Session::stateEvent(this, 3);
      }

      else if (v111 == 1)
      {
        v112 = re::Session::peerID(this);
        re::Session::assignLocalPeerID(this, v112);
        re::Session::stateSet(this, 2);
      }

      goto LABEL_132;
    }

    v120 = *re::networkLogObjects(v27);
    v73 = os_log_type_enabled(v120, OS_LOG_TYPE_ERROR);
    if (v73)
    {
      *v198 = 0;
      _os_log_error_impl(&dword_26168F000, v120, OS_LOG_TYPE_ERROR, "Error receiving message of type kPeerHello: invalid peerid", v198, 2u);
    }

    v71 = 8;
LABEL_257:
    v133 = *re::networkLogObjects(v73);
    if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
    {
      *v198 = 67109120;
      *&v198[4] = v71;
      _os_log_error_impl(&dword_26168F000, v133, OS_LOG_TYPE_ERROR, "Aborting transport receive due to packet error: %d", v198, 8u);
    }

LABEL_259:
    re::PacketPool::free(*(this + 338), v189);
    v135 = *re::networkLogObjects(v134);
    v136 = os_log_type_enabled(v135, OS_LOG_TYPE_ERROR);
    if (v136)
    {
      re::Transport::connectionAddress(v198, v5, a2);
      v164 = &v198[9];
      if (v198[8])
      {
        v164 = *&v198[16];
      }

      *buf = 136315394;
      *&buf[4] = v164;
      *&buf[12] = 1024;
      *&buf[14] = v71;
      _os_log_error_impl(&dword_26168F000, v135, OS_LOG_TYPE_ERROR, "Received corrupt message from '%s'. Packet error: %d, Disconnecting.", buf, 0x12u);
      v136 = *v198;
      if (*v198 && (v198[8] & 1) != 0)
      {
        v136 = (*(**v198 + 40))();
      }
    }

    v191 = a2;
    v190 = v71;
    v137 = *(this + 380);
    *(this + 380) = v137 + 1;
    if (*(this + 182))
    {
      v138 = 0;
      do
      {
        v136 = (*(*(this + 184) + 32 * v138 + 24))(this);
        if (v136 == 1)
        {
          v136 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(this + 180, v138);
        }

        else
        {
          ++v138;
        }
      }

      while (v138 < *(this + 182));
      v137 = *(this + 380) - 1;
    }

    *(this + 380) = v137;
    if (!v137)
    {
      v139 = *(this + 187);
      if (v139)
      {
        v140 = 0;
        for (i = 0; i != v139; ++i)
        {
          v142 = *(this + 187);
          if (v142 <= i)
          {
            *v192 = 0;
            v200 = 0u;
            v201 = 0u;
            v199 = 0u;
            memset(v198, 0, sizeof(v198));
            v179 = MEMORY[0x277D86220];
            v180 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            v194 = 136315906;
            *v195 = "operator[]";
            *&v195[8] = 1024;
            if (v180)
            {
              v181 = 3;
            }

            else
            {
              v181 = 2;
            }

            *&v195[10] = 789;
            *&v195[14] = 2048;
            *&v195[16] = i;
            v196 = 2048;
            v197 = v142;
            _os_log_send_and_compose_impl(v181, v192, v198, 80, &dword_26168F000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v194, 38, v182, *(&v182 + 1));
            _os_crash_msg();
            __break(1u);
          }

          v143 = *(this + 189) + v140;
          *buf = *v143;
          *&buf[16] = *(v143 + 16);
          *&buf[32] = *(v143 + 32);
          if (buf[0] == 1)
          {
            v136 = re::DynamicArray<re::Event<re::Session,unsigned long long,re::SessionError>::Subscription>::indexOf(v198, *(this + 182), *(this + 184), &buf[8]);
            if ((v198[0] & 1) == 0)
            {
              v144 = *(this + 182);
              v145 = *(this + 181);
              if (v144 >= v145)
              {
                v146 = v144 + 1;
                if (v145 < v144 + 1)
                {
                  if (*(this + 180))
                  {
                    v147 = 2 * v145;
                    v148 = v145 == 0;
                    v149 = 8;
                    if (!v148)
                    {
                      v149 = v147;
                    }

                    if (v149 <= v146)
                    {
                      v150 = v146;
                    }

                    else
                    {
                      v150 = v149;
                    }

                    v136 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this + 180, v150);
                  }

                  else
                  {
                    v136 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this + 180, v146);
                    ++*(this + 366);
                  }
                }

                v144 = *(this + 182);
              }

              v151 = (*(this + 184) + 32 * v144);
              *v151 = *&buf[8];
              v151[1] = *&buf[24];
              ++*(this + 182);
              ++*(this + 366);
            }
          }

          else
          {
            v136 = re::DynamicArray<re::Event<re::Session,unsigned long long,re::SessionError>::Subscription>::indexOf(v198, *(this + 182), *(this + 184), &buf[8]);
            if (v198[0] == 1)
            {
              v136 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(this + 180, *&v198[8]);
            }
          }

          v140 += 40;
        }
      }
    }

    v152 = *(this + 287);
    v5 = (this + 2320);
    if (v152)
    {
      v153 = *(this + 289);
      v154 = 8 * v152;
      while (1)
      {
        v155 = *v153;
        if (*(*v153 + 32) == a2)
        {
          break;
        }

        ++v153;
        v154 -= 8;
        if (!v154)
        {
          goto LABEL_292;
        }
      }

      v157 = (v155 + 8);
      v158 = re::PacketPool::allocate(*(this + 338), 67);
      re::Packet::offsetBy(v158, 3);
      v159 = *(v158 + 1);
      *(v159 + 2) = 0;
      *v159 = 0;
      v160 = *(v158 + 2);
      v161 = *(v158 + 7);
      *v198 = &unk_2873F59D0;
      *&v198[8] = v160;
      *&v198[16] = v161;
      v198[20] = 0;
      *&v198[24] = 0;
      *&v199 = 0;
      re::BitWriter::writeUInt32Bits(v198, 0, 0x20u);
      re::BitWriter::writeUInt32Bits(v198, 0, 0x20u);
      re::BitWriter::writeUInt32Bits(v198, 0, 0x20u);
      re::BitWriter::writeUInt32Bits(v198, 0, 0x20u);
      re::BitWriter::writeUInt32Bits(v198, 3u, 8u);
      re::BitWriter::writeUInt32Bits(v198, v71, 0x20u);
      v162 = *&v198[24];
      if (*&v198[28])
      {
        v162 = *&v198[24] + 1;
      }

      *(v158 + 6) = v162;
      re::Transport::send(v183, a2, v158, 0, 0, 0, *(v155 + 72));
    }

    else
    {
LABEL_292:
      v156 = *re::networkLogObjects(v136);
      if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
      {
        *v198 = 0;
        _os_log_error_impl(&dword_26168F000, v156, OS_LOG_TYPE_ERROR, "sendSessionError: missing participant for connection!", v198, 2u);
      }
    }

    re::Transport::disconnect(v183, a2, 0);
    if (v71 != 4 || *(this + 2222) != 1)
    {
LABEL_299:
      if (!re::Transport::receive(v5, a2, 0, &v189))
      {
        return;
      }

      continue;
    }

    break;
  }

  v178 = *re::networkLogObjects(v163);
  if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
  {
    *v198 = 134217984;
    *&v198[4] = this;
    _os_log_impl(&dword_26168F000, v178, OS_LOG_TYPE_DEFAULT, "Stopping Session (%p) with packet error=kProtocolMismatch", v198, 0xCu);
  }

  re::Session::stopSession(this, 4);
}

void re::Session::beforeFrameUpdate(_DWORD *this)
{
  v108 = *MEMORY[0x277D85DE8];
  if (this[816] == 3)
  {
    return;
  }

  v1 = this;
  re::Session::stateEvent(this, 2);
  (*(**(v1 + 940) + 48))(*(v1 + 940));
  (*(**(v1 + 928) + 64))(*(v1 + 928));
  re::Transport::flushNetworkEvents((v1 + 580));
  if (*(v1 + 299))
  {
    re::TransportCommandsQueued::update((v1 + 1882));
    v2 = (*(**(v1 + 330) + 24))(*(v1 + 330));
    if (v1[758] != 1)
    {
      v3 = *re::networkLogObjects(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v1[758];
        *buf = 134218240;
        *&buf[4] = v1;
        *&buf[12] = 1024;
        *&buf[14] = v4;
        _os_log_impl(&dword_26168F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping Session (%p) with error:%d after flushing transport events", buf, 0x12u);
      }

      re::Session::stopSession(v1, v1[758]);
    }
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v81, 6032, v1, 0, 0, 0);
  v5 = *(v1 + 405);
  if (!v5)
  {
    goto LABEL_111;
  }

  v6 = *(v1 + 407);
  v7 = &v6[v5];
  v76 = v7;
  while (1)
  {
    v8 = *v6;
    v9 = *(v1 + 287);
    if (v9)
    {
      v10 = *(v1 + 289);
      v11 = 8 * v9;
      while (1)
      {
        v12 = *v10;
        if (*(*v10 + 32) == v8)
        {
          break;
        }

        ++v10;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_13;
        }
      }

      v16 = (v12 + 8);
      re::Session::processIncomingMessages(v1, v8);
    }

    else
    {
      v13 = *(v1 + 395);
      if (!v13)
      {
        goto LABEL_23;
      }

LABEL_13:
      v14 = *(v1 + 397);
      v15 = 80 * v13;
      while (*v14 != v8)
      {
        v14 += 10;
        v15 -= 80;
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      re::Session::processIncomingMessages(v1, *v6);
      v17 = *(v1 + 287);
      if (v17)
      {
        v18 = *(v1 + 289);
        v19 = 8 * v17;
        while (1)
        {
          v12 = *v18;
          if (*(*v18 + 32) == v8)
          {
            break;
          }

          ++v18;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_23;
          }
        }

        v57 = (v12 + 8);
      }

      else
      {
LABEL_23:
        v12 = 0;
      }
    }

    if (v1[816] == 3)
    {
      goto LABEL_108;
    }

    if (v12)
    {
      break;
    }

LABEL_101:
    if (++v6 == v7)
    {
      goto LABEL_110;
    }
  }

  v20 = re::DataArray<re::Connection>::tryGet((v1 + 610), *(v12 + 32));
  if (!v20 || *v20 != 1)
  {
LABEL_99:
    if (v1[816] == 3)
    {
      goto LABEL_109;
    }

    goto LABEL_101;
  }

  v77 = v6;
  v90 = 0;
  v78 = v12 + 49;
  v79 = v12;
  v21 = 3;
  while (!re::Transport::receive((v1 + 580), *(v12 + 32), v21, &v90))
  {
LABEL_97:
    if (++v21 == 10)
    {
      v7 = v76;
      v6 = v77;
      goto LABEL_99;
    }
  }

  v22 = &v1[22 * v21 + 140];
  v80 = v21;
  while (2)
  {
    v23 = *(v90 + 6);
    v85 = *(v90 + 2);
    v86 = v23;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    RoutingHeader = re::Session::readRoutingHeader(v82, &v85);
    if ((v82[0] & 1) == 0)
    {
      v51 = *re::networkLogObjects(RoutingHeader);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v55 = v78;
        if (*(v12 + 48))
        {
          v55 = *(v12 + 56);
        }

        *buf = 136315138;
        *&buf[4] = v55;
        _os_log_error_impl(&dword_26168F000, v51, OS_LOG_TYPE_ERROR, "Received corrupt message from '%s'. No routing header. Disconnecting.", buf, 0xCu);
      }

      re::PacketPool::free(*(v1 + 338), v90);
LABEL_85:
      if (!re::Transport::receive((v1 + 580), *(v12 + 32), v21, &v90))
      {
        goto LABEL_97;
      }

      continue;
    }

    break;
  }

  v25 = v83;
  v26 = v84;
  if (v26 != re::Session::peerID(v1))
  {
    Route = re::RoutingTable::getRoute(*(v1 + 380), v26, buf);
    if (buf[0])
    {
      v90 = PacketUtils::move(v90, v1 + 290, *&buf[8], v53);
      re::Transport::send(*&buf[8], *&buf[16], v90, v21, 0, 0, *(v12 + 72));
    }

    else
    {
      v54 = *re::networkLogObjects(Route);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v56 = v78;
        if (*(v12 + 48))
        {
          v56 = *(v12 + 56);
        }

        *v96 = 136315650;
        *&v96[4] = v56;
        *&v96[12] = 2048;
        *&v96[14] = v25;
        *&v96[22] = 2048;
        *&v96[24] = v26;
        _os_log_error_impl(&dword_26168F000, v54, OS_LOG_TYPE_ERROR, "Received message with unknown route from '%s'. No route exists %llu->%llu.", v96, 0x20u);
      }

      re::PacketPool::free(*(v1 + 338), v90);
      re::Session::sendRouteFail(*(v1 + 380), v26, v25, 1u);
    }

    goto LABEL_85;
  }

  if (v87)
  {
    v27 = 0;
  }

  else
  {
    v27 = v85 + v88;
  }

  v12 = (v86 - v88);
  v91 = v21;
  v93 = v27;
  v94 = v25;
  v92 = v86 - v88;
  v28 = *(v22 + 80);
  *(v22 + 80) = v28 + 1;
  if (*(v22 + 16))
  {
    v29 = 0;
    do
    {
      if ((*(*(v22 + 32) + 32 * v29 + 24))(v1) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v22, v29);
      }

      else
      {
        ++v29;
      }
    }

    while (v29 < *(v22 + 16));
    v28 = *(v22 + 80) - 1;
  }

  *(v22 + 80) = v28;
  if (v28 || (v30 = *(v22 + 56)) == 0)
  {
LABEL_53:
    v21 = v80;
    if (v80 == 3)
    {
      v93 = v27;
      v94 = v25;
      v92 = v12;
      v37 = v1[138];
      v1[138] = v37 + 1;
      if (*(v1 + 61))
      {
        v25 = 0;
        do
        {
          if ((*(*(v1 + 63) + 32 * v25 + 24))(v1) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v1 + 59, v25);
          }

          else
          {
            ++v25;
          }
        }

        while (v25 < *(v1 + 61));
        v37 = v1[138] - 1;
      }

      v1[138] = v37;
      if (!v37)
      {
        v38 = *(v1 + 66);
        if (v38)
        {
          v39 = 0;
          v40 = 0;
          while (1)
          {
            v41 = *(v1 + 66);
            if (v41 <= v40)
            {
              break;
            }

            v42 = *(v1 + 68) + v39;
            *v96 = *v42;
            *&v96[16] = *(v42 + 16);
            *&v96[32] = *(v42 + 32);
            if (v96[0] == 1)
            {
              v43 = re::DynamicArray<re::Event<re::Session,unsigned long long,re::SessionError>::Subscription>::indexOf(buf, *(v1 + 61), *(v1 + 63), &v96[8]);
              if ((buf[0] & 1) == 0)
              {
                v44 = *(v1 + 60);
                v45 = *(v1 + 61);
                if (v45 >= v44)
                {
                  v25 = v45 + 1;
                  if (v44 < v45 + 1)
                  {
                    if (*(v1 + 59))
                    {
                      v46 = 2 * v44;
                      v47 = v44 == 0;
                      v48 = 8;
                      if (!v47)
                      {
                        v48 = v46;
                      }

                      if (v48 <= v25)
                      {
                        v49 = v25;
                      }

                      else
                      {
                        v49 = v48;
                      }

                      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(v1 + 59, v49);
                    }

                    else
                    {
                      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(v1 + 59, v25);
                      ++v1[124];
                    }
                  }

                  v45 = *(v1 + 61);
                }

                v50 = (*(v1 + 63) + 32 * v45);
                *v50 = *&v96[8];
                v50[1] = *&v96[24];
                ++*(v1 + 61);
                ++v1[124];
              }
            }

            else
            {
              re::DynamicArray<re::Event<re::Session,unsigned long long,re::SessionError>::Subscription>::indexOf(buf, *(v1 + 61), *(v1 + 63), &v96[8]);
              if (buf[0] == 1)
              {
                re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v1 + 59, *&buf[8]);
              }
            }

            ++v40;
            v39 += 40;
            if (v38 == v40)
            {
              goto LABEL_82;
            }
          }

          v95 = 0;
          v106 = 0u;
          v107 = 0u;
          v105 = 0u;
          memset(buf, 0, sizeof(buf));
          v70 = MEMORY[0x277D86220];
          v71 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          *v97 = 136315906;
          *&v97[4] = "operator[]";
          v98 = 1024;
          if (v71)
          {
            v72 = 3;
          }

          else
          {
            v72 = 2;
          }

          v99 = 789;
          v100 = 2048;
          v101 = v40;
          v102 = 2048;
          v103 = v41;
          _os_log_send_and_compose_impl(v72, &v95, buf, 80, &dword_26168F000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97, 38, v76, v77);
          _os_crash_msg();
          __break(1u);
LABEL_131:
          *v97 = 0;
          v106 = 0u;
          v107 = 0u;
          v105 = 0u;
          memset(buf, 0, sizeof(buf));
          v73 = MEMORY[0x277D86220];
          v74 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          *v96 = 136315906;
          *&v96[4] = "operator[]";
          *&v96[12] = 1024;
          if (v74)
          {
            v75 = 3;
          }

          else
          {
            v75 = 2;
          }

          *&v96[14] = 789;
          *&v96[18] = 2048;
          *&v96[20] = v41;
          *&v96[28] = 2048;
          *&v96[30] = v25;
          _os_log_send_and_compose_impl(v75, v97, buf, 80, &dword_26168F000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v96, 38, v76, v77);
          _os_crash_msg();
          __break(1u);
        }
      }
    }

LABEL_82:
    re::PacketPool::free(*(v1 + 338), v90);
    v12 = v79;
    goto LABEL_85;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *(v22 + 56);
    if (v33 <= v32)
    {
      break;
    }

    v34 = *(v22 + 72) + v31;
    v35 = *(v34 + 32);
    v36 = *(v34 + 16);
    *v96 = *v34;
    *&v96[16] = v36;
    *&v96[32] = v35;
    if (v96[0] == 1)
    {
      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v22, &v96[8], buf);
      if ((buf[0] & 1) == 0)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(v22, &v96[8]);
      }
    }

    else
    {
      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v22, &v96[8], buf);
      if (buf[0] == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v22, *&buf[8]);
      }
    }

    ++v32;
    v31 += 40;
    if (v30 == v32)
    {
      goto LABEL_53;
    }
  }

  v95 = 0;
  v106 = 0u;
  v107 = 0u;
  v105 = 0u;
  memset(buf, 0, sizeof(buf));
  v1 = MEMORY[0x277D86220];
  v58 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  *v97 = 136315906;
  *&v97[4] = "operator[]";
  v98 = 1024;
  if (v58)
  {
    v59 = 3;
  }

  else
  {
    v59 = 2;
  }

  v99 = 789;
  v100 = 2048;
  v101 = v32;
  v102 = 2048;
  v103 = v33;
  _os_log_send_and_compose_impl(v59, &v95, buf, 80, &dword_26168F000, v1, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97, 38, v76, v77);
  _os_crash_msg();
  __break(1u);
LABEL_108:
  if (v12)
  {
LABEL_109:
  }

LABEL_110:
  *(v1 + 405) = 0;
  ++v1[812];
LABEL_111:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v81);
  v60 = (*(**(v1 + 282) + 32))(*(v1 + 282));
  v61 = *(v1 + 395);
  if (v61)
  {
    v62 = v60;
    v41 = v61 - 1;
    for (i = 80 * v61; ; i -= 80)
    {
      v25 = *(v1 + 395);
      if (v25 <= v41)
      {
        break;
      }

      v64 = v1[543];
      if (v64)
      {
        v65 = *(v1 + 397) + i;
        if (v62 - *(v65 - 48) >= v64)
        {
          v66 = *re::networkLogObjects(v60);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            re::Transport::connectionAddress(buf, (v1 + 580), *(v65 - 80));
            if (buf[8])
            {
              v68 = *&buf[16];
            }

            else
            {
              v68 = &buf[9];
            }

            v69 = v1[543];
            *v96 = 136315394;
            *&v96[4] = v68;
            *&v96[12] = 1024;
            *&v96[14] = v69;
            _os_log_error_impl(&dword_26168F000, v66, OS_LOG_TYPE_ERROR, "Connection '%s' did not do handshake for %d ms. Disconnecting.", v96, 0x12u);
            if (*buf)
            {
              if (buf[8])
              {
                (*(**buf + 40))();
              }
            }
          }

          v67 = *(v65 - 80);
          re::DynamicArray<re::Session::BacklogItem>::removeAt((v1 + 786), v41);
          re::Transport::disconnect((v1 + 580), v67, 0);
        }
      }

      if (--v41 == -1)
      {
        return;
      }
    }

    goto LABEL_131;
  }
}

void re::Session::stateEvent(_BOOL8 a1, uint64_t a2)
{
  v7 = a1;
  v8 = buf;
  v132 = *MEMORY[0x277D85DE8];
  if (a2 != 2)
  {
    v9 = *re::networkLogObjects(a1);
    a1 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      _os_log_impl(&dword_26168F000, v9, OS_LOG_TYPE_DEFAULT, "Session: handling event '%s' in state '%s'", buf, 0x16u);
    }
  }

  v12 = *(v7 + 3264);
  if (v12 <= 1)
  {
    if (!v12)
    {
      return;
    }

    if (v12 == 1)
    {
      if (a2 <= 1)
      {
        if (!a2)
        {
LABEL_84:
          *(v7 + 3288) = (*(**(v7 + 2256) + 32))(*(v7 + 2256));
          return;
        }

        if (a2 != 1)
        {
LABEL_83:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Invalid event %d in state '%s'", "!Unreachable code", "stateInit", 1389, a2, "Init");
          _os_crash("assertion failure: (!Unreachable code) Invalid event %d in state '%s'", v107, v111);
          __break(1u);
          goto LABEL_84;
        }

        return;
      }

LABEL_81:
      if (a2 != 2)
      {
        if (a2 != 3)
        {
          goto LABEL_83;
        }

        return;
      }

      v52 = (*(**(v7 + 2256) + 32))(*(v7 + 2256));
      v53 = *(v7 + 2168);
      if (!v53 || v52 - *(v7 + 3288) < v53)
      {
        if (*(v7 + 3032) == 1)
        {
          v54 = re::Session::peerID(v7);
          re::Session::assignLocalPeerID(v7, v54);
          v55 = v7;
          v56 = 2;
        }

        else
        {
          v55 = v7;
          v56 = 3;
        }

        re::Session::stateSet(v55, v56);
        return;
      }

      v14 = *re::networkLogObjects(v52);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_148:
        re::Session::stopSession(v7, 2);
        return;
      }

LABEL_154:
      v91 = *(v7 + 2168);
      *buf = 67109120;
      *&buf[4] = v91;
      _os_log_error_impl(&dword_26168F000, v14, OS_LOG_TYPE_ERROR, "Failed to initialize session in %d ms. Session will be terminated.", buf, 8u);
      goto LABEL_148;
    }

    goto LABEL_175;
  }

  if (v12 != 2)
  {
    if (v12 == 3)
    {
      if (a2 == 2)
      {
        return;
      }

      if (!a2)
      {
        v13 = *(v7 + 2296);
        if (!v13)
        {
LABEL_26:
          v20 = *(v7 + 288);
          *(v7 + 288) = v20 + 1;
          if (*(v7 + 224))
          {
            v21 = 0;
            do
            {
              if ((*(*(v7 + 240) + 32 * v21 + 24))(v7) == 1)
              {
                re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v7 + 208), v21);
              }

              else
              {
                ++v21;
              }
            }

            while (v21 < *(v7 + 224));
            v20 = *(v7 + 288) - 1;
          }

          *(v7 + 288) = v20;
          if (!v20)
          {
            v22 = *(v7 + 264);
            if (v22)
            {
              v2 = 0;
              v14 = 0;
              i = v120;
              while (1)
              {
                v4 = *(v7 + 264);
                if (v4 <= v14)
                {
                  break;
                }

                v23 = v2 + *(v7 + 280);
                v24 = *(v23 + 4);
                v25 = *(v23 + 1);
                *v120 = *v23;
                *&v120[16] = v25;
                *&v120[32] = v24;
                if (v120[0] == 1)
                {
                  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v7 + 208, &v120[8], buf);
                  if ((buf[0] & 1) == 0)
                  {
                    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add((v7 + 208), &v120[8]);
                  }
                }

                else
                {
                  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v7 + 208, &v120[8], buf);
                  if (buf[0] == 1)
                  {
                    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v7 + 208), *&buf[8]);
                  }
                }

                ++v14;
                v2 += 10;
                if (v22 == v14)
                {
                  return;
                }
              }

              goto LABEL_163;
            }
          }

          return;
        }

        v14 = v13 - 1;
        while (1)
        {
          v15 = *(v7 + 2296);
          if (v15 <= v14)
          {
            break;
          }

          v16 = *(*(*(v7 + 2312) + 8 * v14) + 32);
          if (v16)
          {
            re::Transport::disconnect((v7 + 2320), v16, 1);
            v17 = *(v7 + 2296);
            if (v17 <= v14)
            {
              *v121 = 0;
              v130 = 0u;
              v131 = 0u;
              v129 = 0u;
              memset(buf, 0, sizeof(buf));
              v92 = MEMORY[0x277D86220];
              *v120 = 136315906;
              *&v120[4] = "operator[]";
              *&v120[12] = 1024;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                v93 = 3;
              }

              else
              {
                v93 = 2;
              }

              *&v120[14] = 789;
              *&v120[18] = 2048;
              *&v120[20] = v14;
              *&v120[28] = 2048;
              *&v120[30] = v17;
              _os_log_send_and_compose_impl(v93, v121, buf, 80, &dword_26168F000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v114, v115);
              _os_crash_msg();
              __break(1u);
LABEL_159:
              v119 = 0;
              v130 = 0u;
              v131 = 0u;
              v129 = 0u;
              memset(buf, 0, sizeof(buf));
              v94 = MEMORY[0x277D86220];
              v95 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              *v121 = 136315906;
              *&v121[4] = "operator[]";
              v122 = 1024;
              if (v95)
              {
                v96 = 3;
              }

              else
              {
                v96 = 2;
              }

              v123 = 789;
              v124 = 2048;
              v125 = i;
              v126 = 2048;
              v127 = v5;
              _os_log_send_and_compose_impl(v96, &v119, buf, 80, &dword_26168F000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v121, 38, v114, v115);
              _os_crash_msg();
              __break(1u);
LABEL_163:
              *&v117 = 0;
              *(v8 + 3) = 0u;
              *(v8 + 4) = 0u;
              *(v8 + 1) = 0u;
              *(v8 + 2) = 0u;
              *v8 = 0u;
              v97 = MEMORY[0x277D86220];
              v98 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              *v121 = 136315906;
              *&v121[4] = "operator[]";
              v122 = 1024;
              if (v98)
              {
                v99 = 3;
              }

              else
              {
                v99 = 2;
              }

              v123 = 789;
              v124 = 2048;
              v125 = v14;
              v126 = 2048;
              v127 = v4;
              _os_log_send_and_compose_impl(v99, &v117, buf, 80, &dword_26168F000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v121, 38, v114, v115);
              _os_crash_msg();
              __break(1u);
LABEL_167:
              *v121 = 0;
              v130 = 0u;
              v131 = 0u;
              v129 = 0u;
              memset(buf, 0, sizeof(buf));
              v100 = MEMORY[0x277D86220];
              v101 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              *v120 = 136315906;
              *&v120[4] = "operator[]";
              *&v120[12] = 1024;
              if (v101)
              {
                v102 = 3;
              }

              else
              {
                v102 = 2;
              }

              *&v120[14] = 789;
              *&v120[18] = 2048;
              *&v120[20] = v14;
              *&v120[28] = 2048;
              *&v120[30] = v2;
              _os_log_send_and_compose_impl(v102, v121, buf, 80, &dword_26168F000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v114, v115);
              _os_crash_msg();
              __break(1u);
LABEL_171:
              *v121 = 0;
              v130 = 0u;
              v131 = 0u;
              v129 = 0u;
              memset(buf, 0, sizeof(buf));
              v103 = MEMORY[0x277D86220];
              v104 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              *v120 = 136315906;
              *&v120[4] = "operator[]";
              *&v120[12] = 1024;
              if (v104)
              {
                v105 = 3;
              }

              else
              {
                v105 = 2;
              }

              *&v120[14] = 789;
              *&v120[18] = 2048;
              *&v120[20] = v14;
              *&v120[28] = 2048;
              *&v120[30] = i;
              _os_log_send_and_compose_impl(v105, v121, buf, 80, &dword_26168F000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v114, v115);
              _os_crash_msg();
              __break(1u);
            }

            v18 = *(*(v7 + 2312) + 8 * v14);
            v119 = v18;
            if (v18)
            {
              v19 = (v18 + 8);
            }

            re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::raise(v7 + 384, v7);
            if (v119)
            {

              v119 = 0;
            }

            re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::removeAt(v7 + 2280, v14);
          }

          if (--v14 == -1)
          {
            goto LABEL_26;
          }
        }

        *v121 = 0;
        v130 = 0u;
        v131 = 0u;
        v129 = 0u;
        memset(buf, 0, sizeof(buf));
        v7 = MEMORY[0x277D86220];
        *v120 = 136315906;
        *&v120[4] = "operator[]";
        *&v120[12] = 1024;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v90 = 3;
        }

        else
        {
          v90 = 2;
        }

        *&v120[14] = 789;
        *&v120[18] = 2048;
        *&v120[20] = v14;
        *&v120[28] = 2048;
        *&v120[30] = v15;
        _os_log_send_and_compose_impl(v90, v121, buf, 80, &dword_26168F000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v114, v115);
        _os_crash_msg();
        __break(1u);
        goto LABEL_154;
      }

LABEL_176:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Invalid event %d in state '%s'", "!Unreachable code", "stateFinished", 1415, a2, "Finished");
      _os_crash("assertion failure: (!Unreachable code) Invalid event %d in state '%s'", v109, v113);
      __break(1u);
      return;
    }

LABEL_175:
    _os_crash("assertion failure: (!Unreachable code) Session: Unknown state %d(%s).", v108, v112);
    __break(1u);
    goto LABEL_176;
  }

  if (a2 <= 2)
  {
    if (!a2)
    {
      re::Session::stateEvent(v7, 3);
      re::Event<re::Session>::raise(v7 + 120, v7);
      return;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v26 = (*(**(v7 + 2256) + 32))(*(v7 + 2256));
        v27 = *(v7 + 3200);
        if (v27)
        {
          v28 = v26;
          v14 = v27 - 1;
          i = (32 * v27);
          do
          {
            v2 = *(v7 + 3200);
            if (v2 <= v14)
            {
              goto LABEL_167;
            }

            v29 = *(v7 + 3216);
            v30 = &i[v29];
            v31 = *(v7 + 2172);
            if (v31 && v28 - *(v30 - 4) >= v31 || ((v32 = *(v30 - 1), LODWORD(v33) = *(v7 + 2240), v33 <= 1) ? (v33 = 1) : (v33 = v33), v32 >= v33))
            {
              v26 = re::DynamicArray<re::Session::SendHandshakeInProgressEntry>::removeAt(v7 + 3184, v14);
            }

            else if (*(v7 + 3264) == 2 && v28 - *&i[v29 - 24] >= *(v7 + 3296))
            {
              *(v30 - 1) = v32 + 1;
              *&i[v29 - 24] = v28;
              v34 = *re::networkLogObjects(v26);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                re::Transport::connectionAddress(buf, (v7 + 2320), *&i[v29 - 16]);
                v50 = &buf[9];
                if (buf[8])
                {
                  v50 = *&buf[16];
                }

                v51 = *(v30 - 1);
                *v120 = 136315394;
                *&v120[4] = v50;
                *&v120[12] = 2048;
                *&v120[14] = v51;
                if (*buf && (buf[8] & 1) != 0)
                {
                  (*(**buf + 40))();
                }
              }

              v35 = *&i[v29 - 16];
              re::Session::localParticipant(buf, v7);
              v36 = *(*buf + 128);
              if (v36)
              {
                v37 = *(*buf + 144);
              }

              else
              {
                v37 = 0;
              }

              v38 = re::PacketPool::allocate(*(v7 + 2704), (v36 + 67));
              re::Packet::offsetBy(v38, 3);
              v39 = *(v38 + 1);
              *(v39 + 2) = 0;
              *v39 = 0;
              v40 = *(v38 + 2);
              v41 = *(v38 + 7);
              *buf = &unk_2873F59D0;
              *&buf[8] = v40;
              *&buf[16] = v41;
              buf[20] = 0;
              *&buf[24] = 0;
              *&v129 = 0;
              re::BitWriter::writeUInt32Bits(buf, 0, 0x20u);
              re::BitWriter::writeUInt32Bits(buf, 0, 0x20u);
              re::BitWriter::writeUInt32Bits(buf, 0, 0x20u);
              re::BitWriter::writeUInt32Bits(buf, 0, 0x20u);
              re::BitWriter::writeUInt32Bits(buf, 1u, 8u);
              re::BitWriter::writeUInt32Bits(buf, *(v7 + 2152), 0x20u);
              re::BitWriter::writeUInt32Bits(buf, *(v7 + 2156), 0x20u);
              v42 = *(v7 + 2164);
              re::BitWriter::writeUInt32Bits(buf, *(v7 + 2160), 0x20u);
              re::BitWriter::writeUInt32Bits(buf, v42, 0x20u);
              v43 = re::Session::peerID(v7);
              v44 = HIDWORD(v43);
              re::BitWriter::writeUInt32Bits(buf, v43, 0x20u);
              re::BitWriter::writeUInt32Bits(buf, v44, 0x20u);
              re::BitWriter::writeUInt32Bits(buf, *(v7 + 3280), 0x20u);
              v45 = *(v7 + 2208);
              if (v45)
              {
                v46 = (*(*v45 + 64))(v45);
                v48 = v47;
              }

              else
              {
                v46 = 0;
                v48 = 0;
              }

              re::BitWriter::writeUInt32Bits(buf, v48, 0x20u);
              re::BitWriter::writeData(buf, v46, v48);
              re::BitWriter::writeUInt32Bits(buf, v36, 0x20u);
              re::BitWriter::writeData(buf, v37, v36);
              v49 = *&buf[24];
              if (*&buf[28])
              {
                v49 = *&buf[24] + 1;
              }

              *(v38 + 6) = v49;
              v26 = re::Transport::send((v7 + 2320), v35, v38, 0, 0, 0, 0);
            }

            --v14;
            i -= 32;
          }

          while (v14 != -1);
        }

        return;
      }

      goto LABEL_80;
    }

    return;
  }

  if (a2 == 3)
  {
    v14 = *(v7 + 3160);
    if (!v14)
    {
      return;
    }

    v4 = 80;
    v2 = &dword_26168F000;
    while (1)
    {
      --v14;
      i = *(v7 + 3160);
      if (i <= v14)
      {
        goto LABEL_171;
      }

      v60 = *(v7 + 3176) + 80 * v14;
      if (*(v60 + 8))
      {
        v61 = *(v60 + 16) == 0;
      }

      else
      {
        v61 = 1;
      }

      if (v61)
      {
        goto LABEL_143;
      }

      v62 = *re::networkLogObjects(a1);
      v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
      if (v63)
      {
        v64 = *(v60 + 24);
        *buf = 67109120;
        *&buf[4] = v64;
        _os_log_impl(&dword_26168F000, v62, OS_LOG_TYPE_DEFAULT, "Remote peer ready with capabilities 0x%x", buf, 8u);
      }

      v65 = *(v60 + 8);
      if (v65)
      {
        v66 = *(v7 + 2296);
        if (v66)
        {
          v67 = *(v7 + 2312);
          v68 = 8 * v66;
          while (1)
          {
            v69 = *v67;
            if (*(*v67 + 24) == v65)
            {
              break;
            }

            ++v67;
            v68 -= 8;
            if (!v68)
            {
              goto LABEL_105;
            }
          }

          v79 = (v69 + 8);
          v80 = (v69 + 8);
        }

        else
        {
LABEL_105:
          if (re::internal::enableSignposts(0, 0))
          {
            kdebug_trace();
          }

          v70 = re::Transport::connectionAddress(buf, (v7 + 2320), *v60);
          v71 = *(v60 + 72);
          v72 = *(v60 + 56);
          v73 = re::globalAllocators(v70);
          v74 = (*(*v73[2] + 32))(v73[2], 160, 8);
          *v120 = re::SessionParticipant::SessionParticipant(v74, *(v60 + 8), *v60, buf, *(v60 + 24), v71, v72);
          re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::add((v7 + 2280), v120);
          if (*v120)
          {
          }

          if (*buf && (buf[8] & 1) != 0)
          {
            (*(**buf + 40))(*buf, *&buf[16]);
          }

          v75 = *(*(v7 + 2312) + 8 * *(v7 + 2296) - 8);
          v76 = *(v60 + 16);
          if (v76)
          {
            v77 = (v76 + 8);
            re::SharedPtr<re::SyncObject>::reset((v75 + 152), v76);
          }

          else
          {
            v81 = *(v75 + 152);
            if (v81)
            {

              *(v75 + 152) = 0;
            }
          }

          *&v117 = v7 + 2320;
          *(&v117 + 1) = *v60;
          v118 = 1;
          re::RoutingTable::addRoute(*(v7 + 3040), *(v60 + 8), &v117);
          (*(**(v7 + 7424) + 88))(*(v7 + 7424), *(v60 + 8));
          re::Session::stateEvent(v7, 5);
          v82 = *(*(v7 + 2312) + 8 * *(v7 + 2296) - 8);
          v116 = v82;
          if (v82)
          {
            v83 = (v82 + 8);
          }

          v84 = *(v7 + 376);
          *(v7 + 376) = v84 + 1;
          if (*(v7 + 312))
          {
            v85 = 0;
            do
            {
              if ((*(*(v7 + 328) + 32 * v85 + 24))(v7) == 1)
              {
                re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v7 + 296), v85);
              }

              else
              {
                ++v85;
              }
            }

            while (v85 < *(v7 + 312));
            v84 = *(v7 + 376) - 1;
          }

          *(v7 + 376) = v84;
          if (!v84)
          {
            v8 = *(v7 + 352);
            if (v8)
            {
              v86 = 0;
              for (i = 0; i != v8; ++i)
              {
                v5 = *(v7 + 352);
                if (v5 <= i)
                {
                  goto LABEL_159;
                }

                v87 = *(v7 + 368) + v86;
                v88 = *(v87 + 32);
                v89 = *(v87 + 16);
                *v120 = *v87;
                *&v120[16] = v89;
                *&v120[32] = v88;
                if (v120[0] == 1)
                {
                  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v7 + 296, &v120[8], buf);
                  if ((buf[0] & 1) == 0)
                  {
                    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add((v7 + 296), &v120[8]);
                  }
                }

                else
                {
                  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v7 + 296, &v120[8], buf);
                  if (buf[0] == 1)
                  {
                    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v7 + 296), *&buf[8]);
                  }
                }

                v86 += 40;
              }
            }
          }

          if (!v116)
          {
            goto LABEL_142;
          }

          v80 = (v116 + 8);
        }
      }

      else
      {
        v78 = *re::networkLogObjects(v63);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26168F000, v78, OS_LOG_TYPE_ERROR, "Invalid peerID", buf, 2u);
        }

        re::Transport::disconnect((v7 + 2320), *v60, 0);
      }

LABEL_142:
      re::DynamicArray<re::Session::BacklogItem>::removeAt(v7 + 3144, v14);
LABEL_143:
      if (!v14)
      {
        return;
      }
    }
  }

  if (a2 == 4)
  {
    v57 = *(v7 + 7424);
    v58 = re::Session::peerID(v7);
    v59 = (*(*v57 + 80))(v57, v58, v7 + 2280);
    *(v7 + 3136) = v59;
    re::Session::onLeaderChange(v7, v59);
    return;
  }

  if (a2 != 5)
  {
LABEL_80:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Invalid event %d in state '%s'", "!Unreachable code", "stateActive", 1457, a2, "Active");
    _os_crash("assertion failure: (!Unreachable code) Invalid event %d in state '%s'", v106, v110);
    __break(1u);
    goto LABEL_81;
  }
}

void re::Session::afterFrameUpdate(re::Session *this)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(this + 816) == 3)
  {
    return;
  }

  os_unfair_lock_lock(this + 672);
  v2 = *(this + 2660);
  if (v2 == 1)
  {
    v30 = *(this + 167);
  }

  os_unfair_lock_unlock(this + 672);
  v3 = *(this + 287);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(this + 289);
    v7 = 8 * v3;
    v8 = 0.0;
    do
    {
      re::Transport::connectionStats(buf, (this + 2320), *(*v6 + 32));
      if (buf[0] == 1)
      {
        v5 += *&buf[4];
        v8 = v8 + *&buf[8];
        ++v4;
      }

      v6 += 8;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v8 = 0.0;
  }

  if (v2)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vandq_s8(v30, vdupq_n_s32(v9));
  if (v4)
  {
    v5 /= v4;
    v8 = v8 / v4;
  }

  v31 = v10;
  *(this + 927) = v10.i64[0];
  v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v12 = *(this + 926);
  if (v12 - *(this + 925) == 128)
  {
    *(this + 925) = v12 - 127;
  }

  v13 = (this + 32 * (v12 & 0x7F));
  *(this + 926) = v12 + 1;
  v13[206].i32[2] = v5;
  *&v13[206].i32[3] = v8;
  v13[207] = v31;
  *v13[208].i8 = v11;
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::Transport::flushOutgoingData((this + 2320));
  v14 = (*(**(this + 282) + 32))(*(this + 282));
  v15 = *(this + 383);
  v16 = v15 + 1;
  v17 = 40 * v15;
  do
  {
    if (!--v16)
    {
      return;
    }

    v18 = v14 - *(*(this + 385) + v17 - 16);
    v17 -= 40;
  }

  while (v18 >> 4 < 0x753);
  v19 = 0;
  v20 = 0;
  v21 = v16 - 1;
  do
  {
    v22 = *(this + 383);
    if (v22 <= v20)
    {
      v32 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      *buf = 0u;
      v25 = MEMORY[0x277D86220];
      v33 = 136315906;
      v34 = "operator[]";
      v35 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v36 = 789;
      v37 = 2048;
      v38 = v20;
      v39 = 2048;
      v40 = v22;
      _os_log_send_and_compose_impl(v26, &v32, buf, 80, &dword_26168F000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31.u64[0], v31.u64[1]);
      _os_crash_msg();
      __break(1u);
LABEL_38:
      v32 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      *buf = 0u;
      v27 = MEMORY[0x277D86220];
      v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v33 = 136315906;
      v34 = "removeManyStableAt";
      v35 = 1024;
      if (v28)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v36 = 986;
      v37 = 2048;
      v38 = v16 - 1;
      v39 = 2048;
      v40 = v20;
      _os_log_send_and_compose_impl(v29, &v32, buf, 80, &dword_26168F000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31.u64[0], v31.u64[1]);
      _os_crash_msg();
      __break(1u);
    }

    re::PacketPool::free(*(this + 338), *(*(this + 385) + v19));
    ++v20;
    v19 += 40;
  }

  while (v16 != v20);
  v20 = *(this + 383);
  if (v21 >= v20)
  {
    goto LABEL_38;
  }

  if (v21 < v20 - 1)
  {
    v23 = memmove(*(this + 385), (*(this + 385) + v17 + 40), 40 * v20 - v17 - 47);
    v20 = *(this + 383);
  }

  *(this + 383) = v20 - v16;
  ++*(this + 768);
  v24 = *re::networkLogObjects(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v16;
    _os_log_impl(&dword_26168F000, v24, OS_LOG_TYPE_DEFAULT, "Removing %zu Pending Messages due to timeout.", buf, 0xCu);
  }
}

uint64_t *re::Session::readRoutingHeader(re::Session *this, re::BitReader *a2)
{
  v7 = 0;
  v8 = 0;
  re::BitReader::readUInt64(a2, &v8);
  result = re::BitReader::readUInt64(a2, &v7);
  if (*(a2 + 12))
  {
    v5 = 0;
  }

  else
  {
    v6 = v7;
    *(this + 1) = v8;
    *(this + 2) = v6;
    v5 = 1;
  }

  *this = v5;
  return result;
}

uint64_t re::Session::sendData(uint64_t a1, size_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 2392))
  {
    v28 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a4;
      *&buf[12] = 1024;
      *&buf[14] = a5;
      _os_log_impl(&dword_26168F000, v28, OS_LOG_TYPE_DEFAULT, "Session: attempting to send %zu bytes on channel %d when not initialized. Data discarded.", buf, 0x12u);
    }

    return 14;
  }

  v9 = a7;
  v10 = a6;
  v14 = re::PacketPool::allocate(*(a1 + 2704), (a4 + 67));
  re::Packet::offsetBy(v14, 3);
  v15 = *(v14 + 1);
  *(v15 + 2) = 0;
  *v15 = 0;
  v16 = *(v14 + 2);
  v17 = *(v14 + 7);
  *buf = &unk_2873F59D0;
  *&buf[8] = v16;
  *&buf[16] = v17;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v18 = re::Session::peerID(a1);
  v19 = HIDWORD(v18);
  re::BitWriter::writeUInt32Bits(buf, v18, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, v19, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, a2, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, HIDWORD(a2), 0x20u);
  re::BitWriter::writeData(buf, a3, a4);
  v20 = v54;
  if (HIDWORD(v54))
  {
    v20 = v54 + 1;
  }

  *(v14 + 6) = v20;
  Route = re::RoutingTable::getRoute(*(a1 + 3040), a2, v45);
  if (v45[0] == 1)
  {
    v22 = *(v46 + 75);
    if (v22)
    {
      v23 = *(v22 + 2296);
      if (!v23)
      {
        return 8;
      }

      v24 = *(v22 + 2312);
      v25 = 8 * v23;
      while (1)
      {
        v26 = *v24;
        if (*(*v24 + 32) == v47)
        {
          break;
        }

        ++v24;
        v25 -= 8;
        if (!v25)
        {
          return 8;
        }
      }

      v41 = (v26 + 8);
      v43 = PacketUtils::move(v14, (a1 + 2320), v46, v42);
      re::Transport::send(v46, v47, v43, a5, v9, v10, *(v26 + 72));

      return 1;
    }

    return 14;
  }

  v29 = *re::networkLogObjects(Route);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = re::Session::peerID(a1);
    *v48 = 134218240;
    v49 = v30;
    v50 = 2048;
    v51 = a2;
    _os_log_impl(&dword_26168F000, v29, OS_LOG_TYPE_DEFAULT, "No route exists for userData from %llu to %llu. Will try to discover route.", v48, 0x16u);
  }

  v31 = (*(**(a1 + 2256) + 32))(*(a1 + 2256));
  v32 = re::Session::peerID(a1);
  re::Session::broadcastRouteRequest(a1, 0, v32, a2, 1u);
  v34 = *(a1 + 3064);
  v35 = *(a1 + 3056);
  if (v34 >= v35)
  {
    v36 = v34 + 1;
    if (v35 < v34 + 1)
    {
      if (*(a1 + 3048))
      {
        v37 = 2 * v35;
        v38 = v35 == 0;
        v39 = 8;
        if (!v38)
        {
          v39 = v37;
        }

        if (v39 <= v36)
        {
          v40 = v36;
        }

        else
        {
          v40 = v39;
        }

        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity((a1 + 3048), v40);
      }

      else
      {
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity((a1 + 3048), v36);
        ++*(a1 + 3072);
      }
    }

    v34 = *(a1 + 3064);
  }

  v44 = *(a1 + 3080) + 40 * v34;
  *v44 = v14;
  *(v44 + 8) = a2;
  *(v44 + 16) = a5;
  *(v44 + 24) = v31;
  *(v44 + 32) = v10;
  ++*(a1 + 3064);
  ++*(a1 + 3072);
  return 1;
}

void re::Session::broadcastRouteRequest(uint64_t this, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v8 = this;
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) >> 27));
  v11 = ((v10 ^ (v10 >> 31)) + ((v9 ^ (v9 >> 31)) << 6) + ((v9 ^ (v9 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v9 ^ (v9 >> 31);
  v12 = *(this + 3112);
  if (v12)
  {
    v13 = *(*(this + 3096) + 4 * (v11 % v12));
    if (v13 != 0x7FFFFFFF)
    {
      v48 = *(this + 3104);
      v49 = v48 + 32 * v13;
      v51 = *(v49 + 16);
      v50 = *(v49 + 24);
      if (v51 == a3 && v50 == a4)
      {
        return;
      }

      while (1)
      {
        v13 = *(v48 + 32 * v13 + 8) & 0x7FFFFFFF;
        if (v13 == 0x7FFFFFFF)
        {
          break;
        }

        v53 = v48 + 32 * v13;
        v55 = *(v53 + 16);
        v54 = *(v53 + 24);
        if (v55 == a3 && v54 == a4)
        {
          return;
        }
      }
    }
  }

  v14 = *(this + 3040);
  v15 = *(v14 + 48);
  if (!v15)
  {
    goto LABEL_25;
  }

  v57 = v11;
  v58 = this;
  v16 = *(v14 + 64);
  v17 = v16 + 40 * v15;
  v18 = this + 2320;
  v59 = HIDWORD(a4);
  do
  {
    if (*(v16 + 24) > 1u)
    {
      goto LABEL_23;
    }

    v20 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (v20 == v18 && v19 == a2)
    {
      goto LABEL_23;
    }

    v22 = *(v20 + 600);
    if (!v22)
    {
      v30 = *re::networkLogObjects(this);
      this = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (!this)
      {
        goto LABEL_23;
      }

      *buf = 0;
      v28 = v30;
      v29 = "sendRouteRequest: missing session for transport!";
      goto LABEL_19;
    }

    v23 = *(v22 + 2296);
    if (!v23)
    {
LABEL_15:
      v27 = *re::networkLogObjects(this);
      this = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (!this)
      {
        goto LABEL_23;
      }

      *buf = 0;
      v28 = v27;
      v29 = "sendRouteRequest: missing participant for connection!";
LABEL_19:
      _os_log_error_impl(&dword_26168F000, v28, OS_LOG_TYPE_ERROR, v29, buf, 2u);
      goto LABEL_23;
    }

    v24 = *(v22 + 2312);
    v25 = 8 * v23;
    while (1)
    {
      v26 = *v24;
      if (*(*v24 + 32) == v19)
      {
        break;
      }

      ++v24;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_15;
      }
    }

    v31 = (v26 + 8);
    v32 = re::PacketPool::allocate(*(v20 + 384), 67);
    re::Packet::offsetBy(v32, 3);
    v33 = *(v32 + 1);
    *(v33 + 2) = 0;
    *v33 = 0;
    v34 = *(v32 + 2);
    v35 = *(v32 + 7);
    *buf = &unk_2873F59D0;
    *&buf[8] = v34;
    v62 = v35;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    re::BitWriter::writeUInt32Bits(buf, a3, 0x20u);
    re::BitWriter::writeUInt32Bits(buf, HIDWORD(a3), 0x20u);
    re::BitWriter::writeUInt32Bits(buf, a4, 0x20u);
    re::BitWriter::writeUInt32Bits(buf, v59, 0x20u);
    re::BitWriter::writeUInt32Bits(buf, 4u, 8u);
    re::BitWriter::writeUInt32Bits(buf, a5, 0x20u);
    v36 = v64;
    if (HIDWORD(v64))
    {
      v36 = v64 + 1;
    }

    *(v32 + 6) = v36;
    re::Transport::send(v20, v19, v32, 0, 0, 0, *(v26 + 72));

LABEL_23:
    v16 += 40;
  }

  while (v16 != v17);
  v11 = v57;
  v8 = v58;
  LODWORD(v12) = *(v58 + 3112);
LABEL_25:
  *buf = a3;
  *&buf[8] = a4;
  if (!v12)
  {
    LODWORD(v37) = 0;
    goto LABEL_50;
  }

  v37 = v11 % v12;
  v38 = *(*(v8 + 3096) + 4 * v37);
  if (v38 == 0x7FFFFFFF)
  {
    goto LABEL_50;
  }

  v39 = *(v8 + 3104);
  v40 = v39 + 32 * v38;
  v42 = *(v40 + 16);
  v41 = *(v40 + 24);
  if (v42 == a3 && v41 == a4)
  {
LABEL_37:
    *(v39 + 32 * v38 + 16) = *buf;
  }

  else
  {
    while (1)
    {
      v38 = *(v39 + 32 * v38 + 8) & 0x7FFFFFFF;
      if (v38 == 0x7FFFFFFF)
      {
        break;
      }

      v44 = v39 + 32 * v38;
      v46 = *(v44 + 16);
      v45 = *(v44 + 24);
      if (v46 == a3 && v45 == a4)
      {
        goto LABEL_37;
      }
    }

LABEL_50:
    re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::addAsMove(v8 + 3088, v37, v11, buf);
  }

  ++*(v8 + 3128);
}

void re::Session::sendRouteResponse(re::Session *this, uint64_t a2, size_t a3, unsigned int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  Route = re::RoutingTable::getRoute(this, a3, v24);
  if ((v24[0] & 1) == 0)
  {
    v15 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 134218496;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v28 = 1024;
    LODWORD(v29) = a4;
    v14 = "Failed to send routing response. src=%llu, dst-%llu, hop=%d";
    v16 = v15;
    v17 = 28;
    goto LABEL_14;
  }

  v8 = *(v25 + 75);
  if (!v8)
  {
    v13 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v14 = "sendRouteResponse: missing session for transport!";
    goto LABEL_13;
  }

  v9 = *(v8 + 2296);
  if (!v9)
  {
LABEL_7:
    v13 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v14 = "sendRouteResponse: missing participant for connection!";
LABEL_13:
    v16 = v13;
    v17 = 2;
LABEL_14:
    _os_log_error_impl(&dword_26168F000, v16, OS_LOG_TYPE_ERROR, v14, buf, v17);
    return;
  }

  v10 = *(v8 + 2312);
  v11 = 8 * v9;
  while (1)
  {
    v12 = *v10;
    if (*(*v10 + 32) == v26)
    {
      break;
    }

    ++v10;
    v11 -= 8;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v18 = (v12 + 8);
  v19 = re::PacketPool::allocate(*(v25 + 48), 67);
  re::Packet::offsetBy(v19, 3);
  v20 = *(v19 + 1);
  *(v20 + 2) = 0;
  *v20 = 0;
  v21 = *(v19 + 2);
  v22 = *(v19 + 7);
  *buf = &unk_2873F59D0;
  *&buf[8] = v21;
  *&buf[16] = v22;
  buf[20] = 0;
  v29 = 0;
  v30 = 0;
  re::BitWriter::writeUInt32Bits(buf, a2, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, HIDWORD(a2), 0x20u);
  re::BitWriter::writeUInt32Bits(buf, a3, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, HIDWORD(a3), 0x20u);
  re::BitWriter::writeUInt32Bits(buf, 5u, 8u);
  re::BitWriter::writeUInt32Bits(buf, a4, 0x20u);
  v23 = v29;
  if (HIDWORD(v29))
  {
    v23 = v29 + 1;
  }

  *(v19 + 6) = v23;
  re::Transport::send(v25, v26, v19, 0, 0, 0, *(v12 + 72));
}

unint64_t re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::remove(uint64_t a1, void *a2)
{
  result = re::Hash<re::Pair<unsigned long long,unsigned long long,true>>::operator()(&v22, a2);
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = result % v5;
    v7 = *(a1 + 8);
    v8 = *(v7 + 4 * (result % v5));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 16);
      v10 = a2[1];
      v11 = v9 + 32 * v8;
      if (*(v11 + 16) == *a2 && *(v11 + 24) == v10)
      {
        *(v7 + 4 * v6) = *(v11 + 8) & 0x7FFFFFFF;
LABEL_15:
        v16 = *(a1 + 16);
        v17 = v16 + 32 * v8;
        v20 = *(v17 + 8);
        v19 = (v17 + 8);
        v18 = v20;
        if (v20 < 0)
        {
          *v19 = v18 & 0x7FFFFFFF;
          v16 = *(a1 + 16);
          v18 = *(v16 + 32 * v8 + 8);
        }

        v21 = *(a1 + 40);
        *(v16 + 32 * v8 + 8) = *(a1 + 36) | v18 & 0x80000000;
        --*(a1 + 28);
        *(a1 + 36) = v8;
        *(a1 + 40) = v21 + 1;
      }

      else
      {
        while (1)
        {
          v13 = v8;
          v8 = *(v9 + 32 * v8 + 8) & 0x7FFFFFFF;
          if (v8 == 0x7FFFFFFF)
          {
            break;
          }

          v14 = v9 + 32 * v8;
          if (*(v14 + 16) == *a2 && *(v14 + 24) == v10)
          {
            *(v9 + 32 * v13 + 8) = *(v9 + 32 * v13 + 8) & 0x80000000 | *(v14 + 8) & 0x7FFFFFFF;
            goto LABEL_15;
          }
        }
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::Session::PendingMessage>::removeStableAt(void *result, unint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = result[2];
  if (v3 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x277D86220];
    v11 = 136315906;
    v12 = "removeStableAt";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 969;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_26168F000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = result;
  v5 = v3 - 1;
  if (v3 - 1 > a2)
  {
    result = (result[4] + 40 * a2);
    v6 = 40 * v3 - (40 * a2 + 40);
    if (v6)
    {
      result = memmove(result, result + 5, v6 - 7);
      v5 = v4[2] - 1;
    }
  }

  v4[2] = v5;
  ++*(v4 + 6);
  return result;
}

void re::Session::sendRouteFail(re::Session *this, uint64_t a2, size_t a3, unsigned int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  Route = re::RoutingTable::getRoute(this, a3, v24);
  if ((v24[0] & 1) == 0)
  {
    v15 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 134218496;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v28 = 1024;
    LODWORD(v29) = a4;
    v14 = "Failed to notify peer about failed route. src=%llu, dst-%llu, hop=%d";
    v16 = v15;
    v17 = 28;
    goto LABEL_14;
  }

  v8 = *(v25 + 75);
  if (!v8)
  {
    v13 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v14 = "sendRouteFail: missing session for transport!";
    goto LABEL_13;
  }

  v9 = *(v8 + 2296);
  if (!v9)
  {
LABEL_7:
    v13 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v14 = "sendRouteFail: missing participant for connection!";
LABEL_13:
    v16 = v13;
    v17 = 2;
LABEL_14:
    _os_log_error_impl(&dword_26168F000, v16, OS_LOG_TYPE_ERROR, v14, buf, v17);
    return;
  }

  v10 = *(v8 + 2312);
  v11 = 8 * v9;
  while (1)
  {
    v12 = *v10;
    if (*(*v10 + 32) == v26)
    {
      break;
    }

    ++v10;
    v11 -= 8;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v18 = (v12 + 8);
  v19 = re::PacketPool::allocate(*(v25 + 48), 67);
  re::Packet::offsetBy(v19, 3);
  v20 = *(v19 + 1);
  *(v20 + 2) = 0;
  *v20 = 0;
  v21 = *(v19 + 2);
  v22 = *(v19 + 7);
  *buf = &unk_2873F59D0;
  *&buf[8] = v21;
  *&buf[16] = v22;
  buf[20] = 0;
  v29 = 0;
  v30 = 0;
  re::BitWriter::writeUInt32Bits(buf, a2, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, HIDWORD(a2), 0x20u);
  re::BitWriter::writeUInt32Bits(buf, a3, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, HIDWORD(a3), 0x20u);
  re::BitWriter::writeUInt32Bits(buf, 6u, 8u);
  re::BitWriter::writeUInt32Bits(buf, a4, 0x20u);
  v23 = v29;
  if (HIDWORD(v29))
  {
    v23 = v29 + 1;
  }

  *(v19 + 6) = v23;
  re::Transport::send(v25, v26, v19, 0, 0, 0, *(v12 + 72));
}