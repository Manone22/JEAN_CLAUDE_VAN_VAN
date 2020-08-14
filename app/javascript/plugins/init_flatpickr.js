import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const flatElements = document.querySelectorAll('.flatpickr');
  flatpickr(flatElements, {});
}

export {initFlatpickr};
