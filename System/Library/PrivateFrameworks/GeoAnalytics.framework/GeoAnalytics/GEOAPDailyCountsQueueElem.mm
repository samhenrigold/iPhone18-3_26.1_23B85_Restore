@interface GEOAPDailyCountsQueueElem
- (BOOL)isEqual:(id)equal;
- (GEOAPDailyCountsQueueElem)initWithType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id createTime:(id)time;
- (id)copy;
- (unint64_t)hash;
@end

@implementation GEOAPDailyCountsQueueElem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    usageString = [(GEOAPDailyCountsQueueElem *)self usageString];
    usageString2 = [v5 usageString];
    v8 = (usageString != 0) ^ (usageString2 != 0);

    if (v8 & 1) != 0 || (-[GEOAPDailyCountsQueueElem usageBool](self, "usageBool"), v9 = objc_claimAutoreleasedReturnValue(), [v5 usageBool], v10 = objc_claimAutoreleasedReturnValue(), v11 = (v9 != 0) ^ (v10 != 0), v10, v9, (v11) || (-[GEOAPDailyCountsQueueElem usageString](self, "usageString"), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v5, "usageString"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14) && (-[GEOAPDailyCountsQueueElem usageString](self, "usageString"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "usageString"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, !v17) || (-[GEOAPDailyCountsQueueElem usageBool](self, "usageBool"), (v18 = objc_claimAutoreleasedReturnValue()) != 0) && (v19 = v18, objc_msgSend(v5, "usageBool"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20) && (-[GEOAPDailyCountsQueueElem usageBool](self, "usageBool"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "BOOLValue"), objc_msgSend(v5, "usageBool"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "BOOLValue"), v23, v21, v22 != v24) || (objc_msgSend(v5, "createTime"), v25 = objc_claimAutoreleasedReturnValue(), -[GEOAPQueueElem createTime](self, "createTime"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "timeIntervalSinceDate:", v26), v28 = v27, v26, v25, LODWORD(v25) = -[GEOAPDailyCountsQueueElem countType](self, "countType"), v25 != objc_msgSend(v5, "countType")))
    {
      v32 = 0;
    }

    else
    {
      if (v28 < 0.0)
      {
        v28 = -v28;
      }

      appId = [(GEOAPDailyCountsQueueElem *)self appId];
      appId2 = [v5 appId];
      v31 = [appId isEqualToString:appId2];
      if (v28 < 1.0)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (unint64_t)hash
{
  countType = self->_countType;
  v4 = [(NSString *)self->_usageString hash]^ countType;
  v5 = [(NSNumber *)self->_usageBool hash];
  return v4 ^ v5 ^ [(NSString *)self->_appId hash];
}

- (id)copy
{
  v3 = [GEOAPDailyCountsQueueElem alloc];
  countType = self->_countType;
  usageString = self->_usageString;
  usageBool = self->_usageBool;
  appId = self->_appId;
  createTime = self->super._createTime;

  return [(GEOAPDailyCountsQueueElem *)v3 initWithType:countType usageString:usageString usageBool:usageBool appId:appId createTime:createTime];
}

- (GEOAPDailyCountsQueueElem)initWithType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id createTime:(id)time
{
  stringCopy = string;
  boolCopy = bool;
  idCopy = id;
  timeCopy = time;
  v20.receiver = self;
  v20.super_class = GEOAPDailyCountsQueueElem;
  v17 = [(GEOAPQueueElem *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->super._createTime, time);
    v18->_countType = type;
    objc_storeStrong(&v18->_usageString, string);
    objc_storeStrong(&v18->_usageBool, bool);
    objc_storeStrong(&v18->_appId, id);
  }

  return v18;
}

@end