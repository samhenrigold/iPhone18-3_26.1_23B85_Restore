@interface CLPedestrianFenceAnalyticsManager
- (void)cleanupPackets;
- (void)sendAnalyticsForAllReadySessions;
@end

@implementation CLPedestrianFenceAnalyticsManager

- (void)sendAnalyticsForAllReadySessions
{
  if (self->_odometryPackets.__tree_.__size_)
  {
    left = self->_odometryPackets.__tree_.__end_node_.__left_;
    p_end_node = &self->_odometryPackets.__tree_.__end_node_;
    if (left)
    {
      do
      {
        v4 = left;
        left = left[1];
      }

      while (left);
    }

    else
    {
      v5 = &self->_odometryPackets.__tree_.__end_node_;
      do
      {
        v4 = v5[2].__left_;
        v6 = *v4 == v5;
        v5 = v4;
      }

      while (v6);
    }

    v46 = v4[4];
    v43 = +[NSMutableArray array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    selfCopy = self;
    obj = [(CLPedestrianFenceAnalyticsManager *)self completedSessionsAwaitingPackets];
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
    if (v47)
    {
      v45 = *v50;
      do
      {
        v8 = 0;
        do
        {
          if (*v50 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v49 + 1) + 8 * v8);
          v10 = [objc_msgSend(v9 objectForKeyedSubscript:{@"sequenceNumberEnd", "unsignedShortValue"}];
          v11 = v10 - 1;
          if (v46 < v10 - 1)
          {
            goto LABEL_52;
          }

          v12 = [objc_msgSend(v9 objectForKeyedSubscript:{@"sequenceNumberStart", "unsignedShortValue"}];
          v48 = v12;
          v13 = [objc_msgSend(v9 objectForKeyedSubscript:{@"metricType", "intValue"}];
          [v9 removeObjectForKey:@"sequenceNumberStart"];
          [v9 removeObjectForKey:@"sequenceNumberEnd"];
          if (!v13)
          {
            [v9 removeObjectForKey:@"metricType"];
          }

          v14 = [(CLPedestrianFenceAnalyticsManager *)selfCopy aggregateStatsFromPacket:v12 to:v10 useAOPDuration:v13 == 2];
          [v9 addEntriesFromDictionary:v14];
          v15 = sub_1000081AC();
          v16 = v15;
          if (v13 == 2 && v15 - selfCopy->_timestampLastLog <= 0.5)
          {
            goto LABEL_49;
          }

          v17 = p_end_node->__left_;
          if (!p_end_node->__left_)
          {
            v20 = 0;
            goto LABEL_32;
          }

          v18 = p_end_node->__left_;
          do
          {
            v19 = v18[4];
            if (v19 <= v12)
            {
              if (v19 >= v12)
              {
                v20 = sub_100240250(&selfCopy->_odometryPackets, &v48)[15];
                v17 = p_end_node->__left_;
                if (p_end_node->__left_)
                {
                  goto LABEL_27;
                }

LABEL_32:
                v23 = 0;
                goto LABEL_33;
              }

              ++v18;
            }

            v18 = *v18;
          }

          while (v18);
          v20 = 0;
          if (!v17)
          {
            goto LABEL_32;
          }

LABEL_27:
          v21 = v17;
          while (2)
          {
            v22 = v21[4];
            if (v11 < v22)
            {
LABEL_31:
              v21 = *v21;
              if (!v21)
              {
                goto LABEL_32;
              }

              continue;
            }

            break;
          }

          if (v22 < v11)
          {
            ++v21;
            goto LABEL_31;
          }

          while (1)
          {
            while (1)
            {
              v30 = v17;
              v31 = v17[4];
              if (v11 >= v31)
              {
                break;
              }

              v17 = *v30;
              if (!*v30)
              {
LABEL_58:
                operator new();
              }
            }

            if (v31 >= v11)
            {
              break;
            }

            v17 = v30[1];
            if (!v17)
            {
              goto LABEL_58;
            }
          }

          v23 = v30[21];
LABEL_33:
          if (qword_1025D4500 != -1)
          {
            sub_1019A8E28();
          }

          v24 = qword_1025D4508;
          if (os_log_type_enabled(qword_1025D4508, OS_LOG_TYPE_DEFAULT))
          {
            v25 = "unexpected";
            if (v13 == 2)
            {
              v25 = "interval";
            }

            if (v13 == 1)
            {
              v25 = "odometrySession";
            }

            if (v13)
            {
              v26 = v25;
            }

            else
            {
              v26 = "fenceSession";
            }

            if (v13)
            {
              v27 = @"clientId";
            }

            else
            {
              v27 = @"fenceId";
            }

            v28 = [NSString stringWithUTF8String:v26];
            v29 = [v9 objectForKeyedSubscript:v27];
            *buf = 138544386;
            v64 = v28;
            v65 = 2114;
            v66 = v29;
            v67 = 2050;
            v68 = v20;
            v69 = 2050;
            v70 = v23;
            v71 = 2114;
            v72 = v14;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "[Analytics] type,%{public}@,client,%{public}@,from,%{public}f,to,%{public}f: %{public}@", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4500 != -1)
            {
              sub_1019A8E28();
            }

            v32 = qword_1025D4508;
            v33 = "unexpected";
            if (v13 == 2)
            {
              v33 = "interval";
            }

            if (v13 == 1)
            {
              v33 = "odometrySession";
            }

            if (v13)
            {
              v34 = v33;
            }

            else
            {
              v34 = "fenceSession";
            }

            if (v13)
            {
              v35 = @"clientId";
            }

            else
            {
              v35 = @"fenceId";
            }

            v36 = [NSString stringWithUTF8String:v34];
            v37 = [v9 objectForKeyedSubscript:v35];
            v53 = 138544386;
            v54 = v36;
            v55 = 2114;
            v56 = v37;
            v57 = 2050;
            v58 = v20;
            v59 = 2050;
            v60 = v23;
            v61 = 2114;
            v62 = v14;
            LODWORD(v41) = 52;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v32, 0, "[Analytics] type,%{public}@,client,%{public}@,from,%{public}f,to,%{public}f: %{public}@", &v53, v41);
            v39 = v38;
            sub_100152C7C("Generic", 1, 0, 2, "[CLPedestrianFenceAnalyticsManager sendAnalyticsForAllReadySessions]", "%s\n", v38);
            if (v39 != buf)
            {
              free(v39);
            }
          }

          selfCopy->_timestampLastLog = v16;
          if (v13 == 2)
          {
LABEL_49:
            if (([objc_msgSend(v9 objectForKeyedSubscript:{@"clientId", "isEqualToString:", @"fenceClient"}] & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          else
          {
LABEL_50:
            [NSDictionary dictionaryWithDictionary:v9];
            AnalyticsSendEventLazy();
          }

          [v43 addObject:v9];
LABEL_52:
          v8 = v8 + 1;
        }

        while (v8 != v47);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
        v47 = v40;
      }

      while (v40);
    }

    [(NSMutableArray *)[(CLPedestrianFenceAnalyticsManager *)selfCopy completedSessionsAwaitingPackets] removeObjectsInArray:v43];
    [(CLPedestrianFenceAnalyticsManager *)selfCopy cleanupPackets];
  }
}

- (void)cleanupPackets
{
  allValues = [(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeOdometryClients] allValues];
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(allValues);
  if (v4)
  {
    v5 = MEMORY[0];
    unsignedShortValue = -1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(8 * i);
        if (unsignedShortValue >= [objc_msgSend(v8 objectForKeyedSubscript:{@"sequenceNumberStart", "unsignedShortValue"}])
        {
          unsignedShortValue = [objc_msgSend(v8 objectForKeyedSubscript:{@"sequenceNumberStart", "unsignedShortValue"}];
        }
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(allValues);
    }

    while (v4);
  }

  else
  {
    unsignedShortValue = -1;
  }

  allValues2 = [(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeFenceSessions] allValues];
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(allValues2);
  if (v10)
  {
    v11 = MEMORY[0];
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(allValues2);
        }

        v13 = *(8 * j);
        if (unsignedShortValue >= [v13 unsignedShortValue])
        {
          unsignedShortValue = [v13 unsignedShortValue];
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(allValues2);
    }

    while (v10);
  }

  if (![(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeFenceSessions] count]&& ![(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeOdometryClients] count])
  {
    [(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeIntervalEvents] removeAllObjects];
  }

  allValues3 = [(NSMutableDictionary *)[(CLPedestrianFenceAnalyticsManager *)self activeIntervalEvents] allValues];
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(allValues3);
  if (v15)
  {
    v16 = MEMORY[0];
    do
    {
      for (k = 0; k != v15; k = k + 1)
      {
        if (MEMORY[0] != v16)
        {
          objc_enumerationMutation(allValues3);
        }

        v18 = *(8 * k);
        if (unsignedShortValue >= [v18 unsignedShortValue])
        {
          unsignedShortValue = [v18 unsignedShortValue];
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(allValues3);
    }

    while (v15);
  }

  completedSessionsAwaitingPackets = [(CLPedestrianFenceAnalyticsManager *)self completedSessionsAwaitingPackets];
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(completedSessionsAwaitingPackets);
  if (v20)
  {
    v21 = MEMORY[0];
    do
    {
      for (m = 0; m != v20; m = m + 1)
      {
        if (MEMORY[0] != v21)
        {
          objc_enumerationMutation(completedSessionsAwaitingPackets);
        }

        v23 = *(8 * m);
        if (unsignedShortValue >= [objc_msgSend(v23 objectForKeyedSubscript:{@"sequenceNumberStart", "unsignedShortValue"}])
        {
          unsignedShortValue = [objc_msgSend(v23 objectForKeyedSubscript:{@"sequenceNumberStart", "unsignedShortValue"}];
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(completedSessionsAwaitingPackets);
    }

    while (v20);
  }

  begin_node = self->_odometryPackets.__tree_.__begin_node_;
  if (begin_node != &self->_odometryPackets.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[1].__left_;
      if (begin_node[4].__left_ >= unsignedShortValue)
      {
        if (left)
        {
          do
          {
            v27 = left;
            left = left->super.isa;
          }

          while (left);
        }

        else
        {
          do
          {
            v27 = begin_node[2].__left_;
            v28 = v27->super.isa == begin_node;
            begin_node = v27;
          }

          while (!v28);
        }
      }

      else
      {
        v26 = begin_node;
        if (left)
        {
          do
          {
            v27 = left;
            left = left->super.isa;
          }

          while (left);
        }

        else
        {
          do
          {
            v27 = v26[2];
            v28 = v27->super.isa == v26;
            v26 = v27;
          }

          while (!v28);
        }

        if (self->_odometryPackets.__tree_.__begin_node_ == begin_node)
        {
          self->_odometryPackets.__tree_.__begin_node_ = v27;
        }

        v29 = self->_odometryPackets.__tree_.__end_node_.__left_;
        --self->_odometryPackets.__tree_.__size_;
        sub_1000B8E4C(v29, begin_node);
        operator delete(begin_node);
      }

      begin_node = v27;
    }

    while (v27 != &self->_odometryPackets.__tree_.__end_node_);
  }
}

@end