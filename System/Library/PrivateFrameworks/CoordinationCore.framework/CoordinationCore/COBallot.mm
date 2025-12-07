@interface COBallot
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBallot:(id)ballot;
- (COBallot)init;
- (COBallot)initWithBallot:(id)ballot;
- (COBallot)initWithCandidate:(id)candidate;
- (COBallot)initWithCoder:(id)coder;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COBallot

- (COBallot)init
{
  v8.receiver = self;
  v8.super_class = COBallot;
  v2 = [(COBallot *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB70]);
    candidates = v2->_candidates;
    v2->_candidates = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    discovery = v2->_discovery;
    v2->_discovery = v5;
  }

  return v2;
}

- (COBallot)initWithBallot:(id)ballot
{
  ballotCopy = ballot;
  v13.receiver = self;
  v13.super_class = COBallot;
  v5 = [(COBallot *)&v13 init];
  if (v5)
  {
    candidates = [ballotCopy candidates];
    v7 = [candidates copy];
    candidates = v5->_candidates;
    v5->_candidates = v7;

    discovery = [ballotCopy discovery];
    v10 = [discovery copy];
    discovery = v5->_discovery;
    v5->_discovery = v10;
  }

  return v5;
}

- (COBallot)initWithCandidate:(id)candidate
{
  candidateCopy = candidate;
  v5 = objc_alloc_init(COMutableBallot);
  [(COMutableBallot *)v5 addCandidate:candidateCopy];

  v6 = [(COBallot *)self initWithBallot:v5];
  return v6;
}

- (COBallot)initWithCoder:(id)coder
{
  v42 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"version"] != 1)
  {

    v5 = 0;
    goto LABEL_31;
  }

  v5 = [(COBallot *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"candidates"];
    candidates = v5->_candidates;
    v5->_candidates = v9;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = v5->_candidates;
      v12 = [(NSOrderedSet *)v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (!v12)
      {
        goto LABEL_12;
      }

      v13 = v12;
      v14 = *v37;
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [(NSOrderedSet *)v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
          if (!v13)
          {
LABEL_12:

            v16 = MEMORY[0x277CBEB98];
            v17 = objc_opt_class();
            v18 = objc_opt_class();
            v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];

            v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"discovery"];
            discovery = v5->_discovery;
            v5->_discovery = v20;

            if (!v5->_discovery && ([coderCopy containsValueForKey:@"discovery"] & 1) == 0)
            {
              v22 = objc_alloc_init(MEMORY[0x277CBEAC0]);
              v23 = v5->_discovery;
              v5->_discovery = v22;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v5 = 0;
              goto LABEL_30;
            }

            objc_opt_class();
            objc_opt_class();
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v24 = v5->_discovery;
            v25 = [(NSDictionary *)v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (!v25)
            {
              goto LABEL_36;
            }

            v26 = v25;
            v27 = *v33;
LABEL_18:
            v28 = 0;
            while (1)
            {
              if (*v33 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v32 + 1) + 8 * v28);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                break;
              }

              v30 = [(NSDictionary *)v5->_discovery objectForKey:v29];
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_35;
              }

              if (v26 == ++v28)
              {
                v26 = [(NSDictionary *)v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
                if (v26)
                {
                  goto LABEL_18;
                }

LABEL_36:

LABEL_30:
                goto LABEL_31;
              }
            }

            v30 = v5;
LABEL_35:

            v5 = 0;
            goto LABEL_36;
          }

          goto LABEL_6;
        }
      }
    }

    else
    {
    }

    v5 = 0;
    v19 = v8;
    goto LABEL_30;
  }

LABEL_31:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:1 forKey:@"version"];
  candidates = [(COBallot *)self candidates];
  [coderCopy encodeObject:candidates forKey:@"candidates"];

  discovery = [(COBallot *)self discovery];
  [coderCopy encodeObject:discovery forKey:@"discovery"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  candidates = [(COBallot *)self candidates];
  v7 = [candidates description];
  v8 = [v3 stringWithFormat:@"<%@: %p, candidates = %@>", v5, self, v7];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [COMutableBallot alloc];

  return [(COBallot *)v4 initWithBallot:self];
}

- (unint64_t)hash
{
  candidates = [(COBallot *)self candidates];
  v3 = [candidates hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(COBallot *)self isEqualToBallot:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToBallot:(id)ballot
{
  ballotCopy = ballot;
  candidates = [(COBallot *)self candidates];
  candidates2 = [ballotCopy candidates];

  LOBYTE(ballotCopy) = [candidates isEqualToOrderedSet:candidates2];
  return ballotCopy;
}

@end