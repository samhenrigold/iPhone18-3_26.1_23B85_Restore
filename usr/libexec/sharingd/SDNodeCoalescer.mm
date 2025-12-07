@interface SDNodeCoalescer
- (SDNodeCoalescer)init;
- (id)coalescedNodesForNewAvailableNodes:(id)nodes;
- (id)setMappedContactIdentifier:(id)identifier relatedContactIdentifiers:(id)identifiers;
@end

@implementation SDNodeCoalescer

- (SDNodeCoalescer)init
{
  v8.receiver = self;
  v8.super_class = SDNodeCoalescer;
  v2 = [(SDNodeCoalescer *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    originalNodes = v2->_originalNodes;
    v2->_originalNodes = v3;

    v5 = objc_opt_new();
    contactIdentifierMap = v2->_contactIdentifierMap;
    v2->_contactIdentifierMap = v5;
  }

  return v2;
}

- (id)coalescedNodesForNewAvailableNodes:(id)nodes
{
  nodesCopy = nodes;
  v86 = objc_opt_new();
  v95 = objc_opt_new();
  v85 = objc_opt_new();
  v82 = objc_opt_new();
  v84 = objc_opt_new();
  selfCopy = self;
  v6 = objc_opt_new();
  objc_storeStrong(&self->_availableNodes, nodes);
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = self->_availableNodes;
  selfCopy2 = self;
  v90 = v6;
  v89 = [(NSArray *)obj countByEnumeratingWithState:&v106 objects:v119 count:16];
  if (v89)
  {
    v88 = *v107;
    v87 = kSFNodeKindRapport;
    do
    {
      for (i = 0; i != v89; i = v50 + 1)
      {
        if (*v107 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v97 = i;
        v8 = *(*(&v106 + 1) + 8 * i);
        v9 = SFNodeCopyKinds();
        v10 = SFNodeCopyRealName();
        v11 = SFNodeCopyContactIdentifiers();
        v12 = SFNodeCopyContactIdentifier();
        v13 = SFNodeCopyUserName();
        v91 = [v9 containsObject:v87];
        v14 = sub_100090360(v8);
        if (v11)
        {
          if (v12)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v11 = sub_100090478(v8);
          if (v12)
          {
LABEL_8:
            v15 = 1;
LABEL_15:
            v100 = v12;
            goto LABEL_16;
          }
        }

        v16 = sub_1000904C4(v8);
        v15 = v16 != 0;
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = v14;
        }

        if (v17 == 1)
        {
          v12 = v16;
          goto LABEL_15;
        }

        v15 = 0;
        v100 = 0;
        v12 = v13;
LABEL_16:
        v18 = v12;
        v19 = airdrop_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v51 = NSPrintF("kinds=%##@ realName=%@ cnId=%@ aTag=%@ id=%@ isRap=%d isMe=%d", v9, v10, v100, v13, v18, v91, v14, nodesCopy);
          *buf = 138412546;
          v111 = v8;
          v112 = 2112;
          v113 = v51;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Coalescing node %@: %@", buf, 0x16u);

          v6 = v90;
        }

        if (v18)
        {
          v92 = v15;
          v93 = v14;
          v20 = v13;
          v21 = v11;
          v14 = v10;
          v22 = v9;
          [v6 objectForKeyedSubscript:v18];
          v24 = v23 = v6;
          v25 = sub_1001EAE00();
          v26 = sub_1001EACB0(v24, v25);

          v28 = magic_head_log(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v111 = "[SDNodeCoalescer coalescedNodesForNewAvailableNodes:]";
            v112 = 2112;
            v113 = v18;
            v114 = 2112;
            v115 = v26;
            _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s identifier: %@, mostRevelant: %@", buf, 0x20u);
          }

          [v23 setObject:v26 forKeyedSubscript:v18];
          v6 = v23;
          v9 = v22;
          v10 = v14;
          v11 = v21;
          v13 = v20;
          LODWORD(v14) = v93;
          v15 = v92;
        }

        else
        {
          v26 = airdrop_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v111 = v8;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No identifier found for node %@", buf, 0xCu);
          }
        }

        if (v14)
        {
          v29 = SFNodeCopyIDSDeviceIdentifier();
          if (v29)
          {
            v30 = v29;
            selfCopy = selfCopy2;
            goto LABEL_44;
          }

          v42 = SFNodeCopyComputerName();
          selfCopy = selfCopy2;
          if (v42)
          {
            v30 = v42;
LABEL_44:
            v43 = [(NSMutableDictionary *)selfCopy->_originalNodes objectForKeyedSubscript:v30];

            if (!v43)
            {
              Copy = SFNodeCreateCopy();
              [(NSMutableDictionary *)selfCopy->_originalNodes setObject:Copy forKeyedSubscript:v30];
              CFRelease(Copy);
            }

            v45 = [(NSMutableDictionary *)selfCopy->_originalNodes objectForKeyedSubscript:v30];
            [v86 setObject:v45 forKeyedSubscript:v30];

            v46 = [v95 objectForKeyedSubscript:v30];
            if (v46)
            {
              v47 = v46;
              if (([v46 containsObject:v8] & 1) == 0)
              {
                [v47 addObject:v8];
              }
            }

            else
            {
              v47 = [NSMutableArray arrayWithObject:v8];
            }

            [v95 setObject:v47 forKeyedSubscript:v30];
            v48 = SFNodeCopyModelIdentifier();
            if (v48)
            {
              v49 = SFNodeCopyIconData();
              [v84 setObject:v49 forKeyedSubscript:v30];
            }

            v6 = v90;
          }

          else
          {
            v30 = airdrop_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v111 = v8;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "coalescedNodesForNewAvailableNodes: Device ID is not available for %@", buf, 0xCu);
            }
          }

LABEL_54:
          v50 = v97;
          goto LABEL_62;
        }

        if (v15)
        {
          selfCopy = selfCopy2;
          v31 = [(SDNodeCoalescer *)selfCopy2 setMappedContactIdentifier:v100 relatedContactIdentifiers:v11];
          v32 = [(NSMutableDictionary *)selfCopy2->_originalNodes objectForKeyedSubscript:v31];

          if (!v32)
          {
            v33 = SFNodeCreateCopy();
            [(NSMutableDictionary *)selfCopy2->_originalNodes setObject:v33 forKeyedSubscript:v31];
            CFRelease(v33);
          }

          v34 = [(NSMutableDictionary *)selfCopy2->_originalNodes objectForKeyedSubscript:v31];
          [v86 setObject:v34 forKeyedSubscript:v31];

          v35 = [v85 objectForKeyedSubscript:v31];
          if (v35)
          {
            v36 = v35;
            if (([v35 containsObject:v8] & 1) == 0)
            {
              [v36 addObject:v8];
            }
          }

          else
          {
            v36 = [NSMutableArray arrayWithObject:v8];
          }

          v50 = v97;
          [v85 setObject:v36 forKeyedSubscript:v31];
        }

        else
        {
          if (!v13)
          {
            [v86 setObject:v8 forKeyedSubscript:v10];
            selfCopy = selfCopy2;
            goto LABEL_54;
          }

          selfCopy = selfCopy2;
          if ((v91 & 1) == 0)
          {
            v37 = [(NSMutableDictionary *)selfCopy2->_originalNodes objectForKeyedSubscript:v13];

            if (!v37)
            {
              v38 = SFNodeCreateCopy();
              [(NSMutableDictionary *)selfCopy2->_originalNodes setObject:v38 forKeyedSubscript:v13];
              CFRelease(v38);
            }

            v39 = [(NSMutableDictionary *)selfCopy2->_originalNodes objectForKeyedSubscript:v13];
            [v86 setObject:v39 forKeyedSubscript:v13];
          }

          v40 = [v82 objectForKeyedSubscript:v13];
          if (v40)
          {
            v41 = v40;
            if (([v40 containsObject:v8] & 1) == 0)
            {
              [v41 addObject:v8];
            }
          }

          else
          {
            v41 = [NSMutableArray arrayWithObject:v8];
          }

          v50 = v97;
          [v82 setObject:v41 forKeyedSubscript:v13];
        }

LABEL_62:
      }

      v89 = [(NSArray *)obj countByEnumeratingWithState:&v106 objects:v119 count:16];
    }

    while (v89);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  allValues = [v86 allValues];
  v99 = [allValues countByEnumeratingWithState:&v102 objects:v118 count:16];
  if (!v99)
  {
    goto LABEL_108;
  }

  v98 = *v103;
  do
  {
    v52 = 0;
    do
    {
      if (*v103 != v98)
      {
        objc_enumerationMutation(allValues);
      }

      v53 = *(*(&v102 + 1) + 8 * v52);
      v54 = sub_100090360(v53);
      v55 = SFNodeCopyContactIdentifier();
      if (!v55)
      {
        v55 = sub_1000904C4(v53);
      }

      v56 = SFNodeCopyUserName();
      v57 = v56;
      if (v55)
      {
        v58 = v54;
      }

      else
      {
        v58 = 1;
      }

      if (((v55 == 0) & ~v54) != 0)
      {
        v59 = v56;
      }

      else
      {
        v59 = v55;
      }

      if (v58)
      {
        v60 = 0;
      }

      else
      {
        v60 = [(SDNodeCoalescer *)selfCopy mappedContactIdentifierForContactIdentifier:v55];
        v59 = v55;
      }

      v61 = v59;
      v62 = v61;
      if (v61)
      {
        v63 = [v90 objectForKeyedSubscript:v61];
        v61 = [NSKeyedArchiver archivedDataWithRootObject:v63 requiringSecureCoding:1 error:0];
        v64 = v61;
      }

      else
      {
        v64 = 0;
        v63 = 0;
      }

      v65 = magic_head_log(v61);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v66 = @"mapped ID %@";
        if (!v60)
        {
          v66 = @"no mapped ID";
        }

        v111 = v63;
        v112 = 2112;
        v113 = v53;
        v114 = 2112;
        v115 = v55;
        v116 = 2112;
        v117 = v66;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "SDNodeBrowser: Setting score to %@ for node %@ with ID %@ and %@", buf, 0x2Au);
      }

      SFNodeSetRangingData();
      v101 = v57;
      if (sub_100090360(v53))
      {
        v67 = SFNodeCopyIDSDeviceIdentifier();
        if (!v67)
        {
          v67 = SFNodeCopyComputerName();
        }

        v68 = [v95 objectForKeyedSubscript:v67];
        SFNodeSetSiblingNodes();
        v69 = [v84 objectForKeyedSubscript:v67];
        if (v69)
        {
          SFNodeSetIconData();
        }

        selfCopy = selfCopy2;
        goto LABEL_98;
      }

      if (v60)
      {
        v70 = v85;
        v71 = v60;
LABEL_97:
        v68 = [v70 objectForKeyedSubscript:v71];
        SFNodeSetSiblingNodes();
        goto LABEL_98;
      }

      if (v57)
      {
        v70 = v82;
        v71 = v57;
        goto LABEL_97;
      }

      v73 = airdrop_log();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v111 = v53;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Coalesced node %@ not handled", buf, 0xCu);
      }

      v68 = 0;
LABEL_98:
      if ([v68 count] >= 2)
      {
        v72 = airdrop_log();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          v74 = NSPrintF("%##@", v68);
          *buf = 138412546;
          v111 = v53;
          v112 = 2112;
          v113 = v74;
          _os_log_debug_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "Coalesced node %@ represents nodes %@", buf, 0x16u);

          selfCopy = selfCopy2;
        }
      }

      v52 = v52 + 1;
    }

    while (v99 != v52);
    v75 = [allValues countByEnumeratingWithState:&v102 objects:v118 count:16];
    v99 = v75;
  }

  while (v75);
LABEL_108:

  allValues2 = [v86 allValues];
  coalescedNodes = selfCopy->_coalescedNodes;
  selfCopy->_coalescedNodes = allValues2;

  v78 = selfCopy->_coalescedNodes;
  v79 = v78;

  return v78;
}

- (id)setMappedContactIdentifier:(id)identifier relatedContactIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  identifiersCopy = identifiers;
  v8 = [identifiersCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(identifiersCopy);
      }

      v12 = *(*(&v27 + 1) + 8 * v11);
      v13 = [(NSMutableDictionary *)self->_contactIdentifierMap objectForKeyedSubscript:v12];

      if (v13)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [identifiersCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = [(NSMutableDictionary *)self->_contactIdentifierMap objectForKeyedSubscript:v12];

    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v14 = identifierCopy;
LABEL_12:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = identifiersCopy;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        v21 = [(NSMutableDictionary *)self->_contactIdentifierMap objectForKeyedSubscript:v20, v23];

        if (!v21)
        {
          [(NSMutableDictionary *)self->_contactIdentifierMap setObject:v14 forKeyedSubscript:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  return v14;
}

@end