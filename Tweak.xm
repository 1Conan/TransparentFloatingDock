%hook SBFloatingDockPlatterView
-(id) backgroundView {
	[%orig setHidden:YES];
	return %orig;
}
%end