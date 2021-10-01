SITE_OF_SPECIAL_SCIENTIFIC_INTEREST_DATASET=$(DATASET_DIR)site-of-special-scientific-interest.csv
SITE_OF_SPECIAL_SCIENTIFIC_INTEREST_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)site-of-special-scientific-interest/58d5ad603e37f139c0d24a49567acb8d6c2101616133624c90eeb5aa196f8659.csv\
    $(TRANSFORMED_DIR)site-of-special-scientific-interest/9ddd939f4664b3f20a346d88c986e412f60079a293a5b33cabae46007f9b182c.csv\
    $(TRANSFORMED_DIR)site-of-special-scientific-interest/ebe39bdb9a2cf3fb45d2905df97afe24c9a3ec84c47a8f6e29fb3d8ff133f457.csv

$(TRANSFORMED_DIR)site-of-special-scientific-interest/58d5ad603e37f139c0d24a49567acb8d6c2101616133624c90eeb5aa196f8659.csv: collection/resource/58d5ad603e37f139c0d24a49567acb8d6c2101616133624c90eeb5aa196f8659
	$(run-pipeline)

$(TRANSFORMED_DIR)site-of-special-scientific-interest/9ddd939f4664b3f20a346d88c986e412f60079a293a5b33cabae46007f9b182c.csv: collection/resource/9ddd939f4664b3f20a346d88c986e412f60079a293a5b33cabae46007f9b182c
	$(run-pipeline)

$(TRANSFORMED_DIR)site-of-special-scientific-interest/ebe39bdb9a2cf3fb45d2905df97afe24c9a3ec84c47a8f6e29fb3d8ff133f457.csv: collection/resource/ebe39bdb9a2cf3fb45d2905df97afe24c9a3ec84c47a8f6e29fb3d8ff133f457
	$(run-pipeline)

$(SITE_OF_SPECIAL_SCIENTIFIC_INTEREST_DATASET): $(SITE_OF_SPECIAL_SCIENTIFIC_INTEREST_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(SITE_OF_SPECIAL_SCIENTIFIC_INTEREST_TRANSFORMED_FILES)

dataset:: $(SITE_OF_SPECIAL_SCIENTIFIC_INTEREST_DATASET)
