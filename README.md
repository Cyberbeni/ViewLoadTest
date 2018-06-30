Results for this single label view loading (loading more complex views might affect the results):

Loading from code is the fastest, loading from storyboard is a close second and loading from XIB for the first time has a huge delay.

These loading times might not seem a lot but when you are loading 4-5 XIBs for a UITableView, the load time will be noticeably longer, making the first impression worse.
