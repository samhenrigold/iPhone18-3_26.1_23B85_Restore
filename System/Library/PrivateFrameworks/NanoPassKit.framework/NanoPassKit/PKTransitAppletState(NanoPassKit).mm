@interface PKTransitAppletState(NanoPassKit)
- (id)npk_processUpdateWithAppletHistory:()NanoPassKit concreteTransactions:ephemeralTransaction:mutatedBalances:pass:;
@end

@implementation PKTransitAppletState(NanoPassKit)

- (id)npk_processUpdateWithAppletHistory:()NanoPassKit concreteTransactions:ephemeralTransaction:mutatedBalances:pass:
{
  v114 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v91 = v13;
  if (!v13)
  {
    v58 = pk_Payment_log(0);
    v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);

    if (v59)
    {
      v61 = pk_Payment_log(v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v61, OS_LOG_TYPE_DEFAULT, "Notice: Error no pass to process applet history", buf, 2u);
      }
    }

    goto LABEL_47;
  }

  v14 = v13;
  if (!NPKIsTruthOnCard(v13))
  {
LABEL_47:
    v56 = 0;
    v45 = 0;
    v57 = 0;
    goto LABEL_48;
  }

  selfCopy = self;
  v87 = a4;
  v88 = a5;
  v89 = a6;
  v90 = v12;
  balanceFields = [v14 balanceFields];
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = balanceFields;
  v17 = [obj countByEnumeratingWithState:&v103 objects:buf count:16];
  if (v17)
  {
    v18 = v17;
    v96 = *v104;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v104 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v103 + 1) + 8 * i);
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        foreignReferenceIdentifiers = [v20 foreignReferenceIdentifiers];
        v22 = [foreignReferenceIdentifiers countByEnumeratingWithState:&v99 objects:&v108 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v100;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v100 != v24)
              {
                objc_enumerationMutation(foreignReferenceIdentifiers);
              }

              v26 = *(*(&v99 + 1) + 8 * j);
              label = [v20 label];
              [v16 setObject:label forKeyedSubscript:v26];
            }

            v23 = [foreignReferenceIdentifiers countByEnumeratingWithState:&v99 objects:&v108 count:16];
          }

          while (v23);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v103 objects:buf count:16];
    }

    while (v18);
  }

  v85 = [v16 copy];
  v28 = v91;
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v84 = v28;
  transitCommutePlans = [v28 transitCommutePlans];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v97 = transitCommutePlans;
  v31 = [transitCommutePlans countByEnumeratingWithState:&v103 objects:buf count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v104;
    v92 = *MEMORY[0x277D38A00];
    v93 = *v104;
    do
    {
      v34 = 0;
      obja = v32;
      do
      {
        if (*v104 != v33)
        {
          objc_enumerationMutation(v97);
        }

        v35 = *(*(&v103 + 1) + 8 * v34);
        if (([v35 properties] & 4) != 0)
        {
          v36 = [v35 passFieldForKey:v92];
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          foreignReferenceIdentifiers2 = [v36 foreignReferenceIdentifiers];
          v38 = [foreignReferenceIdentifiers2 countByEnumeratingWithState:&v99 objects:&v108 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v100;
            do
            {
              for (k = 0; k != v39; ++k)
              {
                if (*v100 != v40)
                {
                  objc_enumerationMutation(foreignReferenceIdentifiers2);
                }

                v42 = *(*(&v99 + 1) + 8 * k);
                unitType = [v36 unitType];
                if (unitType != -1)
                {
                  v44 = [MEMORY[0x277CCABB0] numberWithInteger:unitType];
                  [v29 setObject:v44 forKeyedSubscript:v42];
                }
              }

              v39 = [foreignReferenceIdentifiers2 countByEnumeratingWithState:&v99 objects:&v108 count:16];
            }

            while (v39);
          }

          v33 = v93;
          v32 = obja;
        }

        ++v34;
      }

      while (v34 != v32);
      v32 = [v97 countByEnumeratingWithState:&v103 objects:buf count:16];
    }

    while (v32);
  }

  v45 = [v29 copy];

  transitCommutePlans2 = [v84 transitCommutePlans];
  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v48 = transitCommutePlans2;
  v49 = [v48 countByEnumeratingWithState:&v108 objects:buf count:16];
  v12 = v90;
  if (v49)
  {
    v50 = v49;
    v51 = *v109;
    do
    {
      for (m = 0; m != v50; ++m)
      {
        if (*v109 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v108 + 1) + 8 * m);
        identifier = [v53 identifier];
        titleText = [v53 titleText];
        [v47 setObject:titleText forKeyedSubscript:identifier];
      }

      v50 = [v48 countByEnumeratingWithState:&v108 objects:buf count:16];
    }

    while (v50);
  }

  v56 = [v47 copy];
  a5 = v88;
  a6 = v89;
  self = selfCopy;
  a4 = v87;
  v57 = v85;
LABEL_48:
  v62 = a4;
  v63 = v57;
  v64 = [self processUpdateWithAppletHistory:v12 concreteTransactions:v62 ephemeralTransaction:a5 mutatedBalances:a6 balanceLabelDictionary:v56 unitDictionary:? planLabelDictionary:?];
  if (a6)
  {
    if (![*a6 count])
    {
      balance = [v64 balance];
      if (balance)
      {
        v67 = balance;
        currency = [v64 currency];

        if (currency)
        {
          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          expirationDate = [v64 expirationDate];
          v98 = [currentCalendar components:30 fromDate:expirationDate];

          v71 = objc_alloc(MEMORY[0x277D382F8]);
          v72 = *MEMORY[0x277D38850];
          balance2 = [v64 balance];
          currency2 = [v64 currency];
          v75 = [v71 initWithIdentifier:v72 balance:balance2 currency:currency2 exponent:0 expirationDate:v98];
          v76 = a6;
          v77 = v75;

          v107 = v77;
          v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
          v79 = *v76;
          *v76 = v78;

          v81 = pk_Payment_log(v80);
          LODWORD(v72) = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);

          if (v72)
          {
            v83 = pk_Payment_log(v82);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v113 = v77;
              _os_log_impl(&dword_25B300000, v83, OS_LOG_TYPE_DEFAULT, "Notice: added Manually mutated transit Applet Balance:%@", buf, 0xCu);
            }
          }
        }
      }
    }
  }

  return v64;
}

@end