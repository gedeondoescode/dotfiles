return {
  {
    "KronsyC/nvim-license",
    opts = function()
      return {
        name = "Gedeon Sainrival",
        -- Optional
        -- year = "2023"
      }
    end,

    cmd = {
      "License",
      "LicenseHeader",
      "AutoLicense",
    },
    dependencies = {
      { "numToStr/Comment.nvim" },
    },
  },
}
