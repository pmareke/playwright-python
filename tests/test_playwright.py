import re
from playwright.sync_api import Page, expect

def test_has_title(page: Page):
    page.goto("https://pmareke.com/")

    expect(page).to_have_title(re.compile("pmareke"))

def test_get_started_link(page: Page):
    page.goto("https://pmareke.com")

    page.get_by_role("link", name="Links").click()

    expect(page.get_by_text("Booker")).to_be_visible()
