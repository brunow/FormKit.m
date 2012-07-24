## FormKit.m

FormKit.m is a library that helps building form with table view.

This library is extracted from [BaseKit](https://github.com/brunow/BaseKit).

## Installation

**Copy** **FormKit** dir into your project.

## Example code

	self.formModel = [FKFormModel formTableModelForTableView:self.tableView navigationController:self.navigationController];
    
    [TKFormMapping mappingForClass:[Movie class] block:^(TKFormMapping *mapping) {
        [mapping sectiontWithTitle:@"Information section" identifier:@"info"];
        [mapping mapAttribute:@"title" title:@"Title" type:BKFormAttributeMappingTypeText];
        [mapping mapAttribute:@"releaseDate" title:@"ReleaseDate" type:BKFormAttributeMappingTypeDatePicker];
        [mapping mapAttribute:@"suitAllAges" title:@"All ages" type:BKFormAttributeMappingTypeBoolean];
        [mapping mapAttribute:@"shortName" title:@"ShortName" type:BKFormAttributeMappingTypeLabel];
        [mapping mapAttribute:@"numberOfActor" title:@"Number of actor" type:BKFormAttributeMappingTypeInteger];
        [mapping mapAttribute:@"content" title:@"Content" type:BKFormAttributeMappingTypeBigText];
        
        [mapping mapAttribute:@"choice" title:@"Choices" selectValuesBlock:^NSArray *(id value, id object, NSInteger *selectedValueIndex){
            *selectedValueIndex = 1;
            return [NSArray arrayWithObjects:@"choice1", @"choice2", nil];
        } valueWithBlock:^id(id value, id object, NSInteger selectedValueIndex) {
            return value;
        }];
        
        [mapping buttonSave:@"Save" handler:^{
        }];
        
        [self.formModel registerMapping:mapping];
    }];
    
    [self.formModel loadFieldsWithObject:movie];

![Form Mapping](https://github.com/brunow/FormKit.m/raw/master/form-mapping.png)

## Migrating form BaseKit FormMapping

The most biggest change is that classes are now prefixed with FK instead of BK, so rename classes name.

## ARC

FormKit is ARC only and require IOS 5.

## Changelog

- Master branch

## Contact

Bruno Wernimont

- Twitter - [@brunowernimont](http://twitter.com/brunowernimont)
