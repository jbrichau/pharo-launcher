initialization
initializeWidgets
	(imagesModel := self newTitledTree)
		title: 'Existing images' translated;
		doubleClickCommandClass: PhLLaunchImageCommand;
		makeMultiSelect.
	(templatesModel := self newTitledTree)
		title: 'Templates' translated;
		doubleClickCommandClass: PhLCreateImageFromTemplateCommand.
	statusbarModel := self newStatusBar.
	(quitOnLaunchCheckBoxModel := self newCheckBox)
		label: 'Quit on launch';
		state: PhLLaunchImageCommand quitOnLaunch;
		whenChangedDo: [ PhLLaunchImageCommand quitOnLaunch: self quitOnLaunchCheckBoxModel state ].
		self flag: 'I would like to do this commented initialization right here, but it is not possible. I have to override #openWithSpec and #openWorldWithSpec'.
		"self initializeImageAndTemplates."