NLBouncePagination
==================

iOS仿淘宝详情滑动翻页

![demo](https://cloud.githubusercontent.com/assets/1229684/3931388/18590668-2457-11e4-8128-738975dbfece.gif)

## 使用

1. 把 `NLBouncePagination` 拖到工程里，注意选中`Copy items into destination group‘s folder (if needed)`。
2. 创建两个 UITableViewController，一个是主页显示，一个上拉后出现的子页显示，分别继承`NLMainTableViewController`和`NLSubTableViewController`。
3. 最后，在主页的VC的`viewDidLoad`里关联上子页VC即可

	```objective-c
	self.subTableViewController = [[DemoSubViewController alloc] init];
	```	

4. 作为一种补充方式，你可以不用`UITableView`，直接使用`UIScrollView`

```objective-c
	// 1. 继承主VC(NLMainViewController)和子VC(NLSubViewController)
	
	// 2. 在主VC的`viewDidLoad`中关联子VC：
	self.subViewController = [[DemoSubViewController alloc] init];
    self.subViewController.mainViewController = self;
	
	// 3. 父VC和子VC的view都应该添加到vc.scrollView上，并且需要设置vc.scrollView.contentSize:
	self.scrollView.contentSize = CGSizeMake(320, 400);
	UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 300, 400)];
    view.backgroundColor = [UIColor blueColor];
	[self.scrollView addSubview:view];

```
	
## 协议
`MIT`


## 问题和建议
https://github.com/noahlu/NLBouncePagination/issues


