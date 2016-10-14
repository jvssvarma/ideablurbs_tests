## Idea blurbs

####Planning

1. What are we building?
A space for users to blurb (write short desc) about their ideas. It can be called a blog, social or discussion forum or anything. It must allow users to write, read, edit, delete their idea posts and also explore, suggest, comment on ideas from others in the space. 

2. Who is our target audience?
Anyone with an idea in their mind and internet access can share, explore through the website.

3. What features do we want?
   - Ideas
	- Create / Edit / Destroy
	- Image support, WYSIWYG editor support
	- Comments or Suggestions
	- Popularity meter
	- Like and Share
	- Search, Sort by category or relevance or popularity option
   - Categories
	- Create / Edit / Destroy (Access only for Admin)
	- Ideas can be associated to multiple categories and vice versa
   - Blurber Profile (User)
	- User Sign up / Sign in with social media options
	- Email and Captcha Verfied accounts
	- User Profile page with all info related
	- Follow other blurbers
   - Settings
	- Profile Privacy settings
	- Notification settings
	- Real time notifications and Email alerts
   - Welcome page
   - About, FAQ, Contact page

####User Stories
As Admin,
	- I should able to login, Add categories, manage users
	- Login with additional security passage
As Blurber,
	- Login with social app login or login details
	- Ability to create, edit, delete my ideas
	- Ability to manage the privacy of account & posts using settings
	- Can search and get results with title
	- Can sort with category, latest feed, popularity
	- Comment or Suggest about an idea
	- Ability to delete my account
As Visitor,
	- I should be able to create a account easity using email or twitter (for say)
	- Read about the space on the welcome page

####Modeling data
- Ideas Model	
	title:string
	blurb: WYSIWYG text
	File: Image, Video, Audio or Link
- Users Model
	username:string
	profile:image
	bio:text
	location:string
	join date
	birth date
	and other attributes from devise
- Categories Model
	category:string
	line:text


####Possible Pages in the App
- Home/Index/Welcome
- About,FAQ, Contact details
- blurber#signup
- blurber#signin
- blurber#show
- blurber#settings
- idea#index
- idea#show
- idea#edit
- idea#new
- category#new (Admin only)
- category#edit (Admin only)
